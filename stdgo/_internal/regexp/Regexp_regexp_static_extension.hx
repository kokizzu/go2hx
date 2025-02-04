package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__();
            var x = (_re : stdgo._internal.regexp.Regexp_regexp.Regexp);
            x._expr = __tmp__?._expr;
            x._prog = __tmp__?._prog;
            x._onepass = __tmp__?._onepass;
            x._numSubexp = __tmp__?._numSubexp;
            x._maxBitStateLen = __tmp__?._maxBitStateLen;
            x._subexpNames = __tmp__?._subexpNames;
            x._prefix = __tmp__?._prefix;
            x._prefixBytes = __tmp__?._prefixBytes;
            x._prefixRune = __tmp__?._prefixRune;
            x._prefixEnd = __tmp__?._prefixEnd;
            x._mpool = __tmp__?._mpool;
            x._matchcap = __tmp__?._matchcap;
            x._prefixComplete = __tmp__?._prefixComplete;
            x._cond = __tmp__?._cond;
            x._minInputLen = __tmp__?._minInputLen;
            x._longest = __tmp__?._longest;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return { _0 : ((@:check2r _re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (((((@:checkr _re ?? throw "null pointer dereference")._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = @:check2r _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg = (0 : stdgo.GoInt);
        var _end = (0 : stdgo.GoInt);
        for (__0 => _match in _matches) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()));
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()));
        };
        return _strings;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)));
            _template = _after?.__copy__();
            if (((_template != (stdgo.Go.str() : stdgo.GoString)) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp__extract._extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                continue;
            };
            _template = _rest?.__copy__();
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                };
            } else {
                for (_i => _namei in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        };
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)));
        return _dst;
    }
    @:keep
    @:tdfield
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt), __2 = (-1 : stdgo.GoInt);
var _prevMatchEnd = __2, _i = __1, _pos = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, _s?.__copy__(), _pos, (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>));
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _accept = (true : Bool);
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_b == null) {
                        var _is = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString);
                        {
                            var __tmp__ = @:check2 _is._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        var _ib = ({ _str : _b } : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes);
                        {
                            var __tmp__ = @:check2 _ib._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    };
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                if (_accept) {
                    _deliver(@:check2r _re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = ((((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)));
        };
        return _a;
    }
    @:keep
    @:tdfield
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _b = @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            return @:check2r _re._expand(_dst, _srepl?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
        });
        return _b;
    }
    @:keep
    @:tdfield
    static public function _replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _lastMatchEnd = (0 : stdgo.GoInt);
        var _searchPos = (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        if ((_nmatch > (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap : Bool)) {
            _nmatch = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        while ((_searchPos <= _endPos : Bool)) {
            var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            };
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = @:tmpset0 __tmp__._1;
                };
            };
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return _buf;
    }
    @:keep
    @:tdfield
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)));
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return @:check2r _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:checkr _re ?? throw "null pointer dereference")._prefix?.__copy__(), _1 : (@:checkr _re ?? throw "null pointer dereference")._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
            for (_i => _s in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                if (_name == (_s)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._subexpNames;
    }
    @:keep
    @:tdfield
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._numSubexp;
    }
    @:keep
    @:tdfield
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _m ?? throw "null pointer dereference")._re = null;
        (@:checkr _m ?? throw "null pointer dereference")._p = null;
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    @:tdfield
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].get() : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_machine.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._re = _re;
        (@:checkr _m ?? throw "null pointer dereference")._p = (@:checkr _re ?? throw "null pointer dereference")._prog;
        if (((@:checkr _m ?? throw "null pointer dereference")._matchcap.capacity < (@:checkr _re ?? throw "null pointer dereference")._matchcap : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (__0 => _t in (@:checkr _m ?? throw "null pointer dereference")._pool) {
                (@:checkr _t ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = (stdgo._internal.regexp.Regexp__matchsize._matchSize[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)] : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            _n = ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst.length);
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._q0._sparse.length) < _n : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._q0 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
            (@:checkr _m ?? throw "null pointer dereference")._q1 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function longest( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _re ?? throw "null pointer dereference")._longest = true;
    }
    @:keep
    @:tdfield
    static public function copy( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _re2 = ((_re : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__() : stdgo._internal.regexp.Regexp_regexp.Regexp);
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._expr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arraynoints._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._minInputLen : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        if (((@:checkr _re ?? throw "null pointer dereference")._onepass != null && (((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__ == null || !((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__))) {
            return @:check2r _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._maxBitStateLen : Bool) : Bool)) {
            return @:check2r _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = @:check2r _re._get();
        var __tmp__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_t_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        @:check2r _m._init(_ncap);
        if (!@:check2r _m._match(_i, _pos)) {
            @:check2r _re._put(_m);
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...((@:checkr _m ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
        @:check2r _re._put(_m);
        return _dstCap;
    }
    @:keep
    @:tdfield
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    @:tdfield
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ir:stdgo._internal.io.Io_runereader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _pc_3784718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3784513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3784482:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _m_3784239:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        var _flag_3784623:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _width1_3784520:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_3784485:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3784446:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _i_3784396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3784374:Bool = false;
        var _startCond_3784148:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _inst_3784742:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3784148 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3784148 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3784205i32;
                    } else {
                        _gotoNext = 3784239i32;
                    };
                } else if (__value__ == (3784205i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3784239i32;
                } else if (__value__ == (3784239i32)) {
                    _m_3784239 = stdgo._internal.regexp.Regexp__newonepassmachine._newOnePassMachine();
                    if (((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3784291i32;
                    } else {
                        _gotoNext = 3784334i32;
                    };
                } else if (__value__ == (3784291i32)) {
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3784374i32;
                } else if (__value__ == (3784334i32)) {
                    _gotoNext = 3784334i32;
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap = ((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3784374i32;
                } else if (__value__ == (3784374i32)) {
                    _matched_3784374 = false;
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3784441i32;
                    } else {
                        _gotoNext = 3784446i32;
                    };
                } else if (__value__ == (3784418i32)) {
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap[(_i_3784396 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_3784396++;
                    _gotoNext = 3784442i32;
                } else if (__value__ == (3784441i32)) {
                    _i_3784396 = 0i32;
                    _gotoNext = 3784442i32;
                } else if (__value__ == (3784442i32)) {
                    if (_i_3784396 < ((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3784418i32;
                    } else {
                        _gotoNext = 3784446i32;
                    };
                } else if (__value__ == (3784446i32)) {
                    {
                        var __tmp__ = @:check2 (@:checkr _m_3784239 ?? throw "null pointer dereference")._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_3784446 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_3784482 = __tmp__0;
                        _r1_3784485 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_3784513 = __tmp__0;
                        _width1_3784520 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_3784446._step(_pos);
                        _r_3784482 = @:tmpset0 __tmp__._0;
                        _width_3784513 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3784482 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3784578i32;
                    } else {
                        _gotoNext = 3784619i32;
                    };
                } else if (__value__ == (3784578i32)) {
                    {
                        var __tmp__ = _i_3784446._step((_pos + _width_3784513 : stdgo.GoInt));
                        _r1_3784485 = @:tmpset0 __tmp__._0;
                        _width1_3784520 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3784619i32;
                } else if (__value__ == (3784619i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3784650i32;
                    } else {
                        _gotoNext = 3784688i32;
                    };
                } else if (__value__ == (3784650i32)) {
                    _flag_3784623 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r_3784482);
                    _gotoNext = 3784718i32;
                } else if (__value__ == (3784688i32)) {
                    _gotoNext = 3784688i32;
                    _flag_3784623 = _i_3784446._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3784718i32;
                } else if (__value__ == (3784718i32)) {
                    _pc_3784718 = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").start;
                    _inst_3784742 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3784718 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_3784623._match(((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_3784446._canCheckPrefix() : Bool)) {
                        _gotoNext = 3784925i32;
                    } else {
                        _gotoNext = 3785163i32;
                    };
                } else if (__value__ == (3784925i32)) {
                    if (!_i_3784446._hasPrefix(_re)) {
                        _gotoNext = 3785005i32;
                    } else {
                        _gotoNext = 3785028i32;
                    };
                } else if (__value__ == (3785005i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785028i32)) {
                    _pos = (_pos + (((@:checkr _re ?? throw "null pointer dereference")._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_3784446._step(_pos);
                        _r_3784482 = @:tmpset0 __tmp__._0;
                        _width_3784513 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_3784446._step((_pos + _width_3784513 : stdgo.GoInt));
                        _r1_3784485 = @:tmpset0 __tmp__._0;
                        _width1_3784520 = @:tmpset0 __tmp__._1;
                    };
                    _flag_3784623 = _i_3784446._context(_pos);
                    _pc_3784718 = ((@:checkr _re ?? throw "null pointer dereference")._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3785163i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3785163i32;
                    if (true) {
                        _gotoNext = 3785167i32;
                    } else {
                        _gotoNext = 3786287i32;
                    };
                } else if (__value__ == (3785167i32)) {
                    _inst_3784742 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3784718 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    _pc_3784718 = ((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.out : stdgo.GoInt);
                    _gotoNext = 3785222i32;
                } else if (__value__ == (3785222i32)) {
                    {
                        final __value__ = (@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785273i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785410i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785482i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785554i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785595i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785733i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785823i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785862i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785897i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786006i32;
                        } else {
                            _gotoNext = 3785241i32;
                        };
                    };
                } else if (__value__ == (3785241i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3786125i32;
                } else if (__value__ == (3785273i32)) {
                    _matched_3784374 = true;
                    if ((((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785340i32;
                    } else {
                        _gotoNext = 3785396i32;
                    };
                } else if (__value__ == (3785340i32)) {
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3785396i32;
                } else if (__value__ == (3785396i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785410i32)) {
                    if (!@:check2r _inst_3784742.matchRune(_r_3784482)) {
                        _gotoNext = 3785457i32;
                    } else {
                        _gotoNext = 3786125i32;
                    };
                } else if (__value__ == (3785457i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785482i32)) {
                    if (_r_3784482 != ((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3785529i32;
                    } else {
                        _gotoNext = 3786125i32;
                    };
                } else if (__value__ == (3785529i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785554i32)) {
                    _gotoNext = 3786125i32;
                } else if (__value__ == (3785595i32)) {
                    if (_r_3784482 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3785641i32;
                    } else {
                        _gotoNext = 3786125i32;
                    };
                } else if (__value__ == (3785641i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785733i32)) {
                    _pc_3784718 = (stdgo._internal.regexp.Regexp__onepassnext._onePassNext(_inst_3784742, _r_3784482) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3785823i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785862i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3785897i32)) {
                    if (!_flag_3784623._match(((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3785969i32;
                    } else {
                        _gotoNext = 3785995i32;
                    };
                } else if (__value__ == (3785969i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3785995i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3786006i32)) {
                    if ((((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt) < ((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap.length) : Bool)) {
                        _gotoNext = 3786069i32;
                    } else {
                        _gotoNext = 3786110i32;
                    };
                } else if (__value__ == (3786069i32)) {
                    (@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap[((@:checkr _inst_3784742 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3786110i32;
                } else if (__value__ == (3786110i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3786125i32)) {
                    if (_width_3784513 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3786139i32;
                    } else {
                        _gotoNext = 3786156i32;
                    };
                } else if (__value__ == (3786139i32)) {
                    _gotoNext = 3786287i32;
                } else if (__value__ == (3786156i32)) {
                    _flag_3784623 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r_3784482, _r1_3784485);
                    _pos = (_pos + (_width_3784513) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_3784485;
                        final __tmp__1 = _width1_3784520;
                        _r_3784482 = __tmp__0;
                        _width_3784513 = __tmp__1;
                    };
                    if (_r_3784482 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3786241i32;
                    } else {
                        _gotoNext = 3785163i32;
                    };
                } else if (__value__ == (3786241i32)) {
                    {
                        var __tmp__ = _i_3784446._step((_pos + _width_3784513 : stdgo.GoInt));
                        _r1_3784485 = @:tmpset0 __tmp__._0;
                        _width1_3784520 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3785163i32;
                } else if (__value__ == (3786287i32)) {
                    _gotoNext = 3786287i32;
                    if (!_matched_3784374) {
                        _gotoNext = 3786308i32;
                    } else {
                        _gotoNext = 3786352i32;
                    };
                } else if (__value__ == (3786308i32)) {
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_3784239);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3786352i32;
                } else if (__value__ == (3786352i32)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_3784239 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_3784239);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _advance_3810513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3810363:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3809655:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3809652:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _b_3809632:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        var _startCond_3809425:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3809425 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3809425 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3809482i32;
                    } else {
                        _gotoNext = 3809515i32;
                    };
                } else if (__value__ == (3809482i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3809515i32;
                } else if (__value__ == (3809515i32)) {
                    if ((((_startCond_3809425 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3809567i32;
                    } else {
                        _gotoNext = 3809632i32;
                    };
                } else if (__value__ == (3809567i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3809632i32;
                } else if (__value__ == (3809632i32)) {
                    _b_3809632 = stdgo._internal.regexp.Regexp__newbitstate._newBitState();
                    {
                        var __tmp__ = @:check2 (@:checkr _b_3809632 ?? throw "null pointer dereference")._inputs._init((null : stdgo._internal.io.Io_runereader.RuneReader), _ib, _is?.__copy__());
                        _i_3809652 = @:tmpset0 __tmp__._0;
                        _end_3809655 = @:tmpset0 __tmp__._1;
                    };
                    @:check2r _b_3809632._reset((@:checkr _re ?? throw "null pointer dereference")._prog, _end_3809655, _ncap);
                    if ((_startCond_3809425 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3809821i32;
                    } else {
                        _gotoNext = 3809970i32;
                    };
                } else if (__value__ == (3809821i32)) {
                    if ((((@:checkr _b_3809632 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3809843i32;
                    } else {
                        _gotoNext = 3809869i32;
                    };
                } else if (__value__ == (3809843i32)) {
                    (@:checkr _b_3809632 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3809869i32;
                } else if (__value__ == (3809869i32)) {
                    if (!@:check2r _re._tryBacktrack(_b_3809632, _i_3809652, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3809923i32;
                    } else {
                        _gotoNext = 3810857i32;
                    };
                } else if (__value__ == (3809923i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3809632);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3810857i32;
                } else if (__value__ == (3809970i32)) {
                    _gotoNext = 3809970i32;
                    _width_3810363 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3810377i32;
                } else if (__value__ == (3810377i32)) {
                    if (((_pos <= _end_3809655 : Bool) && (_width_3810363 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3810422i32;
                    } else {
                        _gotoNext = 3810824i32;
                    };
                } else if (__value__ == (3810422i32)) {
                    if ((((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3810449i32;
                    } else {
                        _gotoNext = 3810633i32;
                    };
                } else if (__value__ == (3810449i32)) {
                    _advance_3810513 = _i_3809652._index(_re, _pos);
                    if ((_advance_3810513 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3810560i32;
                    } else {
                        _gotoNext = 3810609i32;
                    };
                } else if (__value__ == (3810560i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3809632);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3810609i32;
                } else if (__value__ == (3810609i32)) {
                    _pos = (_pos + (_advance_3810513) : stdgo.GoInt);
                    _gotoNext = 3810633i32;
                } else if (__value__ == (3810633i32)) {
                    if ((((@:checkr _b_3809632 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3810651i32;
                    } else {
                        _gotoNext = 3810680i32;
                    };
                } else if (__value__ == (3810651i32)) {
                    (@:checkr _b_3809632 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3810680i32;
                } else if (__value__ == (3810680i32)) {
                    if (@:check2r _re._tryBacktrack(_b_3809632, _i_3809652, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3810733i32;
                    } else {
                        _gotoNext = 3810795i32;
                    };
                } else if (__value__ == (3810733i32)) {
                    _gotoNext = 3810857i32;
                } else if (__value__ == (3810795i32)) {
                    {
                        var __tmp__ = _i_3809652._step(_pos);
                        _width_3810363 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_3810363) : stdgo.GoInt);
                    _gotoNext = 3810377i32;
                } else if (__value__ == (3810824i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3809632);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3810857i32;
                } else if (__value__ == (3810857i32)) {
                    _gotoNext = 3810857i32;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_3809632 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3809632);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_3807573:stdgo.GoInt = (0 : stdgo.GoInt);
        var _flag_3808269:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _l_3805580:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3807733:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3807415:stdgo.GoInt = (0 : stdgo.GoInt);
        var _arg_3805675:Bool = false;
        var _pos_3805652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pc_3805631:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _width_3807736:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inst_3806079:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _longest_3805504:Bool = false;
        var _old_3808821:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3807570:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3807412:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3807263:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3807260:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_3805504 = (@:checkr _re ?? throw "null pointer dereference")._longest;
                    @:check2r _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3805556i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3805576i32;
                    } else {
                        _gotoNext = 3809192i32;
                    };
                } else if (__value__ == (3805576i32)) {
                    _l_3805580 = (((@:checkr _b ?? throw "null pointer dereference")._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_3805631 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3805580 : stdgo.GoInt)]._pc;
                    _pos_3805652 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3805580 : stdgo.GoInt)]._pos;
                    _arg_3805675 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3805580 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, _l_3805580) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
                    _gotoNext = 3806070i32;
                } else if (__value__ == (3806008i32)) {
                    if (!@:check2r _b._shouldVisit(_pc_3805631, _pos_3805652)) {
                        _gotoNext = 3806051i32;
                    } else {
                        _gotoNext = 3806070i32;
                    };
                } else if (__value__ == (3806051i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3806070i32)) {
                    _gotoNext = 3806070i32;
                    _inst_3806079 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc_3805631 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3806108i32;
                } else if (__value__ == (3806108i32)) {
                    {
                        final __value__ = (@:checkr _inst_3806079 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3806159i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3806215i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3806776i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3807235i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3807386i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3807537i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3807705i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3807855i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3808238i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3808397i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3808459i32;
                        } else {
                            _gotoNext = 3806127i32;
                        };
                    };
                } else if (__value__ == (3806127i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3806159i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3806215i32)) {
                    if (_arg_3805675) {
                        _gotoNext = 3806588i32;
                    } else {
                        _gotoNext = 3806696i32;
                    };
                } else if (__value__ == (3806588i32)) {
                    _arg_3805675 = false;
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3806696i32)) {
                    _gotoNext = 3806696i32;
                    @:check2r _b._push(_re, _pc_3805631, _pos_3805652, true);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3806776i32)) {
                    _gotoNext = 3806864i32;
                } else if (__value__ == (3806864i32)) {
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[((@:checkr _inst_3806079 ?? throw "null pointer dereference").out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3806902i32;
                        } else {
                            _gotoNext = 3807159i32;
                        };
                    };
                } else if (__value__ == (3806902i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3806079 ?? throw "null pointer dereference").arg, _pos_3805652, false);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").arg;
                    _pos_3805652 = (@:checkr _b ?? throw "null pointer dereference")._end;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807159i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3806079 ?? throw "null pointer dereference").out, (@:checkr _b ?? throw "null pointer dereference")._end, false);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807235i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3805652);
                        _r_3807260 = @:tmpset0 __tmp__._0;
                        _width_3807263 = @:tmpset0 __tmp__._1;
                    };
                    if (!@:check2r _inst_3806079.matchRune(_r_3807260)) {
                        _gotoNext = 3807309i32;
                    } else {
                        _gotoNext = 3807332i32;
                    };
                } else if (__value__ == (3807309i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3807332i32)) {
                    _pos_3805652 = (_pos_3805652 + (_width_3807263) : stdgo.GoInt);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807386i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3805652);
                        _r_3807412 = @:tmpset0 __tmp__._0;
                        _width_3807415 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3807412 != ((@:checkr _inst_3806079 ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3807460i32;
                    } else {
                        _gotoNext = 3807483i32;
                    };
                } else if (__value__ == (3807460i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3807483i32)) {
                    _pos_3805652 = (_pos_3805652 + (_width_3807415) : stdgo.GoInt);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807537i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3805652);
                        _r_3807570 = @:tmpset0 __tmp__._0;
                        _width_3807573 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3807570 == (10 : stdgo.GoInt32)) || (_r_3807570 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3807628i32;
                    } else {
                        _gotoNext = 3807651i32;
                    };
                } else if (__value__ == (3807628i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3807651i32)) {
                    _pos_3805652 = (_pos_3805652 + (_width_3807573) : stdgo.GoInt);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807705i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3805652);
                        _r_3807733 = @:tmpset0 __tmp__._0;
                        _width_3807736 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3807733 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3807778i32;
                    } else {
                        _gotoNext = 3807801i32;
                    };
                } else if (__value__ == (3807778i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3807801i32)) {
                    _pos_3805652 = (_pos_3805652 + (_width_3807736) : stdgo.GoInt);
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3807855i32)) {
                    if (_arg_3805675) {
                        _gotoNext = 3807890i32;
                    } else {
                        _gotoNext = 3807990i32;
                    };
                } else if (__value__ == (3807890i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3806079 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3805652;
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3807990i32)) {
                    _gotoNext = 3807990i32;
                    if (((@:checkr _inst_3806079 ?? throw "null pointer dereference").arg < ((@:checkr _b ?? throw "null pointer dereference")._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3808029i32;
                    } else {
                        _gotoNext = 3808194i32;
                    };
                } else if (__value__ == (3808029i32)) {
                    @:check2r _b._push(_re, _pc_3805631, (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3806079 ?? throw "null pointer dereference").arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3806079 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3805652;
                    _gotoNext = 3808194i32;
                } else if (__value__ == (3808194i32)) {
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3808238i32)) {
                    _flag_3808269 = _i._context(_pos_3805652);
                    if (!_flag_3808269._match(((@:checkr _inst_3806079 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3808336i32;
                    } else {
                        _gotoNext = 3808359i32;
                    };
                } else if (__value__ == (3808336i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3808359i32)) {
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3808397i32)) {
                    _pc_3805631 = (@:checkr _inst_3806079 ?? throw "null pointer dereference").out;
                    _gotoNext = 3806008i32;
                } else if (__value__ == (3808459i32)) {
                    if (((@:checkr _b ?? throw "null pointer dereference")._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3808605i32;
                    } else {
                        _gotoNext = 3808771i32;
                    };
                } else if (__value__ == (3808605i32)) {
                    return true;
                    _gotoNext = 3808771i32;
                } else if (__value__ == (3808771i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3808789i32;
                    } else {
                        _gotoNext = 3808818i32;
                    };
                } else if (__value__ == (3808789i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos_3805652;
                    _gotoNext = 3808818i32;
                } else if (__value__ == (3808818i32)) {
                    {
                        _old_3808821 = (@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_3808821 == (-1 : stdgo.GoInt)) || (((_longest_3805504 && (_pos_3805652 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3805652 > _old_3808821 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3808890i32;
                        } else {
                            _gotoNext = 3808973i32;
                        };
                    };
                } else if (__value__ == (3808890i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._cap);
                    _gotoNext = 3808973i32;
                } else if (__value__ == (3808973i32)) {
                    if (!_longest_3805504) {
                        _gotoNext = 3808985i32;
                    } else {
                        _gotoNext = 3809075i32;
                    };
                } else if (__value__ == (3808985i32)) {
                    return true;
                    _gotoNext = 3809075i32;
                } else if (__value__ == (3809075i32)) {
                    if (_pos_3805652 == ((@:checkr _b ?? throw "null pointer dereference")._end)) {
                        _gotoNext = 3809091i32;
                    } else {
                        _gotoNext = 3809174i32;
                    };
                } else if (__value__ == (3809091i32)) {
                    return true;
                    _gotoNext = 3809174i32;
                } else if (__value__ == (3809174i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3805556i32;
                } else if (__value__ == (3809192i32)) {
                    return ((_longest_3805504 && (((@:checkr _b ?? throw "null pointer dereference")._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
