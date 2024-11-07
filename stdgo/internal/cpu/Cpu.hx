package stdgo.internal.cpu;
var debugOptions(get, set) : Bool;
private function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu_debugOptions.debugOptions;
private function set_debugOptions(v:Bool):Bool {
        stdgo._internal.internal.cpu.Cpu_debugOptions.debugOptions = v;
        return v;
    }
var x86(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
private function get_x86():stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0 return stdgo._internal.internal.cpu.Cpu_x86.x86;
private function set_x86(v:stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0):stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0 {
        stdgo._internal.internal.cpu.Cpu_x86.x86 = v;
        return v;
    }
var arm(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
private function get_arm():stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 return stdgo._internal.internal.cpu.Cpu_arm.arm;
private function set_arm(v:stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1):stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 {
        stdgo._internal.internal.cpu.Cpu_arm.arm = v;
        return v;
    }
var arm64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
private function get_arm64():stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 return stdgo._internal.internal.cpu.Cpu_arm64.arm64;
private function set_arm64(v:stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2):stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 {
        stdgo._internal.internal.cpu.Cpu_arm64.arm64 = v;
        return v;
    }
var mips64x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
private function get_mips64x():stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 return stdgo._internal.internal.cpu.Cpu_mips64x.mips64x;
private function set_mips64x(v:stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3):stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 {
        stdgo._internal.internal.cpu.Cpu_mips64x.mips64x = v;
        return v;
    }
var ppc64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
private function get_ppc64():stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 return stdgo._internal.internal.cpu.Cpu_ppc64.ppc64;
private function set_ppc64(v:stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4):stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 {
        stdgo._internal.internal.cpu.Cpu_ppc64.ppc64 = v;
        return v;
    }
var s390x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
private function get_s390x():stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 return stdgo._internal.internal.cpu.Cpu_s390x.s390x;
private function set_s390x(v:stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5):stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 {
        stdgo._internal.internal.cpu.Cpu_s390x.s390x = v;
        return v;
    }
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cacheLinePadSize.cacheLinePadSize;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu_cacheLineSize.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu_cacheLineSize.cacheLineSize = v;
        return v;
    }
var options(get, set) : Array<T_option>;
private function get_options():Array<T_option> return [for (i in stdgo._internal.internal.cpu.Cpu_options.options) i];
private function set_options(v:Array<T_option>):Array<T_option> {
        stdgo._internal.internal.cpu.Cpu_options.options = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.cpu.Cpu_T_option.T_option>);
        return v;
    }
@:structInit abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad) from stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad to stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad {
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad(([for (i in __1) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_option(stdgo._internal.internal.cpu.Cpu_T_option.T_option) from stdgo._internal.internal.cpu.Cpu_T_option.T_option to stdgo._internal.internal.cpu.Cpu_T_option.T_option {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var feature(get, set) : stdgo.Pointer<Bool>;
    function get_feature():stdgo.Pointer<Bool> return this.feature;
    function set_feature(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.feature = v;
        return v;
    }
    public var specified(get, set) : Bool;
    function get_specified():Bool return this.specified;
    function set_specified(v:Bool):Bool {
        this.specified = v;
        return v;
    }
    public var enable(get, set) : Bool;
    function get_enable():Bool return this.enable;
    function set_enable(v:Bool):Bool {
        this.enable = v;
        return v;
    }
    public function new(?name:String, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) this = new stdgo._internal.internal.cpu.Cpu_T_option.T_option(name, feature, specified, enable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
/**
    /|*{
    	gotoNext = 269663
    	_ = gotoNext == 269663
    	_ = 0
    	fieldBreak = false
    	gotoNext = 269671
    	_ = gotoNext == 269671
    	if !fieldBreak && (env != "") {
    		gotoNext = 269685
    		_ = gotoNext == 269685
    		field_269689 = ""
    		i_269703 = indexByte(env, 44)
    		if i_269703 < 0 {
    			gotoNext = 269739
    			_ = gotoNext == 269739
    			field_269689, env = env, ""
    			gotoNext = 269817
    		} else {
    			gotoNext = 269774
    			_ = gotoNext == 269774
    			field_269689, env = env[:i_269703], env[i_269703+1:]
    			gotoNext = 269817
    		}
    		_ = gotoNext == 269817
    		if len(field_269689) < 4 || field_269689[:4] != "cpu." {
    			gotoNext = 269858
    			_ = gotoNext == 269858
    			_ = 0
    			gotoNext = 269671
    			gotoNext = 269878
    		} else {
    			gotoNext = 269878
    		}
    		_ = gotoNext == 269878
    		i_269703 = indexByte(field_269689, 61)
    		if i_269703 < 0 {
    			gotoNext = 269915
    			_ = gotoNext == 269915
    			print("GODEBUG: no value specified for \"", field_269689, "\"\n")
    			_ = 0
    			gotoNext = 269671
    			gotoNext = 269997
    		} else {
    			gotoNext = 269997
    		}
    		_ = gotoNext == 269997
    		key_269997, value_270002 = field_269689[4:i_269703], field_269689[i_269703+1:]
    		_ = 0
    		gotoNext = 270077
    		_ = gotoNext == 270077
    		switch value_270002 {
    		case "on":
    			gotoNext = 270094
    			_ = gotoNext == 270094
    			enable_270063 = true
    			gotoNext = 270278
    		case "off":
    			gotoNext = 270124
    			_ = gotoNext == 270124
    			enable_270063 = false
    			gotoNext = 270278
    		default:
    			gotoNext = 270156
    			_ = gotoNext == 270156
    			print("GODEBUG: value \"", value_270002, "\" not supported for cpu option \"", key_269997, "\"\n")
    			gotoNext = 269671
    			gotoNext = 270278
    		}
    		_ = gotoNext == 270278
    		if key_269997 == "all" {
    			gotoNext = 270294
    			_ = gotoNext == 270294
    			if 0 < len(options) {
    				gotoNext = 270389
    				_ = gotoNext == 270389
    				i_270303 = 0
    				gotoNext = 270390
    				_ = gotoNext == 270390
    				if i_270303 < len(options) {
    					gotoNext = 270322
    					_ = gotoNext == 270322
    					options[i_270303].Specified = true
    					options[i_270303].Enable = enable_270063
    					i_270303++
    					gotoNext = 270390
    				} else {
    					gotoNext = 270395
    				}
    				gotoNext = 270395
    			} else {
    				gotoNext = 270395
    			}
    			_ = gotoNext == 270395
    			gotoNext = 269671
    			gotoNext = 270417
    		} else {
    			gotoNext = 270417
    		}
    		_ = gotoNext == 270417
    		if 0 < len(options) {
    			gotoNext = 270561
    			_ = gotoNext == 270561
    			i_270421 = 0
    			gotoNext = 270562
    			_ = gotoNext == 270562
    			if i_270421 < len(options) {
    				gotoNext = 270440
    				_ = gotoNext == 270440
    				if options[i_270421].Name == key_269997 {
    					gotoNext = 270471
    					_ = gotoNext == 270471
    					options[i_270421].Specified = true
    					options[i_270421].Enable = enable_270063
    					gotoNext = 269671
    					gotoNext = 270421
    				} else {
    					gotoNext = 270421
    				}
    				_ = gotoNext == 270421
    				i_270421++
    				gotoNext = 270562
    			} else {
    				gotoNext = 270567
    			}
    			gotoNext = 270567
    		} else {
    			gotoNext = 270567
    		}
    		_ = gotoNext == 270567
    		print("GODEBUG: unknown cpu feature \"", key_269997, "\"\n")
    		gotoNext = 269671
    	} else {
    		gotoNext = 270626
    	}
    	_ = gotoNext == 270626
    	if 0 < len(options) {
    		gotoNext = 270839
    		_ = gotoNext == 270839
    		i_270638_0, o_270633 = 0, options[0]
    		gotoNext = 270840
    		_ = gotoNext == 270840
    		if i_270638_0 < len(options) {
    			gotoNext = 270652
    			_ = gotoNext == 270652
    			o_270633 = options[i_270638_0]
    			if !o_270633.Specified {
    				gotoNext = 270672
    				_ = gotoNext == 270672
    				i_270638_0++
    				gotoNext = 270840
    				gotoNext = 270693
    			} else {
    				gotoNext = 270693
    			}
    			_ = gotoNext == 270693
    			if o_270633.Enable && !*o_270633.Feature {
    				gotoNext = 270720
    				_ = gotoNext == 270720
    				print("GODEBUG: can not enable \"", o_270633.Name, "\", missing CPU support\n")
    				i_270638_0++
    				gotoNext = 270840
    				gotoNext = 270817
    			} else {
    				gotoNext = 270817
    			}
    			_ = gotoNext == 270817
    			*o_270633.Feature = o_270633.Enable
    			i_270638_0++
    			gotoNext = 270840
    		} else {
    			gotoNext = 270842
    		}
    		gotoNext = 270842
    	} else {
    		gotoNext = 270842
    	}
    	_ = gotoNext == 270842
    	gotoNext = -1
    }*|/
**/
class Cpu {
    /**
        Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
    **/
    static public function initialize(_env:String):Void {
        stdgo._internal.internal.cpu.Cpu_initialize.initialize(_env);
    }
    /**
        Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
        
        Implementations that use the Operating System (e.g. sysctl or /sys/)
        to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public function name():String {
        return stdgo._internal.internal.cpu.Cpu_name.name();
    }
}
