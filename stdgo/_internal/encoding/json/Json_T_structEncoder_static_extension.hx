package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5375604:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5375570:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5375734:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5375739_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5375717:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5375634:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5375570 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5375588i32;
                } else if (__value__ == (5375588i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5376130i32;
                    } else {
                        _gotoNext = 5376134i32;
                    };
                } else if (__value__ == (5375630i32)) {
                    _f_5375634 = (stdgo.Go.setRef(_se._fields._list[(_i_5375604 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5375717 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5375634._index.length)) {
                        _gotoNext = 5375887i32;
                    } else {
                        _gotoNext = 5375893i32;
                    };
                } else if (__value__ == (5375753i32)) {
                    _i_5375734 = _f_5375634._index[(_i_5375739_0 : stdgo.GoInt)];
                    if (_fv_5375717.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5375790i32;
                    } else {
                        _gotoNext = 5375869i32;
                    };
                } else if (__value__ == (5375790i32)) {
                    if (_fv_5375717.isNil()) {
                        _gotoNext = 5375810i32;
                    } else {
                        _gotoNext = 5375846i32;
                    };
                } else if (__value__ == (5375810i32)) {
                    _i_5375604++;
                    _gotoNext = 5376131i32;
                } else if (__value__ == (5375846i32)) {
                    _fv_5375717 = _fv_5375717.elem()?.__copy__();
                    _gotoNext = 5375869i32;
                } else if (__value__ == (5375869i32)) {
                    _fv_5375717 = _fv_5375717.field(_i_5375734)?.__copy__();
                    _i_5375739_0++;
                    _gotoNext = 5375888i32;
                } else if (__value__ == (5375887i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5375634._index[(0i32 : stdgo.GoInt)];
                        _i_5375739_0 = __tmp__0;
                        _i_5375734 = __tmp__1;
                    };
                    _gotoNext = 5375888i32;
                } else if (__value__ == (5375888i32)) {
                    if (_i_5375739_0 < (_f_5375634._index.length)) {
                        _gotoNext = 5375753i32;
                    } else {
                        _gotoNext = 5375893i32;
                    };
                } else if (__value__ == (5375893i32)) {
                    if ((_f_5375634._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5375717?.__copy__()) : Bool)) {
                        _gotoNext = 5375928i32;
                    } else {
                        _gotoNext = 5375948i32;
                    };
                } else if (__value__ == (5375928i32)) {
                    _i_5375604++;
                    _gotoNext = 5376131i32;
                } else if (__value__ == (5375948i32)) {
                    _e.writeByte(_next_5375570);
                    _next_5375570 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5376000i32;
                    } else {
                        _gotoNext = 5376043i32;
                    };
                } else if (__value__ == (5376000i32)) {
                    _e.writeString(_f_5375634._nameEscHTML?.__copy__());
                    _gotoNext = 5376082i32;
                } else if (__value__ == (5376043i32)) {
                    _gotoNext = 5376043i32;
                    _e.writeString(_f_5375634._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5376082i32;
                } else if (__value__ == (5376082i32)) {
                    _opts._quoted = _f_5375634._quoted;
                    _f_5375634._encoder(_e, _fv_5375717?.__copy__(), _opts?.__copy__());
                    _i_5375604++;
                    _gotoNext = 5376131i32;
                } else if (__value__ == (5376130i32)) {
                    _i_5375604 = 0i32;
                    _gotoNext = 5376131i32;
                } else if (__value__ == (5376131i32)) {
                    if (_i_5375604 < (_se._fields._list.length)) {
                        _gotoNext = 5375630i32;
                    } else {
                        _gotoNext = 5376134i32;
                    };
                } else if (__value__ == (5376134i32)) {
                    if (_next_5375570 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5376149i32;
                    } else {
                        _gotoNext = 5376181i32;
                    };
                } else if (__value__ == (5376149i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5376205i32;
                } else if (__value__ == (5376181i32)) {
                    _gotoNext = 5376181i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5376205i32;
                } else if (__value__ == (5376205i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
