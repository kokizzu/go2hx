package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2600404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2602013:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2600754:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _nd_2600684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2600706:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2600693:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2600245:Bool = false;
        var _esign_2601862:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2600469:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2600424:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2600647:Bool = false;
        var _sawdigits_2600664:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2600245 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2600301i32;
                    } else {
                        _gotoNext = 2600316i32;
                    };
                } else if (__value__ == (2600301i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2600316i32;
                } else if (__value__ == (2600316i32)) {
                    _gotoNext = 2600316i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2600326i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2600351i32;
                    } else {
                        _gotoNext = 2600404i32;
                    };
                } else if (__value__ == (2600326i32)) {
                    _i++;
                    _gotoNext = 2600404i32;
                } else if (__value__ == (2600351i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2600404i32;
                } else if (__value__ == (2600404i32)) {
                    _base_2600404 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2600424 = (19 : stdgo.GoInt);
                    _expChar_2600469 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2600546i32;
                    } else {
                        _gotoNext = 2600647i32;
                    };
                } else if (__value__ == (2600546i32)) {
                    _base_2600404 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2600424 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2600469 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2600647i32;
                } else if (__value__ == (2600647i32)) {
                    _sawdot_2600647 = false;
                    _sawdigits_2600664 = false;
                    _nd_2600684 = (0 : stdgo.GoInt);
                    _ndMant_2600693 = (0 : stdgo.GoInt);
                    _dp_2600706 = (0 : stdgo.GoInt);
                    _gotoNext = 2600714i32;
                } else if (__value__ == (2600714i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2600721i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2600743i32;
                    } else {
                        _gotoNext = 2601463i32;
                    };
                } else if (__value__ == (2600743i32)) {
                    _gotoNext = 2600747i32;
                } else if (__value__ == (2600747i32)) {
                    {
                        _c_2600754 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2600754 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2600774i32;
                            } else if (__value__ == (_c_2600754 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2600826i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2600754 : Bool) && (_c_2600754 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2600919i32;
                            } else if (__value__ == (((_base_2600404 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2600754) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2600754) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2601211i32;
                            } else {
                                _gotoNext = 2601453i32;
                            };
                        };
                    };
                } else if (__value__ == (2600774i32)) {
                    _underscores_2600245 = true;
                    _i++;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2600826i32)) {
                    if (_sawdot_2600647) {
                        _gotoNext = 2600854i32;
                    } else {
                        _gotoNext = 2600879i32;
                    };
                } else if (__value__ == (2600854i32)) {
                    _loopBreak = true;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2600879i32)) {
                    _sawdot_2600647 = true;
                    _dp_2600706 = _nd_2600684;
                    _i++;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2600919i32)) {
                    _sawdigits_2600664 = true;
                    if (((_c_2600754 == (48 : stdgo.GoUInt8)) && (_nd_2600684 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2600992i32;
                    } else {
                        _gotoNext = 2601048i32;
                    };
                } else if (__value__ == (2600992i32)) {
                    _dp_2600706--;
                    _i++;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2601048i32)) {
                    _nd_2600684++;
                    if ((_ndMant_2600693 < _maxMantDigits_2600424 : Bool)) {
                        _gotoNext = 2601082i32;
                    } else if (_c_2600754 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2601172i32;
                    } else {
                        _gotoNext = 2601199i32;
                    };
                } else if (__value__ == (2601082i32)) {
                    _mantissa = (_mantissa * (_base_2600404) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2600754 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2600693++;
                    _gotoNext = 2601199i32;
                } else if (__value__ == (2601172i32)) {
                    _trunc = true;
                    _gotoNext = 2601199i32;
                } else if (__value__ == (2601199i32)) {
                    _i++;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2601211i32)) {
                    _sawdigits_2600664 = true;
                    _nd_2600684++;
                    if ((_ndMant_2600693 < _maxMantDigits_2600424 : Bool)) {
                        _gotoNext = 2601323i32;
                    } else {
                        _gotoNext = 2601411i32;
                    };
                } else if (__value__ == (2601323i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2600754) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2600693++;
                    _gotoNext = 2601438i32;
                } else if (__value__ == (2601411i32)) {
                    _gotoNext = 2601411i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2601438i32;
                } else if (__value__ == (2601438i32)) {
                    _i++;
                    _gotoNext = 2600721i32;
                } else if (__value__ == (2601453i32)) {
                    _gotoNext = 2601463i32;
                } else if (__value__ == (2601463i32)) {
                    if (!_sawdigits_2600664) {
                        _gotoNext = 2601477i32;
                    } else {
                        _gotoNext = 2601492i32;
                    };
                } else if (__value__ == (2601477i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2601492i32;
                } else if (__value__ == (2601492i32)) {
                    if (!_sawdot_2600647) {
                        _gotoNext = 2601503i32;
                    } else {
                        _gotoNext = 2601520i32;
                    };
                } else if (__value__ == (2601503i32)) {
                    _dp_2600706 = _nd_2600684;
                    _gotoNext = 2601520i32;
                } else if (__value__ == (2601520i32)) {
                    if (_base_2600404 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2601534i32;
                    } else {
                        _gotoNext = 2601779i32;
                    };
                } else if (__value__ == (2601534i32)) {
                    _dp_2600706 = (_dp_2600706 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2600693 = (_ndMant_2600693 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2601779i32;
                } else if (__value__ == (2601779i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2600469) : Bool)) {
                        _gotoNext = 2601819i32;
                    } else if (_base_2600404 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2602252i32;
                    } else {
                        _gotoNext = 2602293i32;
                    };
                } else if (__value__ == (2601819i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2601844i32;
                    } else {
                        _gotoNext = 2601862i32;
                    };
                } else if (__value__ == (2601844i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2601862i32;
                } else if (__value__ == (2601862i32)) {
                    _esign_2601862 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2601890i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2601923i32;
                    } else {
                        _gotoNext = 2601952i32;
                    };
                } else if (__value__ == (2601890i32)) {
                    _i++;
                    _gotoNext = 2601952i32;
                } else if (__value__ == (2601923i32)) {
                    _i++;
                    _esign_2601862 = (-1 : stdgo.GoInt);
                    _gotoNext = 2601952i32;
                } else if (__value__ == (2601952i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2601995i32;
                    } else {
                        _gotoNext = 2602013i32;
                    };
                } else if (__value__ == (2601995i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2602013i32;
                } else if (__value__ == (2602013i32)) {
                    _e_2602013 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2602022i32;
                } else if (__value__ == (2602022i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2602091i32;
                    } else {
                        _gotoNext = 2602214i32;
                    };
                } else if (__value__ == (2602087i32)) {
                    _i++;
                    _gotoNext = 2602022i32;
                } else if (__value__ == (2602091i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2602111i32;
                    } else {
                        _gotoNext = 2602157i32;
                    };
                } else if (__value__ == (2602111i32)) {
                    _underscores_2600245 = true;
                    _i++;
                    _gotoNext = 2602022i32;
                } else if (__value__ == (2602157i32)) {
                    if ((_e_2602013 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2602170i32;
                    } else {
                        _gotoNext = 2602087i32;
                    };
                } else if (__value__ == (2602170i32)) {
                    _e_2602013 = (((_e_2602013 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2602087i32;
                } else if (__value__ == (2602214i32)) {
                    _dp_2600706 = (_dp_2600706 + ((_e_2602013 * _esign_2601862 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2602293i32;
                } else if (__value__ == (2602252i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2602293i32;
                } else if (__value__ == (2602293i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2602310i32;
                    } else {
                        _gotoNext = 2602337i32;
                    };
                } else if (__value__ == (2602310i32)) {
                    _exp = (_dp_2600706 - _ndMant_2600693 : stdgo.GoInt);
                    _gotoNext = 2602337i32;
                } else if (__value__ == (2602337i32)) {
                    if ((_underscores_2600245 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2602376i32;
                    } else {
                        _gotoNext = 2602392i32;
                    };
                } else if (__value__ == (2602376i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2602392i32;
                } else if (__value__ == (2602392i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
