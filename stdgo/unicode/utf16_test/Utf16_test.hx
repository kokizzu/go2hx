package stdgo.unicode.utf16_test;

import stdgo.unicode.utf16.Utf16;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _encodeTests:Slice<stdgo.unicode.utf16_test.Utf16_test.T_encodeTest> = (new Slice<stdgo.unicode.utf16_test.Utf16_test.T_encodeTest>(0, 0,
	(new stdgo.unicode.utf16_test.Utf16_test.T_encodeTest((new Slice<GoInt32>(0, 0, (1 : GoInt32), (2 : GoInt32), (3 : GoInt32),
		(4 : GoInt32)) : Slice<GoInt32>),
		(new Slice<GoUInt16>(0, 0, (1 : GoUInt16), (2 : GoUInt16), (3 : GoUInt16),
			(4 : GoUInt16)) : Slice<GoUInt16>)) : stdgo.unicode.utf16_test.Utf16_test.T_encodeTest),
	(new stdgo.unicode.utf16_test.Utf16_test.T_encodeTest((new Slice<GoInt32>(0, 0, (65535 : GoInt32), (65536 : GoInt32), (65537 : GoInt32),
		(74565 : GoInt32), (1114111 : GoInt32)) : Slice<GoInt32>),
		(new Slice<GoUInt16>(0, 0, (65535 : GoUInt16), (55296 : GoUInt16), (56320 : GoUInt16), (55296 : GoUInt16), (56321 : GoUInt16), (55304 : GoUInt16),
			(57157 : GoUInt16), (56319 : GoUInt16), (57343 : GoUInt16)) : Slice<GoUInt16>)) : stdgo.unicode.utf16_test.Utf16_test.T_encodeTest),
	(new stdgo.unicode.utf16_test.Utf16_test.T_encodeTest((new Slice<GoInt32>(0, 0, ("a".code : GoRune), ("b".code : GoRune), (55295 : GoInt32),
		(55296 : GoInt32), (57343 : GoInt32), (57344 : GoInt32), (1114112 : GoInt32), (-1 : GoInt32)) : Slice<GoInt32>),
		(new Slice<GoUInt16>(0, 0, ("a".code : GoRune), ("b".code : GoRune), (55295 : GoUInt16), (65533 : GoUInt16), (65533 : GoUInt16), (57344 : GoUInt16),
			(65533 : GoUInt16),
			(65533 : GoUInt16)) : Slice<GoUInt16>)) : stdgo.unicode.utf16_test.Utf16_test.T_encodeTest)) : Slice<stdgo.unicode.utf16_test.Utf16_test.T_encodeTest>);

private var _decodeTests:Slice<stdgo.unicode.utf16_test.Utf16_test.T_decodeTest> = (new Slice<stdgo.unicode.utf16_test.Utf16_test.T_decodeTest>(0, 0,
	(new stdgo.unicode.utf16_test.Utf16_test.T_decodeTest((new Slice<GoUInt16>(0, 0, (1 : GoUInt16), (2 : GoUInt16), (3 : GoUInt16),
		(4 : GoUInt16)) : Slice<GoUInt16>),
		(new Slice<GoInt32>(0, 0, (1 : GoInt32), (2 : GoInt32), (3 : GoInt32),
			(4 : GoInt32)) : Slice<GoInt32>)) : stdgo.unicode.utf16_test.Utf16_test.T_decodeTest),
	(new stdgo.unicode.utf16_test.Utf16_test.T_decodeTest((new Slice<GoUInt16>(0, 0, (65535 : GoUInt16), (55296 : GoUInt16), (56320 : GoUInt16),
		(55296 : GoUInt16), (56321 : GoUInt16), (55304 : GoUInt16), (57157 : GoUInt16), (56319 : GoUInt16), (57343 : GoUInt16)) : Slice<GoUInt16>),
		(new Slice<GoInt32>(0, 0, (65535 : GoInt32), (65536 : GoInt32), (65537 : GoInt32), (74565 : GoInt32),
			(1114111 : GoInt32)) : Slice<GoInt32>)) : stdgo.unicode.utf16_test.Utf16_test.T_decodeTest),
	(new stdgo.unicode.utf16_test.Utf16_test.T_decodeTest((new Slice<GoUInt16>(0, 0, (55296 : GoUInt16), ("a".code : GoRune)) : Slice<GoUInt16>),
		(new Slice<GoInt32>(0, 0, (65533 : GoInt32), ("a".code : GoRune)) : Slice<GoInt32>)) : stdgo.unicode.utf16_test.Utf16_test.T_decodeTest),
	(new stdgo.unicode.utf16_test.Utf16_test.T_decodeTest((new Slice<GoUInt16>(0, 0, (57343 : GoUInt16)) : Slice<GoUInt16>),
		(new Slice<GoInt32>(0, 0,
			(65533 : GoInt32)) : Slice<GoInt32>)) : stdgo.unicode.utf16_test.Utf16_test.T_decodeTest)) : Slice<stdgo.unicode.utf16_test.Utf16_test.T_decodeTest>);

private var _decodeRuneTests:Slice<T__struct_0> = (new Slice<T__struct_0>(0, 0,
	({_r1: (55296 : GoInt32), _r2: (56320 : GoInt32), _want: (65536 : GoInt32)} : T__struct_0),
	({_r1: (55296 : GoInt32), _r2: (56321 : GoInt32), _want: (65537 : GoInt32)} : T__struct_0),
	({_r1: (55304 : GoInt32), _r2: (57157 : GoInt32), _want: (74565 : GoInt32)} : T__struct_0),
	({_r1: (56319 : GoInt32), _r2: (57343 : GoInt32), _want: (1114111 : GoInt32)} : T__struct_0),
	({_r1: (55296 : GoInt32), _r2: ("a".code : GoRune), _want: (65533 : GoInt32)} : T__struct_0)) : Slice<T__struct_0>);

private var _surrogateTests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0, ({_r: ("\u007A".code : GoRune), _want: false} : T__struct_1),
	({_r: ("\u6C34".code : GoRune), _want: false} : T__struct_1), ({_r: ("\uFEFF".code : GoRune), _want: false} : T__struct_1),
	({_r: ("\u{00010000}".code : GoRune), _want: false} : T__struct_1), ({_r: ("\u{0001D11E}".code : GoRune), _want: false} : T__struct_1),
	({_r: ("\u{0010FFFD}".code : GoRune), _want: false} : T__struct_1), ({_r: ((55295 : GoInt32) : GoRune), _want: false} : T__struct_1),
	({_r: ((55296 : GoInt32) : GoRune), _want: true} : T__struct_1), ({_r: ((56320 : GoInt32) : GoRune), _want: true} : T__struct_1),
	({_r: ((57344 : GoInt32) : GoRune), _want: false} : T__struct_1), ({_r: ((57343 : GoInt32) : GoRune), _want: true} : T__struct_1)) : Slice<T__struct_1>);

@:structInit private class T_encodeTest {
	public var _in:Slice<GoInt32> = (null : Slice<GoInt32>);
	public var _out:Slice<GoUInt16> = (null : Slice<GoUInt16>);

	public function new(?_in:Slice<GoInt32>, ?_out:Slice<GoUInt16>) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_encodeTest(_in, _out);
	}
}

@:structInit private class T_decodeTest {
	public var _in:Slice<GoUInt16> = (null : Slice<GoUInt16>);
	public var _out:Slice<GoInt32> = (null : Slice<GoInt32>);

	public function new(?_in:Slice<GoUInt16>, ?_out:Slice<GoInt32>) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_decodeTest(_in, _out);
	}
}

@:local private typedef T__struct_0 = {
	public var _r1:GoInt32;
	public var _r2:GoInt32;
	public var _want:GoInt32;
};

@:local private typedef T__struct_1 = {
	public var _r:GoInt32;
	public var _want:Bool;
};

/**
	// Validate the constants redefined from unicode.
**/
function testConstants(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		_t.errorf(Go.str("utf16.maxRune is wrong: %x should be %x"), Go.toInterface((1114111 : GoInt32)), Go.toInterface((1114111 : GoInt32)));
	};
	if (false) {
		_t.errorf(Go.str("utf16.replacementChar is wrong: %x should be %x"), Go.toInterface((65533 : GoInt32)), Go.toInterface((65533 : GoInt32)));
	};
}

function testEncode(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _encodeTests) {
		var _out = encode(_tt._in);
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_out), Go.toInterface(_tt._out))) {
			_t.errorf(Go.str("Encode(%x) = %x; want %x"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
		};
	};
}

function testEncodeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tt in _encodeTests) {
		var _j:GoInt = (0 : GoInt);
		for (_0 => _r in _tt._in) {
			var __tmp__ = encodeRune(_r),
				_r1:GoInt32 = __tmp__._0,
				_r2:GoInt32 = __tmp__._1;
			if ((_r < (65536:GoInt32)) || (_r > (1114111 : GoInt32))) {
				if (_j >= (_tt._out.length)) {
					_t.errorf(Go.str("#%d: ran out of tt.out"), Go.toInterface(_i));
					break;
				};
				if ((_r1 != (65533 : GoInt32)) || (_r2 != (65533 : GoInt32))) {
					_t.errorf(Go.str("EncodeRune(%#x) = %#x, %#x; want 0xfffd, 0xfffd"), Go.toInterface(_r), Go.toInterface(_r1), Go.toInterface(_r2));
				};
				_j++;
			} else {
				if ((_j + (1 : GoInt)) >= (_tt._out.length)) {
					_t.errorf(Go.str("#%d: ran out of tt.out"), Go.toInterface(_i));
					break;
				};
				if ((_r1 != (_tt._out[_j] : GoRune)) || (_r2 != (_tt._out[_j + (1 : GoInt)] : GoRune))) {
					_t.errorf(Go.str("EncodeRune(%#x) = %#x, %#x; want %#x, %#x"), Go.toInterface(_r), Go.toInterface(_r1), Go.toInterface(_r2),
						Go.toInterface(_tt._out[_j]), Go.toInterface(_tt._out[_j + (1 : GoInt)]));
				};
				_j = _j + ((2 : GoInt));
				var _dec:GoInt32 = decodeRune(_r1, _r2);
				if (_dec != (_r)) {
					_t.errorf(Go.str("DecodeRune(%#x, %#x) = %#x; want %#x"), Go.toInterface(_r1), Go.toInterface(_r2), Go.toInterface(_dec),
						Go.toInterface(_r));
				};
			};
		};
		if (_j != ((_tt._out.length))) {
			_t.errorf(Go.str("#%d: EncodeRune didn\'t generate enough output"), Go.toInterface(_i));
		};
	};
}

function testDecode(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _decodeTests) {
		var _out = decode(_tt._in);
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_out), Go.toInterface(_tt._out))) {
			_t.errorf(Go.str("Decode(%x) = %x; want %x"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
		};
	};
}

function testDecodeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tt in _decodeRuneTests) {
		var _got:GoInt32 = decodeRune(_tt._r1, _tt._r2);
		if (_got != (_tt._want)) {
			_t.errorf(Go.str("%d: DecodeRune(%q, %q) = %v; want %v"), Go.toInterface(_i), Go.toInterface(_tt._r1), Go.toInterface(_tt._r2),
				Go.toInterface(_got), Go.toInterface(_tt._want));
		};
	};
}

function testIsSurrogate(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tt in _surrogateTests) {
		var _got:Bool = isSurrogate(_tt._r);
		if (_got != (_tt._want)) {
			_t.errorf(Go.str("%d: IsSurrogate(%q) = %v; want %v"), Go.toInterface(_i), Go.toInterface(_tt._r), Go.toInterface(_got),
				Go.toInterface(_tt._want));
		};
	};
}

function benchmarkDecodeValidASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _data = (new Slice<GoUInt16>(0, 0, (104 : GoUInt16), (101 : GoUInt16), (108 : GoUInt16), (108 : GoUInt16), (111 : GoUInt16), (32 : GoUInt16),
		(119 : GoUInt16), (111 : GoUInt16), (114 : GoUInt16), (108 : GoUInt16), (100 : GoUInt16)) : Slice<GoUInt16>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			decode(_data);
		});
	};
}

function benchmarkDecodeValidJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _data = (new Slice<GoUInt16>(0, 0, (26085 : GoUInt16), (26412 : GoUInt16), (35486 : GoUInt16), (26085 : GoUInt16), (26412 : GoUInt16),
		(35486 : GoUInt16), (26085 : GoUInt16), (26412 : GoUInt16), (35486 : GoUInt16)) : Slice<GoUInt16>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			decode(_data);
		});
	};
}

function benchmarkDecodeRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _rs = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoInt32)]);
	for (_i => _u in (new Slice<GoInt32>(0, 0, ("𝓐".code : GoRune), ("𝓑".code : GoRune), ("𝓒".code : GoRune), ("𝓓".code : GoRune),
		("𝓔".code : GoRune)) : Slice<GoInt32>)) {
		{
			var __tmp__ = encodeRune(_u);
			_rs[(2 : GoInt) * _i] = __tmp__._0;
			_rs[((2 : GoInt) * _i) + (1 : GoInt)] = __tmp__._1;
		};
	};
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < (5:GoInt), _j++, {
					decodeRune(_rs[(2 : GoInt) * _j], _rs[((2 : GoInt) * _j) + (1 : GoInt)]);
				});
			};
		});
	};
}

function benchmarkEncodeValidASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _data = (new Slice<GoInt32>(0, 0, ("h".code : GoRune), ("e".code : GoRune), ("l".code : GoRune), ("l".code : GoRune),
		("o".code : GoRune)) : Slice<GoInt32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			encode(_data);
		});
	};
}

function benchmarkEncodeValidJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _data = (new Slice<GoInt32>(0, 0, ("日".code : GoRune), ("本".code : GoRune), ("語".code : GoRune)) : Slice<GoInt32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			encode(_data);
		});
	};
}

function benchmarkEncodeRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _u in (new Slice<GoInt32>(0, 0, ("𝓐".code : GoRune), ("𝓑".code : GoRune), ("𝓒".code : GoRune), ("𝓓".code : GoRune),
				("𝓔".code : GoRune)) : Slice<GoInt32>)) {
				encodeRune(_u);
			};
		});
	};
}
