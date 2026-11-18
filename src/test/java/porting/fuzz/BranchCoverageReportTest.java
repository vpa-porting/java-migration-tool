package porting.fuzz;

import com.code_intelligence.jazzer.third_party.org.jacoco.core.data.ExecutionData;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.tools.ExecFileLoader;
import com.code_intelligence.jazzer.instrumentor.EdgeCoverageInstrumentor;
import com.code_intelligence.jazzer.instrumentor.StaticMethodStrategy;
import com.code_intelligence.jazzer.third_party.org.jacoco.core.internal.data.CRC64;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.io.TempDir;
import java.nio.file.Path;
import java.util.Map;
import java.util.Arrays;
import static org.junit.jupiter.api.Assertions.*;

public class BranchCoverageReportTest {
    @TempDir Path dir;

    public static class Fixture {
        public static int choose(boolean condition) { return condition ? 1 : 2; }
    }

    public static class ProbeMap {
        static boolean[] probes = new boolean[0];
        public static void enlargeIfNeeded(int maxId) {
            if (maxId >= probes.length) probes = Arrays.copyOf(probes, maxId + 1);
        }
        public static void recordCoverage(int id) { probes[id] = true; }
    }

    static class FixtureLoader extends ClassLoader {
        Class<?> define(String name, byte[] bytes) { return defineClass(name, bytes, 0, bytes.length); }
    }

    @Test void oppositeExecutionsMergeToFullBranchCoverage() throws Exception {
        String name = Fixture.class.getName().replace('.', '/');
        byte[] original;
        try (var in = Fixture.class.getResourceAsStream("BranchCoverageReportTest$Fixture.class")) {
            original = in.readAllBytes();
        }
        ProbeMap.probes = new boolean[0];
        var instrumentor = new EdgeCoverageInstrumentor(new StaticMethodStrategy(), ProbeMap.class, 0);
        byte[] instrumented = instrumentor.instrument(name, original);
        var choose = new FixtureLoader().define(name.replace('/', '.'), instrumented).getMethod("choose", boolean.class);
        ExecFileLoader merged = new ExecFileLoader();
        for (boolean input : new boolean[]{false, true}) {
            Arrays.fill(ProbeMap.probes, false);
            choose.invoke(null, input);
            ExecFileLoader run = new ExecFileLoader();
            run.getExecutionDataStore().put(new ExecutionData(CRC64.classId(original), name, ProbeMap.probes.clone()));
            var partial = BranchCoverageReport.analyze(run, Map.of(name, original)).getBundle("fixture").getBranchCounter();
            assertEquals(2, partial.getTotalCount());
            assertEquals(1, partial.getCoveredCount());
            Path file = dir.resolve(input + ".exec");
            run.save(file.toFile(), false);
            merged.load(file.toFile());
        }
        var union = BranchCoverageReport.analyze(merged, Map.of(name, original)).getBundle("fixture").getBranchCounter();
        assertEquals(2, union.getTotalCount());
        assertEquals(2, union.getCoveredCount());
    }

    @Test void mergesOverlappingProbesWithoutDoubleCounting() throws Exception {
        ExecFileLoader merged = new ExecFileLoader();
        boolean[][] runs = {{true, false, false}, {true, true, false}};
        for (int i = 0; i < runs.length; i++) {
            ExecFileLoader run = new ExecFileLoader();
            run.getExecutionDataStore().put(new ExecutionData(42L, "Example", runs[i]));
            Path file = dir.resolve(i + ".exec");
            run.save(file.toFile(), false);
            merged.load(file.toFile());
        }
        assertArrayEquals(new boolean[]{true, true, false}, merged.getExecutionDataStore().get(42L).getProbes());
    }

    @Test void rejectsMismatchedBytecode() throws Exception {
        byte[] bytes;
        try (var in = BranchCoverageReport.class.getResourceAsStream("BranchCoverageReport.class")) {
            bytes = in.readAllBytes();
        }
        ExecFileLoader loader = new ExecFileLoader();
        loader.getExecutionDataStore().put(new ExecutionData(42L, "Example", new boolean[]{true}));
        assertThrows(IllegalArgumentException.class, () -> BranchCoverageReport.analyze(loader, Map.of("Example", bytes)));
    }

    @Test void rejectsIncompatibleProbeLayouts() {
        ExecFileLoader loader = new ExecFileLoader();
        loader.getExecutionDataStore().put(new ExecutionData(42L, "Example", new boolean[]{true}));
        assertThrows(IllegalStateException.class, () ->
            loader.getExecutionDataStore().put(new ExecutionData(42L, "Example", new boolean[]{true, false})));
    }
}
