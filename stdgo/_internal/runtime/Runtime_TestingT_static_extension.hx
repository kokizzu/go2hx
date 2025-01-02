package stdgo._internal.runtime;
@:keep class TestingT_static_extension {
    @:interfacetypeffun
    static public function tempDir(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):stdgo.GoString return t.tempDir();
    @:interfacetypeffun
    static public function skipped(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Bool return t.skipped();
    @:interfacetypeffun
    static public function skipf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    @:interfacetypeffun
    static public function skipNow(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void t.skipNow();
    @:interfacetypeffun
    static public function skip(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    @:interfacetypeffun
    static public function setenv(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _key:stdgo.GoString, _value:stdgo.GoString):Void t.setenv(_key, _value);
    @:interfacetypeffun
    static public function name(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):stdgo.GoString return t.name();
    @:interfacetypeffun
    static public function logf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    @:interfacetypeffun
    static public function log(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    @:interfacetypeffun
    static public function helper(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void t.helper();
    @:interfacetypeffun
    static public function fatalf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    @:interfacetypeffun
    static public function fatal(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    @:interfacetypeffun
    static public function failed(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Bool return t.failed();
    @:interfacetypeffun
    static public function failNow(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void t.failNow();
    @:interfacetypeffun
    static public function fail(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void t.fail();
    @:interfacetypeffun
    static public function errorf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    @:interfacetypeffun
    static public function error(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    @:interfacetypeffun
    static public function cleanup(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _0:() -> Void):Void t.cleanup(_0);
}
