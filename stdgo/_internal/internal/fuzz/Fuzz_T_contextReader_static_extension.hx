package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_contextReader_asInterface) class T_contextReader_static_extension {
    @:keep
    static public function read( _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader> = _cr;
        {
            var _ctxErr = (_cr._ctx.err() : stdgo.Error);
            if (_ctxErr != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _ctxErr };
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var __tmp__ = _cr._r.read(_b);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_done != null) _done.__close__();
            };
            a();
        }));
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_cr._ctx.done() != null && _cr._ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _cr._ctx.done().__get__();
                            {
                                return { _0 : (0 : stdgo.GoInt), _1 : _cr._ctx.err() };
                            };
                        };
                    } else if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
    }
}
