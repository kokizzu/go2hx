package stdgo._internal.testing.quick_test;
import stdgo._internal.testing.quick.Quick;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestCheckEqual" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testCheckEqual) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestCheckProperty" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testCheckProperty) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestFailure" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testFailure) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestRecursive" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testRecursive) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestEmptyStruct" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testEmptyStruct) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestMutuallyRecursive" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testMutuallyRecursive) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestNonZeroSliceAndMap" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testNonZeroSliceAndMap) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestInt64" : stdgo.GoString), stdgo._internal.testing.quick.Quick.testInt64) : stdgo._internal.testing.Testing.InternalTest)]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("testing/quick" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
