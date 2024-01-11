package stdgo.unicode.utf8;
/**
    // Package utf8 implements functions and constants to support text encoded in
    // UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    // See https://en.wikipedia.org/wiki/UTF-8
**/
private var __go2hxdoc__package : Bool;
/**
    // Numbers fundamental to the encoding.
    
    // the "error" Rune or "Unicode replacement character"
**/
final runeError : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
/**
    // Numbers fundamental to the encoding.
    
    // characters below RuneSelf are represented as themselves in a single byte.
**/
final runeSelf : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
/**
    // Numbers fundamental to the encoding.
    
    // Maximum valid Unicode code point.
**/
final maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
/**
    // Numbers fundamental to the encoding.
    
    // maximum number of bytes of a UTF-8 encoded Unicode character.
**/
final utfmax : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
/**
    // Code points in the surrogate range are not valid for UTF-8.
    
    
**/
final _surrogateMin : stdgo.GoUInt64 = (55296i64 : stdgo.GoUInt64);
/**
    // Code points in the surrogate range are not valid for UTF-8.
    
    
**/
final _surrogateMax : stdgo.GoUInt64 = (57343i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _t1 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _tx : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _t2 : stdgo.GoUInt64 = (192i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _t3 : stdgo.GoUInt64 = (224i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _t4 : stdgo.GoUInt64 = (240i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _t5 : stdgo.GoUInt64 = (248i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _maskx : stdgo.GoUInt64 = (63i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _mask2 : stdgo.GoUInt64 = (31i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _mask3 : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _mask4 : stdgo.GoUInt64 = (7i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _rune1Max : stdgo.GoUInt64 = (127i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _rune2Max : stdgo.GoUInt64 = (2047i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _rune3Max : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
/**
    // The default lowest and highest continuation byte.
    
    
**/
final _locb : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _hicb : stdgo.GoUInt64 = (191i64 : stdgo.GoUInt64);
/**
    // These names of these constants are chosen to give nice alignment in the
    // table below. The first nibble is an index into acceptRanges or F for
    // special one-byte cases. The second nibble is the Rune length or the
    // Status for the special one-byte case.
    
    // invalid: size 1
**/
final _xx : stdgo.GoUInt64 = (241i64 : stdgo.GoUInt64);
/**
    
    
    // ASCII: size 1
**/
final _as : stdgo.GoUInt64 = (240i64 : stdgo.GoUInt64);
/**
    
    
    // accept 0, size 2
**/
final _s1 : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
/**
    
    
    // accept 1, size 3
**/
final _s2 : stdgo.GoUInt64 = (19i64 : stdgo.GoUInt64);
/**
    
    
    // accept 0, size 3
**/
final _s3 : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
/**
    
    
    // accept 2, size 3
**/
final _s4 : stdgo.GoUInt64 = (35i64 : stdgo.GoUInt64);
/**
    
    
    // accept 3, size 4
**/
final _s5 : stdgo.GoUInt64 = (52i64 : stdgo.GoUInt64);
/**
    
    
    // accept 0, size 4
**/
final _s6 : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
/**
    
    
    // accept 4, size 4
**/
final _s7 : stdgo.GoUInt64 = (68i64 : stdgo.GoUInt64);
/**
    // first is information about the first byte in a UTF-8 sequence.
    
    
**/
var _first : stdgo.GoArray<stdgo.GoUInt8> = (new stdgo.GoArray<stdgo.GoUInt8>(
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8)) : stdgo.GoArray<stdgo.GoUInt8>);
/**
    // acceptRanges has size 16 to avoid bounds checks in the code that uses it.
    
    
**/
var _acceptRanges : stdgo.GoArray<stdgo.unicode.utf8.Utf8.T_acceptRange> = {
        var s:stdgo.GoArray<stdgo.unicode.utf8.Utf8.T_acceptRange> = new stdgo.GoArray<stdgo.unicode.utf8.Utf8.T_acceptRange>(...[for (i in 0 ... 16) ({} : stdgo.unicode.utf8.Utf8.T_acceptRange)]);
        s[0] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[1] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((160 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[2] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (159 : stdgo.GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[3] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((144 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[4] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (143 : stdgo.GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s;
    };
/**
    // acceptRange gives the range of valid values for the second byte in a UTF-8
    // sequence.
    
    
**/
@:structInit @:private class T_acceptRange {
    public var _lo : stdgo.GoUInt8 = 0;
    public var _hi : stdgo.GoUInt8 = 0;
    public function new(?_lo:stdgo.GoUInt8, ?_hi:stdgo.GoUInt8) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_acceptRange(_lo, _hi);
    }
}
/**
    // FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
    // An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
**/
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool {
        var _n:stdgo.GoInt = (_p.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _x:stdgo.GoUInt8 = _first[(_p[(0 : stdgo.GoInt)] : stdgo.GoInt)];
        if (_n >= (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt)) {
            return true;
        };
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
        if ((_n > (1 : stdgo.GoInt)) && ((_p[(1 : stdgo.GoInt)] < _accept._lo) || (_accept._hi < _p[(1 : stdgo.GoInt)]))) {
            return true;
        } else if ((_n > (2 : stdgo.GoInt)) && ((_p[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _p[(2 : stdgo.GoInt)]))) {
            return true;
        };
        return false;
    }
/**
    // FullRuneInString is like FullRune but its input is a string.
**/
function fullRuneInString(_s:stdgo.GoString):Bool {
        var _n:stdgo.GoInt = (_s.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _x:stdgo.GoUInt8 = _first[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)];
        if (_n >= (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt)) {
            return true;
        };
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
        if ((_n > (1 : stdgo.GoInt)) && ((_s[(1 : stdgo.GoInt)] < _accept._lo) || (_accept._hi < _s[(1 : stdgo.GoInt)]))) {
            return true;
        } else if ((_n > (2 : stdgo.GoInt)) && ((_s[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _s[(2 : stdgo.GoInt)]))) {
            return true;
        };
        return false;
    }
/**
    // DecodeRune unpacks the first UTF-8 encoding in p and returns the rune and
    // its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    // the encoding is invalid, it returns (RuneError, 1). Both are impossible
    // results for correct, non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n:stdgo.GoInt = (_p.length);
        if (_n < (1 : stdgo.GoInt)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _p0:stdgo.GoUInt8 = _p[(0 : stdgo.GoInt)];
        var _x:stdgo.GoUInt8 = _first[(_p0 : stdgo.GoInt)];
        if (_x >= (240 : stdgo.GoUInt8)) {
            var _mask:stdgo.GoInt32 = ((_x : stdgo.GoRune) << (31i64 : stdgo.GoUInt64)) >> (31i64 : stdgo.GoUInt64);
            return { _0 : ((_p[(0 : stdgo.GoInt)] : stdgo.GoRune) & (_mask ^ (-1i32 : stdgo.GoInt))) | ((65533 : stdgo.GoInt32) & _mask), _1 : (1 : stdgo.GoInt) };
        };
        var _sz:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
        if (_n < _sz) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _b1:stdgo.GoUInt8 = _p[(1 : stdgo.GoInt)];
        if ((_b1 < _accept._lo) || (_accept._hi < _b1)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if (_sz <= (2 : stdgo.GoInt)) {
            return { _0 : ((_p0 & (31 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64)) | (_b1 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (2 : stdgo.GoInt) };
        };
        var _b2:stdgo.GoUInt8 = _p[(2 : stdgo.GoInt)];
        if ((_b2 < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _b2)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if (_sz <= (3 : stdgo.GoInt)) {
            return { _0 : (((_p0 & (15 : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64)) | ((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64))) | (_b2 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (3 : stdgo.GoInt) };
        };
        var _b3:stdgo.GoUInt8 = _p[(3 : stdgo.GoInt)];
        if ((_b3 < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _b3)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : ((((_p0 & (7 : stdgo.GoUInt8) : stdgo.GoRune) << (18i64 : stdgo.GoUInt64)) | ((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64))) | ((_b2 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64))) | (_b3 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (4 : stdgo.GoInt) };
    }
/**
    // DecodeRuneInString is like DecodeRune but its input is a string. If s is
    // empty it returns (RuneError, 0). Otherwise, if the encoding is invalid, it
    // returns (RuneError, 1). Both are impossible results for correct, non-empty
    // UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
function decodeRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n:stdgo.GoInt = (_s.length);
        if (_n < (1 : stdgo.GoInt)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _s0:stdgo.GoUInt8 = _s[(0 : stdgo.GoInt)];
        var _x:stdgo.GoUInt8 = _first[(_s0 : stdgo.GoInt)];
        if (_x >= (240 : stdgo.GoUInt8)) {
            var _mask:stdgo.GoInt32 = ((_x : stdgo.GoRune) << (31i64 : stdgo.GoUInt64)) >> (31i64 : stdgo.GoUInt64);
            return { _0 : ((_s[(0 : stdgo.GoInt)] : stdgo.GoRune) & (_mask ^ (-1i32 : stdgo.GoInt))) | ((65533 : stdgo.GoInt32) & _mask), _1 : (1 : stdgo.GoInt) };
        };
        var _sz:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
        if (_n < _sz) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _s1:stdgo.GoUInt8 = _s[(1 : stdgo.GoInt)];
        if ((_s1 < _accept._lo) || (_accept._hi < _s1)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if (_sz <= (2 : stdgo.GoInt)) {
            return { _0 : ((_s0 & (31 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64)) | (_s1 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (2 : stdgo.GoInt) };
        };
        var _s2:stdgo.GoUInt8 = _s[(2 : stdgo.GoInt)];
        if ((_s2 < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _s2)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if (_sz <= (3 : stdgo.GoInt)) {
            return { _0 : (((_s0 & (15 : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64)) | ((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64))) | (_s2 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (3 : stdgo.GoInt) };
        };
        var _s3:stdgo.GoUInt8 = _s[(3 : stdgo.GoInt)];
        if ((_s3 < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _s3)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : ((((_s0 & (7 : stdgo.GoUInt8) : stdgo.GoRune) << (18i64 : stdgo.GoUInt64)) | ((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64))) | ((_s2 & (63 : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64))) | (_s3 & (63 : stdgo.GoUInt8) : stdgo.GoRune), _1 : (4 : stdgo.GoInt) };
    }
/**
    // DecodeLastRune unpacks the last UTF-8 encoding in p and returns the rune and
    // its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    // the encoding is invalid, it returns (RuneError, 1). Both are impossible
    // results for correct, non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end:stdgo.GoInt = (_p.length);
        if (_end == ((0 : stdgo.GoInt))) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _start:stdgo.GoInt = _end - (1 : stdgo.GoInt);
        _r = (_p[(_start : stdgo.GoInt)] : stdgo.GoRune);
        if (_r < (128 : stdgo.GoInt32)) {
            return { _0 : _r, _1 : (1 : stdgo.GoInt) };
        };
        var _lim:stdgo.GoInt = _end - (4 : stdgo.GoInt);
        if (_lim < (0 : stdgo.GoInt)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            stdgo.Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_p[(_start : stdgo.GoInt)])) {
                    break;
                };
            });
        };
        if (_start < (0 : stdgo.GoInt)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = decodeRune((_p.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != (_end)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
/**
    // DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
    // s is empty it returns (RuneError, 0). Otherwise, if the encoding is invalid,
    // it returns (RuneError, 1). Both are impossible results for correct,
    // non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
function decodeLastRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end:stdgo.GoInt = (_s.length);
        if (_end == ((0 : stdgo.GoInt))) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _start:stdgo.GoInt = _end - (1 : stdgo.GoInt);
        _r = (_s[(_start : stdgo.GoInt)] : stdgo.GoRune);
        if (_r < (128 : stdgo.GoInt32)) {
            return { _0 : _r, _1 : (1 : stdgo.GoInt) };
        };
        var _lim:stdgo.GoInt = _end - (4 : stdgo.GoInt);
        if (_lim < (0 : stdgo.GoInt)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            stdgo.Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_s[(_start : stdgo.GoInt)])) {
                    break;
                };
            });
        };
        if (_start < (0 : stdgo.GoInt)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = decodeRuneInString((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__());
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != (_end)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
/**
    // RuneLen returns the number of bytes required to encode the rune.
    // It returns -1 if the rune is not a valid value to encode in UTF-8.
**/
function runeLen(_r:stdgo.GoRune):stdgo.GoInt {
        if (_r < (0 : stdgo.GoInt32)) {
            return (-1 : stdgo.GoInt);
        } else if (_r <= (127 : stdgo.GoInt32)) {
            return (1 : stdgo.GoInt);
        } else if (_r <= (2047 : stdgo.GoInt32)) {
            return (2 : stdgo.GoInt);
        } else if (((55296 : stdgo.GoInt32) <= _r) && (_r <= (57343 : stdgo.GoInt32))) {
            return (-1 : stdgo.GoInt);
        } else if (_r <= (65535 : stdgo.GoInt32)) {
            return (3 : stdgo.GoInt);
        } else if (_r <= (1114111 : stdgo.GoInt32)) {
            return (4 : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
    // If the rune is out of range, it writes the encoding of RuneError.
    // It returns the number of bytes written.
**/
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt {
        {
            var _i:stdgo.GoUInt32 = (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (127u32 : stdgo.GoUInt32)))) {
                        _p[(0 : stdgo.GoInt)] = (_r : stdgo.GoByte);
                        return (1 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32)))) {
                        _p[(1 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = (192 : stdgo.GoUInt8) | (_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte);
                        _p[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        return (2 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i > (1114111u32 : stdgo.GoUInt32) || ((55296u32 : stdgo.GoUInt32) <= _i) && (_i <= (57343u32 : stdgo.GoUInt32))))) {
                        _r = (65533 : stdgo.GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32)))) {
                        _p[(2 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = (224 : stdgo.GoUInt8) | (_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoByte);
                        _p[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        _p[(2 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        return (3 : stdgo.GoInt);
                        break;
                        break;
                    } else {
                        _p[(3 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = (240 : stdgo.GoUInt8) | (_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoByte);
                        _p[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        _p[(2 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        _p[(3 : stdgo.GoInt)] = (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8));
                        return (4 : stdgo.GoInt);
                        break;
                    };
                    break;
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
/**
    // AppendRune appends the UTF-8 encoding of r to the end of p and
    // returns the extended buffer. If the rune is out of range,
    // it appends the encoding of RuneError.
**/
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        if ((_r : stdgo.GoUInt32) <= (127u32 : stdgo.GoUInt32)) {
            return (_p.__append__((_r : stdgo.GoByte)));
        };
        return _appendRuneNonASCII(_p, _r);
    }
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        {
            var _i:stdgo.GoUInt32 = (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32)))) {
                        return (_p.__append__((192 : stdgo.GoUInt8) | (_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte), (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8))));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i > (1114111u32 : stdgo.GoUInt32) || ((55296u32 : stdgo.GoUInt32) <= _i) && (_i <= (57343u32 : stdgo.GoUInt32))))) {
                        _r = (65533 : stdgo.GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32)))) {
                        return (_p.__append__((224 : stdgo.GoUInt8) | (_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoByte), (128 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8)), (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8))));
                        break;
                        break;
                    } else {
                        return (_p.__append__((240 : stdgo.GoUInt8) | (_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoByte), (128 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8)), (128 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoByte) & (63 : stdgo.GoUInt8)), (128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8))));
                        break;
                    };
                    break;
                };
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
/**
    // RuneCount returns the number of runes in p. Erroneous and short
    // encodings are treated as single runes of width 1 byte.
**/
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _np:stdgo.GoInt = (_p.length);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i < _np) {
                _n++;
                var _c:stdgo.GoUInt8 = _p[(_i : stdgo.GoInt)];
                if (_c < (128 : stdgo.GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:stdgo.GoUInt8 = _first[(_c : stdgo.GoInt)];
                if (_x == ((241 : stdgo.GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
                if ((_i + _size) > _np) {
                    _i++;
                    continue;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
                {
                    var _c:stdgo.GoUInt8 = _p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c:stdgo.GoUInt8 = _p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)];
                        if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c:stdgo.GoUInt8 = _p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)];
                            if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return _n;
    }
/**
    // RuneCountInString is like RuneCount but its input is a string.
**/
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ns:stdgo.GoInt = (_s.length);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _ns, _n++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_c < (128 : stdgo.GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:stdgo.GoUInt8 = _first[(_c : stdgo.GoInt)];
                if (_x == ((241 : stdgo.GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
                if ((_i + _size) > _ns) {
                    _i++;
                    continue;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
                {
                    var _c:stdgo.GoUInt8 = _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c:stdgo.GoUInt8 = _s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)];
                        if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c:stdgo.GoUInt8 = _s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)];
                            if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
                _i = _i + (_size);
            });
        };
        return _n;
    }
/**
    // RuneStart reports whether the byte could be the first byte of an encoded,
    // possibly invalid rune. Second and subsequent bytes always have the top two
    // bits set to 10.
**/
function runeStart(_b:stdgo.GoByte):Bool {
        return _b & (192 : stdgo.GoUInt8) != ((128 : stdgo.GoUInt8));
    }
/**
    // Valid reports whether p consists entirely of valid UTF-8-encoded runes.
**/
function valid(_p:stdgo.Slice<stdgo.GoByte>):Bool {
        _p = (_p.__slice__(0, (_p.length), (_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
        while ((_p.length) >= (8 : stdgo.GoInt)) {
            var _first32:stdgo.GoUInt32 = (((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64))) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64))) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64));
            var _second32:stdgo.GoUInt32 = (((_p[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64))) | ((_p[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64))) | ((_p[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64));
            if ((_first32 | _second32) & (-2139062144u32 : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n:stdgo.GoInt = (_p.length);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i < _n) {
                var _pi:stdgo.GoUInt8 = _p[(_i : stdgo.GoInt)];
                if (_pi < (128 : stdgo.GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:stdgo.GoUInt8 = _first[(_pi : stdgo.GoInt)];
                if (_x == ((241 : stdgo.GoUInt8))) {
                    return false;
                };
                var _size:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
                if ((_i + _size) > _n) {
                    return false;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
                {
                    var _c:stdgo.GoUInt8 = _p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c:stdgo.GoUInt8 = _p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)];
                        if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c:stdgo.GoUInt8 = _p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)];
                            if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                                return false;
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return true;
    }
/**
    // ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
**/
function validString(_s:stdgo.GoString):Bool {
        while ((_s.length) >= (8 : stdgo.GoInt)) {
            var _first32:stdgo.GoUInt32 = (((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64))) | ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64))) | ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64));
            var _second32:stdgo.GoUInt32 = (((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64))) | ((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64))) | ((_s[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64));
            if ((_first32 | _second32) & (-2139062144u32 : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _s = (_s.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _n:stdgo.GoInt = (_s.length);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i < _n) {
                var _si:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_si < (128 : stdgo.GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:stdgo.GoUInt8 = _first[(_si : stdgo.GoInt)];
                if (_x == ((241 : stdgo.GoUInt8))) {
                    return false;
                };
                var _size:stdgo.GoInt = (_x & (7 : stdgo.GoUInt8) : stdgo.GoInt);
                if ((_i + _size) > _n) {
                    return false;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)];
                {
                    var _c:stdgo.GoUInt8 = _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c:stdgo.GoUInt8 = _s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)];
                        if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c:stdgo.GoUInt8 = _s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)];
                            if ((_c < (128 : stdgo.GoUInt8)) || ((191 : stdgo.GoUInt8) < _c)) {
                                return false;
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return true;
    }
/**
    // ValidRune reports whether r can be legally encoded as UTF-8.
    // Code points that are out of range or a surrogate half are illegal.
**/
function validRune(_r:stdgo.GoRune):Bool {
        if (((0 : stdgo.GoInt32) <= _r) && (_r < (55296 : stdgo.GoInt32))) {
            return true;
        } else if (((57343 : stdgo.GoInt32) < _r) && (_r <= (1114111 : stdgo.GoInt32))) {
            return true;
        };
        return false;
    }
