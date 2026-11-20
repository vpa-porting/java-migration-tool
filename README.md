# LibraryMigrationTool

LibSL/SMT-based tool that migrates calls from one Java library to another: both libraries are
described as LibSL specifications, a solver proves call-sequence equivalence in terms of shared
abstract actions, and a code generator rewrites the caller.

## Layout

- `src/main/kotlin` — the tool itself (LSL parser, SSA/trace builder, SMT-based `TraceSolver` and
  `ParamSolver`, Java code generator, AST-level migrator).
- `src/test/kotlin/porting/corpus` — all tests, real JUnit 5 (see "Testing" below).
- `TestSpecs`, `TestProjects`, `TestMigrated` — the original two smoke cases (`math`, `file`) driven
  by `Main.kt`'s `CASES` list; `TestMigrated` is the output directory and starts empty.
- `SpecCorpus/` — migrations of supported API subsets, differentially verified against the real original jar.
  Each entry is just specs + a demo call site + a behavioral write-up:
  - `SpecCorpus/migbase64-to-java-util-base64` — MiGBase64's `Base64` class (11/11 methods) → `java.util.Base64`.
    `Base64IO.encode` is migrated separately using the semantic loop action in
    `base64io-source.lsl` / `base64io-jdk.lsl`, with trace-aware original/generated tests.
    `BASE64IO_SPEC.md` defines its loop contract and trusted JDK binding boundary.
  - `SpecCorpus/hexutils-to-java-hexformat` — `Hex` (14/17 methods), all ten `HexHarmless` overloads and all seven
    `HexDump` overloads → JDK bindings. `hexharmless.lsl` and `source-harmless` exercise the additional migration.
    `EXTENSION_PLAN.md` defines the semantic loop/effect contracts and trusted-binding proof boundary.
  - `specs/*.lsl` is the actual specification; `source-demo/src/main/java/Api.java` is the one call
    site per method that gets migrated; `CONTRACTS.md` is the behavioral audit (why this target
    library, what genuinely matches, what doesn't and why, root-caused against the real decompiled
    source of both libraries). No JSON reports, no per-entry `tools/` scripts - the corresponding
    JUnit test in `src/test/kotlin/porting/corpus` *is* the verification, and it runs against the
    original jar pulled in as a normal Gradle dependency (`corpusJars` configuration in
    `build.gradle.kts`), not a hand-fetched copy.

The demo call sites and generated sources of both entries are Gradle source sets
(`migbase64Source`, `migbase64Generated`, `hexutilsSource`, `hexutilsGenerated`), so the IDE indexes
them with the original jars on the classpath; they are not part of `build`/`test`.

## Testing

Every test is a real JUnit 5 test - runnable exactly like any other test, from IntelliJ
IDEA/Android Studio's own test runner (the gutter ▶ icon next to a class or `@Test` method, the
Project view, or the "All Tests" run configuration checked into `.idea/runConfigurations` - no
setup needed after opening the project) or from the command line:

```sh
./gradlew test          # everything
./run-tests.sh          # same, thin wrapper
```

| Test class | What it covers |
|---|---|
| `CoreCasesTest` | the two original smoke cases (`math`, `file`) |
| `MigBase64MethodsTest` | one test per MiGBase64 method: identical results on inputs inside the documented contract (null, empty, valid encodings, skipped illegal characters, corrupted length, valid slices) |
| `MigBase64CorpusTest` | migrates+compiles `migbase64-to-java-util-base64`, compares generated `Api` against the original jar over ~470,000 calls |
| `HexutilsCorpusTest` | same for `hexutils-to-java-hexformat`, ~1.8M calls |
| `HexHarmlessMigrationTest` | six synthesized methods; all UTF-16 scalar inputs, all byte values, valid/invalid pairs, and compilation without the original jar |
| `HexExtensionSpecTest` | executable-model conformance for mutation, error order, dump layout/locale and PrintStream effects; not generated migrations |
| `CharSemanticsTest` | UTF-16 SMT sorts, unsigned numeric promotion and action argument compatibility |
| `Base64IOMigrationTest` | real migration, JDK-only compilation, original/generated I/O traces and failures, fresh-JVM charsets |
| `Base64IOSpecificationTest` | streaming I/O traces, short/default reads, window/line boundaries, partial errors and ownership; fresh-JVM charset checks and public constructor |

The corpus tests do everything in-process, in a single JUnit run: parse the specs, run the real
Migrator/TraceSolver/ParamSolver/Generator pipeline, compile both the original and the generated
`Api` with the JDK's own `javax.tools.JavaCompiler`, load each into its own classloader, and call
the same methods on both reflectively - see `CorpusHarness.kt`. Expected match counts are asserted
directly (e.g. hexutils: 1,778,496/1,800,616) rather than written to a report file; a failing
assertion shows the actual vs. expected count immediately in the test output. `CONTRACTS.md` in each
corpus entry explains *why* the expected count isn't 100% (documented behavioral quirks of the
original library, never an unexplained migration bug).

Requires JDK 17+ to build; the test JVM specifically runs on JDK 21 (`javaToolchains`-resolved, see
`build.gradle.kts`) because the hexutils corpus generates code calling `java.util.HexFormat`
(JDK 21+). Network access is needed once, on first resolution, for Gradle to download the two real
corpus jars (MiGBase64, hexutils) from Maven Central - ordinary dependency resolution, no custom
fetch script.

## Exceptional outcomes in specifications

A source specification can say that a call *ends by throwing* a JDK exception: an action declared with `@Terminal` terminates its path, and
nothing after it is part of the trace. The target specification realizes such an action with an
automaton annotated `@JavaThrow(exception = "java.lang.ArrayIndexOutOfBoundsException")`, which the
generator turns into `throw new java.lang.ArrayIndexOutOfBoundsException();` (no call, no import).
This is how a migrated method reproduces *when* the original fails and with *which* exception class,
e.g. a slice that leaves the array, a char above U+00FF, a delimiter that is a hex digit. Only
exceptions with a no-argument constructor can be thrown; library-specific exception classes (such as
hexutils' `HexConversionException`) cannot, because the migrated code must not depend on the library.

## Differential fuzzing (Jazzer)

`src/test/kotlin/porting/fuzz` holds coverage-guided differential fuzz targets
([Jazzer](https://github.com/CodeIntelligenceTesting/jazzer), `@FuzzTest`) for both corpus entries.
There are 34 targets: 28 compare the original API with generated migrated code; six
`*SpecFuzzTest` targets compare it with executable specification models for the currently
mutation/decode, dump and Base64IO streaming specification models. Base64IO additionally has two generated-code targets. Each JSON/Markdown report records its
`verification_kind` (`migrated` or `spec-conformance`). The new Harmless/model targets fail
on divergence; the existing targets record known differences unless `-Pfuzz.strict=true`.
Model checks include partial mutation, returned-array identity, PrintStream output/error
flags and stream ownership, rather than only returned values.

Base64 has separate targets for valid encoder/decoder slices, with arbitrary bytes outside the
decoder's slice, as well as unrestricted invalid slices. Round trips exercise all three decoder
input types (`String`, `char[]`, `byte[]`) with basic and MIME encodings.
Hex round trips cover the character-array and `CharSequence` overloads, including a mutable
`StringBuilder` input and overloads without a delimiter.

Gradle supplies Jazzer's shaded Byte Buddy instrumentation via a small generated startup agent
(`build/jazzer-agent/`), so tests also work in containers where dynamic JVM attachment fails.
If a restricted environment cannot write Kotlin's daemon directory, use
`-Pkotlin.compiler.execution.strategy=in-process` for a build without the compiler daemon.

```sh
./gradlew fuzzTest                         # every target in its own JVM, 30s each
./gradlew fuzzTest -Pfuzz.duration=5m      # longer
./gradlew fuzz_MigBase64FuzzTest_encodeSlice   # one target
```

Besides the divergence report, every target writes live logs to `build/fuzz-report/`:

- `<Class>.<method>.divergences.log`: every distinct input on which the two sides differ, with the full
  arguments and both results (the original's and the migrated one), grouped by kind of difference. Each
  kind is capped at 5000 lines (`-Pfuzz.maxPerCategory=N`); the log ends with how many were left out;
- `<Class>.<method>.coverage.log`: each input that reached new code, with the coverage status after it
  (edges, and line / branch / instruction percentages of the original library's classes), plus a final line;
- `<Class>.<method>.sample.log`: every 5 seconds (`-Pfuzz.sampleSeconds=N`) the argument set currently being
  checked, with the number of inputs so far and the current coverage.

`<Class>.<method>.coverage-report.txt` is Jazzer's own per-class JaCoCo report written at the end of the run.
Percentages are relative to the library classes loaded so far, so each target shows the slice of the
library it can reach (e.g. `decodeText` never touches the encoder).

In strict mode a finding's reproducer is saved to `build/fuzz-findings/<Class>.<method>/crash-*`, and
`fuzzTest` stays red while any exist. Plain `./gradlew test` runs the same targets in regression mode
(empty seed only).
The aggregate task also fails on missing reports, failed JUnit results, or wholly skipped targets.

## Convenience run configurations (not tests)

`migrateMath` / `migrateFile` Gradle tasks (and the matching "Migrate math"/"Migrate file" IDEA run
configurations) just run one core case and print its migration summary - useful for a quick look at
generated output without assertions. `CoreCasesTest` is the assertion-backed version of the same two
cases.

## Aggregating saved fuzz coverage

Run without a JVM or Gradle:

```sh
python3 tools/coverage_summary.py build/fuzz-report --output build/coverage-audit --expected-targets 34
python3 -m unittest discover -s tools -p 'test_*.py'
```

The tool merges coverage by intersecting missed-line sets, checks consistent source inventories and denominators, and requires a matching differential JSON for every coverage report. `--expected-targets` must match the intended experiment; update it when deliberately adding targets. Outputs: `coverage.md` and `coverage.json`, including input coverage-report hashes and exact comparison counts. Legacy reports lack run/bytecode identity, so the tool cannot prove that reports belong to one compatible experiment. Coverage includes calls used to prepare inputs. No branch-coverage union is inferred from aggregate counters.

## Aggregated branch coverage

Each fuzz task also writes `<Class>.<method>.exec`, containing Jazzer's execution probes.
To measure the union of covered branches across all 34 targets:

```sh
./gradlew fuzzTest fuzzBranchCoverage -Pfuzz.duration=30s
./gradlew fuzzBranchCoverage  # re-analyze existing probe dumps without fuzzing again
./gradlew fuzzBranchCoverage -Pbranch.kind=migrated -Pbranch.output=branch-coverage-migrated
./gradlew fuzzBranchCoverage -Pbranch.kind=spec-conformance -Pbranch.output=branch-coverage-spec
```

`build/branch-coverage/coverage.md` reports branch and line counters per source file and for
both complete corpus jars, including uncalled classes. It also states the verification mix;
`targets.csv` lists each included target and kind. Report migrated-only coverage separately
when making claims about migration verification. `methods.csv` breaks these down by method; `missed-branches.tsv`
lists source lines with uncovered branches; `merged.exec` preserves the union and `inputs.tsv`
records SHA-256 hashes of input jars, probe dumps and recorded bytecode snapshots
(`<Class>.<method>.classes.jar`). These snapshots preserve JVM retransformation changes;
all targets must agree on the recorded bytes for a given class. For one saved target, use e.g.
`-Pbranch.targets=MigBase64FuzzTest.roundTrip` (comma-separated names are also accepted).

The analyzer merges boolean probe arrays by OR, keyed by class bytecode ID, and rejects
bytecode mismatches and incompatible probe layouts. It uses Jazzer 0.30.0's modified JaCoCo
analyzer, matching the probe layout used during fuzzing. These are bytecode branches for
`if`/`switch`; exception edges are excluded. Coverage includes input preparation calls and
uncalled classes in the denominator. It measures the original libraries, not the migrator,
generated wrappers, or JDK implementations, and is not MC/DC coverage.

## Streaming encoder specification

[STREAMING_ENCODING_SPEC.md](SpecCorpus/hexutils-to-java-hexformat/STREAMING_ENCODING_SPEC.md)
defines the ordered I/O effects, state machine, int32 wrapping arithmetic, resource ownership,
failure behavior and file options of both `bytesToHexStreaming` overloads.
`StreamingHexSpecificationTest` checks an executable specification against the original jar,
including traces and partial writes; this is specification conformance, separate from the
migrated-code differential corpus. The document identifies loop/resource proof obligations
required before the streaming overloads can enter the active LibSL migration pair.

## Base64IO streaming specification

[BASE64IO_SPEC.md](SpecCorpus/migbase64-to-java-util-base64/BASE64IO_SPEC.md) describes
MiGBase64's 98,304-byte read window, output packet scheduling, charset-dependent alphabet,
zero-length writes, I/O failures and the missing CRLF before certain padded tails.
The independent model uses JDK Base64 value primitives while retaining the original stream
protocol. `Base64IOSpecFuzzTest.encode` and `.failures` compare complete output and I/O traces
in strict specification-conformance mode; they are not evidence of a generated migration.
The public constructor is checked explicitly by the model target and reported separately from encode calls.
`Base64IOFuzzTest.encode` and `.failures` reuse the same inputs but execute the code generated
from the LibSL pair. They do not count the source constructor as a migrated operation.
The loop body is a trusted target binding inside the specification; SMT matches the semantic
action and its parameters, not an inductive proof of the Java loop body.

## IntelliJ IDEA

See [INTELLIJ_TESTING.md](INTELLIJ_TESTING.md) for opening the project, selecting the
Gradle test runner, running JUnit tests and reproducing the full-jar coverage measurement.
Shared configurations include `All Tests`, `Tests - hex loop migrations`,
`Coverage - fresh fuzz run (3s each)` and `Coverage - saved migrated probes`.
For this measurement run the coverage configuration normally: Jazzer already collects
its own probes. IDEA's built-in coverage of project code is a different report.

The additional active pairs are `hexharmless-effects.lsl` + `java-hexformat.lsl`
and `hexdump-source.lsl` + `hexdump-jdk.lsl`. Their generic alphabet-map and row/effect
loop contracts have explicit JDK bindings. Tests compare actually generated code,
including partial mutation, exceptions, locale and PrintStream behavior. The solver
matches semantic contracts and parameters; no internal inductive proof of the bindings
is claimed. HexDump callers retain the original HexCase enum in their public signatures;
the target row renderer itself uses JDK types and does not call HexDump.

## Specification refinement (2026-11-14)

Only LibSL specifications and their standard-JDK bindings were extended. No new Java
compatibility implementation, source-library decoder call, exception normalization,
or restriction of fuzz inputs was introduced. Existing exact comparison still includes
exception classes and (for file decoding) the output-file state after failure.

The same fixed corpora were checked before and after refinement on OpenJDK 17.0.21:

| Library | Comparisons | Matches before | Matches after |
|---|---:|---:|---:|
| MiGBase64 2.2 | 468,477 | 431,268 | 468,477 |
| hexutils 1.0.0 | 1,800,616 | 1,767,160 | 1,778,496 |

Both original test classes pass (48 tests), and both refined classes pass with their
updated exact-count assertions and new regression cases (53 tests). The frozen
2026-11-03 Jazzer seeds also produce 755 -> 369 differences in the same 1,528 comparisons;
all Base64 differences in that replay are removed. The canonical migration generates
and compiles the candidate Java API before testing. The frozen replay reuses those
verified Base64 classes as a build cache; its test methods and comparison are unchanged.

The fast-decoder model now describes boundary trimming, size and padding arithmetic,
unsigned boundary versus signed byte-table lookup, raw UTF-16 units (including isolated
surrogates), quartet signed-OR effects, actual CRLF block skipping, and the rare Java
shift wrap in a six-symbol malformed tail. These are realized through ordinary JDK
operations (Base64, String/regex, Math, byte streams, ByteBuffer and Byte), without an
inline decoding loop. Hex delimiter parsing now checks the raw size, normalizes literal
delimiters, preserves preallocated zero-filled output, and reproduces index failures.

Final targeted Jazzer runs used a 30-second budget per target:

| Target | Comparisons | Differences |
|---|---:|---:|
| `MigBase64FuzzTest.decodeBytes` | 542,164 | 0 |
| `MigBase64FuzzTest.decodeText` | 526,212 | 0 |
| `MigBase64FuzzTest.decodeFastInContract` | 405,969 | 0 |
| `HexutilsFuzzTest.decode` | 718,040 | 302,720 |
| `HexutilsStreamingFuzzTest.decodeFile` | 46,953 | 38,510 |
| `HexutilsStreamingFuzzTest.decodeFileRoundTrip` | 72,788 | 0 |

Remaining hex differences include the source-only `HexConversionException`, malformed
delimiter behavior, and file creation/truncation/partial-write effects before failure.
These remain real differences; the original exception class is not available through
standard JDK APIs. The current whole-file composition does not model all exceptional
streaming effects. Zero observed differences in Base64 checks is not a universal proof.

Results and raw reports are archived in
`build/measurements/20261114-spec-refinement.zip` (including source hashes, original/refined
specs, generated APIs, original/refined JUnit logs, frozen-seed reports, and final fuzz reports).
The local Gradle attempt was blocked by an existing journal-cache lock. Tests were compiled
with cached Kotlin 2.1.10 and run through JUnit Platform using the unchanged application classes.
Normal reproduction in a configured Gradle environment:

```sh
./gradlew test --tests porting.corpus.MigBase64CorpusTest --tests porting.corpus.HexutilsCorpusTest
./gradlew fuzz_MigBase64FuzzTest_decodeText fuzz_MigBase64FuzzTest_decodeBytes fuzz_MigBase64FuzzTest_decodeFastInContract -Pfuzz.duration=30s
./gradlew fuzz_HexutilsFuzzTest_decode fuzz_HexutilsStreamingFuzzTest_decodeFile fuzz_HexutilsStreamingFuzzTest_decodeFileRoundTrip -Pfuzz.duration=30s
```

The article's historical 205,621,031-comparison experiment and its 99.6698% figure are
unchanged. These targeted results must not be substituted for its aggregate: input
weights and throughput differ. A new full experiment is required before updating that
percentage or coverage; LibSL and target-function counts also need to be recomputed.

## Hexutils follow-up (2026-11-14)

This follow-up supersedes the hex string/file model in the preceding refinement.
Only the three hex LibSL files and `HexutilsCorpusTest.kt` were changed. The original
library, input generators and exact outcome comparison remain unchanged. No Java
compatibility decoder body was added.

String decoding now recognizes delimiter **characters** only between byte pairs,
preserves raw-length validation and zero-filled preallocation, and gives allocation
overflow priority over later malformed input. An incomplete last pair is distinguished
from invalid digits. Stream decoding separately recognizes complete delimiter **strings**,
CR/LF anywhere between nibbles, and accepted incomplete delimiters/nibbles at EOF.

For distinct regular files the generated JDK composition reads raw bytes, initializes
the output with the requested options before delimiter validation, writes the valid
decoded prefix, and preserves APPEND / non-truncating WRITE behavior. This fixes output
creation/truncation and partial bytes after errors, plus CREATE_NEW/APPEND exception
priority. All opened JDK streams are scoped inside Files operations. Aliased paths and
mid-read failures remain outside this whole-file snapshot model.

`THROW_INVALID_HEX` denotes an abstract terminal rejection. Its concrete exception
class is explicitly omitted from the shared action: hexutils uses HexConversionException,
the JDK binding uses NumberFormatException. Differential tests still compare the concrete
classes exactly and retain these differences. Test success is not a claim of full equivalence.

On deterministic before/after checks of the actual generated API (seed 333):

| Check | Comparisons | Differences before | Differences after | New regressions |
|---|---:|---:|---:|---:|
| Strings | 100,000 | 26,178 | 25,993 | 0 |
| Files | 3,000 | 2,798 | 1,864 | 0 |

All 3,000 output-file states match after refinement. Every remaining mismatch in these
checks has the source HexConversionException. The previous fixed 1,800,616-comparison
corpus stays at 1,778,496 matches / 22,120 differences: it does not exercise the new file
scenarios and rare delimiter/index regressions. No baseline expectation was relaxed.

Frozen seed replay uses the same 303 inputs / 714 comparisons for both versions:
369 -> 343 exact differences (string overloads 216 -> 208; files 153 -> 135).
Replays reuse verified generated classes only as a build cache; target methods and
comparison code are unchanged. The 26 strict JUnit tests pass, including existing
HexHarmless tests, a file-state/open-options grid, and explicit tests of the retained
source-only exception-class difference.

Final 30-second Jazzer runs:

| Target | Comparisons | Exact differences |
|---|---:|---:|
| `HexutilsFuzzTest.decode` | 558,896 | 245,282 |
| `HexutilsStreamingFuzzTest.decodeFile` | 63,255 | 46,887 |
| `HexutilsStreamingFuzzTest.decodeFileRoundTrip` | 105,380 | 0 |

The malformed-string report contains only HexConversionException versus NumberFormatException.
The malformed-file report also represents changed output files as values containing both
exception name and file contents; differing exception names still count as an exact mismatch.
The deterministic file-state checks above assess actual output bytes separately without
changing the primary exact comparison.

Raw reports, before/after specs, generated candidates, source hashes and verification
runners are saved in `build/measurements/20261114-hex-refinement.zip`. The earlier archive
is preserved. Full all-target fuzzing and coverage were not repeated; the article's
historical aggregate has not been changed. Normal reproduction:

```sh
./gradlew test --tests porting.corpus.HexutilsCorpusTest --tests porting.corpus.HexHarmlessMigrationTest
./gradlew fuzz_HexutilsFuzzTest_decode fuzz_HexutilsStreamingFuzzTest_decodeFile fuzz_HexutilsStreamingFuzzTest_decodeFileRoundTrip -Pfuzz.duration=30s
```


## Shared semantic porting core

SMT/SSA implementation is supplied by the Maven library
`ru.vpa.porting:semantic-porting-core:0.2.0`, hosted at
`https://maven.pkg.github.com/vpa-porting/semantic-porting-core`.
The repository is private: configure `gpr.user` and a `read:packages` token as `gpr.key`
in your personal Gradle properties, or use GITHUB_ACTOR/GITHUB_TOKEN environment variables.
Never commit credentials. CI supports SEMANTIC_CORE_TOKEN when its GITHUB_TOKEN has no
access to the package. A source checkout of the core is not required for a normal build.

For joint source development only, pass `-PsemanticCoreDir=/path/to/semantic-porting-core`.
For artifact-only integration checks, pass `-PsemanticCoreRepository=file:///path/to/maven-repository`.
Java/ArkTS bindings remain in this project; do not restore duplicate solver packages.

## Local build with the shared core

Install JDK 17 and 21; use JDK 21 for Gradle (`JAVA_HOME`). Java tests require JDK 21.
Use the checked-in Gradle wrapper; a system Gradle installation is unnecessary.

For the published package, add these keys to **your own** `~/.gradle/gradle.properties`:

```properties
gpr.user=YOUR_GITHUB_LOGIN
gpr.key=YOUR_ACTUAL_CLASSIC_PAT
```

The value must be a real GitHub PAT classic with `read:packages`, owned by an account
with access to the private core. GitHub Actions secrets are not available on your laptop.
Do not put the token in project files or command arguments. Authorize organization SSO if required.

```sh
./gradlew build
```

To work on both repositories without downloading the private core artifact:

```sh
./gradlew -PsemanticCoreDir=../semantic-porting-core build
```

This explicitly substitutes the Maven dependency with the local core source build.
Public dependencies still need network access on first resolution. To test offline later,
first resolve all dependencies and JDKs online, then add `--offline`.
An HTTP 401/404 for the core POM indicates missing credentials or package access.

The shared terminal-action contract is defined in core 0.2.0:
`@Terminal` belongs on action declarations. Names such as `THROW_*` and backend
exception bindings do not imply termination. See
[the standard and migration guide](https://github.com/vpa-porting/semantic-porting-core/blob/v0.2.0/docs/smt/TERMINAL-STANDARD.md).
