package stdgo._internal.crypto.hmac;
function new_(_h:() -> stdgo._internal.hash.Hash_Hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            var _hm = (stdgo._internal.crypto.internal.boring.Boring_newHMAC.newHMAC(_h, _key) : stdgo._internal.hash.Hash_Hash.Hash);
            if (_hm != null) {
                return _hm;
            };
        };
        var _hm = (stdgo.Go.setRef(({} : stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac)) : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        (@:checkr _hm ?? throw "null pointer dereference")._outer = _h();
        (@:checkr _hm ?? throw "null pointer dereference")._inner = _h();
        var _unique = (true : Bool);
        ({
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        __deferstack__.unshift(() -> ({
                            var a = function():Void {
                                var __blank__ = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }));
                    };
                    if (stdgo.Go.toInterface((@:checkr _hm ?? throw "null pointer dereference")._outer) == (stdgo.Go.toInterface((@:checkr _hm ?? throw "null pointer dereference")._inner))) {
                        _unique = false;
                    };
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        });
        if (!_unique) {
            throw stdgo.Go.toInterface(("crypto/hmac: hash generation function does not produce unique values" : stdgo.GoString));
        };
        var _blocksize = ((@:checkr _hm ?? throw "null pointer dereference")._inner.blockSize() : stdgo.GoInt);
        (@:checkr _hm ?? throw "null pointer dereference")._ipad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _hm ?? throw "null pointer dereference")._opad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if (((_key.length) > _blocksize : Bool)) {
            (@:checkr _hm ?? throw "null pointer dereference")._outer.write(_key);
            _key = (@:checkr _hm ?? throw "null pointer dereference")._outer.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _hm ?? throw "null pointer dereference")._ipad.__copyTo__(_key);
        (@:checkr _hm ?? throw "null pointer dereference")._opad.__copyTo__(_key);
        for (_i => _ in (@:checkr _hm ?? throw "null pointer dereference")._ipad) {
            (@:checkr _hm ?? throw "null pointer dereference")._ipad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw "null pointer dereference")._ipad[(_i : stdgo.GoInt)] ^ ((54 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        for (_i => _ in (@:checkr _hm ?? throw "null pointer dereference")._opad) {
            (@:checkr _hm ?? throw "null pointer dereference")._opad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw "null pointer dereference")._opad[(_i : stdgo.GoInt)] ^ ((92 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        (@:checkr _hm ?? throw "null pointer dereference")._inner.write((@:checkr _hm ?? throw "null pointer dereference")._ipad);
        return stdgo.Go.asInterface(_hm);
    }
