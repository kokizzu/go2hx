package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2783501:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2783479:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2783393i32;
                } else if (__value__ == (2783393i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2783435i32;
                    } else {
                        _gotoNext = 2783479i32;
                    };
                } else if (__value__ == (2783435i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2783393i32;
                } else if (__value__ == (2783479i32)) {
                    _inrange_2783479 = false;
                    _gotoNext = 2783507i32;
                } else if (__value__ == (2783507i32)) {
                    _i_2783501 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2783514i32;
                } else if (__value__ == (2783514i32)) {
                    if (!scanBreak && ((_i_2783501 < (_pattern.length) : Bool))) {
                        _gotoNext = 2783547i32;
                    } else {
                        _gotoNext = 2783796i32;
                    };
                } else if (__value__ == (2783543i32)) {
                    _i_2783501++;
                    _gotoNext = 2783514i32;
                } else if (__value__ == (2783547i32)) {
                    _gotoNext = 2783551i32;
                } else if (__value__ == (2783551i32)) {
                    {
                        final __value__ = _pattern[(_i_2783501 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2783573i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2783680i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2783710i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2783741i32;
                        } else {
                            _gotoNext = 2783543i32;
                        };
                    };
                } else if (__value__ == (2783573i32)) {
                    if (((_i_2783501 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2783663i32;
                    } else {
                        _gotoNext = 2783543i32;
                    };
                } else if (__value__ == (2783663i32)) {
                    _i_2783501++;
                    _gotoNext = 2783543i32;
                } else if (__value__ == (2783680i32)) {
                    _inrange_2783479 = true;
                    _gotoNext = 2783543i32;
                } else if (__value__ == (2783710i32)) {
                    _inrange_2783479 = false;
                    _gotoNext = 2783543i32;
                } else if (__value__ == (2783741i32)) {
                    if (!_inrange_2783479) {
                        _gotoNext = 2783766i32;
                    } else {
                        _gotoNext = 2783543i32;
                    };
                } else if (__value__ == (2783766i32)) {
                    scanBreak = true;
                    _gotoNext = 2783514i32;
                } else if (__value__ == (2783796i32)) {
                    return { _0 : _star, _1 : _chunk = (_pattern.__slice__((0 : stdgo.GoInt), _i_2783501) : stdgo.GoString)?.__copy__(), _2 : _rest = (_pattern.__slice__(_i_2783501) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
