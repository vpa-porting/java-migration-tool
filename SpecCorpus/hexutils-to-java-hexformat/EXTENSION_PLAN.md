# HexHarmless and HexDump: implementation and verification plan

The primary artifact is a faithful specification. Branch coverage measures execution;
it does not prove migration equivalence. Keep migrated-code differential checks separate
from checks against an executable specification model. Do not introduce a target adapter
calling the original library or a single opaque action representing an entire new API.

Baseline: all five classes of hexutils 1.0.0 are included in the denominator. The existing
19 targets cover 142/193 branches (73.58%): Hex 142/142, HexHarmless 0/31, HexDump 0/20.
The source artifact is `net.lbruun:hexutils:1.0.0: sources`; SHA-256:
`354f9489d068909d987cee205792d7fa25d2b35f8d0ee5358eccdf8a235a4bb2`.
A local copy is saved under `build/source-audit/` for review.

## Work order and acceptance gates

1. Audit every overload against original sources and bytecode, including null/error order,
   mutation, identity, output and environmental dependencies. Document the observations below.
2. Implement finite-trace LibSL specifications for the exact Harmless scalar/byte-encoding
   subset. Use ordinary JDK primitives for the target; run parse → SMT synthesis → generated
   Java → javac → original/generated comparison. Exhaust the UTF-16 scalar domain and byte domain.
3. Specify the remaining Harmless array/decode behavior operationally. Validate an independent
   executable model against the jar, comparing the mutated input even when the call throws.
   A return-value-only comparison is insufficient. These checks are not synthesized migrations.
4. Specify HexDump's row layout mathematically and each wrapper's validation/output protocol.
   Validate an independent JDK-based row model, including locale and output ownership. Avoid
   copying original loops or using original HexDump as the model implementation.
5. Add explicit migrated vs specification-conformance fuzz targets, deterministic boundary
   seeds/checks, and strict runs. Instrument original library classes only. Save probe and
   bytecode snapshots; merge by bytecode identity, retaining all jar classes in denominators.
6. Report full-library coverage for all targets and separately for migrated targets. Any
   remaining branch must be traced to its source condition. Never lower the denominator to
   the methods that happen to have specifications.

## HexHarmless normative contract

Classic alphabet `C = 0123456789abcdef`; harmless alphabet `H = gh2k456789mbcdtf`.
The bijection is defined by corresponding positions. In particular 0→g, 1→h, 3→k,
a→m, e→t; all other permitted digits are unchanged. Both alphabets are lowercase only.
These maps are fixed by the implementation: mutating the public `HARMLESS_HEX_CHARS`
array does not change conversion behavior. The specification uses immutable alphabets.

| API | Contract, including exceptional effects |
|---|---|
| `convertToHarmless(char)` / `convertFromHarmless(char)` | Apply the forward/inverse bijection; other UTF-16 code units throw IllegalArgumentException. Uppercase is rejected. |
| Same methods on `char[]` | Null→null. Process indices in increasing order, assigning each mapped character in place. Return the identical array. On the first invalid element, throw IllegalArgumentException; earlier elements stay converted and the invalid element/suffix are unchanged. Empty arrays preserve identity. |
| `byteToHexHarmless(byte)` | Unsigned two-digit lowercase hex, then forward-map both digits; return a fresh char array. |
| `bytesToHexHarmless(byte[])` | Null→null; otherwise concatenate the two-digit encoding of each byte, returning a fresh char array without changing input. |
| `bytesToHexStrHarmless(byte[])` | Same encoding as a String; null throws NullPointerException because the original constructs String from a null char array. |
| `hexCharHarmlessToByte(char,char)` | Inverse-map first char, then second; compute high*16+low with byte narrowing. Invalid input throws IllegalArgumentException. |
| `hexStrHarmlessToBytes(char[])` | Null→null. Inverse-map the caller's array in place first; then parse classic hex. Invalid input can leave a converted prefix. Odd length throws IllegalArgumentException after conversion, leaving the whole converted array. Empty→empty bytes. |
| `hexStrHarmlessToBytes(CharSequence)` | Null→null. Inverse-map into a new char array by repeated length()/charAt(i) calls, then parse. Caller is not mutated. Invalid code units throw IllegalArgumentException before odd-length validation. Odd valid input throws IllegalArgumentException. |

The supported CharSequence model covers stable Strings/StringBuilders, not hostile or
concurrently mutated implementations with observable length()/charAt() side effects.
String reference identity, exception messages, stack traces and allocation-failure behavior
are outside value/side-effect comparison; String contents are compared. Fresh returned
char arrays and input-array identity/mutation have the contracts stated above.
Array identity, input mutation, exception class and partial mutation are inside it.

### LibSL realization and proof boundaries

Scalar mappings are finite branches returning character literals or the unchanged input,
with explicit IllegalArgumentException paths. Byte encoders compose shared HEX_BYTE_LOWER /
HEX_STR_LOWER semantics with five ordinary String.replace(char,char) primitives and
String.toCharArray. Replacement domains/ranges are disjoint, so composition cannot remap
a freshly introduced character; exhaustive byte tests validate the JDK realization.

The SMT result proves equivalence relative to these shared action contracts, not their
independent truth. The scalar domain is exhaustively checked against the original jar.
Array mapping requires a loop with a prefix-mutation invariant and exceptional exits.
Decoders must preserve validation after prefix mutation and the original CharSequence
traversal contract. Odd valid input uses IllegalArgumentException, not the custom
HexConversionException: inverse mapping guarantees that malformed hex digits cannot reach
the classic parser. Loop-carried mutation is not represented by the current acyclic engine.
Keep those methods out of the active migration pair until these obligations are implemented.

## HexDump normative contract

Defaults: uppercase, 16 bytes per row, indent 4, platform line separator.
Let n be array length, w bytesPerLine, k indent. For valid w>0 and k>=0:

* Number of rows is `n/w + (n%w == 0 ? 0 : 1)`; empty input gives no rows.
* Counter width is max(4, decimal digit count of n), based on the total length rather
  than the last offset. For n=0, the original floating-point computation still yields width 4.
* Row j has k spaces, then `String.format("%0"+width+"d : ", j*w)` using the default
  FORMAT locale. Do not hard-code ASCII digits in place of localized decimal formatting.
* The hex field contains exactly w two-character slots separated by one ASCII space.
  Slots past n are two spaces. Real bytes use upper hex iff case==UPPER; null case is lower.
* Append `"  |"`, then w display characters, then `"|"`. Missing slots use spaces;
  real bytes in unsigned range 32..126 display as ASCII, all others as `.`.
* Array-returning methods return these rows without separators. String-returning methods
  append the selected separator after **every** row, including the last. Null separator
  appends the literal `"null"`; empty input returns an empty string.
* PrintStream methods call println(String) once per row, without explicit flush/close.
  Preserve the supplied stream's error flag behavior; PrintStream may suppress IOExceptions.
  A null stream succeeds for empty input, but fails at the first row for nonempty input.

Validation order differs by overload:

* String/PrintStream paths: require input non-null, reject w<1, reject k<0, render rows.
* Array-returning path: access input.length and allocate String[getNoOfLines(n,w)]
  **before** the common validator. Therefore w=0 throws ArithmeticException, not
  IllegalArgumentException. Negative w can produce NegativeArraySizeException, or reach
  IllegalArgumentException if the computed count is nonnegative. Null input wins first.
* Buffer capacity is computed with Java int32 arithmetic as `k + counterWidth + 4*w + 6`.
  The row StringBuilder is allocated only when a row is emitted. Overflow can produce
  NegativeArraySizeException before any printed row. Huge positive allocations/OOM and
  JVM resource limits are outside bounded conformance fuzzing, not silently reclassified.

The row specification is implemented independently via HexFormat, String.format and
padding/joining. Array overload allocation/validation is modeled separately. Calls using
enormous positive widths/indentation must be rejected by the test generator before invoking
either implementation, not by altering the library specification. Test finite overflow
witnesses whose arithmetic gives negative capacity without allocating huge buffers.

### Required engine support for complete HexDump migration

Use reusable sequence primitives (chunk, enumerate, pad, render row) with explicit
contracts and a generic fold/loop refinement, not an opaque DUMP_ALL action. A PrintStream
consumer additionally needs an ordered effect trace and exception/ownership frame. Model
locale and separator as environmental inputs. Preserve wrapper-specific validation before
reusing a common row renderer. Until these constructs are proved/generated by the tool,
classify executable-model checks as specification conformance, not migrated-code equivalence.

## Completion record

Implemented and checked:

| API subset | Active LibSL + synthesized code | Executable-model conformance |
|---|---|---|
| Harmless scalar forward/inverse maps | Yes; all 65,536 UTF-16 inputs for each direction | Fixed lookup-map oracle also used by array tests |
| Harmless byte, byte-array and String encoders | Yes; all 256 byte values, null/empty/bulk cases | Model available; migration tests compare actual generated code |
| Harmless digit-pair decoder | Yes; all 256 valid pairs plus invalid/boundary pairs and fuzzing | Model available |
| Harmless in-place maps and array/CharSequence decoders (four overloads) | Pending loop/exception-frame support | Yes; mutation and returned-array identity checked on both normal and exceptional exits |
| HexDump (seven public overloads) | Pending sequence-fold/row-renderer/output-effect support | Yes; all seven overloads, locale, error order, overflow witnesses, PrintStream behavior |

Six of ten Harmless overloads are migrated through `hexharmless.lsl` and the ordinary target
`java-hexformat.lsl`. Generated code compiles with an empty classpath, removing dependency
on the original jar. The migrator now removes unused explicit source-owner imports while
preserving imports that still have AST references. Java `char` sorts/literals use 16 bits;
numeric comparisons promote them without sign extension. These changes have regression tests.

Validation: `build` and all **105 JUnit tests passed**. The scalar/byte/pair migration tests
perform 132,015 deterministic comparisons, in addition to fuzzing. All seven new fuzz targets
completed with zero differences in the saved reports (22 migrated targets + four model targets
in total). The new targets run in strict mode; model mismatches also fail regression tests.

Measured branch coverage, same complete hexutils jar denominator in every row:

| Scope | HexHarmless | HexDump | All hexutils classes |
|---|---:|---:|---:|
| Before this extension (19 targets) | 0/31 | 0/20 | 142/193 (73.58%) |
| Migrated-code targets only (22) | 21/31 | 0/20 | 163/193 (84.46%) |
| All targets, including model conformance (26) | 31/31 | 20/20 | 193/193 (100.00%) |

The migrated-only Harmless coverage also includes its internal forward-array mapper as
part of byte encoding; that is not a claim that the public in-place mapping overload was
synthesized. Coverage includes preparation calls, and JaCoCo excludes exception edges.
It is execution coverage, not a count of proved or behaviorally distinguished branches.
Eight Hex wrapper lines remain unexecuted in the fuzz measurements; hexutils line coverage
is 288/296 (97.30%) when model targets are included. Ordinary JUnit-only executions are
not mixed into these probe measurements.

Review artifacts:

* `build/branch-coverage/coverage.md`: combined execution coverage;
* `build/branch-coverage-migrated/coverage.md`: generated-code targets only;
* `build/branch-coverage-spec/coverage.md`: model-conformance targets only;
* each directory contains a full jar inventory count, targets/verification kinds, per-method
  counters, uncovered branch lines and input SHA-256 hashes;
* `build/fuzz-report/*.json`: per-target comparisons and differences with explicit kinds.

JVM enum retransformation can reorder methods and change bytecode IDs. The Harmless encoder
target loads/links enum metadata in BeforeAll, matching the other targets, without executing
the enum initializer. The analyzer continues to reject differing snapshots; no probes are
relabelled or heuristically merged. Affected targets were rerun to obtain compatible data.

The original implementation gate above has now been addressed using semantic loop actions,
as explicitly permitted for this project. See the following update for the active pairs;
internal inductive proofs of target bindings are still not claimed.

## Update: active semantic-loop migrations

Four Harmless methods are now specified in `specs/hexharmless-effects.lsl` and realized
by `java-hexformat.lsl`. The shared MAP_ALPHABET_IN_PLACE and MAP_ALPHABET_SEQUENCE
contracts describe ordered UTF-16 mapping, prefix mutation/exception exits, null policy
and identity. Decoding composes those loops with ordinary String construction and
HexFormat.parseHex; no source-library decode implementation is called.

All seven HexDump overloads now pass through `hexdump-source.lsl` / `hexdump-jdk.lsl`.
Separate array, string and PrintStream loop/effect contracts preserve wrapper-specific
validation/allocation order. Default platform separators compose through System.lineSeparator.
The JDK binding uses the independently audited block-layout algorithm. Its renderer takes
Enum<?> and observes null/name; the generated caller retains the original HexCase boundary
type in its signature. This is type compatibility, not a dependency on the source formatter.
There is consequently no claim that the Dump caller compiles without the enum's jar.
Harmless generated code is checked by compilation with an empty classpath.

Target bindings are inside LibSL JavaAccessor expressions and emitted inline. Source/model
classes are not called from generated code. The existing solver matches action contracts
and parameters; it does not prove the Java implementation of each abstract loop by induction.
Runtime trace/value tests and strict original/generated fuzz checks validate that boundary.

`HexLoopsMigrationTest` verifies mutation on failure, array identity, odd input, wrapper
validation order, padding, default FORMAT locales including ar-EG, 9999/10000-byte counter
widths, int32 capacity overflow witnesses, null PrintStreams, partial output, error flags,
autoflush and ownership. Four additional migrated-code fuzz targets reuse the conformance
input generators while selecting the actual generated classes as candidates.

Validation: **127 JUnit tests passed**, no failures/skips; **881,444 new original/generated
comparisons**, zero differences in the four 10-second fuzz runs. Both source projects
reported complete migration (4/4 and 7/7 calls). Combined compatible saved probes now contain
34 targets: 28 migrated and six executable-model targets.

Migrated-target coverage of the complete hexutils jar increased from **214/296 lines
(72.30%) and 163/193 branches (84.46%)** to **288/296 lines (97.30%) and 193/193 branches
(100%)**. Harmless has 43/43 lines and 31/31 branches; Dump has 60/60 lines and 20/20 branches.
The eight remaining Hex lines are the two streaming encoder wrappers described separately
in STREAMING_ENCODING_SPEC.md; they were not added to the active pair by this update.
All original classes remain in every denominator; preparation calls are included, and
coverage still means execution, not semantic completeness or an inductive proof.

Review `build/branch-coverage-migrated/coverage.md` and `targets.csv` for the migrated-only
scope. The combined report adds the separate model targets. Reports were recomputed from
compatible saved datasets plus the four new runs, not presented as a new full experiment.
IntelliJ reproduction steps and ready-to-run configurations are in `INTELLIJ_TESTING.md`.

A dedicated migrated-hex report is saved in `build/branch-coverage-hex-migrated/`.
It includes the 17 migrated-code Hex targets and has verified input hashes. This
isolates the hex measurement from concurrent MiGBase64 fuzz runs that can replace
files in build/fuzz-report. Do not run two fresh coverage/fuzz configurations against
the same output directory simultaneously; wait for completion before re-aggregating.
