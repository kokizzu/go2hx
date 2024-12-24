package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _rn_3659033:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3658832:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3658232:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3657990:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3657727:stdgo.GoInt = (0 : stdgo.GoInt);
        var _idx_3661183:stdgo.GoInt = (0 : stdgo.GoInt);
        var _preIdx_3661164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _col_3658280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_3658029:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _recLine_3657473:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3657400:stdgo.Error = (null : stdgo.Error);
        var _str_3660950:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldPos_3658754:stdgo._internal.encoding.csv.Csv_T_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_T_position.T_position);
        var _quoteLen_3657417;
        var _errRead_3657023:stdgo.Error = (null : stdgo.Error);
        var _line_3657006:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_3661180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseFieldBreak = false;
        var _pos_3657638:stdgo._internal.encoding.csv.Csv_T_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_T_position.T_position);
        var _commaLen_3657438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((_r.comma == (_r.comment) || !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comma) : Bool) || (((_r.comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comment) : Bool)) : Bool)) {
                        _gotoNext = 3656891i32;
                    } else {
                        _gotoNext = 3657002i32;
                    };
                } else if (__value__ == (3656891i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errInvalidDelim._errInvalidDelim };
                    _gotoNext = 3657002i32;
                } else if (__value__ == (3657002i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3657038i32;
                } else if (__value__ == (3657038i32)) {
                    if (_errRead_3657023 == null) {
                        _gotoNext = 3657057i32;
                    } else {
                        _gotoNext = 3657310i32;
                    };
                } else if (__value__ == (3657057i32)) {
                    {
                        var __tmp__ = _r._readLine();
                        _line_3657006 = __tmp__._0;
                        _errRead_3657023 = __tmp__._1;
                    };
                    if (((_r.comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line_3657006) == _r.comment) : Bool)) {
                        _gotoNext = 3657141i32;
                    } else {
                        _gotoNext = 3657197i32;
                    };
                } else if (__value__ == (3657141i32)) {
                    _line_3657006 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3657038i32;
                } else if (__value__ == (3657197i32)) {
                    if (((_errRead_3657023 == null) && (_line_3657006.length == stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3657006)) : Bool)) {
                        _gotoNext = 3657246i32;
                    } else {
                        _gotoNext = 3657300i32;
                    };
                } else if (__value__ == (3657246i32)) {
                    _line_3657006 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3657038i32;
                } else if (__value__ == (3657300i32)) {
                    _gotoNext = 3657310i32;
                } else if (__value__ == (3657310i32)) {
                    if (stdgo.Go.toInterface(_errRead_3657023) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3657331i32;
                    } else {
                        _gotoNext = 3657396i32;
                    };
                } else if (__value__ == (3657331i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead_3657023 };
                    _gotoNext = 3657396i32;
                } else if (__value__ == (3657396i32)) {
                    _quoteLen_3657417 = (("\"" : stdgo.GoString).length);
                    _commaLen_3657438 = stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_r.comma);
                    _recLine_3657473 = _r._numLine;
                    _r._recordBuffer = (_r._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _r._fieldIndexes = (_r._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    _r._fieldPositions = (_r._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
                    _pos_3657638 = ({ _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_T_position.T_position);
                    _gotoNext = 3657679i32;
                } else if (__value__ == (3657679i32)) {
                    var __blank__ = 0i32;
                    _parseFieldBreak = false;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3657692i32)) {
                    if (!_parseFieldBreak) {
                        _gotoNext = 3657696i32;
                    } else {
                        _gotoNext = 3660788i32;
                    };
                } else if (__value__ == (3657696i32)) {
                    if (_r.trimLeadingSpace) {
                        _gotoNext = 3657722i32;
                    } else {
                        _gotoNext = 3657919i32;
                    };
                } else if (__value__ == (3657722i32)) {
                    _i_3657727 = stdgo._internal.bytes.Bytes_indexFunc.indexFunc(_line_3657006, function(_r:stdgo.GoInt32):Bool {
                        return !stdgo._internal.unicode.Unicode_isSpace.isSpace(_r);
                    });
                    if ((_i_3657727 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3657823i32;
                    } else {
                        _gotoNext = 3657881i32;
                    };
                } else if (__value__ == (3657823i32)) {
                    _i_3657727 = (_line_3657006.length);
                    _pos_3657638._col = (_pos_3657638._col - (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3657006)) : stdgo.GoInt);
                    _gotoNext = 3657881i32;
                } else if (__value__ == (3657881i32)) {
                    _line_3657006 = (_line_3657006.__slice__(_i_3657727) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + (_i_3657727) : stdgo.GoInt);
                    _gotoNext = 3657919i32;
                } else if (__value__ == (3657919i32)) {
                    if (((_line_3657006.length == (0 : stdgo.GoInt)) || (_line_3657006[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3657955i32;
                    } else {
                        _gotoNext = 3658723i32;
                    };
                } else if (__value__ == (3657955i32)) {
                    _i_3657990 = stdgo._internal.bytes.Bytes_indexRune.indexRune(_line_3657006, _r.comma);
                    _field_3658029 = _line_3657006;
                    if ((_i_3657990 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3658056i32;
                    } else {
                        _gotoNext = 3658090i32;
                    };
                } else if (__value__ == (3658056i32)) {
                    _field_3658029 = (_field_3658029.__slice__(0, _i_3657990) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3658206i32;
                } else if (__value__ == (3658090i32)) {
                    _gotoNext = 3658090i32;
                    _field_3658029 = (_field_3658029.__slice__(0, ((_field_3658029.length) - stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_field_3658029) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3658206i32;
                } else if (__value__ == (3658206i32)) {
                    if (!_r.lazyQuotes) {
                        _gotoNext = 3658223i32;
                    } else {
                        _gotoNext = 3658427i32;
                    };
                } else if (__value__ == (3658223i32)) {
                    {
                        _j_3658232 = stdgo._internal.bytes.Bytes_indexByte.indexByte(_field_3658029, (34 : stdgo.GoUInt8));
                        if ((_j_3658232 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3658273i32;
                        } else {
                            _gotoNext = 3658427i32;
                        };
                    };
                } else if (__value__ == (3658273i32)) {
                    _col_3658280 = (_pos_3657638._col + _j_3658232 : stdgo.GoInt);
                    _err_3657400 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3657473, line : _r._numLine, column : _col_3658280, err : stdgo._internal.encoding.csv.Csv_errBareQuote.errBareQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3658427i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...(_field_3658029 : Array<stdgo.GoUInt8>)));
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_pos_3657638?.__copy__()));
                    if ((_i_3657990 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3658606i32;
                    } else {
                        _gotoNext = 3658697i32;
                    };
                } else if (__value__ == (3658606i32)) {
                    _line_3657006 = (_line_3657006.__slice__((_i_3657990 + _commaLen_3657438 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + ((_i_3657990 + _commaLen_3657438 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3658697i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3658723i32)) {
                    _gotoNext = 3658723i32;
                    _fieldPos_3658754 = _pos_3657638?.__copy__();
                    _line_3657006 = (_line_3657006.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3658822i32;
                } else if (__value__ == (3658822i32)) {
                    if (true) {
                        _gotoNext = 3658826i32;
                    } else {
                        _gotoNext = 3657692i32;
                    };
                } else if (__value__ == (3658826i32)) {
                    _i_3658832 = stdgo._internal.bytes.Bytes_indexByte.indexByte(_line_3657006, (34 : stdgo.GoUInt8));
                    if ((_i_3658832 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3658878i32;
                    } else if (((_line_3657006.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3660062i32;
                    } else {
                        _gotoNext = 3660413i32;
                    };
                } else if (__value__ == (3658878i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...((_line_3657006.__slice__(0, _i_3658832) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _line_3657006 = (_line_3657006.__slice__((_i_3658832 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + ((_i_3658832 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3659026i32;
                } else if (__value__ == (3659026i32)) {
                    {
                        _rn_3659033 = stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line_3657006);
                        if (_rn_3659033 == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3659062i32;
                        } else if (_rn_3659033 == (_r.comma)) {
                            _gotoNext = 3659228i32;
                        } else if (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3657006) == ((_line_3657006.length))) {
                            _gotoNext = 3659500i32;
                        } else if (_r.lazyQuotes) {
                            _gotoNext = 3659728i32;
                        } else {
                            _gotoNext = 3659839i32;
                        };
                    };
                } else if (__value__ == (3659062i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _line_3657006 = (_line_3657006.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3658822i32;
                } else if (__value__ == (3659228i32)) {
                    _line_3657006 = (_line_3657006.__slice__(_commaLen_3657438) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3657638._col = (_pos_3657638._col + (_commaLen_3657438) : stdgo.GoInt);
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3658754?.__copy__()));
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3659500i32)) {
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3658754?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3659728i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _gotoNext = 3658822i32;
                } else if (__value__ == (3659839i32)) {
                    _err_3657400 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3657473, line : _r._numLine, column : (_pos_3657638._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3660062i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...(_line_3657006 : Array<stdgo.GoUInt8>)));
                    if (_errRead_3657023 != null) {
                        _gotoNext = 3660189i32;
                    } else {
                        _gotoNext = 3660226i32;
                    };
                } else if (__value__ == (3660189i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3660226i32)) {
                    _pos_3657638._col = (_pos_3657638._col + ((_line_3657006.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _r._readLine();
                        _line_3657006 = __tmp__._0;
                        _errRead_3657023 = __tmp__._1;
                    };
                    if (((_line_3657006.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3660303i32;
                    } else {
                        _gotoNext = 3660352i32;
                    };
                } else if (__value__ == (3660303i32)) {
                    _pos_3657638._line++;
                    _pos_3657638._col = (1 : stdgo.GoInt);
                    _gotoNext = 3660352i32;
                } else if (__value__ == (3660352i32)) {
                    if (stdgo.Go.toInterface(_errRead_3657023) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3660373i32;
                    } else {
                        _gotoNext = 3658822i32;
                    };
                } else if (__value__ == (3660373i32)) {
                    _errRead_3657023 = (null : stdgo.Error);
                    _gotoNext = 3658822i32;
                } else if (__value__ == (3660413i32)) {
                    _gotoNext = 3660413i32;
                    if ((!_r.lazyQuotes && (_errRead_3657023 == null) : Bool)) {
                        _gotoNext = 3660498i32;
                    } else {
                        _gotoNext = 3660627i32;
                    };
                } else if (__value__ == (3660498i32)) {
                    _err_3657400 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3657473, line : _pos_3657638._line, column : _pos_3657638._col, err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3660627i32)) {
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3658754?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 3657692i32;
                } else if (__value__ == (3660788i32)) {
                    if (_err_3657400 == null) {
                        _gotoNext = 3660802i32;
                    } else {
                        _gotoNext = 3660950i32;
                    };
                } else if (__value__ == (3660802i32)) {
                    _err_3657400 = _errRead_3657023;
                    _gotoNext = 3660950i32;
                } else if (__value__ == (3660950i32)) {
                    _str_3660950 = (_r._recordBuffer : stdgo.GoString)?.__copy__();
                    _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    if ((_dst.capacity < (_r._fieldIndexes.length) : Bool)) {
                        _gotoNext = 3661077i32;
                    } else {
                        _gotoNext = 3661127i32;
                    };
                } else if (__value__ == (3661077i32)) {
                    _dst = (new stdgo.Slice<stdgo.GoString>((_r._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3661127i32;
                } else if (__value__ == (3661127i32)) {
                    _dst = (_dst.__slice__(0, (_r._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
                    if ((0i32 : stdgo.GoInt) < (_r._fieldIndexes.length)) {
                        _gotoNext = 3661255i32;
                    } else {
                        _gotoNext = 3661312i32;
                    };
                } else if (__value__ == (3661211i32)) {
                    _idx_3661183 = _r._fieldIndexes[(_i_3661180 : stdgo.GoInt)];
                    _dst[(_i_3661180 : stdgo.GoInt)] = (_str_3660950.__slice__(_preIdx_3661164, _idx_3661183) : stdgo.GoString)?.__copy__();
                    _preIdx_3661164 = _idx_3661183;
                    _i_3661180++;
                    _gotoNext = 3661256i32;
                } else if (__value__ == (3661255i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _r._fieldIndexes[(0i32 : stdgo.GoInt)];
                        _i_3661180 = __tmp__0;
                        _idx_3661183 = __tmp__1;
                    };
                    _gotoNext = 3661256i32;
                } else if (__value__ == (3661256i32)) {
                    if (_i_3661180 < (_r._fieldIndexes.length)) {
                        _gotoNext = 3661211i32;
                    } else {
                        _gotoNext = 3661312i32;
                    };
                } else if (__value__ == (3661312i32)) {
                    if ((_r.fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3661337i32;
                    } else if (_r.fieldsPerRecord == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3661551i32;
                    } else {
                        _gotoNext = 3661588i32;
                    };
                } else if (__value__ == (3661337i32)) {
                    if (((_dst.length != _r.fieldsPerRecord) && (_err_3657400 == null) : Bool)) {
                        _gotoNext = 3661388i32;
                    } else {
                        _gotoNext = 3661588i32;
                    };
                } else if (__value__ == (3661388i32)) {
                    _err_3657400 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3657473, line : _recLine_3657473, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _gotoNext = 3661588i32;
                } else if (__value__ == (3661551i32)) {
                    _r.fieldsPerRecord = (_dst.length);
                    _gotoNext = 3661588i32;
                } else if (__value__ == (3661588i32)) {
                    return { _0 : _dst, _1 : _err_3657400 };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _readLine( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var __tmp__ = _r._r.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
            _r._rawBuffer = ((_r._rawBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_line : Array<stdgo.GoUInt8>)));
            while (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
                {
                    var __tmp__ = _r._r.readSlice((10 : stdgo.GoUInt8));
                    _line = __tmp__._0;
                    _err = __tmp__._1;
                };
                _r._rawBuffer = (_r._rawBuffer.__append__(...(_line : Array<stdgo.GoUInt8>)));
            };
            _line = _r._rawBuffer;
        };
        var _readSize = (_line.length : stdgo.GoInt);
        if (((_readSize > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _err = (null : stdgo.Error);
            if (_line[(_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8))) {
                _line = (_line.__slice__(0, (_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _r._numLine++;
        _r._offset = (_r._offset + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
        {
            var _n = (_line.length : stdgo.GoInt);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && (_line[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                _line = (_line.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readAll( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _records = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _err = (null : stdgo.Error);
        while (true) {
            var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>)), _record:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : _records, _1 : (null : stdgo.Error) };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _1 : _err };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _records = (_records.__append__(_record));
        };
    }
    @:keep
    static public function inputOffset( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        return _r._offset;
    }
    @:keep
    static public function fieldPos( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>, _field:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        if (((_field < (0 : stdgo.GoInt) : Bool) || (_field >= (_r._fieldPositions.length) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("out of range index passed to FieldPos" : stdgo.GoString));
        };
        var _p = (stdgo.Go.setRef(_r._fieldPositions[(_field : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _p._line, _1 : _p._col };
            _line = __tmp__._0;
            _column = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _record = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        if (_r.reuseRecord) {
            {
                var __tmp__ = _r._readRecord(_r._lastRecord);
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
            _r._lastRecord = _record;
        } else {
            {
                var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>));
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _record, _1 : _err };
            _record = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
