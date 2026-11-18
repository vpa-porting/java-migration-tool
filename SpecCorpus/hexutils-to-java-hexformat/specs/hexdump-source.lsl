libsl "1.0.0";
library `HexDump` version "1.0.0";
import hexdump-vocabulary;
type net.lbruun.hexutils.HexDump {}
automaton net.lbruun.hexutils.HexDump: net.lbruun.hexutils.HexDump {

 fun prettyPrint(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32): array<string> {
   result = action DUMP_ARRAY(data, caseType, width, indent);
 }
 fun prettyPrint(data: array<int8>): array<string> { result = action DUMP_ARRAY_DEFAULT(data); }
 fun prettyPrintStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, sep: string): string {
   result = action DUMP_STRING(data, caseType, width, indent, sep);
 }
 fun prettyPrintStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32): string {
   var sep: string = action PLATFORM_LINE_SEPARATOR();
   result = action DUMP_STRING(data, caseType, width, indent, sep);
 }
 fun prettyPrintStr(data: array<int8>): string {
   var sep: string = action PLATFORM_LINE_SEPARATOR();
   result = action DUMP_STRING_DEFAULT(data, sep);
 }
 fun prettyPrint(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, ps: java.io.PrintStream) {
   action DUMP_PRINT(data, caseType, width, indent, ps);
 }
 fun prettyPrint(data: array<int8>, ps: java.io.PrintStream) { action DUMP_PRINT_DEFAULT(data, ps); }
}
