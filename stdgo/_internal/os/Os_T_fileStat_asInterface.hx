package stdgo._internal.os;
class T_fileStat_asInterface {
    @:keep
    @:tdfield
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:keep
    @:tdfield
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return @:_0 __self__.value.modTime();
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_T_fileStatPointer.T_fileStatPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
