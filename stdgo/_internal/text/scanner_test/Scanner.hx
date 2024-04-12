package stdgo._internal.text.scanner_test;
import stdgo._internal.text.scanner.Scanner;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(18, 18, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestNext" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testNext) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScan" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScan) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInvalidExponent" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testInvalidExponent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPosition" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testPosition) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanZeroMode" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanZeroMode) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanSelectedMask" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanSelectedMask) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanCustomIdent" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanCustomIdent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanNext" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanNext) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanWhitespace" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanWhitespace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestError" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIOError" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testIOError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPos" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testPos) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNextEOFHandling" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testNextEOFHandling) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanEOFHandling" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testScanEOFHandling) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue29723" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testIssue29723) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNumbers" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testNumbers) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue30320" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testIssue30320) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue50909" : stdgo.GoString), stdgo._internal.text.scanner.Scanner.testIssue50909) : stdgo._internal.testing.Testing.InternalTest)]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(4, 4, ...[(new stdgo._internal.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo._internal.text.scanner_test.Scanner_test.example, ("example:3:1: if\nexample:3:4: a\nexample:3:6: >\nexample:3:8: 10\nexample:3:11: {\nexample:4:2: someParsable\nexample:4:15: =\nexample:4:17: text\nexample:5:1: }\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("Example_isIdentRune" : stdgo.GoString), stdgo._internal.text.scanner_test.Scanner_test.example_isIdentRune, ("default:1:1: %\ndefault:1:2: var1\ndefault:1:7: var2\ndefault:1:11: %\n\npercent:1:1: %var1\npercent:1:7: var2\npercent:1:11: %\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("Example_mode" : stdgo.GoString), stdgo._internal.text.scanner_test.Scanner_test.example_mode, ("comments:2:5: // Comment begins at column 5.\ncomments:6:1: /*\nThis multiline comment\nshould be extracted in\nits entirety.\n*/\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("Example_whitespace" : stdgo.GoString), stdgo._internal.text.scanner_test.Scanner_test.example_whitespace, ("[[aa ab ac ad] [ba bb bc bd] [ca cb cc cd] [da db dc dd]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("text/scanner" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
