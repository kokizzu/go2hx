package stdgo._internal.math.bits;
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
        var _quo = (0 : stdgo.GoUInt), _rem = (0 : stdgo.GoUInt);
        if (true) {
            var __tmp__ = stdgo._internal.math.bits.Bits_div32.div32((_hi : stdgo.GoUInt32), (_lo : stdgo.GoUInt32), (_y : stdgo.GoUInt32)), _q:stdgo.GoUInt32 = __tmp__._0, _r:stdgo.GoUInt32 = __tmp__._1;
            return { _0 : _quo = (_q : stdgo.GoUInt), _1 : _rem = (_r : stdgo.GoUInt) };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64((_hi : stdgo.GoUInt64), (_lo : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), _q:stdgo.GoUInt64 = __tmp__._0, _r:stdgo.GoUInt64 = __tmp__._1;
        return { _0 : _quo = (_q : stdgo.GoUInt), _1 : _rem = (_r : stdgo.GoUInt) };
    }
