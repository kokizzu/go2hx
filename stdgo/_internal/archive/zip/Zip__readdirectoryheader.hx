package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _fieldBuf_3853476:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _utf8Require1_3852284:Bool = false;
        var _needHeaderOffset_3853034:Bool = false;
        var _utf8Require2_3852332:Bool = false;
        var _sig_3851332:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nsecs_3854820:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_3854781:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _parseExtrasBreak = false;
        var _needCSize_3852989:Bool = false;
        var _utf8Valid2_3852320:Bool = false;
        var _ts_3854716:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrTag_3854381:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _extra_3853291:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _modified_3853254:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _err_3852048:stdgo.Error = (null : stdgo.Error);
        var _commentLen_3851817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3855156:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _epoch_3854883:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _ticksPerSecond_3854656;
        var _needUSize_3852942:Bool = false;
        var _extraLen_3851788:stdgo.GoInt = (0 : stdgo.GoInt);
        var _msdosModified_3855454:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _ts_3855355:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrSize_3854414:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldSize_3853398:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldTag_3853369:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _b_3851307:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _err_3851246:stdgo.Error = (null : stdgo.Error);
        var _utf8Valid1_3852272:Bool = false;
        var _attrBuf_3854519:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _d_3851990:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _filenameLen_3851756:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3851210:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_3851210.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3851246 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3851246 != null) {
                            _gotoNext = 3851288i32;
                        } else {
                            _gotoNext = 3851307i32;
                        };
                    };
                } else if (__value__ == (3851288i32)) {
                    return _err_3851246;
                    _gotoNext = 3851307i32;
                } else if (__value__ == (3851307i32)) {
                    _b_3851307 = ((_buf_3851210.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3851332 = @:check2 _b_3851307._uint32();
                        if (_sig_3851332 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3851383i32;
                        } else {
                            _gotoNext = 3851408i32;
                        };
                    };
                } else if (__value__ == (3851383i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3851408i32;
                } else if (__value__ == (3851408i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3851307._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3851307._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3851307._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3851307._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3851756 = (@:check2 _b_3851307._uint16() : stdgo.GoInt);
                    _extraLen_3851788 = (@:check2 _b_3851307._uint16() : stdgo.GoInt);
                    _commentLen_3851817 = (@:check2 _b_3851307._uint16() : stdgo.GoInt);
                    _b_3851307 = (_b_3851307.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3851307._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3851307._uint32() : stdgo.GoInt64);
                    _d_3851990 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3851756 + _extraLen_3851788 : stdgo.GoInt) + _commentLen_3851817 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_3851990);
                            _err_3852048 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3852048 != null) {
                            _gotoNext = 3852085i32;
                        } else {
                            _gotoNext = 3852104i32;
                        };
                    };
                } else if (__value__ == (3852085i32)) {
                    return _err_3852048;
                    _gotoNext = 3852104i32;
                } else if (__value__ == (3852104i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3851990.__slice__(0, _filenameLen_3851756) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3851990.__slice__(_filenameLen_3851756, (_filenameLen_3851756 + _extraLen_3851788 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3851990.__slice__((_filenameLen_3851756 + _extraLen_3851788 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3852272 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3852284 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3852320 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3852332 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3852371i32;
                } else if (__value__ == (3852371i32)) {
                    if ((!_utf8Valid1_3852272 || !_utf8Valid2_3852320 : Bool)) {
                        _gotoNext = 3852381i32;
                    } else if ((!_utf8Require1_3852284 && !_utf8Require2_3852332 : Bool)) {
                        _gotoNext = 3852478i32;
                    } else {
                        _gotoNext = 3852610i32;
                    };
                } else if (__value__ == (3852381i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3852942i32;
                } else if (__value__ == (3852478i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3852942i32;
                } else if (__value__ == (3852610i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3852942i32;
                } else if (__value__ == (3852942i32)) {
                    _needUSize_3852942 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3852989 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3853034 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3853273i32;
                } else if (__value__ == (3853273i32)) {
                    _extra_3853291 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3853287i32)) {
                    if (!_parseExtrasBreak && (((_extra_3853291.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3853335i32;
                    } else {
                        _gotoNext = 3855454i32;
                    };
                } else if (__value__ == (3853335i32)) {
                    _fieldTag_3853369 = @:check2 _extra_3853291._uint16();
                    _fieldSize_3853398 = (@:check2 _extra_3853291._uint16() : stdgo.GoInt);
                    if (((_extra_3853291.length) < _fieldSize_3853398 : Bool)) {
                        _gotoNext = 3853459i32;
                    } else {
                        _gotoNext = 3853476i32;
                    };
                } else if (__value__ == (3853459i32)) {
                    _gotoNext = 3855454i32;
                } else if (__value__ == (3853476i32)) {
                    _fieldBuf_3853476 = @:check2 _extra_3853291._sub(_fieldSize_3853398);
                    _gotoNext = 3853512i32;
                } else if (__value__ == (3853512i32)) {
                    {
                        final __value__ = _fieldTag_3853369;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3853532i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3854195i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3855005i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3855248i32;
                        } else {
                            _gotoNext = 3853287i32;
                        };
                    };
                } else if (__value__ == (3853532i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_3852942) {
                        _gotoNext = 3853761i32;
                    } else {
                        _gotoNext = 3853893i32;
                    };
                } else if (__value__ == (3853761i32)) {
                    _needUSize_3852942 = false;
                    if (((_fieldBuf_3853476.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3853810i32;
                    } else {
                        _gotoNext = 3853844i32;
                    };
                } else if (__value__ == (3853810i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3853844i32;
                } else if (__value__ == (3853844i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3853476._uint64();
                    _gotoNext = 3853893i32;
                } else if (__value__ == (3853893i32)) {
                    if (_needCSize_3852989) {
                        _gotoNext = 3853906i32;
                    } else {
                        _gotoNext = 3854036i32;
                    };
                } else if (__value__ == (3853906i32)) {
                    _needCSize_3852989 = false;
                    if (((_fieldBuf_3853476.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3853955i32;
                    } else {
                        _gotoNext = 3853989i32;
                    };
                } else if (__value__ == (3853955i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3853989i32;
                } else if (__value__ == (3853989i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3853476._uint64();
                    _gotoNext = 3854036i32;
                } else if (__value__ == (3854036i32)) {
                    if (_needHeaderOffset_3853034) {
                        _gotoNext = 3854056i32;
                    } else {
                        _gotoNext = 3853287i32;
                    };
                } else if (__value__ == (3854056i32)) {
                    _needHeaderOffset_3853034 = false;
                    if (((_fieldBuf_3853476.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3854112i32;
                    } else {
                        _gotoNext = 3854146i32;
                    };
                } else if (__value__ == (3854112i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3854146i32;
                } else if (__value__ == (3854146i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3853476._uint64() : stdgo.GoInt64);
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3854195i32)) {
                    if (((_fieldBuf_3853476.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3854237i32;
                    } else {
                        _gotoNext = 3854272i32;
                    };
                } else if (__value__ == (3854237i32)) {
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3854272i32)) {
                    @:check2 _fieldBuf_3853476._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3854322i32;
                } else if (__value__ == (3854322i32)) {
                    if (((_fieldBuf_3853476.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3854345i32;
                    } else {
                        _gotoNext = 3853287i32;
                    };
                } else if (__value__ == (3854345i32)) {
                    _attrTag_3854381 = @:check2 _fieldBuf_3853476._uint16();
                    _attrSize_3854414 = (@:check2 _fieldBuf_3853476._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3853476.length) < _attrSize_3854414 : Bool)) {
                        _gotoNext = 3854481i32;
                    } else {
                        _gotoNext = 3854519i32;
                    };
                } else if (__value__ == (3854481i32)) {
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3854519i32)) {
                    _attrBuf_3854519 = @:check2 _fieldBuf_3853476._sub(_attrSize_3854414);
                    if (((_attrTag_3854381 != (1 : stdgo.GoUInt16)) || (_attrSize_3854414 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3854591i32;
                    } else {
                        _gotoNext = 3854650i32;
                    };
                } else if (__value__ == (3854591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3854322i32;
                } else if (__value__ == (3854650i32)) {
                    _ticksPerSecond_3854656 = (1e+07 : stdgo.GoFloat64);
                    _ts_3854716 = (@:check2 _attrBuf_3854519._uint64() : stdgo.GoInt64);
                    _secs_3854781 = (_ts_3854716 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3854820 = ((100i64 : stdgo.GoInt64) * (_ts_3854716 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3854883 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
                    _modified_3853254 = stdgo._internal.time.Time_unix.unix((_epoch_3854883.unix() + _secs_3854781 : stdgo.GoInt64), _nsecs_3854820)?.__copy__();
                    _gotoNext = 3854322i32;
                } else if (__value__ == (3855005i32)) {
                    if (((_fieldBuf_3853476.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3855067i32;
                    } else {
                        _gotoNext = 3855102i32;
                    };
                } else if (__value__ == (3855067i32)) {
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3855102i32)) {
                    @:check2 _fieldBuf_3853476._uint32();
                    _ts_3855156 = (@:check2 _fieldBuf_3853476._uint32() : stdgo.GoInt64);
                    _modified_3853254 = stdgo._internal.time.Time_unix.unix(_ts_3855156, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3855248i32)) {
                    if ((((_fieldBuf_3853476.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3853476._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3855320i32;
                    } else {
                        _gotoNext = 3855355i32;
                    };
                } else if (__value__ == (3855320i32)) {
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3855355i32)) {
                    _ts_3855355 = (@:check2 _fieldBuf_3853476._uint32() : stdgo.GoInt64);
                    _modified_3853254 = stdgo._internal.time.Time_unix.unix(_ts_3855355, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3853287i32;
                } else if (__value__ == (3855454i32)) {
                    _msdosModified_3855454 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3855454?.__copy__();
                    if (!_modified_3853254.isZero()) {
                        _gotoNext = 3855570i32;
                    } else {
                        _gotoNext = 3856708i32;
                    };
                } else if (__value__ == (3855570i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3853254.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3856106i32;
                    } else {
                        _gotoNext = 3856708i32;
                    };
                } else if (__value__ == (3856106i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3853254.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_3855454.sub(_modified_3853254?.__copy__())))?.__copy__();
                    _gotoNext = 3856708i32;
                } else if (__value__ == (3856708i32)) {
                    var __blank__ = _needUSize_3852942;
                    if ((_needCSize_3852989 || _needHeaderOffset_3853034 : Bool)) {
                        _gotoNext = 3856757i32;
                    } else {
                        _gotoNext = 3856783i32;
                    };
                } else if (__value__ == (3856757i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3856783i32;
                } else if (__value__ == (3856783i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
