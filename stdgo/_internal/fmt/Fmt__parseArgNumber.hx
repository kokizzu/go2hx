package stdgo._internal.fmt;
function _parseArgNumber(_format:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _index = (0 : stdgo.GoInt), _wid = (0 : stdgo.GoInt), _ok = false;
        if (((_format.length) < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : _index = (0 : stdgo.GoInt), _1 : _wid = (1 : stdgo.GoInt), _2 : _ok = false };
        };
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_format.length) : Bool)) {
                if (_format[(_i : stdgo.GoInt)] == ((93 : stdgo.GoUInt8))) {
                    var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format.__copy__(), (1 : stdgo.GoInt), _i), _width:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1, _newi:stdgo.GoInt = __tmp__._2;
                    if ((!_ok || (_newi != _i) : Bool)) {
                        return { _0 : _index = (0 : stdgo.GoInt), _1 : _wid = (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _ok = false };
                    };
                    return { _0 : _index = (_width - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _wid = (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _ok = true };
                };
                _i++;
            };
        };
        return { _0 : _index = (0 : stdgo.GoInt), _1 : _wid = (1 : stdgo.GoInt), _2 : _ok = false };
    }
