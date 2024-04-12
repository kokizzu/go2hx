package stdgo._internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(28, 28, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestDigit" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testDigit) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDigitOptimization" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testDigitOptimization) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsControlLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsControlLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsLetterLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsUpperLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsLowerLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNumberLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testNumberLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsPrintLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsGraphicLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsPunctLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsSpaceLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsSymbolLatin1" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsLetter" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsLetter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsUpper" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsUpper) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTo" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestToUpperCase" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testToUpperCase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestToLowerCase" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testToLowerCase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestToTitleCase" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testToTitleCase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsSpace" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testIsSpace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLetterOptimizations" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testLetterOptimizations) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTurkishCase" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testTurkishCase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSimpleFold" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testSimpleFold) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCalibrate" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testCalibrate) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLatinOffset" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testLatinOffset) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSpecialCaseNoMapping" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNegativeRune" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testNegativeRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCategories" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testCategories) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestProperties" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.testProperties) : stdgo._internal.testing.Testing.InternalTest)]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(14, 14, ...[
(new stdgo._internal.testing.Testing.InternalExample(("Example_is" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.example_is, ("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSimpleFold" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleSimpleFold, ("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleTo" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleTo, ("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleToLower" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleToLower, ("U+0067 \'g\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleToTitle" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleToTitle, ("U+0047 \'G\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleToUpper" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleToUpper, ("U+0047 \'G\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSpecialCase" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleSpecialCase, ("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsDigit" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsDigit, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsNumber" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsNumber, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsLetter" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsLetter, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsLower" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsLower, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsUpper" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsUpper, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsTitle" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsTitle, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsSpace" : stdgo.GoString), stdgo._internal.unicode_test.Unicode_test.exampleIsSpace, ("true\ntrue\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("unicode" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
