package stdgo._internal.encoding.gob;
function _encStringSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        for (__8 => _x in _slice) {
            if (((_x != (stdgo.Go.str() : stdgo.GoString)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                @:check2r _state._encodeUint((_x.length : stdgo.GoUInt64));
                @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.writeString(_x?.__copy__());
            };
        };
        return true;
    }
