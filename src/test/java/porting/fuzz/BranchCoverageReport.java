package porting.fuzz;

import com.code_intelligence.jazzer.instrumentor.StaticMethodStrategy;
import com.code_intelligence.jazzer.instrumentor.EdgeCoverageInstrumentor;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.analysis.*;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.data.ExecutionData;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.internal.data.CRC64;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.tools.ExecFileLoader;
import java.io.File;
import java.nio.file.*;
import java.security.MessageDigest;
import java.util.*;
import java.util.jar.JarFile;

/** Offline union of Jazzer probes; uses the same analyzer as CoverageRecorder. */
public final class BranchCoverageReport {
    private BranchCoverageReport() {}

    // Analysis enumerates probe IDs but never needs live counters. Supply the
    // map callback without initializing Jazzer's native runtime.
    public static final class OfflineCoverageMap {
        public static void enlargeIfNeeded(int edges) {
            // No live counter allocation during offline analysis.
        }
    }

    static String counter(ICounter c) {
        int total = c.getTotalCount();
        return c.getCoveredCount() + "/" + total + " (" +
            (total == 0 ? "n/a" : String.format(Locale.ROOT, "%.2f%%", 100.0 * c.getCoveredCount() / total)) + ")";
    }

    static Map<String, byte[]> readClasses(String jars) throws Exception {
        Map<String, byte[]> classes = new TreeMap<>();
        for (String path : jars.split(java.util.regex.Pattern.quote(File.pathSeparator))) {
            try (JarFile jar = new JarFile(path)) {
                for (var entry : Collections.list(jar.entries())) {
                    if (!entry.getName().endsWith(".class") || entry.getName().equals("module-info.class")) continue;
                    String name = entry.getName().substring(0, entry.getName().length() - 6);
                    try (var in = jar.getInputStream(entry)) {
                        if (classes.putIfAbsent(name, in.readAllBytes()) != null)
                            throw new IllegalArgumentException("Duplicate class: " + name);
                    }
                }
            }
        }
        return classes;
    }

    static CoverageBuilder analyze(ExecFileLoader loader, Map<String, byte[]> classes) {
        // Reject mismatched bytecode rather than silently reporting it as uncovered.
        for (ExecutionData data : loader.getExecutionDataStore().getContents()) {
            byte[] bytes = classes.get(data.getName());
            if (bytes == null || CRC64.classId(bytes) != data.getId())
                throw new IllegalArgumentException("Probe bytecode mismatch: " + data.getName());
        }
        CoverageBuilder builder = new CoverageBuilder();
        for (var entry : classes.entrySet()) {
            var instrumentor = new EdgeCoverageInstrumentor(
                new StaticMethodStrategy(),
                OfflineCoverageMap.class, 0);
            instrumentor.analyze(loader.getExecutionDataStore(), builder, entry.getValue(), entry.getKey());
        }
        if (!builder.getNoMatchClasses().isEmpty()) throw new IllegalArgumentException("Incompatible probe data");
        return builder;
    }

    public static void main(String[] args) throws Exception {
        if (args.length < 3) throw new IllegalArgumentException("output-dir jars exec-file...");
        Path out = Path.of(args[0]);
        Map<String, byte[]> classes = readClasses(args[1]);
        Map<String, Set<String>> inventories = new LinkedHashMap<>();
        for (String jar : args[1].split(java.util.regex.Pattern.quote(File.pathSeparator)))
            inventories.put(Path.of(jar).getFileName().toString(), readClasses(jar).keySet());
        Map<String, byte[]> recorded = new TreeMap<>();
        ExecFileLoader merged = new ExecFileLoader();
        StringBuilder manifest = new StringBuilder("sha256\tfile\n");
        StringBuilder targets = new StringBuilder("target,verification_kind\n");
        int migratedTargets = 0, specificationTargets = 0;
        List<String> inputs = new ArrayList<>(Arrays.asList(args[1].split(java.util.regex.Pattern.quote(File.pathSeparator))));
        for (int i = 2; i < args.length; i++) {
            String stem = args[i].substring(0, args[i].length() - ".exec".length());
            String json = Files.readString(Path.of(stem + ".json"));
            var kind = java.util.regex.Pattern.compile("\"verification_kind\"\\s*:\\s*\"(migrated|spec-conformance)\"").matcher(json);
            if (!kind.find()) throw new IllegalArgumentException("Missing verification kind: " + stem);
            if (kind.group(1).equals("migrated")) migratedTargets++; else specificationTargets++;
            targets.append(Path.of(stem).getFileName()).append(',').append(kind.group(1)).append('\n');
            String bytecodeJar = args[i].substring(0, args[i].length() - ".exec".length()) + ".classes.jar";
            for (var entry : readClasses(bytecodeJar).entrySet()) {
                if (!classes.containsKey(entry.getKey()))
                    throw new IllegalArgumentException("Unexpected instrumented class: " + entry.getKey());
                byte[] prior = recorded.putIfAbsent(entry.getKey(), entry.getValue());
                if (prior != null && !Arrays.equals(prior, entry.getValue()))
                    throw new IllegalArgumentException("Bytecode differs between targets: " + entry.getKey());
            }
            // Loading merges boolean probe arrays by OR, keyed by class bytecode ID.
            merged.load(new File(args[i]));
            inputs.add(args[i]);
            inputs.add(bytecodeJar);
            inputs.add(stem + ".json");
        }
        classes.putAll(recorded);
        CoverageBuilder builder = analyze(merged, classes);
        Set<String> analyzedNames = new HashSet<>();
        for (var cls : builder.getClasses()) analyzedNames.add(cls.getName());
        if (!analyzedNames.equals(classes.keySet())) throw new IllegalArgumentException("Incomplete class inventory");
        StringBuilder md = new StringBuilder("# Aggregated branch coverage\n\n")
            .append("Union of Jazzer execution probes across ").append(args.length - 2).append(" targets. ")
            .append("Original library classes only, using the exact bytecode recorded by Jazzer; includes input preparation calls. ")
            .append("Branches are JaCoCo bytecode branches for if/switch; exception edges are excluded.\n\n")
            .append("Verification mix: ").append(migratedTargets).append(" migrated-code targets, ")
            .append(specificationTargets).append(" executable-specification conformance targets. ")
            .append("Conformance targets are not evidence of generated migrations; see `targets.csv`.\n\n")
            .append("| Source file | Branches | Lines |\n|---|---:|---:|\n");
        StringBuilder csv = new StringBuilder("class,method,descriptor,branches_covered,branches_total,lines_covered,lines_total\n");
        StringBuilder missed = new StringBuilder("class\tline\tcovered_branches\tmissed_branches\n");
        List<IClassCoverage> rows = new ArrayList<>(builder.getClasses());
        rows.sort(Comparator.comparing(IClassCoverage::getName));
        for (IClassCoverage cls : rows) {
            for (IMethodCoverage method : cls.getMethods()) {
                csv.append(cls.getName()).append(',').append(method.getName()).append(',').append(method.getDesc()).append(',')
                    .append(method.getBranchCounter().getCoveredCount()).append(',').append(method.getBranchCounter().getTotalCount()).append(',')
                    .append(method.getLineCounter().getCoveredCount()).append(',').append(method.getLineCounter().getTotalCount()).append('\n');
            }
            for (int line = cls.getFirstLine(); line <= cls.getLastLine(); line++) {
                ICounter c = cls.getLine(line).getBranchCounter();
                if (c.getMissedCount() > 0) missed.append(cls.getName()).append('\t').append(line).append('\t')
                    .append(c.getCoveredCount()).append('\t').append(c.getMissedCount()).append('\n');
            }
        }
        List<ISourceFileCoverage> sources = new ArrayList<>(builder.getSourceFiles());
        sources.sort(Comparator.comparing(s -> s.getPackageName() + "/" + s.getName()));
        for (var source : sources) {
            md.append("| ").append(source.getPackageName()).append('/').append(source.getName()).append(" | ")
                .append(counter(source.getBranchCounter())).append(" | ").append(counter(source.getLineCounter())).append(" |\n");
        }
        var bundle = builder.getBundle("corpus");
        md.append("| **All corpus classes** | **").append(counter(bundle.getBranchCounter())).append("** | **")
            .append(counter(bundle.getLineCounter())).append("** |\n\n")
            .append("The denominator includes uncalled classes and methods from both jars. ")
            .append("Class IDs are checked against the analyzed bytecode. Input hashes: `inputs.tsv`.\n");
        md.append("\n| Complete library | Classes analyzed | Branches | Lines |\n|---|---:|---:|---:|\n");
        for (var inventory : inventories.entrySet()) {
            CoverageBuilder library = new CoverageBuilder();
            for (var cls : builder.getClasses()) if (inventory.getValue().contains(cls.getName())) library.visitCoverage(cls);
            var total = library.getBundle(inventory.getKey());
            md.append("| ").append(inventory.getKey()).append(" | ").append(library.getClasses().size()).append('/')
                .append(inventory.getValue().size()).append(" | ").append(counter(total.getBranchCounter())).append(" | ")
                .append(counter(total.getLineCounter())).append(" |\n");
        }
        for (String input : inputs) {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(Files.readAllBytes(Path.of(input)));
            manifest.append(HexFormat.of().formatHex(hash)).append('\t').append(input).append('\n');
        }
        Files.createDirectories(out);
        Files.writeString(out.resolve("coverage.md"), md);
        Files.writeString(out.resolve("methods.csv"), csv);
        Files.writeString(out.resolve("missed-branches.tsv"), missed);
        Files.writeString(out.resolve("inputs.tsv"), manifest);
        Files.writeString(out.resolve("targets.csv"), targets);
        merged.save(out.resolve("merged.exec").toFile(), false);
        System.out.print(md);
    }
}
