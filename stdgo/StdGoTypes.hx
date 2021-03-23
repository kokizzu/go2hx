/*
 * Copyright (C)2005-2021 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package stdgo;

import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes.AnyInterface;
import haxe.Int32;
import haxe.Int64;

typedef GoByte = GoUInt8;
typedef GoRune = GoInt;
typedef GoInt32 = GoInt;
typedef GoFloat64 = GoFloat;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if cpp cpp.Int8 #elseif cs cs.Int8 #elseif java java.Int8 #else Int #end;
private typedef Int16 = #if cpp cpp.Int16 #elseif cs cs.Int16 #elseif java java.Int16 #else Int #end;
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = haxe.Int64; // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt = Int;
private typedef UInt8 = Int;//#if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int64 #end;
private typedef UInt64 = #if cpp cpp.UInt64 #elseif eval eval.integers.UInt64 #else haxe.Int64 #end // __UInt64 #end;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if (java || cs || hl || cpp) StdTypes.Single #else Float #end;
private typedef Float64 = #if cpp cpp.Float64 #else Float #end

private class __UInt64 {
	public var high:Int64;
	public var low:Int64;

	public inline function new(high, low) {
		this.high = high;
		this.low = low;
	}

	public static inline function ofInt(x:Int) {
		if (x < 0)
			return new __UInt64(0,0);
		return new __UInt64(x >> 31, x);
	}
}

private class __Int128 {
	public var high:Int64;
	public var low:Int64;
	public inline function new(high,low) {
		this.high = high;
		this.low = low;
	}
	public static inline function ofInt(x:Int) {
		return new __Int128(x >> 63, x);
	}
	public function toString():String
		return GoComplex128.toStr(cast this);
}

abstract GoUIntptr(UInt) from UInt {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uintptr";



	@:op(A + B) private static function add(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;



	@:op(A * B) private static function mul(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A % B) private static function modI(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A % B) private static function modF(lhs:GoUIntptr, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A - B) private static function subI(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A - B) private static function subF(lhs:GoUIntptr, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A | B) private static function or(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A ^ B) private static function xor(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A & B) private static function and(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A << B) private static function shl(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A >> B) private static function shr(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A >>> B) private static function ushr(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A > B) private static function gt(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A >= B) private static function gte(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A < B) private static function lt(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A <= B) private static function lte(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A > B) private static function gtf(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A < B) private static function ltf(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(~A) private static function bneg(t:GoUIntptr):GoUIntptr;




}

abstract GoFloat(Float) from Float {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "float";



	@:op(A + B) private static function add(lhs:GoFloat, rhs:GoFloat):GoFloat;



	@:op(A * B) private static function mul(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A % B) private static function modI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A % B) private static function modF(lhs:GoFloat, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A - B) private static function subI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A - B) private static function subF(lhs:GoFloat, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat, rhs:GoFloat):GoFloat;


	@:op(A | B) private static function or(lhs:GoFloat, rhs:GoFloat):GoFloat;


	@:op(A ^ B) private static function xor(lhs:GoFloat, rhs:GoFloat):GoFloat;


	@:op(A & B) private static function and(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A << B) private static function shl(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A >> B) private static function shr(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A >>> B) private static function ushr(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A > B) private static function gt(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A >= B) private static function gte(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A < B) private static function lt(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A <= B) private static function lte(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A > B) private static function gtf(lhs:GoFloat, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A >= B) private static function gtef(lhs:GoFloat, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A < B) private static function ltf(lhs:GoFloat, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A <= B) private static function ltef(lhs:GoFloat, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoFloat):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;




}

abstract GoFloat32(Float32) from Float32 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "float32";

	@:op(A > B) private static function gt(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A >= B) private static function gte(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A < B) private static function lt(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A <= B) private static function lte(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A > B) private static function gtf(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A < B) private static function ltf(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoFloat32):Bool;





	#if (java || cs || hl || cpp)


	@:op(A + B) private static function add(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;



	@:op(A * B) private static function mul(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A % B) private static function modI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A % B) private static function modF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A - B) private static function subI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A - B) private static function subF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A | B) private static function or(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A ^ B) private static function xor(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A & B) private static function and(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A << B) private static function shl(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >> B) private static function shr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >>> B) private static function ushr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(~A) private static function bneg(t:GoFloat32):GoFloat32;
	#else
	// TODO: Clamp Float32
	#end
}
@:transitive
abstract GoComplex64(Int64) from Int64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	@:from public static inline function ofInt(x:Int):GoComplex64 
		return new GoComplex64(Int64.make(x >> 31, x));

	public inline function _typeName_()
		return "complex64";



	@:op(A + B) private static function add(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;



	@:op(A * B) private static function mul(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A % B) private static function modI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A % B) private static function modF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A - B) private static function subI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A - B) private static function subF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


	@:op(A | B) private static function or(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


	@:op(A ^ B) private static function xor(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


	@:op(A & B) private static function and(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A << B) private static function shl(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A >> B) private static function shr(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A >>> B) private static function ushr(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A > B) private static function gt(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A >= B) private static function gte(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A < B) private static function lt(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A <= B) private static function lte(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A > B) private static function gtf(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A < B) private static function ltf(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(~A) private static function bneg(t:GoComplex64):GoComplex64;

}
abstract GoComplex128(__Int128) from __Int128 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "complex128";

	public static inline function toStr(x:GoComplex128):String
		return x.toString();
	function toString():String {
		var i:GoComplex128 = cast this;
		if (i == ofInt(0))
			return "0";
		var str = "";
		var neg = false;
		if (i.isNeg())
			neg = true;
		var ten:GoComplex128 = ofInt(10);
		var zero = ofInt(0);
		while (i != zero) {
			var r = divMod(i,ten);
			if (r.modulus.isNeg()) {
				str = GoComplex128.neg(r.modulus).low + str;
				i = GoComplex128.neg(r.quotient);
			} else {
				str = r.modulus.low + str;
				i = r.quotient;
			}
		}
		if (neg)
			str = "-" + str;
		return str;
	}
	public function isNeg():Bool {
		return this.high < 0;
	}
	public static function divMod(dividend:GoComplex128, divisor:GoComplex128):{quotient:GoComplex128, modulus:GoComplex128} {
		// Handle special cases of 0 and 1
		if (divisor.high == 0) {
			if (divisor.low == 0) {
				throw "divide by zero";
			} else if (divisor.low == 1) {
				return {quotient: dividend.copy(), modulus: ofInt(0)};
			}
		}

		var divSign = dividend.isNeg() != divisor.isNeg();

		var modulus = dividend.isNeg() ? -dividend : dividend.copy();
		divisor = divisor.isNeg() ? -divisor : divisor;

		var quotient:GoComplex128 = ofInt(0);
		var mask:GoComplex128 = ofInt(1);

		while (!divisor.isNeg()) {
			var cmp = ucompare(divisor, modulus);
			divisor <<= 1;
			mask <<= 1;
			if (cmp >= 0)
				break;
		}
		var zero = ofInt(0);
		while (mask != zero) {
			if (ucompare(modulus, divisor) >= 0) {
				quotient |= mask;
				modulus -= divisor;
			}
			mask >>>= 1;
			divisor >>>= 1;
		}
		if (divSign)
			quotient = -quotient;
		if (dividend.isNeg())
			modulus = -modulus;

		return {
			quotient: quotient,
			modulus: modulus
		};
	}

	@:op(A * B)
	public static #if !lua inline #end function mul(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var mask = 0xFFFF;
		var al = a.low & mask, ah = a.low >>> 16;
		var bl = b.low & mask, bh = b.low >>> 16;
		var p00 = al * bl;
		var p10 = ah * bl;
		var p01 = al * bh;
		var p11 = ah * bh;
		var low = p00;
		var high = p11 + (p01 >>> 16) + (p10 >>> 16);
		p01 <<= 16;
		low += p01;
		if (Int64.ucompare(low, p01) < 0)
			high++;
		p10 <<= 16;
		low += p10;
		if (Int64.ucompare(low, p10) < 0)
			high++;
		high += a.low * b.high + a.high * b.low;
		return make(high, low);
	}

	public static inline function compare(a:GoComplex128, b:GoComplex128):Int64 {
		var v = a.high - b.high;
		v = if (v != 0) v else Int64.ucompare(a.low, b.low);
		return a.high < 0 ? (b.high < 0 ? v : -1) : (b.high >= 0 ? v : 1);
	}
	public static inline function ucompare(a:GoComplex128,b:GoComplex128):Int64 {
		var v = Int64.compare(a.high,b.high);
		return if (v != 0) v else Int64.ucompare(a.low,b.low);
	}
	public inline function copy()
		return make(this.high.copy(),this.low.copy());
	public static inline function make(high:Int64,low:Int64):GoComplex128
		return new GoComplex128(new __Int128(high,low));
	public static inline function ofInt(x:Int):GoComplex128 {
		return make(x >> 63,x);
	}

	@:op(A == B) public static inline function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.high == b.high && a.low == b.low;

	@:op(A != B) public static inline function neq(a:GoComplex128, b:GoComplex128):Bool {
		return a.high != b.high || a.low != b.low;
	}

	@:op(A < B) private static inline function lt(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) < 0;

	@:op(A <= B) private static inline function lte(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) <= 0;

	@:op(A > B) private static inline function gt(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) > 0;

	@:op(A >= B) private static inline function gte(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) >= 0;

	@:op(-A) public static inline function neg(x:GoComplex128):GoComplex128 {
		var high = ~x.high;
		var low = -x.low;
		if (low == 0)
			high++;
		return make(high, low);
	}
	@:op(~A) private static inline function complement(a:GoComplex128):GoComplex128
		return make(~a.high, ~a.low);

	@:op(A >> B) public static inline function shr(a:GoComplex128, b:Int):GoComplex128 {
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make(a.high >> b, (a.high << (64 - b)) | (a.low >>> b)); else make(a.high >> 63, a.high >> (b - 64));
	}
	@:op(A ^ B) public static inline function xor(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high ^ b.high, a.low ^ b.low);

	@:op(A << B) public static inline function shl(a:GoComplex128, b:Int):GoComplex128 {
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make((a.high << b) | (a.low >>> (64 - b)), a.low << b) else make(a.low << (b - 64), 0);
	}

	@:op(A & B) public static inline function and(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high & b.high, a.low & b.low);
	@:op(A | B) public static inline function or(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high | b.high, a.low | b.low);
	@:op(A >>> B) public static inline function ushr(a:GoComplex128, b:Int):GoComplex128 {
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make(a.high >>> b, (a.high << (64 - b)) | (a.low >>> b)); else make(0, a.high >>> (b - 64));
	}
	@:op(A + B) public static inline function add(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var high = a.high + b.high;
		var low = a.low + b.low;
		if (Int64.ucompare(low, a.low) < 0)
			high++;
		return make(high, low);
	}
	@:op(A - B) public static inline function sub(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var high = a.high - b.high;
		var low = a.low - b.low;
		if (Int64.ucompare(a.low, b.low) < 0)
			high--;
		return make(high, low);
	}

	public var high(get, never):Int64;

	private inline function get_high()
		return this.high;

	private inline function set_high(x)
		return this.high = x;

	public var low(get, never):Int64;

	private inline function get_low()
		return this.low;

	private inline function set_low(x)
		return this.low = x;
	public static function parseString(sParam:String):GoComplex128 {
		var base = GoComplex128.ofInt(10);
		var current = GoComplex128.ofInt(0);
		var multiplier = GoComplex128.ofInt(1);
		var sIsNegative = false;

		var s = StringTools.trim(sParam);
		if (s.charAt(0) == "-") {
			sIsNegative = true;
			s = s.substring(1, s.length);
		}
		var len = s.length;

		for (i in 0...len) {
			var digitInt = s.charCodeAt(len - 1 - i) - '0'.code;

			if (digitInt < 0 || digitInt > 9) {
				throw "NumberFormatError";
			}

			if (digitInt != 0) {
				var digit:GoComplex128 = GoComplex128.ofInt(digitInt);
				if (sIsNegative) {
					current = GoComplex128.sub(current, GoComplex128.mul(multiplier, digit));
					if (!current.isNeg()) {
						throw "NumberFormatError: Underflow";
					}
				} else {
					current = GoComplex128.add(current, GoComplex128.mul(multiplier, digit));
					if (current.isNeg()) {
						throw "NumberFormatError: Overflow";
					}
				}
			}

			multiplier = GoComplex128.mul(multiplier, base);
		}
		return current;
	}
}


abstract GoInt(Int) from Int32 {
	public inline function new(x:Int32=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "int";



	@:op(A + B) private static function add(lhs:GoInt, rhs:GoInt):GoInt;



	@:op(A * B) private static function mul(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A % B) private static function modI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A % B) private static function modF(lhs:GoInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A - B) private static function subI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A - B) private static function subF(lhs:GoInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt, rhs:GoInt):GoInt;


	@:op(A | B) private static function or(lhs:GoInt, rhs:GoInt):GoInt;


	@:op(A ^ B) private static function xor(lhs:GoInt, rhs:GoInt):GoInt;


	@:op(A & B) private static function and(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A << B) private static function shl(lhs:GoInt, rhs:Int):GoInt;

	@:op(A >> B) private static function shr(lhs:GoInt, rhs:Int):GoInt;

	@:op(A >>> B) private static function ushr(lhs:GoInt, rhs:Int):GoInt;

	@:op(A > B) private static function gt(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A < B) private static function lt(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt):Bool;

	@:op(~A) private static function bneg(t:GoInt):GoInt;




}

abstract GoUInt(Int) from Int {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint";



	@:op(A + B) private static function add(lhs:GoUInt, rhs:GoUInt):GoUInt;



	@:op(A * B) private static function mul(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A % B) private static function modI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A % B) private static function modF(lhs:GoUInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A - B) private static function subI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A - B) private static function subF(lhs:GoUInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt, rhs:GoUInt):GoUInt;


	@:op(A | B) private static function or(lhs:GoUInt, rhs:GoUInt):GoUInt;


	@:op(A ^ B) private static function xor(lhs:GoUInt, rhs:GoUInt):GoUInt;


	@:op(A & B) private static function and(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A << B) private static function shl(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A >> B) private static function shr(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A >>> B) private static function ushr(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A > B) private static function gt(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt):Bool;

	@:op(~A) private static function bneg(t:GoUInt):GoUInt;





	// TODO: clamp uint, increase number range
}

abstract GoInt8(Int8) from Int8 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "int8";

	@:op(A > B) private static function gt(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A < B) private static function lt(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt8, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt8, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt8, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt8, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt8):Bool;





	#if (cpp || cs || java)


	@:op(A + B) private static function add(lhs:GoInt8, rhs:GoInt8):GoInt8;



	@:op(A * B) private static function mul(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A % B) private static function modI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A % B) private static function modF(lhs:GoInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A - B) private static function subI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A - B) private static function subF(lhs:GoInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt8, rhs:GoInt8):GoInt8;


	@:op(A | B) private static function or(lhs:GoInt8, rhs:GoInt8):GoInt8;


	@:op(A ^ B) private static function xor(lhs:GoInt8, rhs:GoInt8):GoInt8;


	@:op(A & B) private static function and(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A << B) private static function shl(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A >> B) private static function shr(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A >>> B) private static function ushr(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(~A) private static function bneg(t:GoInt8):GoInt8;
	#else
	// TODO: clamp int8
	static function clamp(x:Int):Int {
		var r = x & 0xFF;
		if ((r & 0x80) != 0) {
			return -1 - 0xFF + r;
		}
		return r;
	}
	#end
}

abstract GoInt16(Int16) from Int16 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "int16";

	@:op(A > B) private static function gt(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A < B) private static function lt(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt16, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt16, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt16, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt16, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt16):Bool;





	#if (java || cs || cpp)
	@:op(~A) private static function bneg(t:GoInt16):GoInt16;



	@:op(A + B) private static function add(lhs:GoInt16, rhs:GoInt16):GoInt16;



	@:op(A * B) private static function mul(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A % B) private static function modI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A % B) private static function modF(lhs:GoInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A - B) private static function subI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A - B) private static function subF(lhs:GoInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt16, rhs:GoInt16):GoInt16;


	@:op(A | B) private static function or(lhs:GoInt16, rhs:GoInt16):GoInt16;


	@:op(A ^ B) private static function xor(lhs:GoInt16, rhs:GoInt16):GoInt16;


	@:op(A & B) private static function and(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A << B) private static function shl(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A >> B) private static function shr(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A >>> B) private static function ushr(lhs:GoInt16, rhs:Int):GoInt16;
	#else
	@:op(A + B) private static inline function add(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() + b.toBasic());
	static function clamp(x:Int):Int {
		var r = x & 0xFFFF;
		if ((r & 0x8000) != 0) {
			return -1 - 0xFFFF + r;
		}
		return r;
	}
	#end
}
abstract IntegerTypeInt(Int) from Int to Int {
	public inline function new(x) {
		this = x;
	}
	@:commutative @:op(A + B) private static inline function addI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) + rhs;
	}
	@:commutative @:op(A + B) private static inline function addI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) + rhs;
	}
	@:commutative @:op(A - B) private static inline function subI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) - rhs;
	}
	@:commutative @:op(A - B) private static inline function subI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) - rhs;
	}
	@:commutative @:op(A | B) private static inline function orI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) | rhs;
	}
	@:commutative @:op(A | B) private static inline function orI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) | rhs;
	}
	@:commutative @:op(A ^ B) private static inline function xorI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) ^ rhs;
	}
	@:commutative @:op(A ^ B) private static inline function xorI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) ^ rhs;
	}
	@:commutative @:op(A & B) private static inline function andI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) & rhs;
	}
	@:commutative @:op(A & B) private static inline function andI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) & rhs;
	}
}
abstract IntegerTypeInt64(Int64) {
	public inline function new(x) {
		this = x;
	}
	@:from public static inline function ofString(x:String) {
		try {
			return new IntegerTypeInt64(Int64.parseString(x));
		}catch(e) {
			trace("integer type from string error: " + e);
			return new IntegerTypeInt64(Int64.make(0,0));
		}
	}
}

abstract GoInt64(Int64) from Int64 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:to inline function toString() {
		return haxe.Int64.toStr(this);
	}

	public inline function _typeName_()
		return "int64";

	@:from public static inline function ofInt(x:Int):GoInt64
		return (Int64.make(x >> 31, x) : GoInt64);

	@:op(A + B) private static function add(lhs:GoInt64, rhs:GoInt64):GoInt64;



	@:op(A * B) private static function mul(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A % B) private static function modI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A % B) private static function modF(lhs:GoInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A - B) private static function subI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A - B) private static function subF(lhs:GoInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A | B) private static function or(lhs:GoInt64, rhs:GoInt64):GoInt64;


	@:op(A ^ B) private static function xor(lhs:GoInt64, rhs:GoInt64):GoInt64;


	@:op(A & B) private static function and(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A << B) private static function shl(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A >> B) private static function shr(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A >>> B) private static function ushr(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A > B) private static function gt(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A < B) private static function lt(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt64):Bool;

	@:op(~A) private static function bneg(t:GoInt64):GoInt64;

	@:op(A == B) private static function equals(a:GoInt64,b:GoInt64):Bool {
		return Int64.eq(a.toBasic(),b.toBasic());
	}
	@:op(A != B) private static function notEquals(a:GoInt64,b:GoInt64):Bool {
		return Int64.neq(a.toBasic(),b.toBasic());
	}




}

abstract GoUInt8(UInt8) from UInt8 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:from public static inline function ofInt(x:Int):GoUInt8 {
		return new GoUInt8(x);
	}
	public inline function _typeName_()
		return "uint8";

	@:op(A > B) private static function gt(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt8):Bool;





	#if (cs || cpp || hl)


	@:op(A + B) private static function add(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;



	@:op(A * B) private static function mul(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A % B) private static function modI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A % B) private static function modF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A - B) private static function subI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A - B) private static function subF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A | B) private static function or(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;


	@:op(A ^ B) private static function xor(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;


	@:op(A & B) private static function and(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A << B) private static function shl(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A >> B) private static function shr(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A >>> B) private static function ushr(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(~A) private static function bneg(t:GoUInt8):GoUInt8;
	#else
	// TODO: clamp uint8
	static function clamp(x:Int):Int {
		return x & 0xFF;
	}
	#end
}

abstract GoUInt16(UInt16) from UInt16 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint16";

	@:op(A > B) private static function gt(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt16):Bool;





	#if (cs || cpp || hl)


	@:op(A + B) private static function add(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;



	@:op(A * B) private static function mul(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A % B) private static function modI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A % B) private static function modF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A - B) private static function subI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A - B) private static function subF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


	@:op(A | B) private static function or(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


	@:op(A ^ B) private static function xor(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


	@:op(A & B) private static function and(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A << B) private static function shl(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A >> B) private static function shr(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A >>> B) private static function ushr(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(~A) private static function bneg(t:GoUInt16):GoUInt16;
	#else
	// TODO: clamp uint16
	static function clamp(x:Int):Int {
		return x & 0xFFFF;
	}
	#end
}
abstract GoUInt32(UInt32) from UInt32 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint32";

	// TODO: clamp uint32, increase number range
}


abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint64";

	@:from public static inline function ofInt(x:Int):GoUInt64 {
		return new GoUInt64(UInt64.ofInt(x));
	}

	@:from public static inline function ofFloat(x:Float):GoUInt64 {
		return (Std.int(x) : GoUInt64);
	}

	@:op(A > B) private static function gt(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt64):Bool;

	#if (cs || cpp || eval)


	@:op(A + B) private static function add(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;



	@:op(A * B) private static function mul(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A % B) private static function modI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A % B) private static function modF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A - B) private static function subI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A - B) private static function subF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A | B) private static function or(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A ^ B) private static function xor(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A & B) private static function and(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A << B) private static function shl(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >> B) private static function shr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >>> B) private static function ushr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(~A) private static function bneg(t:GoUInt64):GoUInt64;
	#if eval
	@:op(A != B) static function eq(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A == B) static function ne(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A < B) static function lt(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A > B) static function gt(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A <= B) static function lte(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A >= B) static function gte(a:GoUInt64, b:GoUInt64):Bool;
	
	#end
	#else



	// TODO: clamp uint64, increase number range
	#end
}

interface StructType {
	public final _typeName_:String;
	public var _address_:Int;
	public var _is_pointer_:Bool;
}
interface Error {
	public function error():String;
}

abstract AnyInterface({value:Any, typeName:String}) {
	public inline function new(obj=null) {
		this = obj;
	}

	@:to private inline function to<T>() {
		return (this.value : T);
	}

	@:from private static inline function from<T>(x:T) {
		if (x == null)
			return new AnyInterface({value: null,typeName: "null"});
		return new AnyInterface({value: x, typeName: "unknown"});
	}

	public inline function typeName() {
		return this.typeName;
	}

	public inline function value() {
		return this.value;
	}
}

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int, value:T):T;
}

interface MapAccess<K, V> {
	function get(k:K):Null<V>;
	function set(k:K, v:V):Void;
}
/*
	uint8       the set of all unsigned  8-bit integers (0 to 255)
	uint16      the set of all unsigned 16-bit integers (0 to 65535)
	uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
	uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)

	int8        the set of all signed  8-bit integers (-128 to 127)
	int16       the set of all signed 16-bit integers (-32768 to 32767)
	int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
	int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

	float32     the set of all IEEE-754 32-bit floating-point numbers
	float64     the set of all IEEE-754 64-bit floating-point numbers

	complex64   the set of all complex numbers with float32 real and imaginary parts
	complex128  the set of all complex numbers with float64 real and imaginary parts

	byte        alias for uint8
	rune        alias for int32
 */