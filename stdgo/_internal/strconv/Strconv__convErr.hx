package stdgo._internal.strconv;
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var _syntax = (null : stdgo.Error), _range_ = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _x.func = ("ParseComplex" : stdgo.GoString);
                _x.num = stdgo._internal.strconv.Strconv__cloneString._cloneString(_s?.__copy__())?.__copy__();
                if (stdgo.Go.toInterface(_x.err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errRange.errRange))) {
                    return { _0 : _syntax = (null : stdgo.Error), _1 : _range_ = stdgo.Go.asInterface(_x) };
                };
            };
        };
        return { _0 : _syntax = _err, _1 : _range_ = (null : stdgo.Error) };
    }
