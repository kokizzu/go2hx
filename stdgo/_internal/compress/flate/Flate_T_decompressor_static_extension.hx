package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    @:tdfield
    static public function reset( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : (@:checkr _f ?? throw "null pointer dereference")._rBuf, _bits : (@:checkr _f ?? throw "null pointer dereference")._bits, _codebits : (@:checkr _f ?? throw "null pointer dereference")._codebits, _dict : (@:checkr _f ?? throw "null pointer dereference")._dict?.__copy__(), _step : stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
            var x = (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
            x._r = __tmp__._r;
            x._rBuf = __tmp__._rBuf;
            x._roffset = __tmp__._roffset;
            x._b = __tmp__._b;
            x._nb = __tmp__._nb;
            x._h1 = __tmp__._h1;
            x._h2 = __tmp__._h2;
            x._bits = __tmp__._bits;
            x._codebits = __tmp__._codebits;
            x._dict = __tmp__._dict;
            x._buf = __tmp__._buf;
            x._step = __tmp__._step;
            x._stepState = __tmp__._stepState;
            x._final = __tmp__._final;
            x._err = __tmp__._err;
            x._toRead = __tmp__._toRead;
            x._hl = __tmp__._hl;
            x._hd = __tmp__._hd;
            x._copyLen = __tmp__._copyLen;
            x._copyDist = __tmp__._copyDist;
        };
        @:check2r _f._makeReader(_r);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._init((32768 : stdgo.GoInt), _dict);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _f ?? throw "null pointer dereference")._rBuf = null;
                (@:checkr _f ?? throw "null pointer dereference")._r = _rr;
                return;
            };
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._rBuf != null && (((@:checkr _f ?? throw "null pointer dereference")._rBuf : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference")._rBuf : Dynamic).__nil__))) {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._rBuf.reset(_r);
        } else {
            (@:checkr _f ?? throw "null pointer dereference")._rBuf = stdgo._internal.bufio.Bufio_newReader.newReader(_r);
        };
        (@:checkr _f ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference")._rBuf);
    }
    @:keep
    @:tdfield
    static public function _huffSym( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _n = ((@:checkr _h ?? throw "null pointer dereference")._min : stdgo.GoUInt);
        var __0 = ((@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt), __1 = ((@:checkr _f ?? throw "null pointer dereference")._b : stdgo.GoUInt32);
var _b = __1, _nb = __0;
        while (true) {
            while ((_nb < _n : Bool)) {
                var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err) };
                };
                (@:checkr _f ?? throw "null pointer dereference")._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk = ((@:checkr _h ?? throw "null pointer dereference")._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = (@:checkr _h ?? throw "null pointer dereference")._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (@:checkr _h ?? throw "null pointer dereference")._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            if ((_n <= _nb : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                (@:checkr _f ?? throw "null pointer dereference")._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = (_nb - _n : stdgo.GoUInt);
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
        };
        (@:checkr _f ?? throw "null pointer dereference")._roffset++;
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b | (((_c : stdgo.GoUInt32) << (@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._final) {
            if ((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eOF.eOF;
        };
        (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    @:tdfield
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _buf = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeSlice();
        if (((_buf.length) > (@:checkr _f ?? throw "null pointer dereference")._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, (@:checkr _f ?? throw "null pointer dereference")._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt) : stdgo.GoInt);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeMark(_cnt);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._copyData;
            return;
        };
        @:check2r _f._finishBlock();
    }
    @:keep
    @:tdfield
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._nb = (0u32 : stdgo.GoUInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, ((@:checkr _f ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        var _n = (((@:checkr _f ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = (((@:checkr _f ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
            return;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            @:check2r _f._finishBlock();
            return;
        };
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = _n;
        @:check2r _f._copyData();
    }
    @:keep
    @:tdfield
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _stateDict_3683943;
        var _stateInit_3683892;
        var _nb_3685593:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _n_3684227:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _err_3684151:stdgo.Error = (null : stdgo.Error);
        var _v_3684148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dist_3685225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_3684264:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cnt_3686240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_3685670:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _stateInit_3683892 = (1i64 : stdgo.GoUInt64);
                    _gotoNext = 3683958i32;
                } else if (__value__ == (3683958i32)) {
                    {
                        final __value__ = (@:checkr _f ?? throw "null pointer dereference")._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3683980i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3684016i32;
                        } else {
                            _gotoNext = 3684055i32;
                        };
                    };
                } else if (__value__ == (3683980i32)) {
                    _gotoNext = 3684055i32;
                } else if (__value__ == (3684016i32)) {
                    _gotoNext = 3686161i32;
                } else if (__value__ == (3684055i32)) {
                    _gotoNext = 3684055i32;
                    {
                        _gotoNext = 3684144i32;
                    };
                } else if (__value__ == (3684144i32)) {
                    {
                        var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hl);
                        _v_3684148 = __tmp__._0;
                        _err_3684151 = __tmp__._1;
                    };
                    if (_err_3684151 != null) {
                        _gotoNext = 3684190i32;
                    } else {
                        _gotoNext = 3684223i32;
                    };
                } else if (__value__ == (3684190i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3684151;
                    return;
                    _gotoNext = 3684223i32;
                } else if (__value__ == (3684223i32)) {
                    _gotoNext = 3684277i32;
                } else if (__value__ == (3684277i32)) {
                    if ((_v_3684148 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684288i32;
                    } else if (_v_3684148 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 3684506i32;
                    } else if ((_v_3684148 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684592i32;
                    } else if ((_v_3684148 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684643i32;
                    } else if ((_v_3684148 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684699i32;
                    } else if ((_v_3684148 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684755i32;
                    } else if ((_v_3684148 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684811i32;
                    } else if ((_v_3684148 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684869i32;
                    } else if ((_v_3684148 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684928i32;
                    } else {
                        _gotoNext = 3684975i32;
                    };
                } else if (__value__ == (3684288i32)) {
                    @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeByte((_v_3684148 : stdgo.GoUInt8));
                    if (@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3684362i32;
                    } else {
                        _gotoNext = 3684487i32;
                    };
                } else if (__value__ == (3684362i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (0 : stdgo.GoInt);
                    return;
                    _gotoNext = 3684487i32;
                } else if (__value__ == (3684487i32)) {
                    _gotoNext = 3684055i32;
                } else if (__value__ == (3684506i32)) {
                    @:check2r _f._finishBlock();
                    return;
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684592i32)) {
                    _length_3684264 = (_v_3684148 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684643i32)) {
                    _length_3684264 = ((_v_3684148 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684699i32)) {
                    _length_3684264 = ((_v_3684148 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684755i32)) {
                    _length_3684264 = ((_v_3684148 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684811i32)) {
                    _length_3684264 = ((_v_3684148 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684869i32)) {
                    _length_3684264 = ((_v_3684148 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3684227 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684928i32)) {
                    _length_3684264 = (258 : stdgo.GoInt);
                    _n_3684227 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3684975i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3685040i32;
                } else if (__value__ == (3685040i32)) {
                    if ((_n_3684227 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3685049i32;
                    } else {
                        _gotoNext = 3685221i32;
                    };
                } else if (__value__ == (3685049i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3685054i32;
                } else if (__value__ == (3685054i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _n_3684227 : Bool)) {
                        _gotoNext = 3685067i32;
                    } else {
                        _gotoNext = 3685152i32;
                    };
                } else if (__value__ == (3685067i32)) {
                    {
                        _err_3684151 = @:check2r _f._moreBits();
                        if (_err_3684151 != null) {
                            _gotoNext = 3685107i32;
                        } else {
                            _gotoNext = 3685054i32;
                        };
                    };
                } else if (__value__ == (3685107i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3684151;
                    return;
                    _gotoNext = 3685054i32;
                } else if (__value__ == (3685152i32)) {
                    _length_3684264 = (_length_3684264 + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _n_3684227 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_n_3684227) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_n_3684227) : stdgo.GoUInt);
                    _gotoNext = 3685221i32;
                } else if (__value__ == (3685221i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._hd == null || ((@:checkr _f ?? throw "null pointer dereference")._hd : Dynamic).__nil__)) {
                        _gotoNext = 3685251i32;
                    } else {
                        _gotoNext = 3685439i32;
                    };
                } else if (__value__ == (3685251i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3685256i32;
                } else if (__value__ == (3685256i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3685269i32;
                    } else {
                        _gotoNext = 3685354i32;
                    };
                } else if (__value__ == (3685269i32)) {
                    {
                        _err_3684151 = @:check2r _f._moreBits();
                        if (_err_3684151 != null) {
                            _gotoNext = 3685309i32;
                        } else {
                            _gotoNext = 3685256i32;
                        };
                    };
                } else if (__value__ == (3685309i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3684151;
                    return;
                    _gotoNext = 3685256i32;
                } else if (__value__ == (3685354i32)) {
                    _dist_3685225 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 3685528i32;
                } else if (__value__ == (3685439i32)) {
                    _gotoNext = 3685439i32;
                    {
                        {
                            var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hd);
                            _dist_3685225 = __tmp__._0;
                            _err_3684151 = __tmp__._1;
                        };
                        if (_err_3684151 != null) {
                            _gotoNext = 3685487i32;
                        } else {
                            _gotoNext = 3685528i32;
                        };
                    };
                } else if (__value__ == (3685487i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3684151;
                    return;
                    _gotoNext = 3685528i32;
                } else if (__value__ == (3685528i32)) {
                    _gotoNext = 3685528i32;
                    if ((_dist_3685225 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3685539i32;
                    } else if ((_dist_3685225 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3685566i32;
                    } else {
                        _gotoNext = 3685896i32;
                    };
                } else if (__value__ == (3685539i32)) {
                    _dist_3685225++;
                    _gotoNext = 3686014i32;
                } else if (__value__ == (3685566i32)) {
                    _nb_3685593 = (((_dist_3685225 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_3685670 = (((_dist_3685225 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_3685593 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3685699i32;
                } else if (__value__ == (3685699i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb_3685593 : Bool)) {
                        _gotoNext = 3685713i32;
                    } else {
                        _gotoNext = 3685798i32;
                    };
                } else if (__value__ == (3685713i32)) {
                    {
                        _err_3684151 = @:check2r _f._moreBits();
                        if (_err_3684151 != null) {
                            _gotoNext = 3685753i32;
                        } else {
                            _gotoNext = 3685699i32;
                        };
                    };
                } else if (__value__ == (3685753i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3684151;
                    return;
                    _gotoNext = 3685699i32;
                } else if (__value__ == (3685798i32)) {
                    _extra_3685670 = (_extra_3685670 | ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb_3685593 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb_3685593) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb_3685593) : stdgo.GoUInt);
                    _dist_3685225 = ((((1 : stdgo.GoInt) << ((_nb_3685593 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_3685670 : stdgo.GoInt);
                    _gotoNext = 3686014i32;
                } else if (__value__ == (3685896i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3686014i32;
                } else if (__value__ == (3686014i32)) {
                    if ((_dist_3685225 > @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._histSize() : Bool)) {
                        _gotoNext = 3686042i32;
                    } else {
                        _gotoNext = 3686101i32;
                    };
                } else if (__value__ == (3686042i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3686101i32;
                } else if (__value__ == (3686101i32)) {
                    {
                        final __tmp__0 = _length_3684264;
                        final __tmp__1 = _dist_3685225;
                        (@:checkr _f ?? throw "null pointer dereference")._copyLen = __tmp__0;
                        (@:checkr _f ?? throw "null pointer dereference")._copyDist = __tmp__1;
                    };
                    _gotoNext = 3686161i32;
                } else if (__value__ == (3686161i32)) {
                    _gotoNext = 3686161i32;
                    {
                        _gotoNext = 3686236i32;
                    };
                } else if (__value__ == (3686236i32)) {
                    _cnt_3686240 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._tryWriteCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    if (_cnt_3686240 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3686304i32;
                    } else {
                        _gotoNext = 3686361i32;
                    };
                } else if (__value__ == (3686304i32)) {
                    _cnt_3686240 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    _gotoNext = 3686361i32;
                } else if (__value__ == (3686361i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt_3686240) : stdgo.GoInt);
                    if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3686426i32;
                    } else {
                        _gotoNext = 3686578i32;
                    };
                } else if (__value__ == (3686426i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (1 : stdgo.GoInt);
                    return;
                    _gotoNext = 3686578i32;
                } else if (__value__ == (3686578i32)) {
                    _gotoNext = 3684055i32;
                } else if (__value__ == (3686598i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = (@:check2r _f._moreBits() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen = ((((@:checkr _f ?? throw "null pointer dereference")._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nclen : Bool)) {
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    {
                        var _err = (@:check2r _f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
(@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (((@:checkr _f ?? throw "null pointer dereference")._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
(@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
(@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        {
            var _i = (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeOrder._codeOrder.length) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        if (!@:check2 (@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = @:check2r _f._huffSym((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _x;
                    _i++;
                    continue;
                };
                var _rep:stdgo.GoInt = (0 : stdgo.GoInt);
                var _nb:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _b:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    final __value__ = _x;
                    if (__value__ == ((16 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (2u32 : stdgo.GoUInt);
                        if (_i == ((0 : stdgo.GoInt))) {
                            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                        };
                        _b = (@:checkr _f ?? throw "null pointer dereference")._bits[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    } else if (__value__ == ((17 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (3u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else if (__value__ == ((18 : stdgo.GoInt))) {
                        _rep = (11 : stdgo.GoInt);
                        _nb = (7u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else {
                        return stdgo.Go.asInterface((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_InternalError.InternalError));
                    };
                };
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb : Bool)) {
                    {
                        var _err = (@:check2r _f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = (_rep + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb) : stdgo.GoUInt);
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _rep : Bool)) {
                        (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _b;
_i++;
                        _j++;
                    };
                };
            };
        };
        if ((!@:check2 (@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !@:check2 (@:checkr _f ?? throw "null pointer dereference")._h2._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._h1._min < (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)] : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._h1._min = (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)];
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            return (null : stdgo.Error);
        };
        return (@:checkr _f ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (true) {
            if ((((@:checkr _f ?? throw "null pointer dereference")._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_b.__copyTo__((@:checkr _f ?? throw "null pointer dereference")._toRead) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._toRead = ((@:checkr _f ?? throw "null pointer dereference")._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((@:checkr _f ?? throw "null pointer dereference")._toRead.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : _n, _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
            };
            (@:checkr _f ?? throw "null pointer dereference")._step(_f);
            if ((((@:checkr _f ?? throw "null pointer dereference")._err != null) && ((@:checkr _f ?? throw "null pointer dereference")._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            {
                (@:checkr _f ?? throw "null pointer dereference")._err = @:check2r _f._moreBits();
                if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                    return;
                };
            };
        };
        (@:checkr _f ?? throw "null pointer dereference")._final = ((@:checkr _f ?? throw "null pointer dereference")._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ = ((@:checkr _f ?? throw "null pointer dereference")._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        @:check2r _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedHuffmanDecoder._fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = null;
                        @:check2r _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        {
                            (@:checkr _f ?? throw "null pointer dereference")._err = @:check2r _f._readHuffman();
                            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                                break;
                            };
                        };
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        @:check2r _f._huffmanBlock();
                        break;
                    } else {
                        (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    };
                };
                break;
            };
        };
    }
}
