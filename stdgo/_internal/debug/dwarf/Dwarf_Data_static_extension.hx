package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Data_asInterface) class Data_static_extension {
    @:keep
    @:tdfield
    static public function _offsetToUnit( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _next = (stdgo._internal.sort.Sort_search.search(((@:checkr _d ?? throw "null pointer dereference")._unit.length), function(_i:stdgo.GoInt):Bool {
            return ((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]._off > _off : Bool);
        }) : stdgo.GoInt);
        if (_next == ((0 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_next - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        if ((((@:checkr _u ?? throw "null pointer dereference")._off <= _off : Bool) && (_off < ((@:checkr _u ?? throw "null pointer dereference")._off + ((@:checkr _u ?? throw "null pointer dereference")._data.length : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool) : Bool)) {
            return (_next - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _parseUnits( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _nunit = (0 : stdgo.GoInt);
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2 _b._unitLength(), _len:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, __3:Bool = __tmp__._1;
            if (_len != (((_len : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                @:check2 _b._error(("unit length overflow" : stdgo.GoString));
                break;
            };
            @:check2 _b._skip((_len : stdgo.GoInt));
            if ((_len > (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : Bool)) {
                _nunit++;
            };
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        _b = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("info" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._info)?.__copy__();
        var _units = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>((_nunit : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nunit : stdgo.GoInt).toBasic() > 0 ? (_nunit : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        for (_i => _ in _units) {
            var _u = (stdgo.Go.setRef(_units[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            (@:checkr _u ?? throw "null pointer dereference")._base = _b._off;
            var _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            if (_b._err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
            };
            while (_n == ((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                {
                    var __tmp__ = @:check2 _b._unitLength();
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _u ?? throw "null pointer dereference")._is64 = @:tmpset0 __tmp__._1;
                };
            };
            var _dataOff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var _vers = (@:check2 _b._uint16() : stdgo.GoUInt16);
            if (((_vers < (2 : stdgo.GoUInt16) : Bool) || (_vers > (5 : stdgo.GoUInt16) : Bool) : Bool)) {
                @:check2 _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_vers : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._vers = (_vers : stdgo.GoInt);
            if ((_vers >= (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._utype = @:check2 _b._uint8();
                (@:checkr _u ?? throw "null pointer dereference")._asize = (@:check2 _b._uint8() : stdgo.GoInt);
            };
            var _abbrevOff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                _abbrevOff = @:check2 _b._uint64();
            } else {
                _abbrevOff = (@:check2 _b._uint32() : stdgo.GoUInt64);
            };
            var __tmp__ = @:check2r _d._parseAbbrev(_abbrevOff, (@:checkr _u ?? throw "null pointer dereference")._vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_b._err == null) {
                    _b._err = _err;
                };
                break;
            };
            (@:checkr _u ?? throw "null pointer dereference")._atable = _atable;
            if ((_vers < (5 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _u ?? throw "null pointer dereference")._asize = (@:check2 _b._uint8() : stdgo.GoInt);
            };
            {
                final __value__ = (@:checkr _u ?? throw "null pointer dereference")._utype;
                if (__value__ == ((4 : stdgo.GoUInt8)) || __value__ == ((5 : stdgo.GoUInt8))) {
                    @:check2 _b._uint64();
                } else if (__value__ == ((2 : stdgo.GoUInt8)) || __value__ == ((6 : stdgo.GoUInt8))) {
                    @:check2 _b._uint64();
                    if ((@:checkr _u ?? throw "null pointer dereference")._is64) {
                        @:check2 _b._uint64();
                    } else {
                        @:check2 _b._uint32();
                    };
                };
            };
            (@:checkr _u ?? throw "null pointer dereference")._off = _b._off;
            (@:checkr _u ?? throw "null pointer dereference")._data = @:check2 _b._bytes(((_n - ((_b._off - _dataOff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt));
        };
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>), _1 : _b._err };
        };
        return { _0 : _units, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _sigToType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _tu = ((@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] ?? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>));
        if ((_tu == null || (_tu : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no type unit with signature %v" : stdgo.GoString), stdgo.Go.toInterface(_sig)) };
        };
        if ((@:checkr _tu ?? throw "null pointer dereference")._cache != null) {
            return { _0 : (@:checkr _tu ?? throw "null pointer dereference")._cache, _1 : (null : stdgo.Error) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_tu), (@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _tu ?? throw "null pointer dereference")._unit._off, (@:checkr _tu ?? throw "null pointer dereference")._unit._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = (stdgo.Go.setRef(({ _d : _d, _tu : _tu, _b : _b?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>);
        var __tmp__ = @:check2r _d._readType((@:checkr _tu ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_r), (@:checkr _tu ?? throw "null pointer dereference")._toff, (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>();
            x.__defaultValue__ = () -> (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>), null), _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err };
        };
        (@:checkr _tu ?? throw "null pointer dereference")._cache = _t;
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), _name?.__copy__(), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _types)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_b._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _base = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var __tmp__ = @:check2 _b._unitLength(), _n:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __tmp__._0, _dwarf64:Bool = __tmp__._1;
            if (_n != (((_n : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                @:check2 _b._error(("type unit length overflow" : stdgo.GoString));
                return _b._err;
            };
            var _hdroff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            var _vers = (@:check2 _b._uint16() : stdgo.GoInt);
            if (_vers != ((4 : stdgo.GoInt))) {
                @:check2 _b._error((("unsupported DWARF version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_vers)?.__copy__() : stdgo.GoString)?.__copy__());
                return _b._err;
            };
            var _ao:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (!_dwarf64) {
                _ao = (@:check2 _b._uint32() : stdgo.GoUInt64);
            } else {
                _ao = @:check2 _b._uint64();
            };
            var __tmp__ = @:check2r _d._parseAbbrev(_ao, _vers), _atable:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _asize = (@:check2 _b._uint8() : stdgo.GoUInt8);
            var _sig = (@:check2 _b._uint64() : stdgo.GoUInt64);
            var _toff:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if (!_dwarf64) {
                _toff = @:check2 _b._uint32();
            } else {
                var _to64 = (@:check2 _b._uint64() : stdgo.GoUInt64);
                if (_to64 != (((_to64 : stdgo.GoUInt32) : stdgo.GoUInt64))) {
                    @:check2 _b._error(("type unit type offset overflow" : stdgo.GoString));
                    return _b._err;
                };
                _toff = (_to64 : stdgo.GoUInt32);
            };
            var _boff = (_b._off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
            (@:checkr _d ?? throw "null pointer dereference")._typeSigs[_sig] = (stdgo.Go.setRef(({ _unit : ({ _base : _base, _off : _boff, _data : @:check2 _b._bytes(((_n - ((_b._off - _hdroff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset)) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : stdgo.GoInt)), _atable : _atable, _asize : (_asize : stdgo.GoInt), _vers : _vers, _is64 : _dwarf64 } : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit), _toff : (_toff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _name : _name?.__copy__() } : stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>);
            if (_b._err != null) {
                return _b._err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readType( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _kid_3705922:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _t_3712405:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
            var _t_3703283:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _t_3715107:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _t_3714417:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
            var _t_3714199:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _ok_3707387:Bool = false;
            var _t_3714674:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
            var _kid_3712539:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _lastFieldType_3709916:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
            var _t_3713597:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
            var _val_3712778:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
            var _ok_3703286:Bool = false;
            var _tkid_3713799:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _haveDataBitOffset_3710766:Bool = false;
            var _loc_3710615:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _next_3704143:() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = null;
            var _typ_3704069:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            var _addressSize_3703404:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3708391:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>);
            var _t_3711857:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
            var _haveBitOffset_3708510:Bool = false;
            var _err_3703349:stdgo.Error = (null : stdgo.Error);
            var _t_3713094:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
            var _enc_3707382:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _typeOf_3704946:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> -> stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = null;
            var _nextDepth_3704080:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastFieldByteOffset_3709971:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3714935:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
            var _f_3712618:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
            var _i_3706687:stdgo.GoInt = (0 : stdgo.GoInt);
            var _dims_3705903:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
            var _n_3712732:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3711543:Bool = false;
            var _kid_3710003:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _count_3706106:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _name_3707344:stdgo.GoString = ("" : stdgo.GoString);
            var _b_3710334:stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            var _t_3705708:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
            var _ok_3714832:Bool = false;
            var _f_3710095:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
            var _fixer_3703845:stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer = ({} : stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer);
            var _b_3714829:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _haveBitOffset_3710740:Bool = false;
            var _haveDataBitOffset_3708535:Bool = false;
            var _ok_3706113:Bool = false;
            var _e_3703346:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _kid_3713750:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
            var _b_3711540:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _loc_3710245:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _lastFieldBitSize_3709942:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _t_3709581:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
            var _byteSize_3707997:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        var __blank__ = _loc_3710245;
                        _gotoNext = 3710649i32;
                        {
                            {
                                var __tmp__ = (_typeCache != null && _typeCache.exists(_off) ? { _0 : _typeCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : false });
                                _t_3703283 = @:tmpset0 __tmp__._0;
                                _ok_3703286 = @:tmpset0 __tmp__._1;
                            };
                            if (_ok_3703286) {
                                _gotoNext = 3703311i32;
                            } else {
                                _gotoNext = 3703333i32;
                            };
                        };
                    } else if (__value__ == (3703311i32)) {
                        return { _0 : _t_3703283, _1 : (null : stdgo.Error) };
                        _gotoNext = 3703333i32;
                    } else if (__value__ == (3703333i32)) {
                        _r.seek(_off);
                        {
                            var __tmp__ = _r.next();
                            _e_3703346 = @:tmpset0 __tmp__._0;
                            _err_3703349 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3703349 != null) {
                            _gotoNext = 3703380i32;
                        } else {
                            _gotoNext = 3703404i32;
                        };
                    } else if (__value__ == (3703380i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3703349 };
                        _gotoNext = 3703404i32;
                    } else if (__value__ == (3703404i32)) {
                        _addressSize_3703404 = _r.addressSize();
                        if (((_e_3703346 == null || (_e_3703346 : Dynamic).__nil__) || ((@:checkr _e_3703346 ?? throw "null pointer dereference").offset != _off) : Bool)) {
                            _gotoNext = 3703467i32;
                        } else {
                            _gotoNext = 3703820i32;
                        };
                    } else if (__value__ == (3703467i32)) {
                        return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), _off, ("no type at offset" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError)) };
                        _gotoNext = 3703820i32;
                    } else if (__value__ == (3703820i32)) {
                        if ((_fixups == null || (_fixups : Dynamic).__nil__)) {
                            _gotoNext = 3703837i32;
                        } else {
                            _gotoNext = 3704065i32;
                        };
                    } else if (__value__ == (3703837i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    @:check2 _fixer_3703845._apply();
                                };
                                a();
                            }) });
                        };
                        _fixups = (stdgo.Go.setRef(_fixer_3703845) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>);
                        _gotoNext = 3704065i32;
                    } else if (__value__ == (3704065i32)) {
                        _nextDepth_3704080 = (0 : stdgo.GoInt);
                        _next_3704143 = function():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> {
                            if (!(@:checkr _e_3703346 ?? throw "null pointer dereference").children) {
                                return null;
                            };
                        };
                        _typeOf_3704946 = function(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ {
                            var _tval = (@:check2r _e.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.AnyInterface);
                            var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                            {
                                final __type__ = _tval;
                                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))) {
                                    var _toff:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset) : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._readType(_name?.__copy__(), _r._clone(), _toff, _typeCache, _fixups);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3703349 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3703349 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                                    var _toff:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                    {
                                        {
                                            var __tmp__ = @:check2r _d._sigToType(_toff);
                                            _t = @:tmpset0 __tmp__._0;
                                            _err_3703349 = @:tmpset0 __tmp__._1;
                                        };
                                        if (_err_3703349 != null) {
                                            return (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
                                        };
                                    };
                                } else {
                                    var _toff:stdgo.AnyInterface = __type__?.__underlying__();
                                    return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                                };
                            };
                            return _t;
                        };
                        _gotoNext = 3705346i32;
                    } else if (__value__ == (3705346i32)) {
                        {
                            final __value__ = (@:checkr _e_3703346 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3705362i32;
                            } else if (__value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3706780i32;
                            } else if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3708828i32;
                            } else if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag)) || __value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3711726i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3712121i32;
                            } else if (__value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3712912i32;
                            } else if (__value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3713233i32;
                            } else if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3714060i32;
                            } else if (__value__ == ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3714314i32;
                            } else {
                                _gotoNext = 3714515i32;
                            };
                        };
                    } else if (__value__ == (3705362i32)) {
                        _t_3705708 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3705708);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3705708);
                        {
                            (@:checkr _t_3705708 ?? throw "null pointer dereference").type = _typeOf_3704946(_e_3703346);
                            if (_err_3703349 != null) {
                                _gotoNext = 3705795i32;
                            } else {
                                _gotoNext = 3705817i32;
                            };
                        };
                    } else if (__value__ == (3705795i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3705817i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3705708 ?? throw "null pointer dereference").strideBitSize = @:tmpset0 __tmp__._0;
                        };
                        _kid_3705922 = _next_3704143();
                        _gotoNext = 3705918i32;
                    } else if (__value__ == (3705918i32)) {
                        if ((_kid_3705922 != null && ((_kid_3705922 : Dynamic).__nil__ == null || !(_kid_3705922 : Dynamic).__nil__))) {
                            _gotoNext = 3705962i32;
                        } else {
                            _gotoNext = 3706579i32;
                        };
                    } else if (__value__ == (3705949i32)) {
                        _kid_3705922 = _next_3704143();
                        _gotoNext = 3705918i32;
                    } else if (__value__ == (3705962i32)) {
                        _gotoNext = 3706060i32;
                    } else if (__value__ == (3706060i32)) {
                        {
                            final __value__ = (@:checkr _kid_3705922 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3706080i32;
                            } else if (__value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3706439i32;
                            } else {
                                _gotoNext = 3705949i32;
                            };
                        };
                    } else if (__value__ == (3706080i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3705922.val((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3706106 = @:tmpset0 __tmp__._0;
                            _ok_3706113 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3706113) {
                            _gotoNext = 3706157i32;
                        } else {
                            _gotoNext = 3706409i32;
                        };
                    } else if (__value__ == (3706157i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3705922.val((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _count_3706106 = @:tmpset0 __tmp__._0;
                            _ok_3706113 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3706113) {
                            _gotoNext = 3706273i32;
                        } else if ((_dims_3705903.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3706359i32;
                        } else {
                            _gotoNext = 3706409i32;
                        };
                    } else if (__value__ == (3706273i32)) {
                        _count_3706106++;
                        _gotoNext = 3706409i32;
                    } else if (__value__ == (3706359i32)) {
                        _count_3706106 = (-1i64 : stdgo.GoInt64);
                        _gotoNext = 3706409i32;
                    } else if (__value__ == (3706409i32)) {
                        _dims_3705903 = (_dims_3705903.__append__(_count_3706106));
                        _gotoNext = 3705949i32;
                    } else if (__value__ == (3706439i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _kid_3705922 ?? throw "null pointer dereference").offset, ("cannot handle enumeration type as array bound" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3706579i32)) {
                        if ((_dims_3705903.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3706597i32;
                        } else {
                            _gotoNext = 3706663i32;
                        };
                    } else if (__value__ == (3706597i32)) {
                        _dims_3705903 = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
                        _gotoNext = 3706663i32;
                    } else if (__value__ == (3706663i32)) {
                        (@:checkr _t_3705708 ?? throw "null pointer dereference").count = _dims_3705903[(0 : stdgo.GoInt)];
                        _i_3706687 = ((_dims_3705903.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _gotoNext = 3706683i32;
                    } else if (__value__ == (3706683i32)) {
                        if ((_i_3706687 >= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3706719i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3706719i32)) {
                        (@:checkr _t_3705708 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : (@:checkr _t_3705708 ?? throw "null pointer dereference").type, count : _dims_3705903[(_i_3706687 : stdgo.GoInt)] } : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>));
                        _i_3706687--;
                        _gotoNext = 3706683i32;
                    } else if (__value__ == (3706780i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            _name_3707344 = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((62u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _enc_3707382 = @:tmpset0 __tmp__._0;
                            _ok_3707387 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3707387) {
                            _gotoNext = 3707430i32;
                        } else {
                            _gotoNext = 3707531i32;
                        };
                    } else if (__value__ == (3707430i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3707344?.__copy__(), (@:checkr _e_3703346 ?? throw "null pointer dereference").offset, (("missing encoding attribute for " : stdgo.GoString) + _name_3707344?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3707531i32)) {
                        _gotoNext = 3707531i32;
                        {
                            final __value__ = _enc_3707382;
                            if (__value__ == ((1i64 : stdgo.GoInt64))) {
                                _gotoNext = 3707650i32;
                            } else if (__value__ == ((2i64 : stdgo.GoInt64))) {
                                _gotoNext = 3707692i32;
                            } else if (__value__ == ((3i64 : stdgo.GoInt64))) {
                                _gotoNext = 3707734i32;
                            } else if (__value__ == ((4i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708147i32;
                            } else if (__value__ == ((5i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708188i32;
                            } else if (__value__ == ((7i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708228i32;
                            } else if (__value__ == ((6i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708271i32;
                            } else if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                _gotoNext = 3708316i32;
                            } else {
                                _gotoNext = 3707546i32;
                            };
                        };
                    } else if (__value__ == (3707546i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3707344?.__copy__(), (@:checkr _e_3703346 ?? throw "null pointer dereference").offset, ("unrecognized encoding attribute value" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3707650i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3707692i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3707734i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ComplexType.ComplexType>));
                        if (_name_3707344 == (("complex" : stdgo.GoString))) {
                            _gotoNext = 3707806i32;
                        } else {
                            _gotoNext = 3708368i32;
                        };
                    } else if (__value__ == (3707806i32)) {
                        _gotoNext = 3707990i32;
                    } else if (__value__ == (3707990i32)) {
                        {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                                } catch(_) {
                                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                                };
                                _byteSize_3707997 = @:tmpset0 __tmp__._0;
                            };
                            {
                                final __value__ = _byteSize_3707997;
                                if (__value__ == ((8i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3708056i32;
                                } else if (__value__ == ((16i64 : stdgo.GoInt64))) {
                                    _gotoNext = 3708096i32;
                                } else {
                                    _gotoNext = 3708368i32;
                                };
                            };
                        };
                    } else if (__value__ == (3708056i32)) {
                        _name_3707344 = ("complex float" : stdgo.GoString);
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708096i32)) {
                        _name_3707344 = ("complex double" : stdgo.GoString);
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708147i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FloatType.FloatType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708188i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_IntType.IntType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_IntType.IntType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708228i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UintType.UintType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UintType.UintType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708271i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_CharType.CharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CharType.CharType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708316i32)) {
                        _typ_3704069 = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UcharType.UcharType>));
                        _gotoNext = 3708368i32;
                    } else if (__value__ == (3708368i32)) {
                        _typeCache[_off] = _typ_3704069;
                        _t_3708391 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ_3704069) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0)) : stdgo._internal.debug.dwarf.Dwarf_T__interface_0.T__interface_0).basic();
                        (@:checkr _t_3708391 ?? throw "null pointer dereference").commonType.name = _name_3707344?.__copy__();
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3708391 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3708510 = false;
                        _haveDataBitOffset_3708535 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3708391 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3708510 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _t_3708391 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3708535 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3708510 && _haveDataBitOffset_3708535 : Bool)) {
                            _gotoNext = 3708734i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3708734i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name_3707344?.__copy__(), (@:checkr _e_3703346 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3708828i32)) {
                        _t_3709581 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructType.StructType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3709581);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3709581);
                        _gotoNext = 3709635i32;
                    } else if (__value__ == (3709635i32)) {
                        {
                            final __value__ = (@:checkr _e_3703346 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3709652i32;
                            } else if (__value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3709693i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3709736i32;
                            } else {
                                _gotoNext = 3709781i32;
                            };
                        };
                    } else if (__value__ == (3709652i32)) {
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").kind = ("class" : stdgo.GoString);
                        _gotoNext = 3709781i32;
                    } else if (__value__ == (3709693i32)) {
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").kind = ("struct" : stdgo.GoString);
                        _gotoNext = 3709781i32;
                    } else if (__value__ == (3709736i32)) {
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").kind = ("union" : stdgo.GoString);
                        _gotoNext = 3709781i32;
                    } else if (__value__ == (3709781i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3709581 ?? throw "null pointer dereference").structName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").incomplete = @:check2r _e_3703346.val((60u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) != null;
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").field = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
                        _kid_3710003 = _next_3704143();
                        _gotoNext = 3709999i32;
                    } else if (__value__ == (3709999i32)) {
                        if ((_kid_3710003 != null && ((_kid_3710003 : Dynamic).__nil__ == null || !(_kid_3710003 : Dynamic).__nil__))) {
                            _gotoNext = 3710043i32;
                        } else {
                            _gotoNext = 3711514i32;
                        };
                    } else if (__value__ == (3710043i32)) {
                        if ((@:checkr _kid_3710003 ?? throw "null pointer dereference").tag != ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3710072i32;
                        } else {
                            _gotoNext = 3710095i32;
                        };
                    } else if (__value__ == (3710072i32)) {
                        _kid_3710003 = _next_3704143();
                        _gotoNext = 3709999i32;
                    } else if (__value__ == (3710095i32)) {
                        _f_3710095 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_StructField.StructField)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>);
                        {
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").type = _typeOf_3704946(_kid_3710003);
                            if (_err_3703349 != null) {
                                _gotoNext = 3710156i32;
                            } else {
                                _gotoNext = 3710181i32;
                            };
                        };
                    } else if (__value__ == (3710156i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3710181i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3710181i32;
                        {
                            final __type__ = @:check2r _kid_3710003.val((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                                var _loc:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                                _loc_3710245 = _loc;
                                _gotoNext = 3710234i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                                var _loc:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                                _loc_3710615 = _loc;
                                _gotoNext = 3710605i32;
                            } else {
                                var _loc:stdgo.AnyInterface = __type__?.__underlying__();
                                _gotoNext = 3710649i32;
                            };
                        };
                    } else if (__value__ == (3710234i32)) {
                        _b_3710334 = stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("location" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _loc_3710245)?.__copy__();
                        if (@:check2 _b_3710334._uint8() != ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3710420i32;
                        } else {
                            _gotoNext = 3710510i32;
                        };
                    } else if (__value__ == (3710420i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _kid_3710003 ?? throw "null pointer dereference").offset, ("unexpected opcode" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3710510i32)) {
                        (@:checkr _f_3710095 ?? throw "null pointer dereference").byteOffset = (@:check2 _b_3710334._uint() : stdgo.GoInt64);
                        if (_b_3710334._err != null) {
                            _gotoNext = 3710561i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    } else if (__value__ == (3710561i32)) {
                        _err_3703349 = _b_3710334._err;
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3710605i32)) {
                        (@:checkr _f_3710095 ?? throw "null pointer dereference").byteOffset = _loc_3710615;
                        var __blank__ = _loc_3710615;
                        _gotoNext = 3710649i32;
                    } else if (__value__ == (3710649i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710003.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710003.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").byteSize = @:tmpset0 __tmp__._0;
                        };
                        _haveBitOffset_3710740 = false;
                        _haveDataBitOffset_3710766 = false;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710003.val((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").bitOffset = @:tmpset0 __tmp__._0;
                            _haveBitOffset_3710740 = @:tmpset0 __tmp__._1;
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710003.val((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").dataBitOffset = @:tmpset0 __tmp__._0;
                            _haveDataBitOffset_3710766 = @:tmpset0 __tmp__._1;
                        };
                        if ((_haveBitOffset_3710740 && _haveDataBitOffset_3710766 : Bool)) {
                            _gotoNext = 3710972i32;
                        } else {
                            _gotoNext = 3711070i32;
                        };
                    } else if (__value__ == (3710972i32)) {
                        _err_3703349 = stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError(_name?.__copy__(), (@:checkr _e_3703346 ?? throw "null pointer dereference").offset, ("duplicate bit offset attributes" : stdgo.GoString)) : stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError));
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3711070i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3710003.val((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3710095 ?? throw "null pointer dereference").bitSize = @:tmpset0 __tmp__._0;
                        };
                        (@:checkr _t_3709581 ?? throw "null pointer dereference").field = ((@:checkr _t_3709581 ?? throw "null pointer dereference").field.__append__(_f_3710095));
                        if (((_lastFieldBitSize_3709942 == ((0i64 : stdgo.GoInt64)) && _lastFieldByteOffset_3709971 == ((@:checkr _f_3710095 ?? throw "null pointer dereference").byteOffset) : Bool) && ((@:checkr _t_3709581 ?? throw "null pointer dereference").kind != ("union" : stdgo.GoString)) : Bool)) {
                            _gotoNext = 3711235i32;
                        } else {
                            _gotoNext = 3711414i32;
                        };
                    } else if (__value__ == (3711235i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3709916);
                        _gotoNext = 3711414i32;
                    } else if (__value__ == (3711414i32)) {
                        _lastFieldType_3709916 = (stdgo.Go.setRef((@:checkr _f_3710095 ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _lastFieldByteOffset_3709971 = (@:checkr _f_3710095 ?? throw "null pointer dereference").byteOffset;
                        _lastFieldBitSize_3709942 = (@:checkr _f_3710095 ?? throw "null pointer dereference").bitSize;
                        _kid_3710003 = _next_3704143();
                        _gotoNext = 3709999i32;
                    } else if (__value__ == (3711514i32)) {
                        if ((@:checkr _t_3709581 ?? throw "null pointer dereference").kind != (("union" : stdgo.GoString))) {
                            _gotoNext = 3711535i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3711535i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3711540 = @:tmpset0 __tmp__._0;
                            _ok_3711543 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_3711543 && (_b_3711540 == _lastFieldByteOffset_3709971) : Bool)) {
                            _gotoNext = 3711614i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3711614i32)) {
                        @:check2r _fixups._recordArrayType(_lastFieldType_3709916);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3711726i32)) {
                        _t_3711857 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_QualType.QualType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3711857);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3711857);
                        {
                            (@:checkr _t_3711857 ?? throw "null pointer dereference").type = _typeOf_3704946(_e_3703346);
                            if (_err_3703349 != null) {
                                _gotoNext = 3711943i32;
                            } else {
                                _gotoNext = 3711965i32;
                            };
                        };
                    } else if (__value__ == (3711943i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3711965i32)) {
                        _gotoNext = 3711965i32;
                        {
                            final __value__ = (@:checkr _e_3703346 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3711982i32;
                            } else if (__value__ == ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3712023i32;
                            } else if (__value__ == ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3712070i32;
                            } else {
                                _gotoNext = 3714791i32;
                            };
                        };
                    } else if (__value__ == (3711982i32)) {
                        (@:checkr _t_3711857 ?? throw "null pointer dereference").qual = ("const" : stdgo.GoString);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3712023i32)) {
                        (@:checkr _t_3711857 ?? throw "null pointer dereference").qual = ("restrict" : stdgo.GoString);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3712070i32)) {
                        (@:checkr _t_3711857 ?? throw "null pointer dereference").qual = ("volatile" : stdgo.GoString);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3712121i32)) {
                        _t_3712405 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3712405);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3712405);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3712405 ?? throw "null pointer dereference").enumName = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3712405 ?? throw "null pointer dereference").val = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _kid_3712539 = _next_3704143();
                        _gotoNext = 3712535i32;
                    } else if (__value__ == (3712535i32)) {
                        if ((_kid_3712539 != null && ((_kid_3712539 : Dynamic).__nil__ == null || !(_kid_3712539 : Dynamic).__nil__))) {
                            _gotoNext = 3712579i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3712566i32)) {
                        _kid_3712539 = _next_3704143();
                        _gotoNext = 3712535i32;
                    } else if (__value__ == (3712579i32)) {
                        if ((@:checkr _kid_3712539 ?? throw "null pointer dereference").tag == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                            _gotoNext = 3712612i32;
                        } else {
                            _gotoNext = 3712566i32;
                        };
                    } else if (__value__ == (3712612i32)) {
                        _f_3712618 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3712539.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _f_3712618 ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _kid_3712539.val((28u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            (@:checkr _f_3712618 ?? throw "null pointer dereference").val = @:tmpset0 __tmp__._0;
                        };
                        _n_3712732 = ((@:checkr _t_3712405 ?? throw "null pointer dereference").val.length);
                        if ((_n_3712732 >= (@:checkr _t_3712405 ?? throw "null pointer dereference").val.capacity : Bool)) {
                            _gotoNext = 3712771i32;
                        } else {
                            _gotoNext = 3712861i32;
                        };
                    } else if (__value__ == (3712771i32)) {
                        _val_3712778 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>((_n_3712732 : stdgo.GoInt).toBasic(), (_n_3712732 * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        _val_3712778.__copyTo__((@:checkr _t_3712405 ?? throw "null pointer dereference").val);
                        (@:checkr _t_3712405 ?? throw "null pointer dereference").val = _val_3712778;
                        _gotoNext = 3712861i32;
                    } else if (__value__ == (3712861i32)) {
                        (@:checkr _t_3712405 ?? throw "null pointer dereference").val = ((@:checkr _t_3712405 ?? throw "null pointer dereference").val.__slice__((0 : stdgo.GoInt), (_n_3712732 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
                        (@:checkr _t_3712405 ?? throw "null pointer dereference").val[(_n_3712732 : stdgo.GoInt)] = _f_3712618;
                        _gotoNext = 3712566i32;
                    } else if (__value__ == (3712912i32)) {
                        _t_3713094 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3713094);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3713094);
                        if (@:check2r _e_3703346.val((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) == null) {
                            _gotoNext = 3713171i32;
                        } else {
                            _gotoNext = 3713212i32;
                        };
                    } else if (__value__ == (3713171i32)) {
                        (@:checkr _t_3713094 ?? throw "null pointer dereference").type = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType() : stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_VoidType.VoidType>));
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3713212i32)) {
                        (@:checkr _t_3713094 ?? throw "null pointer dereference").type = _typeOf_3704946(_e_3703346);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3713233i32)) {
                        _t_3713597 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3713597);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3713597);
                        {
                            (@:checkr _t_3713597 ?? throw "null pointer dereference").returnType = _typeOf_3704946(_e_3703346);
                            if (_err_3703349 != null) {
                                _gotoNext = 3713689i32;
                            } else {
                                _gotoNext = 3713711i32;
                            };
                        };
                    } else if (__value__ == (3713689i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3713711i32)) {
                        (@:checkr _t_3713597 ?? throw "null pointer dereference").paramType = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
                        _kid_3713750 = _next_3704143();
                        _gotoNext = 3713746i32;
                    } else if (__value__ == (3713746i32)) {
                        if ((_kid_3713750 != null && ((_kid_3713750 : Dynamic).__nil__ == null || !(_kid_3713750 : Dynamic).__nil__))) {
                            _gotoNext = 3713790i32;
                        } else {
                            _gotoNext = 3714791i32;
                        };
                    } else if (__value__ == (3713790i32)) {
                        _gotoNext = 3713812i32;
                    } else if (__value__ == (3713812i32)) {
                        {
                            final __value__ = (@:checkr _kid_3713750 ?? throw "null pointer dereference").tag;
                            if (__value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3713857i32;
                            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
                                _gotoNext = 3713947i32;
                            } else {
                                _gotoNext = 3713832i32;
                            };
                        };
                    } else if (__value__ == (3713832i32)) {
                        _kid_3713750 = _next_3704143();
                        _gotoNext = 3713746i32;
                    } else if (__value__ == (3713857i32)) {
                        {
                            _tkid_3713799 = _typeOf_3704946(_kid_3713750);
                            if (_err_3703349 != null) {
                                _gotoNext = 3713920i32;
                            } else {
                                _gotoNext = 3714014i32;
                            };
                        };
                    } else if (__value__ == (3713920i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3713947i32)) {
                        _tkid_3713799 = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType() : stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType>));
                        _gotoNext = 3714014i32;
                    } else if (__value__ == (3714014i32)) {
                        (@:checkr _t_3713597 ?? throw "null pointer dereference").paramType = ((@:checkr _t_3713597 ?? throw "null pointer dereference").paramType.__append__(_tkid_3713799));
                        _kid_3713750 = _next_3704143();
                        _gotoNext = 3713746i32;
                    } else if (__value__ == (3714060i32)) {
                        _t_3714199 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3714199);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3714199);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3714199 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _t_3714199 ?? throw "null pointer dereference").type = _typeOf_3704946(_e_3703346);
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3714314i32)) {
                        _t_3714417 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3714417);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3714417);
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3714417 ?? throw "null pointer dereference").basicType.commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3714515i32)) {
                        _t_3714674 = (stdgo.Go.setRef(({} : stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>);
                        _typ_3704069 = stdgo.Go.asInterface(_t_3714674);
                        _typeCache[_off] = stdgo.Go.asInterface(_t_3714674);
                        (@:checkr _t_3714674 ?? throw "null pointer dereference").tag = (@:checkr _e_3703346 ?? throw "null pointer dereference").tag;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            };
                            (@:checkr _t_3714674 ?? throw "null pointer dereference").commonType.name = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        _gotoNext = 3714791i32;
                    } else if (__value__ == (3714791i32)) {
                        if (_err_3703349 != null) {
                            _gotoNext = 3714805i32;
                        } else {
                            _gotoNext = 3714825i32;
                        };
                    } else if (__value__ == (3714805i32)) {
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3714825i32)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((@:check2r _e_3703346.val((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                            } catch(_) {
                                { _0 : (0 : stdgo.GoInt64), _1 : false };
                            };
                            _b_3714829 = @:tmpset0 __tmp__._0;
                            _ok_3714832 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3714832) {
                            _gotoNext = 3714875i32;
                        } else {
                            _gotoNext = 3715147i32;
                        };
                        {
                            _gotoNext = 3714825i32;
                        };
                    } else if (__value__ == (3714875i32)) {
                        _b_3714829 = (-1i64 : stdgo.GoInt64);
                        var __blank__ = 0i32;
                        _gotoNext = 3714890i32;
                    } else if (__value__ == (3714890i32)) {
                        {
                            final __type__ = _typ_3704069;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>) : __type__.__underlying__().value;
                                _t_3714935 = _t;
                                _gotoNext = 3714918i32;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>))) {
                                var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>) : __type__.__underlying__().value;
                                _t_3715107 = _t;
                                _gotoNext = 3715094i32;
                            } else {
                                var _t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = __type__ == null ? (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) : cast __type__;
                                _gotoNext = 3715147i32;
                            };
                        };
                        _gotoNext = 3715147i32;
                    } else if (__value__ == (3714918i32)) {
                        (@:checkr _fixups ?? throw "null pointer dereference")._typedefs = ((@:checkr _fixups ?? throw "null pointer dereference")._typedefs.__append__(_t_3714935));
                        var __blank__ = _t_3714935;
                        _gotoNext = 3715147i32;
                    } else if (__value__ == (3715094i32)) {
                        _b_3714829 = (_addressSize_3703404 : stdgo.GoInt64);
                        var __blank__ = _t_3715107;
                        _gotoNext = 3715147i32;
                    } else if (__value__ == (3715147i32)) {
                        _typ_3704069.common().byteSize = _b_3714829;
                        _gotoNext = 3715177i32;
                    } else if (__value__ == (3715177i32)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : _typ_3704069, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3715194i32;
                    } else if (__value__ == (3715194i32)) {
                        if (_typeCache != null) _typeCache.remove(_off);
                        {
                            final __ret__:{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : _err_3703349 };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return @:check2r _d._readType(("info" : stdgo.GoString), stdgo.Go.asInterface(@:check2r _d.reader()), _off, (@:checkr _d ?? throw "null pointer dereference")._typeCache, null);
    }
    @:keep
    @:tdfield
    static public function addSection( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _name;
            if (__value__ == ((".debug_addr" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._addr = _contents;
            } else if (__value__ == ((".debug_line_str" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._lineStr = _contents;
            } else if (__value__ == ((".debug_str_offsets" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._strOffsets = _contents;
            } else if (__value__ == ((".debug_rnglists" : stdgo.GoString))) {
                (@:checkr _d ?? throw "null pointer dereference")._rngLists = _contents;
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function addTypes( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        return @:check2r _d._parseTypes(_name?.__copy__(), _types);
    }
    @:keep
    @:tdfield
    static public function lineReader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._line == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((16u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _off = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off > ((@:checkr _d ?? throw "null pointer dereference")._line.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("AttrStmtList value out of range" : stdgo.GoString)) };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((27u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _compDir = __tmp__._0, __3 = __tmp__._1;
        var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(@:check2r _d._offsetToUnit((@:checkr _cu ?? throw "null pointer dereference").offset) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("line" : stdgo.GoString), (_off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._line.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _r = ({ _buf : _buf, _section : (@:checkr _d ?? throw "null pointer dereference")._line, _str : (@:checkr _d ?? throw "null pointer dereference")._str, _lineStr : (@:checkr _d ?? throw "null pointer dereference")._lineStr } : stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader);
        {
            var _err = (@:check2 _r._readHeader(_compDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        @:check2 _r.reset();
        return { _0 : (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _debugAddr( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _off = ((_idx * (_format._addrsize() : stdgo.GoUInt64) : stdgo.GoUInt64) + _addrBase : stdgo.GoUInt64);
        if (((_off : stdgo.GoInt) : stdgo.GoUInt64) != (_off)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("offset out of range" : stdgo.GoString)) };
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, _format, ("addr" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._addr)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        @:check2 _b._skip((_off : stdgo.GoInt));
        var _val = (@:check2 _b._addr() : stdgo.GoUInt64);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _b._err };
        };
        return { _0 : _val, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dwarf5Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._rngLists.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rnglist offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _addrBase:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if ((_cu != null && ((_cu : Dynamic).__nil__ == null || !(_cu : Dynamic).__nil__))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt64), _1 : false };
                };
                _addrBase = @:tmpset0 __tmp__._0;
            };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("rnglists" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), (@:checkr _d ?? throw "null pointer dereference")._rngLists)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        @:check2 _buf._skip((_ranges : stdgo.GoInt));
        while (true) {
            var _opcode = (@:check2 _buf._uint8() : stdgo.GoUInt8);
            {
                final __value__ = _opcode;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    if (_buf._err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _buf._err };
                    };
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                    var _baseIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _baseIdx);
                        _base = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    var _startIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _endIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _endIdx), _end:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    var _startIdx = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _len = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var __tmp__ = @:check2r _d._debugAddr(stdgo.Go.asInterface(_u), (_addrBase : stdgo.GoUInt64), _startIdx), _start:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    var _off1 = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    var _off2 = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _off1 : stdgo.GoUInt64), (_base + _off2 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                    _base = @:check2 _buf._addr();
                } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                    var _start = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    var _end = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, _end]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                } else if (__value__ == ((7 : stdgo.GoUInt8))) {
                    var _start = (@:check2 _buf._addr() : stdgo.GoUInt64);
                    var _len = (@:check2 _buf._uint() : stdgo.GoUInt64);
                    _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_start, (_start + _len : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dwarf2Ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        if (((_ranges < (0i64 : stdgo.GoInt64) : Bool) || (_ranges > ((@:checkr _d ?? throw "null pointer dereference")._ranges.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid range offset %d (max %d)" : stdgo.GoString), stdgo.Go.toInterface(_ranges), stdgo.Go.toInterface(((@:checkr _d ?? throw "null pointer dereference")._ranges.length))) };
        };
        var _buf = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("ranges" : stdgo.GoString), (_ranges : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), ((@:checkr _d ?? throw "null pointer dereference")._ranges.__slice__(_ranges) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        while (((_buf._data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _low = (@:check2 _buf._addr() : stdgo.GoUInt64);
            var _high = (@:check2 _buf._addr() : stdgo.GoUInt64);
            if (((_low == (0i64 : stdgo.GoUInt64)) && (_high == (0i64 : stdgo.GoUInt64)) : Bool)) {
                break;
            };
            if (_low == (((-1i64 : stdgo.GoUInt64) >> (((((8 : stdgo.GoInt) - @:check2r _u._addrsize() : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64))) {
                _base = _high;
            } else {
                _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(_base + _low : stdgo.GoUInt64), (_base + _high : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
            };
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _baseAddressForEntry( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        if ((@:checkr _e ?? throw "null pointer dereference").tag == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))) {
            _cu = _e;
        } else {
            var _i = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("no unit for entry" : stdgo.GoString)) };
            };
            var _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface(_u), ("info" : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._off, (@:checkr _u ?? throw "null pointer dereference")._data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            _cu = @:check2 _b._entry(null, (@:checkr _u ?? throw "null pointer dereference")._atable, (@:checkr _u ?? throw "null pointer dereference")._base, (@:checkr _u ?? throw "null pointer dereference")._vers);
            if (_b._err != null) {
                return { _0 : null, _1 : (0i64 : stdgo.GoUInt64), _2 : _b._err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((82u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoUInt64), _1 : false };
            }, _cuEntry = __tmp__._0, _cuEntryOK = __tmp__._1;
            if (_cuEntryOK) {
                return { _0 : _cu, _1 : _cuEntry, _2 : (null : stdgo.Error) };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2r _cu.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoUInt64), _1 : false };
                }, _cuLow = __tmp__._0, _cuLowOK = __tmp__._1;
                if (_cuLowOK) {
                    return { _0 : _cu, _1 : _cuLow, _2 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : _cu, _1 : (0i64 : stdgo.GoUInt64), _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function ranges( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoUInt64), _1 : false };
        }, _low = __tmp__._0, _lowOK = __tmp__._1;
        var _high:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _highOK:Bool = false;
        var _highField = @:check2r _e.attrField((18u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
        if ((_highField != null && ((_highField : Dynamic).__nil__ == null || !(_highField : Dynamic).__nil__))) {
            {
                final __value__ = (@:checkr _highField ?? throw "null pointer dereference").class_;
                if (__value__ == ((1 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert(((@:checkr _highField ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoUInt64), _1 : false };
                        };
                        _high = @:tmpset0 __tmp__._0;
                        _highOK = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == ((3 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _highField ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _off = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _high = (_low + (_off : stdgo.GoUInt64) : stdgo.GoUInt64);
                        _highOK = true;
                    };
                };
            };
        };
        if ((_lowOK && _highOK : Bool)) {
            _ret = (_ret.__append__((new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[_low, _high]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()));
        };
        var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        {
            var _uidx = (@:check2r _d._offsetToUnit((@:checkr _e ?? throw "null pointer dereference").offset) : stdgo.GoInt);
            if (((_uidx >= (0 : stdgo.GoInt) : Bool) && (_uidx < ((@:checkr _d ?? throw "null pointer dereference")._unit.length) : Bool) : Bool)) {
                _u = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._unit[(_uidx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
            };
        };
        if ((((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && ((@:checkr _u ?? throw "null pointer dereference")._vers >= (5 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._rngLists != null) : Bool)) {
            var _field = @:check2r _e.attrField((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr));
            if ((_field == null || (_field : Dynamic).__nil__)) {
                return { _0 : _ret, _1 : (null : stdgo.Error) };
            };
            {
                final __value__ = (@:checkr _field ?? throw "null pointer dereference").class_;
                if (__value__ == ((9 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt64), _1 : false };
                    }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
                    if (!_rangesOK) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return @:check2r _d._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
                } else if (__value__ == ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _field ?? throw "null pointer dereference").val : stdgo.GoUInt64)) : stdgo.GoUInt64), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoUInt64), _1 : false };
                    }, _rnglist = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : _ret, _1 : (null : stdgo.Error) };
                    };
                    var __tmp__ = @:check2r _d._baseAddressForEntry(_e), _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
                    };
                    return @:check2r _d._dwarf5Ranges(_u, _cu, _base, (_rnglist : stdgo.GoInt64), _ret);
                } else {
                    return { _0 : _ret, _1 : (null : stdgo.Error) };
                };
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _e.val((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr)) : stdgo.GoInt64)) : stdgo.GoInt64), _1 : true };
        } catch(_) {
            { _0 : (0 : stdgo.GoInt64), _1 : false };
        }, _ranges = __tmp__._0, _rangesOK = __tmp__._1;
        if ((_rangesOK && ((@:checkr _d ?? throw "null pointer dereference")._ranges != null) : Bool)) {
            var __tmp__ = @:check2r _d._baseAddressForEntry(_e), __3:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> = __tmp__._0, _base:stdgo.GoUInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>), _1 : _err };
            };
            return @:check2r _d._dwarf2Ranges(_u, _base, _ranges, _ret);
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reader( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        var _r = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.debug.dwarf.Dwarf_Reader.Reader)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        @:check2r _r.seek((0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseAbbrev( _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data> = _d;
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._abbrevCache != null && (@:checkr _d ?? throw "null pointer dereference")._abbrevCache.exists(_off) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off], _1 : true } : { _0 : (null : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable), _1 : false }), _m:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        var _data = (@:checkr _d ?? throw "null pointer dereference")._abbrev;
        if ((_off > (_data.length : stdgo.GoUInt64) : Bool)) {
            _data = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _data = (_data.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = (stdgo._internal.debug.dwarf.Dwarf__makeBuf._makeBuf(_d, stdgo.Go.asInterface((new stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat() : stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat)), ("abbrev" : stdgo.GoString), (0u32 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset), _data)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
        var _m = ((({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev>) : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable) : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable);
        while (true) {
            var _id = (@:check2 _b._uint() : stdgo.GoUInt32);
            if (_id == ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            var _n = (0 : stdgo.GoInt);
            var _b1 = (_b?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
            @:check2 _b1._uint();
            @:check2 _b1._uint8();
            while (true) {
                var _tag = (@:check2 _b1._uint() : stdgo.GoUInt64);
                var _fmt = (@:check2 _b1._uint() : stdgo.GoUInt64);
                if (((_tag == (0i64 : stdgo.GoUInt64)) && (_fmt == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    break;
                };
                if ((_fmt : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format) == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    @:check2 _b1._int();
                };
                _n++;
            };
            if (_b1._err != null) {
                return { _0 : null, _1 : _b1._err };
            };
            var _a:stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev = ({} : stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev);
            _a._tag = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
            _a._children = @:check2 _b._uint8() != ((0 : stdgo.GoUInt8));
            _a._field = (new stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield)]) : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>);
            for (_i => _ in _a._field) {
                _a._field[(_i : stdgo.GoInt)]._attr = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr);
                _a._field[(_i : stdgo.GoInt)]._fmt = (@:check2 _b._uint() : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
                _a._field[(_i : stdgo.GoInt)]._class = stdgo._internal.debug.dwarf.Dwarf__formToClass._formToClass(_a._field[(_i : stdgo.GoInt)]._fmt, _a._field[(_i : stdgo.GoInt)]._attr, _vers, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>));
                if (_a._field[(_i : stdgo.GoInt)]._fmt == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))) {
                    _a._field[(_i : stdgo.GoInt)]._val = @:check2 _b._int();
                };
            };
            @:check2 _b._uint();
            @:check2 _b._uint();
            _m[_id] = _a?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : null, _1 : _b._err };
        };
        (@:checkr _d ?? throw "null pointer dereference")._abbrevCache[_off] = _m;
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
