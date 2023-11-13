package stdgo.flag_test;
import stdgo.flag.Flag;
import stdgo.flag.Flag;
/**
    // These examples demonstrate more intricate uses of the flag package.
**/
private var __go2hxdoc__package : Bool;
/**
    // Example 1: A single string flag called "species" with default value "gopher".
    
    
**/
var _species : stdgo.Pointer<stdgo.GoString> = stdgo.flag.Flag.string(("species" : stdgo.GoString), ("gopher" : stdgo.GoString), ("the species we are studying" : stdgo.GoString));
/**
    
    
    
**/
var _u : stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL> = (stdgo.Go.setRef((new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL)) : stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL>);
/**
    // Example 2: Two flags sharing a variable, so we can have a shorthand.
    // The order of initialization is undefined, so make sure both use the
    // same default value. They must be set up with an init function.
    
    
**/
var _gopherType = ("" : stdgo.GoString);
/**
    
    
    
**/
var _intervalFlag = new stdgo.flag_test.Flag_test.T_interval(0, 0);
/**
    
    
    
**/
final _defaultOutput : stdgo.GoString = ("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString);
/**
    
    
    
**/
@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
    public var url : stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL> = (null : stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL>);
    public function new(?url:stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL>) {
        if (url != null) this.url = url;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new URLValue(url);
    }
}
/**
    // Declare a user-defined boolean flag type.
    
    
**/
@:structInit @:private @:using(stdgo.flag_test.Flag_test.T_boolFlagVar_static_extension) class T_boolFlagVar {
    public var _count : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_count:stdgo.StdGoTypes.GoInt) {
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_boolFlagVar(_count);
    }
}
/**
    // zeroPanicker is a flag.Value whose String method panics if its dontPanic
    // field is false.
    
    
**/
@:structInit @:private @:using(stdgo.flag_test.Flag_test.T_zeroPanicker_static_extension) class T_zeroPanicker {
    public var _dontPanic : Bool = false;
    public var _v : stdgo.GoString = "";
    public function new(?_dontPanic:Bool, ?_v:stdgo.GoString) {
        if (_dontPanic != null) this._dontPanic = _dontPanic;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroPanicker(_dontPanic, _v);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _flag : stdgo.GoString;
    public var _flagHandle : stdgo.GoString;
    public var _expectExit : stdgo.StdGoTypes.GoInt;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _flag : stdgo.GoString;
    public var _errorMsg : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _flagSetName : stdgo.GoString;
    public var _errorMsg : stdgo.GoString;
};
/**
    // Example 3: A user-defined flag type, a slice of durations.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_interval_static_extension) typedef T_interval = stdgo.Slice<stdgo.time.Time.Duration>;
/**
    // Declare a user-defined flag type.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_flagVar_static_extension) typedef T_flagVar = stdgo.Slice<stdgo.GoString>;
function exampleFunc():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleFunc" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo.os.Os.stdout));
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
        _fs.func(("ip" : stdgo.GoString), ("`IP address` to parse" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ip = stdgo.net.Net.parseIP(_s);
            if (_ip == null) {
                return stdgo.errors.Errors.new_(("could not parse IP" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
    }
function exampleBoolFunc():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleBoolFunc" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo.os.Os.stdout));
        _fs.boolFunc(("log" : stdgo.GoString), ("logs a dummy message" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("dummy message:" : stdgo.GoString)), stdgo.Go.toInterface(_s));
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-log" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-log=0" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
    }
function example():Void {}
function exampleTextVar():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleTextVar" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo.os.Os.stdout));
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
        _fs.textVar(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.StdGoTypes.Ref<stdgo.net.Net.IP>)), ("ip" : stdgo.GoString), stdgo.Go.asInterface(stdgo.net.Net.ipv4((192 : stdgo.StdGoTypes.GoUInt8), (168 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (100 : stdgo.StdGoTypes.GoUInt8))), ("`IP address` to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
        _ip = null;
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
    }
function exampleValue():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleValue" : stdgo.GoString), (1 : stdgo.flag.Flag.ErrorHandling));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new URLValue(_u) : URLValue)) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.URLValue>)), ("url" : stdgo.GoString), ("URL to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-url" : stdgo.GoString), ("https://golang.org/pkg/flag/" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        stdgo.fmt.Fmt.printf(("{scheme: %q, host: %q, path: %q}" : stdgo.GoString), stdgo.Go.toInterface(_u.scheme), stdgo.Go.toInterface(_u.host), stdgo.Go.toInterface(_u.path));
    }
function _boolString(_s:stdgo.GoString):stdgo.GoString {
        if (_s == (("0" : stdgo.GoString))) {
            return ("false" : stdgo.GoString);
        };
        return ("true" : stdgo.GoString);
    }
function testEverything(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(null);
        bool_(("test_bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        int_(("test_int" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), ("int value" : stdgo.GoString));
        int64(("test_int64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), ("int64 value" : stdgo.GoString));
        uint(("test_uint" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt), ("uint value" : stdgo.GoString));
        uint64(("test_uint64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), ("uint64 value" : stdgo.GoString));
        string(("test_string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        float64(("test_float64" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoFloat64), ("float64 value" : stdgo.GoString));
        duration(("test_duration" : stdgo.GoString), (0i64 : stdgo.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        func(("test_func" : stdgo.GoString), ("func value" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        boolFunc(("test_boolfunc" : stdgo.GoString), ("func" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
        var _desired:stdgo.GoString = ("0" : stdgo.GoString);
        var _visitor = function(_f:stdgo.StdGoTypes.Ref<Flag>):Void {
            if ((_f.name.length > (5 : stdgo.StdGoTypes.GoInt)) && ((_f.name.__slice__((0 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString))) {
                _m[_f.name] = _f;
                var _ok:Bool = false;
                if ((_f.value.string() : stdgo.GoString) == (_desired)) {
                    _ok = true;
                } else if ((_f.name == ("test_bool" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == _boolString(_desired))) {
                    _ok = true;
                } else if ((_f.name == ("test_duration" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == (_desired + ("s" : stdgo.GoString)))) {
                    _ok = true;
                } else if ((_f.name == ("test_func" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str())) {
                    _ok = true;
                } else if ((_f.name == ("test_boolfunc" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str())) {
                    _ok = true;
                };
                if (!_ok) {
                    _t.error(stdgo.Go.toInterface(("Visit: bad value" : stdgo.GoString)), stdgo.Go.toInterface((_f.value.string() : stdgo.GoString)), stdgo.Go.toInterface(("for" : stdgo.GoString)), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
        if ((_m.length) != ((10 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("VisitAll misses some flags" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
        visit(_visitor);
        if ((_m.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("Visit sees unset flags" : stdgo.GoString));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        set(("test_bool" : stdgo.GoString), ("true" : stdgo.GoString));
        set(("test_int" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_int64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_uint" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_uint64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_string" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_float64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_duration" : stdgo.GoString), ("1s" : stdgo.GoString));
        set(("test_func" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_boolfunc" : stdgo.GoString), stdgo.Go.str());
        _desired = ("1" : stdgo.GoString);
        visit(_visitor);
        if ((_m.length) != ((10 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("Visit fails after set" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        var _flagNames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        visit(function(_f:stdgo.StdGoTypes.Ref<Flag>):Void {
            _flagNames = (_flagNames.__append__(_f.name));
        });
        if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
            _t.errorf(("flag names not sorted: %v" : stdgo.GoString), stdgo.Go.toInterface(_flagNames));
        };
    }
function testGet(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(null);
        bool_(("test_bool" : stdgo.GoString), true, ("bool value" : stdgo.GoString));
        int_(("test_int" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt), ("int value" : stdgo.GoString));
        int64(("test_int64" : stdgo.GoString), (2i64 : stdgo.StdGoTypes.GoInt64), ("int64 value" : stdgo.GoString));
        uint(("test_uint" : stdgo.GoString), (3u32 : stdgo.StdGoTypes.GoUInt), ("uint value" : stdgo.GoString));
        uint64(("test_uint64" : stdgo.GoString), (4i64 : stdgo.StdGoTypes.GoUInt64), ("uint64 value" : stdgo.GoString));
        string(("test_string" : stdgo.GoString), ("5" : stdgo.GoString), ("string value" : stdgo.GoString));
        float64(("test_float64" : stdgo.GoString), (6 : stdgo.StdGoTypes.GoFloat64), ("float64 value" : stdgo.GoString));
        duration(("test_duration" : stdgo.GoString), (7i64 : stdgo.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        var _visitor = function(_f:stdgo.StdGoTypes.Ref<Flag>):Void {
            if ((_f.name.length > (5 : stdgo.StdGoTypes.GoInt)) && ((_f.name.__slice__((0 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString))) {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.value) : Getter)) : Getter), ok : true };
                } catch(_) {
                    { value : (null : stdgo.flag.Flag.Getter), ok : false };
                }, _g = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.errorf(("Visit: value does not satisfy Getter: %T" : stdgo.GoString), stdgo.Go.toInterface(_f.value));
                    return;
                };
                {
                    final __value__ = _f.name;
                    if (__value__ == (("test_bool" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(true));
                    } else if (__value__ == (("test_int" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)));
                    } else if (__value__ == (("test_int64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((2i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt64)));
                    } else if (__value__ == (("test_uint" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((3u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoUInt)));
                    } else if (__value__ == (("test_uint64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((4i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt64)));
                    } else if (__value__ == (("test_string" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(("5" : stdgo.GoString)));
                    } else if (__value__ == (("test_float64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface((6 : stdgo.StdGoTypes.GoFloat64)));
                    } else if (__value__ == (("test_duration" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(stdgo.Go.asInterface((7i64 : stdgo.time.Time.Duration))));
                    };
                };
                if (!_ok) {
                    _t.errorf(("Visit: bad value %T(%v) for %s" : stdgo.GoString), _g.get(), _g.get(), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
    }
function testUsage(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _called:Bool = false;
        resetForTesting(function():Void {
            _called = true;
        });
        if (commandLine.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) == null) {
            _t.error(stdgo.Go.toInterface(("parse did not fail for unknown flag" : stdgo.GoString)));
        };
        if (!_called) {
            _t.error(stdgo.Go.toInterface(("did not call Usage for unknown flag" : stdgo.GoString)));
        };
    }
function _testParse(_f:stdgo.StdGoTypes.Ref<FlagSet>, _t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = true before Parse" : stdgo.GoString)));
        };
        var _boolFlag = _f.bool_(("bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        var _bool2Flag = _f.bool_(("bool2" : stdgo.GoString), false, ("bool2 value" : stdgo.GoString));
        var _intFlag = _f.int_(("int" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), ("int value" : stdgo.GoString));
        var _int64Flag = _f.int64(("int64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), ("int64 value" : stdgo.GoString));
        var _uintFlag = _f.uint(("uint" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt), ("uint value" : stdgo.GoString));
        var _uint64Flag = _f.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), ("uint64 value" : stdgo.GoString));
        var _stringFlag = _f.string(("string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        var _float64Flag = _f.float64(("float64" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoFloat64), ("float64 value" : stdgo.GoString));
        var _durationFlag = _f.duration(("duration" : stdgo.GoString), (5000000000i64 : stdgo.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        var _extra:stdgo.GoString = ("one-extra-argument" : stdgo.GoString);
        var _args = (new stdgo.Slice<stdgo.GoString>(
17,
17,
("-bool" : stdgo.GoString),
("-bool2=true" : stdgo.GoString),
("--int" : stdgo.GoString),
("22" : stdgo.GoString),
("--int64" : stdgo.GoString),
("0x23" : stdgo.GoString),
("-uint" : stdgo.GoString),
("24" : stdgo.GoString),
("--uint64" : stdgo.GoString),
("25" : stdgo.GoString),
("-string" : stdgo.GoString),
("hello" : stdgo.GoString),
("-float64" : stdgo.GoString),
("2718e28" : stdgo.GoString),
("-duration" : stdgo.GoString),
("2m" : stdgo.GoString),
_extra) : stdgo.Slice<stdgo.GoString>);
        {
            var _err:stdgo.Error = _f.parse(_args);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (!_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = false after Parse" : stdgo.GoString)));
        };
        if (_boolFlag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_boolFlag.value));
        };
        if (_bool2Flag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool2 flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_bool2Flag.value));
        };
        if (_intFlag.value != ((22 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("int flag should be 22, is " : stdgo.GoString)), stdgo.Go.toInterface(_intFlag.value));
        };
        if (_int64Flag.value != ((35i64 : stdgo.StdGoTypes.GoInt64))) {
            _t.error(stdgo.Go.toInterface(("int64 flag should be 0x23, is " : stdgo.GoString)), stdgo.Go.toInterface(_int64Flag.value));
        };
        if (_uintFlag.value != ((24u32 : stdgo.StdGoTypes.GoUInt))) {
            _t.error(stdgo.Go.toInterface(("uint flag should be 24, is " : stdgo.GoString)), stdgo.Go.toInterface(_uintFlag.value));
        };
        if (_uint64Flag.value != ((25i64 : stdgo.StdGoTypes.GoUInt64))) {
            _t.error(stdgo.Go.toInterface(("uint64 flag should be 25, is " : stdgo.GoString)), stdgo.Go.toInterface(_uint64Flag.value));
        };
        if (_stringFlag.value != (("hello" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("string flag should be `hello`, is " : stdgo.GoString)), stdgo.Go.toInterface(_stringFlag.value));
        };
        if (_float64Flag.value != (2.718e+31 : stdgo.StdGoTypes.GoFloat64)) {
            _t.error(stdgo.Go.toInterface(("float64 flag should be 2718e28, is " : stdgo.GoString)), stdgo.Go.toInterface(_float64Flag.value));
        };
        if (_durationFlag.value != ((120000000000i64 : stdgo.time.Time.Duration))) {
            _t.error(stdgo.Go.toInterface(("duration flag should be 2m, is " : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_durationFlag.value)));
        };
        if ((_f.args().length) != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected one argument, got" : stdgo.GoString)), stdgo.Go.toInterface((_f.args().length)));
        } else if (_f.args()[(0 : stdgo.StdGoTypes.GoInt)] != (_extra)) {
            _t.errorf(("expected argument %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_extra), stdgo.Go.toInterface(_f.args()[(0 : stdgo.StdGoTypes.GoInt)]));
        };
    }
function testParse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(function():Void {
            _t.error(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
        });
        _testParse(commandLine, _t);
    }
function testFlagSetParse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testParse(newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling)), _t);
    }
function testUserDefined(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("v" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v" : stdgo.GoString), ("2" : stdgo.GoString), ("-v=3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_v.length) != ((3 : stdgo.StdGoTypes.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("expected 3 args; got " : stdgo.GoString)), stdgo.Go.toInterface((_v.length)));
        };
        var _expect:stdgo.GoString = ("[1 2 3]" : stdgo.GoString);
        if ((_v.string() : stdgo.GoString) != (_expect)) {
            _t.errorf(("expected value %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_v.string() : stdgo.GoString)));
        };
    }
function testUserDefinedFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _flags.func(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ss = (_ss.__append__(_s));
            return (null : stdgo.Error);
        });
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v" : stdgo.GoString), ("2" : stdgo.GoString), ("-v=3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((3 : stdgo.StdGoTypes.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("expected 3 args; got " : stdgo.GoString)), stdgo.Go.toInterface((_ss.length)));
        };
        var _expect:stdgo.GoString = ("[1 2 3]" : stdgo.GoString);
        {
            var _got:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_ss));
            if (_got != (_expect)) {
                _t.errorf(("expected value %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got));
            };
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-h" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        {
            var _usage:stdgo.GoString = (_buf.string() : stdgo.GoString);
            if (!stdgo.strings.Strings.contains(_usage, ("usage" : stdgo.GoString))) {
                _t.errorf(("usage string not included: %q" : stdgo.GoString), stdgo.Go.toInterface(_usage));
            };
        };
        _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        _flags.func(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            return stdgo.fmt.Fmt.errorf(("test error" : stdgo.GoString));
        });
        {
            var _err:stdgo.Error = _flags.parse((null : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-v" : stdgo.GoString), ("1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
            } else {
                var _errMsg:stdgo.GoString = _err.error();
                if (!stdgo.strings.Strings.contains(_errMsg, ("test error" : stdgo.GoString))) {
                    _t.errorf(("error should contain \"test error\"; got %q" : stdgo.GoString), stdgo.Go.toInterface(_errMsg));
                };
            };
        };
    }
function testUserDefinedForCommandLine(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _result:stdgo.GoString = ("" : stdgo.GoString);
        resetForTesting(function():Void {
            _result = ("HELP" : stdgo.GoString);
        });
        usage();
        if (_result != (("HELP" : stdgo.GoString))) {
            _t.fatalf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(("HELP" : stdgo.GoString)));
        };
    }
function testUserDefinedBool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
        var _err:stdgo.Error = (null : stdgo.Error);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>)), ("b" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            _err = _flags.parse((new stdgo.Slice<stdgo.GoString>(8, 8, ("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b=true" : stdgo.GoString), ("-b=false" : stdgo.GoString), ("-b" : stdgo.GoString), ("barg" : stdgo.GoString), ("-b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                if (_b._count < (4 : stdgo.StdGoTypes.GoInt)) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        };
        if (_b._count != ((4 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want: %d; got: %d" : stdgo.GoString), stdgo.Go.toInterface((4 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_b._count));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
    }
function testUserDefinedBoolUsage(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>)), ("b" : stdgo.GoString), ("X" : stdgo.GoString));
        _b._count = (0 : stdgo.StdGoTypes.GoInt);
        _flags.printDefaults();
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString);
        var _want:stdgo.GoString = ("  -b\tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _b._count = (4 : stdgo.StdGoTypes.GoInt);
        _flags.printDefaults();
        _got = (_buf.string() : stdgo.GoString);
        _want = ("  -b\tX\n  -b value\n    \tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
function testSetOutput(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
        _flags.init(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-unknown" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        {
            var _out:stdgo.GoString = (_buf.string() : stdgo.GoString);
            if (!stdgo.strings.Strings.contains(_out, ("-unknown" : stdgo.GoString))) {
                _t.logf(("expected output mentioning unknown; got %q" : stdgo.GoString), stdgo.Go.toInterface(_out));
            };
        };
    }
/**
    // This tests that one can reset the flags. This still works but not well, and is
    // superseded by FlagSet.
**/
function testChangingArgs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(function():Void {
                _t.fatal(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
            });
            var _oldArgs = stdgo.os.Os.args;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.os.Os.args = _oldArgs;
                };
                a();
            });
            stdgo.os.Os.args = (new stdgo.Slice<stdgo.GoString>(5, 5, ("cmd" : stdgo.GoString), ("-before" : stdgo.GoString), ("subcmd" : stdgo.GoString), ("-after" : stdgo.GoString), ("args" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            var _before = bool_(("before" : stdgo.GoString), false, stdgo.Go.str());
            {
                var _err:stdgo.Error = commandLine.parse((stdgo.os.Os.args.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _cmd:stdgo.GoString = arg((0 : stdgo.StdGoTypes.GoInt));
            stdgo.os.Os.args = args();
            var _after = bool_(("after" : stdgo.GoString), false, stdgo.Go.str());
            parse();
            var _args = args();
            if ((((!_before.value || (_cmd != ("subcmd" : stdgo.GoString))) || !_after.value) || (_args.length != (1 : stdgo.StdGoTypes.GoInt))) || (_args[(0 : stdgo.StdGoTypes.GoInt)] != ("args" : stdgo.GoString))) {
                _t.fatalf(("expected true subcmd true [args] got %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(_before.value), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_after.value), stdgo.Go.toInterface(_args));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // Test that -help invokes the usage message and returns ErrHelp.
**/
function testHelp(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _helpCalled:Bool = false;
        var _fs = newFlagSet(("help test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.usage = function():Void {
            _helpCalled = true;
        };
        var _flag:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_flag), ("flag" : stdgo.GoString), false, ("regular flag" : stdgo.GoString));
        var _err:stdgo.Error = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-flag=true" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_flag) {
            _t.error(stdgo.Go.toInterface(("flag was not set by -flag" : stdgo.GoString)));
        };
        if (_helpCalled) {
            _t.error(stdgo.Go.toInterface(("help called for regular flag" : stdgo.GoString)));
            _helpCalled = false;
        };
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-help" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("error expected" : stdgo.GoString)));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errHelp))) {
            _t.fatal(stdgo.Go.toInterface(("expected ErrHelp; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was not called" : stdgo.GoString)));
        };
        var _help:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_help), ("help" : stdgo.GoString), false, ("help flag" : stdgo.GoString));
        _helpCalled = false;
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-help" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error for defined -help; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was called; should not have been for defined help flag" : stdgo.GoString)));
        };
    }
function testPrintDefaults(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fs = newFlagSet(("print defaults test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _fs.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
        _fs.bool_(("A" : stdgo.GoString), false, ("for bootstrapping, allow \'any\' type" : stdgo.GoString));
        _fs.bool_(("Alongflagname" : stdgo.GoString), false, ("disable bounds checking" : stdgo.GoString));
        _fs.bool_(("C" : stdgo.GoString), true, ("a boolean defaulting to true" : stdgo.GoString));
        _fs.string(("D" : stdgo.GoString), stdgo.Go.str(), ("set relative `path` for local imports" : stdgo.GoString));
        _fs.string(("E" : stdgo.GoString), ("0" : stdgo.GoString), ("issue 23543" : stdgo.GoString));
        _fs.float64(("F" : stdgo.GoString), (2.7 : stdgo.StdGoTypes.GoFloat64), ("a non-zero `number`" : stdgo.GoString));
        _fs.float64(("G" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoFloat64), ("a float that defaults to zero" : stdgo.GoString));
        _fs.string(("M" : stdgo.GoString), stdgo.Go.str(), ("a multiline\nhelp\nstring" : stdgo.GoString));
        _fs.int_(("N" : stdgo.GoString), (27 : stdgo.StdGoTypes.GoInt), ("a non-zero int" : stdgo.GoString));
        _fs.bool_(("O" : stdgo.GoString), true, ("a flag\nmultiline help string" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.flag_test.Flag_test.T_flagVar)) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("V" : stdgo.GoString), ("a `list` of strings" : stdgo.GoString));
        _fs.int_(("Z" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), ("an int that defaults to zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new T_zeroPanicker(true, stdgo.Go.str()) : T_zeroPanicker)) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)), ("ZP0" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new T_zeroPanicker(true, ("something" : stdgo.GoString)) : T_zeroPanicker)) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)), ("ZP1" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.duration(("maxT" : stdgo.GoString), (0i64 : stdgo.time.Time.Duration), ("set `timeout` for dial" : stdgo.GoString));
        _fs.printDefaults();
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString);
        if (_got != (("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString))) {
            _t.errorf(("got:\n%q\nwant:\n%q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString)));
        };
    }
/**
    // Issue 19230: validate range of Int and Uint flag values.
**/
function testIntFlagOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            return;
        };
        resetForTesting(null);
        int_(("i" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), stdgo.Go.str());
        uint(("u" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt), stdgo.Go.str());
        {
            var _err:stdgo.Error = set(("i" : stdgo.GoString), ("2147483648" : stdgo.GoString));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Int" : stdgo.GoString)));
            };
        };
        {
            var _err:stdgo.Error = set(("u" : stdgo.GoString), ("4294967296" : stdgo.GoString));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Uint" : stdgo.GoString)));
            };
        };
    }
/**
    // Issue 20998: Usage should respect CommandLine.output.
**/
function testUsageOutput(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(defaultUsage);
            var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            commandLine.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
            {
                var _a0 = stdgo.os.Os.args;
                __deferstack__.unshift(() -> {
                    var a = function(_old:stdgo.Slice<stdgo.GoString>):Void {
                        stdgo.os.Os.args = _old;
                    };
                    a(_a0);
                });
            };
            stdgo.os.Os.args = (new stdgo.Slice<stdgo.GoString>(3, 3, ("app" : stdgo.GoString), ("-i=1" : stdgo.GoString), ("-unknown" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            parse();
            {};
            {
                var _got:stdgo.GoString = (_buf.string() : stdgo.GoString);
                if (_got != (("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString))) {
                    _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString)));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testGetters(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _expectedName:stdgo.GoString = ("flag set" : stdgo.GoString);
        var _expectedErrorHandling:stdgo.flag.Flag.ErrorHandling = (0 : stdgo.flag.Flag.ErrorHandling);
        var _expectedOutput:stdgo.io.Io.Writer = stdgo.Go.asInterface(stdgo.os.Os.stderr);
        var _fs = newFlagSet(_expectedName, _expectedErrorHandling);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %#v, expected %#v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
        _expectedName = ("gopher" : stdgo.GoString);
        _expectedErrorHandling = (1 : stdgo.flag.Flag.ErrorHandling);
        _expectedOutput = stdgo.Go.asInterface(stdgo.os.Os.stdout);
        _fs.init(_expectedName, _expectedErrorHandling);
        _fs.setOutput(_expectedOutput);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
    }
function testParseError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _typ in (new stdgo.Slice<stdgo.GoString>(7, 7, ("bool" : stdgo.GoString), ("int" : stdgo.GoString), ("int64" : stdgo.GoString), ("uint" : stdgo.GoString), ("uint64" : stdgo.GoString), ("float64" : stdgo.GoString), ("duration" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            var _fs = newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.bool_(("bool" : stdgo.GoString), false, stdgo.Go.str());
            _fs.int_(("int" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), stdgo.Go.str());
            _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), stdgo.Go.str());
            _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt), stdgo.Go.str());
            _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), stdgo.Go.str());
            _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoFloat64), stdgo.Go.str());
            _fs.duration(("duration" : stdgo.GoString), (0i64 : stdgo.time.Time.Duration), stdgo.Go.str());
            var _args = (new stdgo.Slice<stdgo.GoString>(1, 1, (("-" : stdgo.GoString) + _typ) + ("=x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            var _err:stdgo.Error = _fs.parse(_args);
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ("invalid" : stdgo.GoString)) || !stdgo.strings.Strings.contains(_err.error(), ("parse error" : stdgo.GoString))) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
            };
        };
    }
function testRangeError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(5, 5, ("-int=123456789012345678901" : stdgo.GoString), ("-int64=123456789012345678901" : stdgo.GoString), ("-uint=123456789012345678901" : stdgo.GoString), ("-uint64=123456789012345678901" : stdgo.GoString), ("-float64=1e1000" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _arg in _bad) {
            var _fs = newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.int_(("int" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), stdgo.Go.str());
            _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), stdgo.Go.str());
            _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt), stdgo.Go.str());
            _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), stdgo.Go.str());
            _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoFloat64), stdgo.Go.str());
            var _err:stdgo.Error = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, _arg) : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ("invalid" : stdgo.GoString)) || !stdgo.strings.Strings.contains(_err.error(), ("value out of range" : stdgo.GoString))) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
            };
        };
    }
function testExitCode(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        var _magic:stdgo.StdGoTypes.GoInt = (123 : stdgo.StdGoTypes.GoInt);
        if (stdgo.os.Os.getenv(("GO_CHILD_FLAG" : stdgo.GoString)) != (stdgo.Go.str())) {
            var _fs = newFlagSet(("test" : stdgo.GoString), (1 : stdgo.flag.Flag.ErrorHandling));
            if (stdgo.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString)) != (stdgo.Go.str())) {
                var _b:Bool = false;
                _fs.boolVar(stdgo.Go.pointer(_b), stdgo.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString)), false, stdgo.Go.str());
            };
            _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.os.Os.getenv(("GO_CHILD_FLAG" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>));
            Sys.exit(_magic);
        };
        var _tests = (new stdgo.Slice<T__struct_0>(5, 5, ({ _flag : ("-h" : stdgo.GoString), _flagHandle : ("" : stdgo.GoString), _expectExit : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _flagHandle : ("" : stdgo.GoString), _expectExit : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_0), ({ _flag : ("-undefined" : stdgo.GoString), _flagHandle : ("" : stdgo.GoString), _expectExit : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_0), ({ _flag : ("-h" : stdgo.GoString), _flagHandle : ("h" : stdgo.GoString), _expectExit : _magic } : T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _flagHandle : ("help" : stdgo.GoString), _expectExit : _magic } : T__struct_0)) : stdgo.Slice<T__struct_0>);
        for (__0 => _test in _tests) {
            var _cmd = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : stdgo.StdGoTypes.GoInt)], ("-test.run=TestExitCode" : stdgo.GoString));
            _cmd.env = (stdgo.os.Os.environ().__append__(("GO_CHILD_FLAG=" : stdgo.GoString) + _test._flag, ("GO_CHILD_FLAG_HANDLE=" : stdgo.GoString) + _test._flagHandle));
            _cmd.run();
            var _got:stdgo.StdGoTypes.GoInt = _cmd.processState.exitCode();
            if (false && (_test._expectExit != (0 : stdgo.StdGoTypes.GoInt))) {
                _test._expectExit = (1 : stdgo.StdGoTypes.GoInt);
            };
            if (_got != (_test._expectExit)) {
                _t.errorf(("unexpected exit code for test case %+v \n: got %d, expect %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._expectExit));
            };
        };
    }
function _mustPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _testName:stdgo.GoString, _expected:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _msg:stdgo.StdGoTypes.AnyInterface = __type__ == null ? (null : stdgo.StdGoTypes.AnyInterface) : __type__.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but did not panic" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            var _msg:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                            {
                                var __tmp__ = stdgo.regexp.Regexp.matchString(_expected, _msg), _ok:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                                if (!_ok) {
                                    _t.errorf(("%s\n: expected panic(%q), but got panic(%q)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_msg));
                                };
                            };
                        } else {
                            var _msg:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but got panic(%T%v)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), _msg, _msg);
                        };
                    };
                };
                a();
            });
            _f();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testInvalidFlags(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_1>(2, 2, ({ _flag : ("-foo" : stdgo.GoString), _errorMsg : ("flag \"-foo\" begins with -" : stdgo.GoString) } : T__struct_1), ({ _flag : ("foo=bar" : stdgo.GoString), _errorMsg : ("flag \"foo=bar\" contains =" : stdgo.GoString) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        for (__0 => _test in _tests) {
            var _testName:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("FlagSet.Var(&v, %q, \"\")" : stdgo.GoString), stdgo.Go.toInterface(_test._flag));
            var _fs = newFlagSet(stdgo.Go.str(), (0 : stdgo.flag.Flag.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_flagVar>)), _test._flag, stdgo.Go.str());
            });
            {
                var _msg:stdgo.GoString = _test._errorMsg + ("\n" : stdgo.GoString);
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
function testRedefinedFlags(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(2, 2, ({ _flagSetName : stdgo.Go.str(), _errorMsg : ("flag redefined: foo" : stdgo.GoString) } : T__struct_2), ({ _flagSetName : ("fs" : stdgo.GoString), _errorMsg : ("fs flag redefined: foo" : stdgo.GoString) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            var _testName:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("flag redefined in FlagSet(%q)" : stdgo.GoString), stdgo.Go.toInterface(_test._flagSetName));
            var _fs = newFlagSet(_test._flagSetName, (0 : stdgo.flag.Flag.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
            _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str());
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str());
            });
            {
                var _msg:stdgo.GoString = _test._errorMsg + ("\n" : stdgo.GoString);
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
function testUserDefinedBoolFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ss = (_ss.__append__(_s));
            return (null : stdgo.Error);
        });
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ("-v" : stdgo.GoString), stdgo.Go.str(), ("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v=2" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("got %d args; want 1 arg" : stdgo.GoString), stdgo.Go.toInterface((_ss.length)));
        };
        var _want:stdgo.GoString = ("[true]" : stdgo.GoString);
        {
            var _got:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_ss));
            if (_got != (_want)) {
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ("-h" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>));
        {
            var _usage:stdgo.GoString = (_buf.string() : stdgo.GoString);
            if (!stdgo.strings.Strings.contains(_usage, ("usage" : stdgo.GoString))) {
                _t.errorf(("usage string not included: %q" : stdgo.GoString), stdgo.Go.toInterface(_usage));
            };
        };
        _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            return stdgo.fmt.Fmt.errorf(("test error" : stdgo.GoString));
        });
        {
            var _err:stdgo.Error = _flags.parse((null : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ("-v" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("got err == nil; want err != nil" : stdgo.GoString)));
            } else {
                var _errMsg:stdgo.GoString = _err.error();
                if (!stdgo.strings.Strings.contains(_errMsg, ("test error" : stdgo.GoString))) {
                    _t.errorf(("got %q; error should contain \"test error\"" : stdgo.GoString), stdgo.Go.toInterface(_errMsg));
                };
            };
        };
    }
function testDefineAfterSet(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.set(("myFlag" : stdgo.GoString), ("value" : stdgo.GoString));
        _mustPanic(_t, ("DefineAfterSet" : stdgo.GoString), ("flag myFlag set at .*/flag_test.go:.* before being defined" : stdgo.GoString), function():Void {
            _flags.string(("myFlag" : stdgo.GoString), ("default" : stdgo.GoString), ("usage" : stdgo.GoString));
        });
    }
@:keep var _ = {
        try {
            {};
            stdgo.flag.Flag.stringVar(stdgo.Go.pointer(_gopherType), ("gopher_type" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher" : stdgo.GoString));
            stdgo.flag.Flag.stringVar(stdgo.Go.pointer(_gopherType), ("g" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher (shorthand)" : stdgo.GoString));
            stdgo.flag.Flag.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_intervalFlag) : stdgo.StdGoTypes.Ref<stdgo.flag_test.Flag_test.T_interval>)), ("deltaT" : stdgo.GoString), ("comma-separated list of intervals to use between events" : stdgo.GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class URLValue_asInterface {
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<URLValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.URLValue_asInterface) class URLValue_static_extension {
    @:keep
    static public function set( _v:URLValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:URLValue = _v?.__copy__();
        {
            var __tmp__ = stdgo.net.url.Url.parse(_s), _u:stdgo.StdGoTypes.Ref<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            } else {
                {
                    var __tmp__ = (_u : stdgo.net.url.Url.URL)?.__copy__();
                    _v.url.scheme = __tmp__.scheme;
                    _v.url.opaque = __tmp__.opaque;
                    _v.url.user = __tmp__.user;
                    _v.url.host = __tmp__.host;
                    _v.url.path = __tmp__.path;
                    _v.url.rawPath = __tmp__.rawPath;
                    _v.url.omitHost = __tmp__.omitHost;
                    _v.url.forceQuery = __tmp__.forceQuery;
                    _v.url.rawQuery = __tmp__.rawQuery;
                    _v.url.fragment = __tmp__.fragment;
                    _v.url.rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _v:URLValue):stdgo.GoString {
        @:recv var _v:URLValue = _v?.__copy__();
        if (_v.url != null && ((_v.url : Dynamic).__nil__ == null || !(_v.url : Dynamic).__nil__)) {
            return (_v.url.string() : stdgo.GoString);
        };
        return stdgo.Go.str();
    }
}
class T_boolFlagVar_asInterface {
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolFlagVar>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_boolFlagVar_asInterface) class T_boolFlagVar_static_extension {
    @:keep
    static public function isBoolFlag( _b:stdgo.StdGoTypes.Ref<T_boolFlagVar>):Bool {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_boolFlagVar> = _b;
        return _b._count < (4 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function set( _b:stdgo.StdGoTypes.Ref<T_boolFlagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_boolFlagVar> = _b;
        if (_value == (("true" : stdgo.GoString))) {
            _b._count++;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _b:stdgo.StdGoTypes.Ref<T_boolFlagVar>):stdgo.GoString {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_boolFlagVar> = _b;
        return stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_b._count));
    }
}
class T_zeroPanicker_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_zeroPanicker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_zeroPanicker_asInterface) class T_zeroPanicker_static_extension {
    @:keep
    static public function string( _f:stdgo.StdGoTypes.Ref<T_zeroPanicker>):stdgo.GoString {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_zeroPanicker> = _f;
        if (!_f._dontPanic) {
            throw stdgo.Go.toInterface(("panic!" : stdgo.GoString));
        };
        return _f._v;
    }
    @:keep
    static public function set( _f:stdgo.StdGoTypes.Ref<T_zeroPanicker>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_zeroPanicker> = _f;
        _f._v = _s;
        return (null : stdgo.Error);
    }
}
class T_interval_asInterface {
    /**
        // Set is the method to set the flag value, part of the flag.Value interface.
        // Set's argument is a string to be parsed to set the flag.
        // It's a comma-separated list, so we split it.
    **/
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    /**
        // String is the method to format the flag's value, part of the flag.Value interface.
        // The String method's output will be used in diagnostics.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_interval>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_interval_asInterface) class T_interval_static_extension {
    /**
        // Set is the method to set the flag value, part of the flag.Value interface.
        // Set's argument is a string to be parsed to set the flag.
        // It's a comma-separated list, so we split it.
    **/
    @:keep
    static public function set( _i:stdgo.StdGoTypes.Ref<T_interval>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _i:stdgo.StdGoTypes.Ref<T_interval> = _i;
        if (((_i : stdgo.flag_test.Flag_test.T_interval).length) > (0 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.errors.Errors.new_(("interval flag already set" : stdgo.GoString));
        };
        for (__0 => _dt in stdgo.strings.Strings.split(_value, ("," : stdgo.GoString))) {
            var __tmp__ = stdgo.time.Time.parseDuration(_dt), _duration:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _i.__setData__(((_i : stdgo.flag_test.Flag_test.T_interval).__append__(_duration)));
        };
        return (null : stdgo.Error);
    }
    /**
        // String is the method to format the flag's value, part of the flag.Value interface.
        // The String method's output will be used in diagnostics.
    **/
    @:keep
    static public function string( _i:stdgo.StdGoTypes.Ref<T_interval>):stdgo.GoString {
        @:recv var _i:stdgo.StdGoTypes.Ref<T_interval> = _i;
        return stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface((_i : stdgo.flag_test.Flag_test.T_interval))));
    }
}
class T_flagVar_asInterface {
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_flagVar>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_flagVar_asInterface) class T_flagVar_static_extension {
    @:keep
    static public function set( _f:stdgo.StdGoTypes.Ref<T_flagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_flagVar> = _f;
        _f.__setData__(((_f : stdgo.flag_test.Flag_test.T_flagVar).__append__(_value)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _f:stdgo.StdGoTypes.Ref<T_flagVar>):stdgo.GoString {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_flagVar> = _f;
        return stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(((_f : stdgo.flag_test.Flag_test.T_flagVar) : stdgo.Slice<stdgo.GoString>)));
    }
}
