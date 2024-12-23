package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>; var _1 : stdgo.Error; } {
        var _want_3706474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3707215:stdgo.Error = (null : stdgo.Error);
        var _nvc_3706805:stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker);
        var _si_3706491:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
        var _nextCC_3708002:Bool = false;
        var _ok_3706810:Bool = false;
        var _cc_3706511:stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker);
        var _n_3707230:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nv_3707266:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        var _nvargs_3706258:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        var _checker_3707966:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> -> stdgo.Error = null;
        var _ok_3707292:Bool = false;
        var _np_3707288:stdgo._internal.database.sql.Sql_NamedArg.NamedArg = ({} : stdgo._internal.database.sql.Sql_NamedArg.NamedArg);
        var _arg_3707244:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _i_3707251_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cci_3706902:stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_3706258 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    _want_3706474 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3706538i32;
                    } else {
                        _gotoNext = 3706805i32;
                    };
                } else if (__value__ == (3706538i32)) {
                    _si_3706491 = _ds._si;
                    _want_3706474 = _ds._si.numInput();
                    _cc_3706511._want = _want_3706474;
                    _gotoNext = 3706805i32;
                } else if (__value__ == (3706805i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3706491) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3706805 = __tmp__._0;
                        _ok_3706810 = __tmp__._1;
                    };
                    if (!_ok_3706810) {
                        _gotoNext = 3706854i32;
                    } else {
                        _gotoNext = 3706902i32;
                    };
                } else if (__value__ == (3706854i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3706805 = __tmp__._0;
                        _ok_3706810 = __tmp__._1;
                    };
                    _gotoNext = 3706902i32;
                } else if (__value__ == (3706902i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3706491) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : false };
                        };
                        _cci_3706902 = __tmp__._0;
                        _ok_3706810 = __tmp__._1;
                    };
                    if (_ok_3706810) {
                        _gotoNext = 3706948i32;
                    } else {
                        _gotoNext = 3707211i32;
                    };
                } else if (__value__ == (3706948i32)) {
                    _cc_3706511._cci = _cci_3706902;
                    _gotoNext = 3707211i32;
                } else if (__value__ == (3707211i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3708590i32;
                    } else {
                        _gotoNext = 3708682i32;
                    };
                } else if (__value__ == (3707241i32)) {
                    _i_3707251_0++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3707262i32)) {
                    _arg_3707244 = stdgo.Go.toInterface(_args[(_i_3707251_0 : stdgo.GoInt)]);
                    _nv_3707266 = (stdgo.Go.setRef(_nvargs_3706258[(_n_3707230 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_arg_3707244 : stdgo._internal.database.sql.Sql_NamedArg.NamedArg)) : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : false };
                            };
                            _np_3707288 = __tmp__._0?.__copy__();
                            _ok_3707292 = __tmp__._1;
                        };
                        if (_ok_3707292) {
                            _gotoNext = 3707317i32;
                        } else {
                            _gotoNext = 3707447i32;
                        };
                    };
                } else if (__value__ == (3707317i32)) {
                    {
                        _err_3707215 = stdgo._internal.database.sql.Sql__validateNamedValueName._validateNamedValueName(_np_3707288.name?.__copy__());
                        if (_err_3707215 != null) {
                            _gotoNext = 3707375i32;
                        } else {
                            _gotoNext = 3707405i32;
                        };
                    };
                } else if (__value__ == (3707375i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : _err_3707215 };
                    _gotoNext = 3707405i32;
                } else if (__value__ == (3707405i32)) {
                    _arg_3707244 = _np_3707288.value;
                    _nv_3707266.name = _np_3707288.name?.__copy__();
                    _gotoNext = 3707447i32;
                } else if (__value__ == (3707447i32)) {
                    _nv_3707266.ordinal = (_n_3707230 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _nv_3707266.value = stdgo.Go.toInterface(_arg_3707244);
                    _checker_3707966 = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                    _nextCC_3708002 = false;
                    _gotoNext = 3708020i32;
                } else if (__value__ == (3708020i32)) {
                    if (_nvc_3706805 != null) {
                        _gotoNext = 3708031i32;
                    } else if (_cci_3706902 != null) {
                        _gotoNext = 3708106i32;
                    } else {
                        _gotoNext = 3708161i32;
                    };
                } else if (__value__ == (3708031i32)) {
                    _nextCC_3708002 = _cci_3706902 != null;
                    _checker_3707966 = _nvc_3706805.checkNamedValue;
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708106i32)) {
                    _checker_3707966 = _cc_3706511.checkNamedValue;
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708161i32)) {
                    _gotoNext = 3708161i32;
                    _err_3707215 = _checker_3707966(_nv_3707266);
                    _gotoNext = 3708194i32;
                } else if (__value__ == (3708194i32)) {
                    {
                        final __value__ = _err_3707215;
                        if (__value__ == null) {
                            _gotoNext = 3708209i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errRemoveArgument.errRemoveArgument))) {
                            _gotoNext = 3708240i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errSkip.errSkip))) {
                            _gotoNext = 3708320i32;
                        } else {
                            _gotoNext = 3708482i32;
                        };
                    };
                } else if (__value__ == (3708209i32)) {
                    _n_3707230++;
                    _i_3707251_0++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708240i32)) {
                    _nvargs_3706258 = (_nvargs_3706258.__slice__(0, ((_nvargs_3706258.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    _i_3707251_0++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708320i32)) {
                    if (_nextCC_3708002) {
                        _gotoNext = 3708354i32;
                    } else {
                        _gotoNext = 3708418i32;
                    };
                } else if (__value__ == (3708354i32)) {
                    _nextCC_3708002 = false;
                    _checker_3707966 = _cc_3706511.checkNamedValue;
                    _gotoNext = 3708465i32;
                } else if (__value__ == (3708418i32)) {
                    _gotoNext = 3708418i32;
                    _checker_3707966 = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3708465i32;
                } else if (__value__ == (3708465i32)) {
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708482i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describeNamedValue._describeNamedValue(_nv_3707266)), stdgo.Go.toInterface(_err_3707215)) };
                    _gotoNext = 3707241i32;
                } else if (__value__ == (3708590i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3707251_0 = __tmp__0;
                        _arg_3707244 = __tmp__1;
                    };
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708591i32)) {
                    if (_i_3707251_0 < (_args.length)) {
                        _gotoNext = 3707262i32;
                    } else {
                        _gotoNext = 3708682i32;
                    };
                } else if (__value__ == (3708682i32)) {
                    if (((_want_3706474 != (-1 : stdgo.GoInt)) && (_nvargs_3706258.length != _want_3706474) : Bool)) {
                        _gotoNext = 3708719i32;
                    } else {
                        _gotoNext = 3708808i32;
                    };
                } else if (__value__ == (3708719i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_3706474), stdgo.Go.toInterface((_nvargs_3706258.length))) };
                    _gotoNext = 3708808i32;
                } else if (__value__ == (3708808i32)) {
                    return { _0 : _nvargs_3706258, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
