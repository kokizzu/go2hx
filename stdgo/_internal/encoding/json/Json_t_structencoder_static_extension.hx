package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_5467201:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5467171:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5467137:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5467301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5467306_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5467284:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5467137 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5467155i32;
                } else if (__value__ == (5467155i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5467697i32;
                    } else {
                        _gotoNext = 5467701i32;
                    };
                } else if (__value__ == (5467197i32)) {
                    _f_5467201 = (stdgo.Go.setRef(_se._fields._list[(_i_5467171 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5467284 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5467201 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5467454i32;
                    } else {
                        _gotoNext = 5467460i32;
                    };
                } else if (__value__ == (5467320i32)) {
                    _i_5467301 = (@:checkr _f_5467201 ?? throw "null pointer dereference")._index[(_i_5467306_0 : stdgo.GoInt)];
                    if (_fv_5467284.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5467357i32;
                    } else {
                        _gotoNext = 5467436i32;
                    };
                } else if (__value__ == (5467357i32)) {
                    if (_fv_5467284.isNil()) {
                        _gotoNext = 5467377i32;
                    } else {
                        _gotoNext = 5467413i32;
                    };
                } else if (__value__ == (5467377i32)) {
                    _i_5467171++;
                    _gotoNext = 5467698i32;
                } else if (__value__ == (5467413i32)) {
                    _fv_5467284 = _fv_5467284.elem()?.__copy__();
                    _gotoNext = 5467436i32;
                } else if (__value__ == (5467436i32)) {
                    _fv_5467284 = _fv_5467284.field(_i_5467301)?.__copy__();
                    _i_5467306_0++;
                    _gotoNext = 5467455i32;
                } else if (__value__ == (5467454i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5467201 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5467306_0 = __tmp__0;
                        _i_5467301 = __tmp__1;
                    };
                    _gotoNext = 5467455i32;
                } else if (__value__ == (5467455i32)) {
                    if (_i_5467306_0 < ((@:checkr _f_5467201 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5467320i32;
                    } else {
                        _gotoNext = 5467460i32;
                    };
                } else if (__value__ == (5467460i32)) {
                    if (((@:checkr _f_5467201 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5467284?.__copy__()) : Bool)) {
                        _gotoNext = 5467495i32;
                    } else {
                        _gotoNext = 5467515i32;
                    };
                } else if (__value__ == (5467495i32)) {
                    _i_5467171++;
                    _gotoNext = 5467698i32;
                } else if (__value__ == (5467515i32)) {
                    @:check2r _e.writeByte(_next_5467137);
                    _next_5467137 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5467567i32;
                    } else {
                        _gotoNext = 5467610i32;
                    };
                } else if (__value__ == (5467567i32)) {
                    @:check2r _e.writeString((@:checkr _f_5467201 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5467649i32;
                } else if (__value__ == (5467610i32)) {
                    _gotoNext = 5467610i32;
                    @:check2r _e.writeString((@:checkr _f_5467201 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5467649i32;
                } else if (__value__ == (5467649i32)) {
                    _opts._quoted = (@:checkr _f_5467201 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5467201 ?? throw "null pointer dereference")._encoder(_e, _fv_5467284?.__copy__(), _opts?.__copy__());
                    _i_5467171++;
                    _gotoNext = 5467698i32;
                } else if (__value__ == (5467697i32)) {
                    _i_5467171 = 0i32;
                    _gotoNext = 5467698i32;
                } else if (__value__ == (5467698i32)) {
                    if (_i_5467171 < (_se._fields._list.length)) {
                        _gotoNext = 5467197i32;
                    } else {
                        _gotoNext = 5467701i32;
                    };
                } else if (__value__ == (5467701i32)) {
                    if (_next_5467137 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5467716i32;
                    } else {
                        _gotoNext = 5467748i32;
                    };
                } else if (__value__ == (5467716i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5467772i32;
                } else if (__value__ == (5467748i32)) {
                    _gotoNext = 5467748i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5467772i32;
                } else if (__value__ == (5467772i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
