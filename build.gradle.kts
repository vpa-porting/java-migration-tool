import java.util.Properties

plugins {
    kotlin("jvm") version "2.1.10"
    application
}

group = "porting"
version = "1.0-SNAPSHOT"

application {
    mainClass.set("porting.MainKt")
}

repositories {
        maven {
            name = "SemanticPortingCore"
            url = uri(providers.gradleProperty("semanticCoreRepository").orElse(
                "https://maven.pkg.github.com/vpa-porting/semantic-porting-core").get())
            if (!providers.gradleProperty("semanticCoreRepository").isPresent) {
                credentials {
                    username = providers.gradleProperty("gpr.user").orElse(providers.environmentVariable("GITHUB_ACTOR")).orNull
                    password = providers.gradleProperty("gpr.key").orElse(providers.environmentVariable("SEMANTIC_CORE_TOKEN"))
                        .orElse(providers.environmentVariable("GITHUB_TOKEN")).orNull
                }
            }
            content { includeGroup("ru.vpa.porting") }
        }

    mavenCentral()
    maven("https://jitpack.io")
}

// Real, unmodified original libraries used by the SpecCorpus differential JUnit tests
// (src/test/kotlin/porting/corpus). Resolved by Gradle like any other dependency - no
// curl/fetch-dependencies.sh script needed.
val corpusJars: Configuration by configurations.creating
val jazzerAgent: Configuration by configurations.creating {
    isTransitive = false
}

dependencies {
    implementation("ru.vpa.porting:semantic-porting-core:0.3.0")
    testImplementation(kotlin("test"))
    testImplementation("org.junit.jupiter:junit-jupiter-params:5.10.1")
    // Coverage-guided differential fuzzing (src/test/kotlin/porting/fuzz). Plain `test` runs the
    // fuzz targets in regression mode (seed inputs only); `fuzzTest` runs real fuzzing.
    testImplementation("com.code-intelligence:jazzer-junit:0.30.0")
    jazzerAgent("com.code-intelligence:jazzer:0.30.0")



    // https://mvnrepository.com/artifact/com.github.javaparser/javaparser-core
    implementation("com.github.javaparser:javaparser-core:3.26.3")

    // https://mvnrepository.com/artifact/com.github.javaparser/javaparser-symbol-solver-core
    implementation("com.github.javaparser:javaparser-symbol-solver-core:3.26.3")

    // core

    // z3 solver
    testImplementation("io.ksmt:ksmt-z3:0.5.23")

    corpusJars("com.brsanthu:migbase64:2.2")
    corpusJars("net.lbruun:hexutils:1.0.0")
    testImplementation("com.brsanthu:migbase64:2.2")
    testImplementation("net.lbruun:hexutils:1.0.0")
}

kotlin {
    jvmToolchain(17)
}

// The SpecCorpus tests migrate + javac-compile + run code that calls java.util.HexFormat
// (JDK 21+), so the test JVM itself must be 21+ regardless of the toolchain used to build
// the tool (17).
val testJavaLauncher = javaToolchains.launcherFor { languageVersion.set(JavaLanguageVersion.of(21)) }

// Generates build/generated/corpus/corpus.properties: absolute paths to the real corpus jars
// (migbase64, hexutils) plus the full test runtime classpath, so the JUnit tests in
// src/test/kotlin/porting/corpus can drive `javac`/Migrator.migrate() without hardcoding paths
// or re-deriving java.class.path (which Gradle may pass as a single classpath-jar indirection).
val generateCorpusProperties by tasks.registering {
    // This output contains machine-local absolute paths. A copied/shared build directory can
    // contain another host's paths even when all dependency contents are identical. Always
    // regenerate before processTestResources, including when switching between IDEA and CI.
    doNotTrackState("corpus.properties contains host-specific dependency and compiler classpaths")
    val outputFile = layout.buildDirectory.file("generated/corpus/corpus.properties")
    val jars = corpusJars
    // Just the resolved dependency jars (not sourceSets["test"].runtimeClasspath, which also
    // includes this project's own test output dir and would make this task depend on itself
    // transitively via processTestResources -> testClasses -> compileTestKotlin).
    val testClasspath = configurations["testRuntimeClasspath"]
    inputs.files(jars, testClasspath)
    outputs.file(outputFile)
    doLast {
        val props = Properties()
        jars.resolvedConfiguration.resolvedArtifacts.forEach { artifact ->
            props.setProperty("${artifact.moduleVersion.id.name}.jar", artifact.file.absolutePath)
        }
        props.setProperty("test.classpath", testClasspath.files.joinToString(File.pathSeparator) { it.absolutePath })
        val file = outputFile.get().asFile
        file.parentFile.mkdirs()
        file.outputStream().use { props.store(it, null) }
    }
}

sourceSets {
    test {
        resources.srcDir(layout.buildDirectory.dir("generated/corpus"))
    }
}

tasks.named("processTestResources") {
    dependsOn(generateCorpusProperties)
}

tasks.test {
    testLogging { exceptionFormat = org.gradle.api.tasks.testing.logging.TestExceptionFormat.FULL }
    useJUnitPlatform()
    // Specs and demo call sites are read by the tests; `generated/` is their output, not an input.
    inputs.files(fileTree("SpecCorpus") { include("**/specs/**", "**/source-*/**") })
    inputs.files(fileTree("TestSpecs"), fileTree("TestProjects"))
    javaLauncher.set(testJavaLauncher)
}

// Supply Jazzer's shaded Byte Buddy instrumentation at JVM startup. Dynamic
// attachment can fail in PID-isolated containers, including self-attachment.
// Keep agent installation itself under Jazzer JUnit's control so its options are
// configured before instrumentation starts.
val prepareJazzerAgent by tasks.registering(Jar::class) {
    archiveFileName.set("jazzer-instrumentation-agent.jar")
    destinationDirectory.set(layout.buildDirectory.dir("jazzer-agent"))
    from(provider { zipTree(jazzerAgent.singleFile) }) {
        include("com/code_intelligence/jazzer/third_party/net/bytebuddy/agent/Installer.class")
    }
    manifest {
        attributes(
            "Premain-Class" to "com.code_intelligence.jazzer.third_party.net.bytebuddy.agent.Installer",
            "Can-Redefine-Classes" to "true",
            "Can-Retransform-Classes" to "true",
        )
    }
}
tasks.withType<Test>().configureEach {
    dependsOn(prepareJazzerAgent)
    jvmArgumentProviders.add(CommandLineArgumentProvider {
        listOf("-javaagent:${prepareJazzerAgent.get().archiveFile.get().asFile.absolutePath}")
    })
}

// Real coverage-guided fuzzing of the differential targets (src/test/kotlin/porting/fuzz).
// JAZZER_FUZZ=1 switches @FuzzTest from regression mode to libFuzzer. libFuzzer cannot continue in
// a JVM after a finding, so every @FuzzTest method gets its own task and JVM: `fuzz_<Class>_<method>`.
//   ./gradlew fuzzTest                       all targets, 30s each
//   ./gradlew fuzzTest -Pfuzz.duration=5m    longer runs
//   ./gradlew fuzz_HexutilsFuzzTest_decode   one target
// Targets record where the original and the migrated Api disagree instead of failing: the result is
// build/fuzz-report/<Class>.<method>.md|json (smallest example per kind of divergence, divergence
// rate per input feature) and build/fuzz-report/SUMMARY.md. -Pfuzz.strict=true makes the first
// divergence a failure instead; its reproducer is moved to build/fuzz-findings/<Class>.<method>/.
val fuzzDuration = (findProperty("fuzz.duration") ?: "30s").toString()
val fuzzTargets = fileTree("src/test/kotlin/porting/fuzz").matching { include("*FuzzTest.kt") }.files.flatMap { file ->
    Regex("""@FuzzTest\s+fun\s+(\w+)""").findAll(file.readText()).map { file.nameWithoutExtension to it.groupValues[1] }.toList()
}
val cleanFuzzOutput by tasks.registering(Delete::class) {
    delete(layout.buildDirectory.dir("fuzz-report"), layout.buildDirectory.dir("fuzz-findings"))
}
var previousFuzzTask: TaskProvider<Test>? = null
val fuzzTasks = fuzzTargets.map { (clazz, method) ->
    val previous = previousFuzzTask
    tasks.register<Test>("fuzz_${clazz}_$method") {
        // Targets are independent: run one after another, even if an earlier one found something.
        previous?.let { mustRunAfter(it) } ?: mustRunAfter(cleanFuzzOutput)
        group = "fuzzing"
        description = "Fuzzes $clazz.$method for $fuzzDuration (needs linux or macOS)."
        useJUnitPlatform()
        javaLauncher.set(testJavaLauncher)
        testClassesDirs = sourceSets["test"].output.classesDirs
        classpath = sourceSets["test"].runtimeClasspath
        filter { includeTestsMatching("porting.fuzz.$clazz.$method") }
        environment("JAZZER_FUZZ", "1")
        systemProperty("jazzer.max_duration", fuzzDuration)
        // Coverage feedback and percentages only for what is under test: the original libraries.
        // (Instrumenting the migrator, Z3 and the harness would dilute the guidance; the migrated
        // code is thin wrappers over JDK classes, which Jazzer cannot instrument.)
        systemProperty("jazzer.instrument", "com.migcomponents.**,net.lbruun.**")
        systemProperty("jazzer.coverage_report", layout.buildDirectory.file("fuzz-report/$clazz.$method.coverage-report.txt").get().asFile.absolutePath)
        systemProperty("jazzer.coverage_dump", layout.buildDirectory.file("fuzz-report/$clazz.$method.exec").get().asFile.absolutePath)
        systemProperty("fuzz.sampleSeconds", (findProperty("fuzz.sampleSeconds") ?: "5").toString())
        systemProperty("fuzz.maxPerCategory", (findProperty("fuzz.maxPerCategory") ?: "5000").toString())
        systemProperty("fuzz.target", "${clazz}.$method")
        systemProperty("fuzz.verificationKind", if (clazz.endsWith("SpecFuzzTest")) "spec-conformance" else "migrated")
        systemProperty("fuzz.reportDir", layout.buildDirectory.dir("fuzz-report").get().asFile.absolutePath)
        if (clazz in listOf("HexHarmlessFuzzTest", "HexHarmlessEffectsFuzzTest", "HexDumpFuzzTest", "Base64IOFuzzTest") || clazz.endsWith("SpecFuzzTest")) systemProperty("fuzz.strict", "true")
        findProperty("fuzz.strict")?.let { systemProperty("fuzz.strict", it.toString()) }
        ignoreFailures = true // checked by fuzzTest after every target has run
        doFirst {
            layout.buildDirectory.dir("fuzz-report").get().asFile
                .listFiles { f -> f.name.startsWith("$clazz.$method.") }.orEmpty().forEach { it.delete() }
        }
        outputs.upToDateWhen { false }
        doLast {
            val dest = layout.buildDirectory.dir("fuzz-findings/$clazz.$method").get().asFile
            projectDir.listFiles { f -> f.name.startsWith("crash-") }.orEmpty().forEach {
                dest.mkdirs()
                it.renameTo(File(dest, it.name))
            }
        }
    }.also { previousFuzzTask = it }
}

// Re-render saved probe data without rerunning fuzzing. Jazzer uses a modified
// JaCoCo probe layout, so analysis must use its own EdgeCoverageInstrumentor.
tasks.register<JavaExec>("fuzzBranchCoverage") {
    group = "verification"
    description = "Merges all saved Jazzer probes and measures branch coverage of the original corpus jars. Run fuzzTest first."
    dependsOn(tasks.testClasses)
    mustRunAfter("fuzzTest")
    mustRunAfter(fuzzTasks)
    javaLauncher.set(testJavaLauncher)
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("porting.fuzz.BranchCoverageReport")
    doFirst {
        val reports = layout.buildDirectory.dir("fuzz-report").get().asFile
        val allTargets = fuzzTargets.map { (clazz, method) -> "$clazz.$method" }
        val kind = findProperty("branch.kind")?.toString()
        check(kind == null || kind in listOf("migrated", "spec-conformance")) { "Unknown branch.kind: $kind" }
        val selected = findProperty("branch.targets")?.toString()?.split(',') ?: allTargets.filter { target ->
            kind == null || (if (target.substringBefore('.').endsWith("SpecFuzzTest")) "spec-conformance" else "migrated") == kind
        }
        check(selected.isNotEmpty() && selected.all { it in allTargets }) { "Unknown branch.targets: $selected" }
        val dumps = selected.map { File(reports, "$it.exec") }
        val missing = dumps.filter { !it.isFile }
        check(missing.isEmpty()) { "Run fuzzTest first: missing probe dumps: ${missing.joinToString { it.name }}" }
        val destination = findProperty("branch.output")?.toString() ?: "branch-coverage"
        setArgs(listOf(layout.buildDirectory.dir(destination).get().asFile.absolutePath,
            corpusJars.files.joinToString(File.pathSeparator) { it.absolutePath }) + dumps.map { it.absolutePath })
    }
}

tasks.register("fuzzTest") {
    group = "verification"
    description = "Runs every Jazzer migration/model-conformance target in its own JVM and writes build/fuzz-report/SUMMARY.md."
    dependsOn(cleanFuzzOutput, fuzzTasks)
    doLast {
        val reports = layout.buildDirectory.dir("fuzz-report").get().asFile
        reports.mkdirs()
        val parts = reports.listFiles { f -> f.extension == "md" && f.name != "SUMMARY.md" }.orEmpty().sortedBy { it.name }
        File(reports, "SUMMARY.md").writeText(parts.joinToString("\n\n---\n\n") { it.readText() })
        println("Fuzz report: ${File(reports, "SUMMARY.md")} (${parts.size} of ${fuzzTargets.size} targets reported)")
        // Initialization/agent failures do not produce crash-* reproducers.
        // ignoreFailures above must not turn those failures into a green aggregate.
        val failedTests = fuzzTasks.map { it.get() }.filter { task ->
            val xmlFiles = task.reports.junitXml.outputLocation.get().asFile
                .listFiles { f -> f.name.startsWith("TEST-") && f.extension == "xml" }.orEmpty()
            xmlFiles.isEmpty() || xmlFiles.any { xml ->
                val suite = javax.xml.parsers.DocumentBuilderFactory.newInstance()
                    .newDocumentBuilder().parse(xml).documentElement
                suite.getAttribute("failures").toInt() > 0 ||
                    suite.getAttribute("errors").toInt() > 0 ||
                    suite.getAttribute("tests").toInt() == suite.getAttribute("skipped").toInt()
            }
        }
        if (failedTests.isNotEmpty() || parts.size != fuzzTargets.size) {
            throw GradleException("Incomplete or failed fuzz run: ${parts.size}/${fuzzTargets.size} reports; " +
                "failed/missing test results: ${failedTests.joinToString { it.name }}. See build/reports/tests/.")
        }
        val findings = layout.buildDirectory.dir("fuzz-findings").get().asFile
        val crashed = findings.listFiles { f -> f.isDirectory }.orEmpty().sortedBy { it.name }
        if (crashed.isNotEmpty()) {
            throw GradleException(
                "${crashed.size} fuzz target(s) crashed or failed in strict mode:\n" +
                    crashed.joinToString("\n") { "  ${it.name}: ${it.listFiles()!!.size} reproducer(s)" } + "\nDetails: $findings",
            )
        }
    }
}

// ---------------------------------------------------------------------------
// Convenience tasks that just run one core migration case and print its output -
// not tests (no assertions), see CoreCasesTest for the JUnit version of the same
// two cases. Visible under the "corpus" task group / as IDEA run configurations.
// ---------------------------------------------------------------------------

fun registerMigrateCase(taskName: String, caseName: String, description: String) {
    tasks.register<JavaExec>(taskName) {
        group = "corpus"
        this.description = description
        classpath = sourceSets["main"].runtimeClasspath
        mainClass.set("porting.MainKt")
        args(caseName)
    }
}

registerMigrateCase("migrateMath", "math", "Core case: MathProject, math-lib1.lsl -> math-lib2.lsl (expect 1/1 migrated).")
registerMigrateCase("migrateFile", "file", "Core case: FileProject, file-lib1.lsl -> file-lib2.lsl (expect 2/2 migrated).")
// Makes the SpecCorpus demo call sites and their generated counterparts visible to the IDE
// (indexing, navigation, inspections). Not part of `build`/`test`: the tests compile these
// files themselves through CorpusHarness.
val corpusSourceSets = mapOf(
    "migbase64Source" to "SpecCorpus/migbase64-to-java-util-base64/source-demo",
    "migbase64Generated" to "SpecCorpus/migbase64-to-java-util-base64/generated",
    "hexutilsSource" to "SpecCorpus/hexutils-to-java-hexformat/source-demo",
    "hexutilsGenerated" to "SpecCorpus/hexutils-to-java-hexformat/generated",
)

sourceSets {
    corpusSourceSets.forEach { (name, dir) ->
        create(name) {
            java.setSrcDirs(listOf("$dir/src/main/java"))
            compileClasspath += configurations["corpusJars"]
            runtimeClasspath += configurations["corpusJars"]
        }
    }
}

tasks.withType<JavaCompile>().configureEach {
    if (name.startsWith("compileMigbase64") || name.startsWith("compileHexutils")) {
        javaCompiler.set(javaToolchains.compilerFor { languageVersion.set(JavaLanguageVersion.of(21)) })
    }
}
