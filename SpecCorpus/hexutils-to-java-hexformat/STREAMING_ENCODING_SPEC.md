# Normative specification of hexutils 1.0.0 streaming encoding

Status: operational specification and executable conformance oracle. This document is
not an assertion that the current finite-trace LibSL/SMT pipeline can migrate these calls.
`StreamingHexModel` in `src/test/java/porting/spec` implements the machine below for testing.
It is not a target library, generated adapter, or evidence of a proved migration.

Source of truth: Maven artifact `net.lbruun:hexutils:1.0.0`, source `Hex.java`,
private encoder at lines 237–269; public stream wrapper at 300–302; public file
wrapper at 338–345; delimiter validation at 667–683. The source artifact is
`https://repo.maven.apache.org/maven2/net/lbruun/hexutils/1.0.0/hexutils-1.0.0-sources.jar`.

## Observable contract and scope

Specify an ordered I/O trace, rather than just the final encoded string. Observations are:

* the order and overload of `read()`, `write(int)`, `write(byte[])`, `flush()` and `close()`;
* the bytes consumed and committed before success or failure, including half a hex pair;
* file existence, content, truncation/append effects and aliasing;
* normal `void` completion, or the propagated exception, its identity for injected I/O failures,
  and ordered suppressed exceptions created by resource handling.

Exception messages, stack traces, allocation counts, timing, VM/resource exhaustion errors,
concurrent mutation of input files and caller streams, and hostile streams mutating the
byte array supplied to `write(byte[])` are outside this observational model. Such array
mutation could change the encoder's retained delimiter/newline buffers; they are treated
as immutable by this specification. Ordinary I/O failures and nulls are inside the model.
Progress is conditional on each I/O operation returning or throwing. No termination is
promised for infinite inputs or an aliasing file operation that continually appends to its input.

## Primitive effects for a shared vocabulary

Each primitive must describe an actual JDK operation independently of hexutils:

| Effect | Semantics |
|---|---|
| `READ_BYTE(s)` | Exactly `s.read()`: return `-1` or an octet, or propagate the failure. No `available()`, bulk read or prefetch at this level. |
| `WRITE_BYTE(s, b)` | Exactly `s.write(b)`; observe partial output if it throws. |
| `WRITE_ARRAY(s, a)` | Exactly the dynamically dispatched `s.write(a)`, even when `a.length == 0`. |
| `ASCII(s)` | `s.getBytes(StandardCharsets.US_ASCII)`; used only for a validated delimiter or the platform newline. |
| `PLATFORM_NEWLINE()` | `System.lineSeparator()`, not a hard-coded LF and not a fresh property lookup. |
| `HEX_PAIR(b, upper)` | Two ASCII digits of octet `b`; uppercase iff `upper` is true. Target witness: `HexFormat` with the corresponding case, `toHexDigits((byte)b)`. |
| `OPEN_READ(p)` | `Files.newInputStream(p)` with no explicit options. |
| `OPEN_WRITE(p, opts)` | `Files.newOutputStream(p, opts)` with the original array, including null. Preserve JDK option validation and creation/truncation effects. |
| `BUFFER_INPUT(s)` / `BUFFER_OUTPUT(s)` | The ordinary one-argument `BufferedInputStream` / `BufferedOutputStream` constructors of the test JDK. Their read-ahead, buffering, flush and close behavior remains observable at the underlying stream/file. |
| `WITH_RESOURCES(r1, r2, body)` | Java try-with-resources, including partial acquisition, reverse close order, primary/suppressed failures and failures while adding suppression. This is a structured control construct, not an uninterpreted atomic action. |

An opaque action named after the entire encoder would only assume equivalence. Instead,
the shared vocabulary needs these small effects plus the iteration/resource constructs
specified below. Bulk read/format/write is a separate, weaker contract and must not be
substituted for this streaming contract.

## Common encoder machine `E(input, output, case, delim, maxChars)`

All counters and arithmetic below are signed Java 32-bit integers. Addition/increment
wrap modulo 2^32; division truncates toward zero. Do not silently use mathematical integers.

### Initialization, in order

1. Validate `delim`: null and empty are accepted. Every UTF-16 code unit of a nonempty
   delimiter must belong to `[32,126]` and must not be an ASCII hex digit. Otherwise
   terminate with `IllegalArgumentException` before any stream access.
2. Obtain `lineEnd = ASCII(PLATFORM_NEWLINE())`.
3. If `delim == null`, set `separator = null`, `d = 0`; otherwise set
   `separator = ASCII(delim)`, `d = separator.length`. Preserve null versus empty.
4. Compute `q = (maxChars + d) / (d + 2)` with the arithmetic above, even if wrapping
   is disabled. Set `firstWritten = false`, `onLine = 0`, phase `READ`.

There is no eager null check of `input`, `output` or `case`. A null `case` selects
lowercase. In particular, empty input with a null output succeeds; null input fails
on the first read, after delimiter validation.

### Transition relation

Execute the effect before advancing to the next phase. A thrown effect terminates the
machine immediately with that exception and its already committed effects.

| Phase / guard | Effect and state transition |
|---|---|
| `READ` | Execute `b = READ_BYTE(input)`. If `b == -1`, return normally. Otherwise retain `pair = HEX_PAIR(b, case == UPPER)` and go to `PREFIX`. |
| `PREFIX`, separator is null | Go to `HIGH`; leave `firstWritten` unchanged. |
| `PREFIX`, separator non-null and `firstWritten == false` | Set `firstWritten = true`; go to `HIGH`. |
| `PREFIX`, separator non-null and `firstWritten == true` | Execute `WRITE_ARRAY(output, separator)`; go to `HIGH`. Empty arrays still cause a call. |
| `HIGH` | Execute `WRITE_BYTE(output, pair[0])`; go to `LOW`. |
| `LOW`, `maxChars == -1` | Execute `WRITE_BYTE(output, pair[1])`; go to `READ`, without changing the counter. |
| `LOW`, `maxChars != -1` | Execute `WRITE_BYTE(output, pair[1])`; increment `onLine`. Go to `NEWLINE` iff `onLine == q`, otherwise `READ`. |
| `NEWLINE` | Execute `WRITE_ARRAY(output, lineEnd)`. Set `firstWritten = false`, `onLine = 0`; go to `READ`. |

The stream protocol never flushes or closes either argument. A read failure propagates
after earlier successful writes; a low-digit write failure can leave one high digit;
a delimiter/newline bulk write can leave any prefix permitted by that output stream.
No read of the next byte occurs until all writes for the current byte complete.

### Derived successful-output law and invariants

For finite fault-free input and positive `q`, wrapping enabled, the output is blocks
of at most `q` input bytes, formatted with `separator` between pairs **inside each block**.
Each full block is followed by the platform newline, including a final full block.
A final short block has no trailing newline. For wrapping disabled, encode one block.

For `q <= 0`, short executions do not wrap. The exact machine still uses the int32
counter: after sufficient increments it can wrap and meet a zero/negative quota.
Consequently, “`q <= 0` means never wrap” is not a valid unbounded specification.
Very large positive `maxChars` can yield a negative `q` due to addition overflow.
Values other than `-1`, including zero and negative values, are not rejected.

Loop invariants to prove for a target:

* input bytes are processed in order, with at most one read byte pending encoding;
* committed output is the corresponding prefix of the machine's effect trace;
* each pending octet has exactly one upper/lower pair, independent of signed-byte promotion;
* `onLine` counts completed byte pairs since the most recent successful newline modulo 2^32
  when wrapping is enabled, and stays zero otherwise;
* `firstWritten` is the state in the transition table, distinguishing null from empty delimiter;
* no loop-local allocation retains input history; live storage is O(delimiter length + newline length).

## Public overload 1: caller-owned streams

```text
bytesToHexStreaming(InputStream in, OutputStream out, HexCase case, String delim)
    ≡ E(in, out, case, delim, -1)
```

Keep exactly the caller's stream identities. Do not introduce buffering, closing,
flushing, read-ahead or `readAllBytes()`. For example, valid input `[0xab, 0xcd]`
with `delim = ""` causes `read, write('a'), write('b'), read, write([]), write('c'),
write('d'), read(EOF)`. With a null delimiter the empty-array write is absent.

## Public overload 2: paths and output options

```text
bytesToHexStreaming(Path in, Path out, HexCase case, String delim,
                    int maxChars, OpenOption[] opts) ≡
    WITH_RESOURCES(
        bufferedIn  := BUFFER_INPUT(OPEN_READ(in)),
        bufferedOut := BUFFER_OUTPUT(OPEN_WRITE(out, opts)),
        E(bufferedIn, bufferedOut, case, delim, maxChars))
```

Acquisition is left to right and occurs **before delimiter validation**. Close in reverse
order, including exceptional exits. If output acquisition fails, close the acquired input;
do not validate the delimiter. If the body fails, still close/flush the buffered output.
That flush can commit a prefix of buffered output and can itself fail. Preserve Java's
try-with-resources suppression behavior rather than replacing the primary failure.

Default options create/truncate the output. An invalid delimiter can therefore leave an
empty/truncated output. `CREATE_NEW` on an existing output fails before delimiter validation.
`APPEND`, `WRITE+CREATE` without truncation, incompatible options, null option arrays and
missing paths follow `Files.newOutputStream`, not a simplified “write replaces file” action.

Do not assume distinct paths: with identical input/output and default truncation the input
is opened, output is truncated before the first buffered read, and encoding sees EOF.
Symbolic/hard-link aliases must have the same interpretation. Appending to one's own input
need not terminate and is excluded from finite conformance sweeps, not from the semantic model.

## How to express and realize this in the migration tool

Current `PStat`/SSA/trace generation supports declarations, effects and acyclic `if` trees.
The generator emits call sequences and conditions. It has no loop invariant/induction,
loop-carried state, exception handlers or resource scopes. Therefore a faithful pair of
source/target `.lsl` specifications cannot currently be lowered by the full pipeline.

Required extension, in dependency order:

1. Add a structured stream-fold node with explicit state `(phase, pair, firstWritten, onLine)`;
   preserve effect order and termination/failure exits. Do not finitely unroll arbitrary streams.
2. Give each primitive effect normal/exceptional postconditions and a frame describing what
   it may modify. Resource scopes must retain the primary exception and ordered suppression.
3. For source and target, state the machine above in this shared vocabulary. The target can
   use `HexFormat.toHexDigits((byte)b)` for the pair, and ordinary JDK reads/writes/buffers.
4. Prove initialization, each transition/refinement and the loop invariants, then prove resource
   acquisition/cleanup refinement separately. Numeric obligations must use int32 semantics.
5. Generate structured Java loops and try-with-resources only from those proved nodes.
   Compare runtime traces, partial output and failure outcomes, not just final strings.

Until those obligations are implemented, keep these overloads out of the active
`specs/hexutils.lsl`/`java-hexformat.lsl` migration pair. A hand-written adapter or a single
uninterpreted “stream encode” action is not a proof of a synthesized migration.

## Acceptance evidence

The measured baseline over the 19 existing fuzz targets already covers 142/142 branches
of `Hex.java` but only 183/191 executable lines. Its eight missed lines are these public
wrappers, which add no branch decisions. The shared private encoder is currently reached
as input preparation for decoder round trips. Adding encoder conformance tests can cover
the wrapper lines and validate their effects; it does not increase an already 100% branch
counter for this class. Branches in `HexDump`/`HexHarmless` require different API contracts.

`StreamingHexSpecificationTest` compares the executable specification with the original jar.
Successful outputs also have an independent block-formatting oracle. Tests cover empty input,
all octets, both cases and null case, null/empty/multi-character/invalid delimiters, boundaries
of the line quota, trailing newline, int32 quota overflow, null streams, injected read/write
failures, stream ownership and representative path/option/alias effects. These are **specification
conformance tests**, distinct from the migrated-code differential corpus and its 19 fuzz targets.

These tests validate the contract against sampled executions; they do not discharge an
inductive proof for unbounded streams, force 2^32 counter transitions, exhaust filesystem
providers, or exhaust all primary/suppressed close-failure combinations.
