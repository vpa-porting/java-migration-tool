libsl "1.0.0";
library `Base64IOVocabulary` version "1";
type java.io.InputStream {}
type java.io.OutputStream {}
// Stateful fold over bulk-read windows, not a pure value encoder. The normative
// transition/effect contract is ../BASE64IO_SPEC.md: retain quartet position across
// windows, defer CRLF until a full triple, ignore it for padding, perform empty writes,
// preserve original stream identities/overload dispatch, propagate failures without
// flush/close. Charset-dependent alphabet is fixed at class initialization.
// Domain: windowBytes > 0 and divisible by 3; groupsPerLine > 0 with 4*g+2 fitting int.
// The current engine treats this loop contract as an assumption. Its JDK realization
// is audited and checked against the source with full I/O trace comparisons.
define action FOLD_BASE64_WINDOWS(input: java.io.InputStream, output: java.io.OutputStream,
    lines: bool, windowBytes: int32, groupsPerLine: int32);
