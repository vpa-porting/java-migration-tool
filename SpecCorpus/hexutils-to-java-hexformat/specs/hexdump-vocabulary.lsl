libsl "1.0.0";
library `DumpVocabulary` version "1";
import hex-vocabulary;
enum net.lbruun.hexutils.Hex.HexCase { LOWER = 0; UPPER = 1; }
type java.io.PrintStream {}
// Loop/effect contracts are specified in ../EXTENSION_PLAN.md. ARRAY includes
// result-array allocation before common validation; STRING/PRINT validate first.
// Render with default FORMAT locale, pad missing slots, append the separator
// after every line, preserve null-case lower, PrintStream errors and ownership.
define action DUMP_ARRAY(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32): array<string>;
define action DUMP_ARRAY_DEFAULT(data: array<int8>): array<string>;
define action DUMP_STRING(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, sep: string): string;
define action DUMP_STRING_DEFAULT(data: array<int8>, sep: string): string;
define action DUMP_PRINT(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, ps: java.io.PrintStream);
define action DUMP_PRINT_DEFAULT(data: array<int8>, ps: java.io.PrintStream);
define action PLATFORM_LINE_SEPARATOR(): string;
