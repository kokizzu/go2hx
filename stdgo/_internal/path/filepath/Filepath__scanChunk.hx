package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3964743:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3964721:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3964635i32;
                } else if (__value__ == (3964635i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964677i32;
                    } else {
                        _gotoNext = 3964721i32;
                    };
                } else if (__value__ == (3964677i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3964635i32;
                } else if (__value__ == (3964721i32)) {
                    _inrange_3964721 = false;
                    _gotoNext = 3964749i32;
                } else if (__value__ == (3964749i32)) {
                    _i_3964743 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3964756i32;
                } else if (__value__ == (3964756i32)) {
                    if (!scanBreak && ((_i_3964743 < (_pattern.length) : Bool))) {
                        _gotoNext = 3964789i32;
                    } else {
                        _gotoNext = 3965081i32;
                    };
                } else if (__value__ == (3964785i32)) {
                    _i_3964743++;
                    _gotoNext = 3964756i32;
                } else if (__value__ == (3964789i32)) {
                    _gotoNext = 3964793i32;
                } else if (__value__ == (3964793i32)) {
                    {
                        final __value__ = _pattern[(_i_3964743 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3964815i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3964965i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3964995i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3965026i32;
                        } else {
                            _gotoNext = 3964785i32;
                        };
                    };
                } else if (__value__ == (3964815i32)) {
                    if (true) {
                        _gotoNext = 3964858i32;
                    } else {
                        _gotoNext = 3964785i32;
                    };
                } else if (__value__ == (3964858i32)) {
                    if (((_i_3964743 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3964941i32;
                    } else {
                        _gotoNext = 3964785i32;
                    };
                } else if (__value__ == (3964941i32)) {
                    _i_3964743++;
                    _gotoNext = 3964785i32;
                } else if (__value__ == (3964965i32)) {
                    _inrange_3964721 = true;
                    _gotoNext = 3964785i32;
                } else if (__value__ == (3964995i32)) {
                    _inrange_3964721 = false;
                    _gotoNext = 3964785i32;
                } else if (__value__ == (3965026i32)) {
                    if (!_inrange_3964721) {
                        _gotoNext = 3965051i32;
                    } else {
                        _gotoNext = 3964785i32;
                    };
                } else if (__value__ == (3965051i32)) {
                    scanBreak = true;
                    _gotoNext = 3964756i32;
                } else if (__value__ == (3965081i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3964743) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3964743) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
