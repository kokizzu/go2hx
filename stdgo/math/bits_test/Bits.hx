package stdgo.math.bits_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUintSize"), stdgo.math.bits_test.Bits_test.testUintSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLeadingZeros"), stdgo.math.bits_test.Bits_test.testLeadingZeros) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTrailingZeros"),
		stdgo.math.bits_test.Bits_test.testTrailingZeros) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOnesCount"), stdgo.math.bits_test.Bits_test.testOnesCount) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRotateLeft"), stdgo.math.bits_test.Bits_test.testRotateLeft) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReverse"), stdgo.math.bits_test.Bits_test.testReverse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReverseBytes"), stdgo.math.bits_test.Bits_test.testReverseBytes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLen"), stdgo.math.bits_test.Bits_test.testLen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddSubUint"), stdgo.math.bits_test.Bits_test.testAddSubUint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddSubUint32"), stdgo.math.bits_test.Bits_test.testAddSubUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddSubUint64"), stdgo.math.bits_test.Bits_test.testAddSubUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAdd64OverflowPanic"),
		stdgo.math.bits_test.Bits_test.testAdd64OverflowPanic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSub64OverflowPanic"),
		stdgo.math.bits_test.Bits_test.testSub64OverflowPanic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMulDiv"), stdgo.math.bits_test.Bits_test.testMulDiv) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMulDiv32"), stdgo.math.bits_test.Bits_test.testMulDiv32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMulDiv64"), stdgo.math.bits_test.Bits_test.testMulDiv64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDivPanicOverflow"),
		stdgo.math.bits_test.Bits_test.testDivPanicOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDiv32PanicOverflow"),
		stdgo.math.bits_test.Bits_test.testDiv32PanicOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDiv64PanicOverflow"),
		stdgo.math.bits_test.Bits_test.testDiv64PanicOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDivPanicZero"), stdgo.math.bits_test.Bits_test.testDivPanicZero) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDiv32PanicZero"),
		stdgo.math.bits_test.Bits_test.testDiv32PanicZero) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDiv64PanicZero"),
		stdgo.math.bits_test.Bits_test.testDiv64PanicZero) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRem32"), stdgo.math.bits_test.Bits_test.testRem32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRem32Overflow"),
		stdgo.math.bits_test.Bits_test.testRem32Overflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRem64"), stdgo.math.bits_test.Bits_test.testRem64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRem64Overflow"),
		stdgo.math.bits_test.Bits_test.testRem64Overflow) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLeadingZeros"),
		stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLeadingZeros8"),
		stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLeadingZeros16"),
		stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLeadingZeros32"),
		stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLeadingZeros64"),
		stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTrailingZeros"),
		stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTrailingZeros8"),
		stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTrailingZeros16"),
		stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTrailingZeros32"),
		stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTrailingZeros64"),
		stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnesCount"),
		stdgo.math.bits_test.Bits_test.benchmarkOnesCount) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnesCount8"),
		stdgo.math.bits_test.Bits_test.benchmarkOnesCount8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnesCount16"),
		stdgo.math.bits_test.Bits_test.benchmarkOnesCount16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnesCount32"),
		stdgo.math.bits_test.Bits_test.benchmarkOnesCount32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnesCount64"),
		stdgo.math.bits_test.Bits_test.benchmarkOnesCount64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRotateLeft"),
		stdgo.math.bits_test.Bits_test.benchmarkRotateLeft) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRotateLeft8"),
		stdgo.math.bits_test.Bits_test.benchmarkRotateLeft8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRotateLeft16"),
		stdgo.math.bits_test.Bits_test.benchmarkRotateLeft16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRotateLeft32"),
		stdgo.math.bits_test.Bits_test.benchmarkRotateLeft32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRotateLeft64"),
		stdgo.math.bits_test.Bits_test.benchmarkRotateLeft64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverse"),
		stdgo.math.bits_test.Bits_test.benchmarkReverse) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverse8"),
		stdgo.math.bits_test.Bits_test.benchmarkReverse8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverse16"),
		stdgo.math.bits_test.Bits_test.benchmarkReverse16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverse32"),
		stdgo.math.bits_test.Bits_test.benchmarkReverse32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverse64"),
		stdgo.math.bits_test.Bits_test.benchmarkReverse64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverseBytes"),
		stdgo.math.bits_test.Bits_test.benchmarkReverseBytes) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverseBytes16"),
		stdgo.math.bits_test.Bits_test.benchmarkReverseBytes16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverseBytes32"),
		stdgo.math.bits_test.Bits_test.benchmarkReverseBytes32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReverseBytes64"),
		stdgo.math.bits_test.Bits_test.benchmarkReverseBytes64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdd"),
		stdgo.math.bits_test.Bits_test.benchmarkAdd) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdd32"),
		stdgo.math.bits_test.Bits_test.benchmarkAdd32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdd64"),
		stdgo.math.bits_test.Bits_test.benchmarkAdd64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdd64multiple"),
		stdgo.math.bits_test.Bits_test.benchmarkAdd64multiple) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSub"),
		stdgo.math.bits_test.Bits_test.benchmarkSub) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSub32"),
		stdgo.math.bits_test.Bits_test.benchmarkSub32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSub64"),
		stdgo.math.bits_test.Bits_test.benchmarkSub64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSub64multiple"),
		stdgo.math.bits_test.Bits_test.benchmarkSub64multiple) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMul"),
		stdgo.math.bits_test.Bits_test.benchmarkMul) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMul32"),
		stdgo.math.bits_test.Bits_test.benchmarkMul32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMul64"),
		stdgo.math.bits_test.Bits_test.benchmarkMul64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDiv"),
		stdgo.math.bits_test.Bits_test.benchmarkDiv) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDiv32"),
		stdgo.math.bits_test.Bits_test.benchmarkDiv32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDiv64"),
		stdgo.math.bits_test.Bits_test.benchmarkDiv64) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleAdd32"), stdgo.math.bits_test.Bits_test.exampleAdd32,
		Go.str("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 2147483648] + [1 2147483648] = [3 0] (carry bit was 1)\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleAdd64"), stdgo.math.bits_test.Bits_test.exampleAdd64,
		Go.str("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 9223372036854775808] + [1 9223372036854775808] = [3 0] (carry bit was 1)\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSub32"), stdgo.math.bits_test.Bits_test.exampleSub32,
		Go.str("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 2147483647] - [1 2147483648] = [1 4294967295] (carry bit was 1)\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSub64"), stdgo.math.bits_test.Bits_test.exampleSub64,
		Go.str("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 9223372036854775807] - [1 9223372036854775808] = [1 18446744073709551615] (carry bit was 1)\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleMul32"), stdgo.math.bits_test.Bits_test.exampleMul32,
		Go.str("12 * 12 = [0 144]\n2147483648 * 2 = [1 0]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleMul64"), stdgo.math.bits_test.Bits_test.exampleMul64,
		Go.str("12 * 12 = [0 144]\n9223372036854775808 * 2 = [1 0]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDiv32"), stdgo.math.bits_test.Bits_test.exampleDiv32,
		Go.str("[0 6] / 3 = [2 0]\n[2 2147483648] / 2147483648 = [5 0]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDiv64"), stdgo.math.bits_test.Bits_test.exampleDiv64,
		Go.str("[0 6] / 3 = [2 0]\n[2 9223372036854775808] / 9223372036854775808 = [5 0]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLeadingZeros8"), stdgo.math.bits_test.Bits_test.exampleLeadingZeros8,
		Go.str("LeadingZeros8(00000001) = 7\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLeadingZeros16"), stdgo.math.bits_test.Bits_test.exampleLeadingZeros16,
		Go.str("LeadingZeros16(0000000000000001) = 15\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLeadingZeros32"), stdgo.math.bits_test.Bits_test.exampleLeadingZeros32,
		Go.str("LeadingZeros32(00000000000000000000000000000001) = 31\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLeadingZeros64"), stdgo.math.bits_test.Bits_test.exampleLeadingZeros64,
		Go.str("LeadingZeros64(0000000000000000000000000000000000000000000000000000000000000001) = 63\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTrailingZeros8"), stdgo.math.bits_test.Bits_test.exampleTrailingZeros8,
		Go.str("TrailingZeros8(00001110) = 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTrailingZeros16"), stdgo.math.bits_test.Bits_test.exampleTrailingZeros16,
		Go.str("TrailingZeros16(0000000000001110) = 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTrailingZeros32"), stdgo.math.bits_test.Bits_test.exampleTrailingZeros32,
		Go.str("TrailingZeros32(00000000000000000000000000001110) = 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTrailingZeros64"), stdgo.math.bits_test.Bits_test.exampleTrailingZeros64,
		Go.str("TrailingZeros64(0000000000000000000000000000000000000000000000000000000000001110) = 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnesCount"), stdgo.math.bits_test.Bits_test.exampleOnesCount, Go.str("OnesCount(1110) = 3\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnesCount8"), stdgo.math.bits_test.Bits_test.exampleOnesCount8,
		Go.str("OnesCount8(00001110) = 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnesCount16"), stdgo.math.bits_test.Bits_test.exampleOnesCount16,
		Go.str("OnesCount16(0000000000001110) = 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnesCount32"), stdgo.math.bits_test.Bits_test.exampleOnesCount32,
		Go.str("OnesCount32(00000000000000000000000000001110) = 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnesCount64"), stdgo.math.bits_test.Bits_test.exampleOnesCount64,
		Go.str("OnesCount64(0000000000000000000000000000000000000000000000000000000000001110) = 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRotateLeft8"), stdgo.math.bits_test.Bits_test.exampleRotateLeft8,
		Go.str("00001111\n00111100\n11000011\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRotateLeft16"), stdgo.math.bits_test.Bits_test.exampleRotateLeft16,
		Go.str("0000000000001111\n0000000000111100\n1100000000000011\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRotateLeft32"), stdgo.math.bits_test.Bits_test.exampleRotateLeft32,
		Go.str("00000000000000000000000000001111\n00000000000000000000000000111100\n11000000000000000000000000000011\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRotateLeft64"), stdgo.math.bits_test.Bits_test.exampleRotateLeft64,
		Go.str("0000000000000000000000000000000000000000000000000000000000001111\n0000000000000000000000000000000000000000000000000000000000111100\n1100000000000000000000000000000000000000000000000000000000000011\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverse8"), stdgo.math.bits_test.Bits_test.exampleReverse8, Go.str("00010011\n11001000\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverse16"), stdgo.math.bits_test.Bits_test.exampleReverse16,
		Go.str("0000000000010011\n1100100000000000\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverse32"), stdgo.math.bits_test.Bits_test.exampleReverse32,
		Go.str("00000000000000000000000000010011\n11001000000000000000000000000000\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverse64"), stdgo.math.bits_test.Bits_test.exampleReverse64,
		Go.str("0000000000000000000000000000000000000000000000000000000000010011\n1100100000000000000000000000000000000000000000000000000000000000\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverseBytes16"), stdgo.math.bits_test.Bits_test.exampleReverseBytes16,
		Go.str("0000000000001111\n0000111100000000\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverseBytes32"), stdgo.math.bits_test.Bits_test.exampleReverseBytes32,
		Go.str("00000000000000000000000000001111\n00001111000000000000000000000000\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverseBytes64"), stdgo.math.bits_test.Bits_test.exampleReverseBytes64,
		Go.str("0000000000000000000000000000000000000000000000000000000000001111\n0000111100000000000000000000000000000000000000000000000000000000\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLen8"), stdgo.math.bits_test.Bits_test.exampleLen8, Go.str("Len8(00001000) = 4\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLen16"), stdgo.math.bits_test.Bits_test.exampleLen16, Go.str("Len16(0000000000001000) = 4\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLen32"), stdgo.math.bits_test.Bits_test.exampleLen32,
		Go.str("Len32(00000000000000000000000000001000) = 4\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLen64"), stdgo.math.bits_test.Bits_test.exampleLen64,
		Go.str("Len64(0000000000000000000000000000000000000000000000000000000000001000) = 4\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("math/bits");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
