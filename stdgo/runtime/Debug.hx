package stdgo.runtime;
/**
    Package debug contains facilities for programs to debug themselves while
    they are running.
**/
private var __go2hxdoc__package : Bool;
abstract GCStats(stdgo._internal.runtime.debug.Debug.GCStats) from stdgo._internal.runtime.debug.Debug.GCStats to stdgo._internal.runtime.debug.Debug.GCStats {
    public var lastGC(get, set) : stdgo._internal.time.Time.Time;
    function get_lastGC():stdgo._internal.time.Time.Time return this.lastGC;
    function set_lastGC(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this.lastGC = v;
        return v;
    }
    public var numGC(get, set) : haxe.Int64;
    function get_numGC():haxe.Int64 return this.numGC;
    function set_numGC(v:haxe.Int64):haxe.Int64 {
        this.numGC = v;
        return v;
    }
    public var pauseTotal(get, set) : stdgo._internal.time.Time.Duration;
    function get_pauseTotal():stdgo._internal.time.Time.Duration return this.pauseTotal;
    function set_pauseTotal(v:stdgo._internal.time.Time.Duration):stdgo._internal.time.Time.Duration {
        this.pauseTotal = v;
        return v;
    }
    public var pause(get, set) : Array<stdgo._internal.time.Time.Duration>;
    function get_pause():Array<stdgo._internal.time.Time.Duration> return [for (i in this.pause) i];
    function set_pause(v:Array<stdgo._internal.time.Time.Duration>):Array<stdgo._internal.time.Time.Duration> {
        this.pause = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        return v;
    }
    public var pauseEnd(get, set) : Array<stdgo._internal.time.Time.Time>;
    function get_pauseEnd():Array<stdgo._internal.time.Time.Time> return [for (i in this.pauseEnd) i];
    function set_pauseEnd(v:Array<stdgo._internal.time.Time.Time>):Array<stdgo._internal.time.Time.Time> {
        this.pauseEnd = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time.Time>);
        return v;
    }
    public var pauseQuantiles(get, set) : Array<stdgo._internal.time.Time.Duration>;
    function get_pauseQuantiles():Array<stdgo._internal.time.Time.Duration> return [for (i in this.pauseQuantiles) i];
    function set_pauseQuantiles(v:Array<stdgo._internal.time.Time.Duration>):Array<stdgo._internal.time.Time.Duration> {
        this.pauseQuantiles = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        return v;
    }
    public function new(?lastGC:stdgo._internal.time.Time.Time, ?numGC:haxe.Int64, ?pauseTotal:stdgo._internal.time.Time.Duration, ?pause:Array<stdgo._internal.time.Time.Duration>, ?pauseEnd:Array<stdgo._internal.time.Time.Time>, ?pauseQuantiles:Array<stdgo._internal.time.Time.Duration>) this = new stdgo._internal.runtime.debug.Debug.GCStats(lastGC, numGC, pauseTotal, ([for (i in pause) i] : stdgo.Slice<stdgo._internal.time.Time.Duration>), ([for (i in pauseEnd) i] : stdgo.Slice<stdgo._internal.time.Time.Time>), ([for (i in pauseQuantiles) i] : stdgo.Slice<stdgo._internal.time.Time.Duration>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract BuildInfo(stdgo._internal.runtime.debug.Debug.BuildInfo) from stdgo._internal.runtime.debug.Debug.BuildInfo to stdgo._internal.runtime.debug.Debug.BuildInfo {
    public var goVersion(get, set) : String;
    function get_goVersion():String return this.goVersion;
    function set_goVersion(v:String):String {
        this.goVersion = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var _Main(get, set) : stdgo._internal.runtime.debug.Debug.Module;
    function get__Main():stdgo._internal.runtime.debug.Debug.Module return this._Main;
    function set__Main(v:stdgo._internal.runtime.debug.Debug.Module):stdgo._internal.runtime.debug.Debug.Module {
        this._Main = v;
        return v;
    }
    public var deps(get, set) : Array<stdgo._internal.runtime.debug.Debug.Module>;
    function get_deps():Array<stdgo._internal.runtime.debug.Debug.Module> return [for (i in this.deps) i];
    function set_deps(v:Array<stdgo._internal.runtime.debug.Debug.Module>):Array<stdgo._internal.runtime.debug.Debug.Module> {
        this.deps = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>>);
        return v;
    }
    public var settings(get, set) : Array<stdgo._internal.runtime.debug.Debug.BuildSetting>;
    function get_settings():Array<stdgo._internal.runtime.debug.Debug.BuildSetting> return [for (i in this.settings) i];
    function set_settings(v:Array<stdgo._internal.runtime.debug.Debug.BuildSetting>):Array<stdgo._internal.runtime.debug.Debug.BuildSetting> {
        this.settings = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.debug.Debug.BuildSetting>);
        return v;
    }
    public function new(?goVersion:String, ?path:String, ?_Main:stdgo._internal.runtime.debug.Debug.Module, ?deps:Array<stdgo._internal.runtime.debug.Debug.Module>, ?settings:Array<stdgo._internal.runtime.debug.Debug.BuildSetting>) this = new stdgo._internal.runtime.debug.Debug.BuildInfo(goVersion, path, _Main, ([for (i in deps) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>>), ([for (i in settings) i] : stdgo.Slice<stdgo._internal.runtime.debug.Debug.BuildSetting>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Module(stdgo._internal.runtime.debug.Debug.Module) from stdgo._internal.runtime.debug.Debug.Module to stdgo._internal.runtime.debug.Debug.Module {
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = v;
        return v;
    }
    public var sum(get, set) : String;
    function get_sum():String return this.sum;
    function set_sum(v:String):String {
        this.sum = v;
        return v;
    }
    public var replace(get, set) : stdgo._internal.runtime.debug.Debug.Module;
    function get_replace():stdgo._internal.runtime.debug.Debug.Module return this.replace;
    function set_replace(v:stdgo._internal.runtime.debug.Debug.Module):stdgo._internal.runtime.debug.Debug.Module {
        this.replace = v;
        return v;
    }
    public function new(?path:String, ?version:String, ?sum:String, ?replace:stdgo._internal.runtime.debug.Debug.Module) this = new stdgo._internal.runtime.debug.Debug.Module(path, version, sum, replace);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract BuildSetting(stdgo._internal.runtime.debug.Debug.BuildSetting) from stdgo._internal.runtime.debug.Debug.BuildSetting to stdgo._internal.runtime.debug.Debug.BuildSetting {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:String) this = new stdgo._internal.runtime.debug.Debug.BuildSetting(key, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Debug {
    /**
        ReadGCStats reads statistics about garbage collection into stats.
        The number of entries in the pause history is system-dependent;
        stats.Pause slice will be reused if large enough, reallocated otherwise.
        ReadGCStats may use the full capacity of the stats.Pause slice.
        If stats.PauseQuantiles is non-empty, ReadGCStats fills it with quantiles
        summarizing the distribution of pause time. For example, if
        len(stats.PauseQuantiles) is 5, it will be filled with the minimum,
        25%, 50%, 75%, and maximum pause times.
    **/
    static public function readGCStats(stats:GCStats):Void {
        stdgo._internal.runtime.debug.Debug.readGCStats(stats);
    }
    /**
        SetGCPercent sets the garbage collection target percentage:
        a collection is triggered when the ratio of freshly allocated data
        to live data remaining after the previous collection reaches this percentage.
        SetGCPercent returns the previous setting.
        The initial setting is the value of the GOGC environment variable
        at startup, or 100 if the variable is not set.
        This setting may be effectively reduced in order to maintain a memory
        limit.
        A negative percentage effectively disables garbage collection, unless
        the memory limit is reached.
        See SetMemoryLimit for more details.
    **/
    static public function setGCPercent(percent:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setGCPercent(percent);
    }
    /**
        FreeOSMemory forces a garbage collection followed by an
        attempt to return as much memory to the operating system
        as possible. (Even if this is not called, the runtime gradually
        returns memory to the operating system in a background task.)
    **/
    static public function freeOSMemory():Void {
        stdgo._internal.runtime.debug.Debug.freeOSMemory();
    }
    /**
        SetMaxStack sets the maximum amount of memory that
        can be used by a single goroutine stack.
        If any goroutine exceeds this limit while growing its stack,
        the program crashes.
        SetMaxStack returns the previous setting.
        The initial setting is 1 GB on 64-bit systems, 250 MB on 32-bit systems.
        There may be a system-imposed maximum stack limit regardless
        of the value provided to SetMaxStack.
        
        SetMaxStack is useful mainly for limiting the damage done by
        goroutines that enter an infinite recursion. It only limits future
        stack growth.
    **/
    static public function setMaxStack(bytes:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setMaxStack(bytes);
    }
    /**
        SetMaxThreads sets the maximum number of operating system
        threads that the Go program can use. If it attempts to use more than
        this many, the program crashes.
        SetMaxThreads returns the previous setting.
        The initial setting is 10,000 threads.
        
        The limit controls the number of operating system threads, not the number
        of goroutines. A Go program creates a new thread only when a goroutine
        is ready to run but all the existing threads are blocked in system calls, cgo calls,
        or are locked to other goroutines due to use of runtime.LockOSThread.
        
        SetMaxThreads is useful mainly for limiting the damage done by
        programs that create an unbounded number of threads. The idea is
        to take down the program before it takes down the operating system.
    **/
    static public function setMaxThreads(threads:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.debug.Debug.setMaxThreads(threads);
    }
    /**
        SetPanicOnFault controls the runtime's behavior when a program faults
        at an unexpected (non-nil) address. Such faults are typically caused by
        bugs such as runtime memory corruption, so the default response is to crash
        the program. Programs working with memory-mapped files or unsafe
        manipulation of memory may cause faults at non-nil addresses in less
        dramatic situations; SetPanicOnFault allows such programs to request
        that the runtime trigger only a panic, not a crash.
        The runtime.Error that the runtime panics with may have an additional method:
        
        	Addr() uintptr
        
        If that method exists, it returns the memory address which triggered the fault.
        The results of Addr are best-effort and the veracity of the result
        may depend on the platform.
        SetPanicOnFault applies only to the current goroutine.
        It returns the previous setting.
    **/
    static public function setPanicOnFault(enabled:Bool):Bool {
        return stdgo._internal.runtime.debug.Debug.setPanicOnFault(enabled);
    }
    /**
        WriteHeapDump writes a description of the heap and the objects in
        it to the given file descriptor.
        
        WriteHeapDump suspends the execution of all goroutines until the heap
        dump is completely written.  Thus, the file descriptor must not be
        connected to a pipe or socket whose other end is in the same Go
        process; instead, use a temporary file or network socket.
        
        The heap dump format is defined at https://golang.org/s/go15heapdump.
    **/
    static public function writeHeapDump(fd:stdgo.GoUIntptr):Void {
        stdgo._internal.runtime.debug.Debug.writeHeapDump(fd);
    }
    /**
        SetTraceback sets the amount of detail printed by the runtime in
        the traceback it prints before exiting due to an unrecovered panic
        or an internal runtime error.
        The level argument takes the same values as the GOTRACEBACK
        environment variable. For example, SetTraceback("all") ensure
        that the program prints all goroutines when it crashes.
        See the package runtime documentation for details.
        If SetTraceback is called with a level lower than that of the
        environment variable, the call is ignored.
    **/
    static public function setTraceback(level:String):Void {
        stdgo._internal.runtime.debug.Debug.setTraceback(level);
    }
    /**
        SetMemoryLimit provides the runtime with a soft memory limit.
        
        The runtime undertakes several processes to try to respect this
        memory limit, including adjustments to the frequency of garbage
        collections and returning memory to the underlying system more
        aggressively. This limit will be respected even if GOGC=off (or,
        if SetGCPercent(-1) is executed).
        
        The input limit is provided as bytes, and includes all memory
        mapped, managed, and not released by the Go runtime. Notably, it
        does not account for space used by the Go binary and memory
        external to Go, such as memory managed by the underlying system
        on behalf of the process, or memory managed by non-Go code inside
        the same process. Examples of excluded memory sources include: OS
        kernel memory held on behalf of the process, memory allocated by
        C code, and memory mapped by syscall.Mmap (because it is not
        managed by the Go runtime).
        
        More specifically, the following expression accurately reflects
        the value the runtime attempts to maintain as the limit:
        
        	runtime.MemStats.Sys - runtime.MemStats.HeapReleased
        
        or in terms of the runtime/metrics package:
        
        	/memory/classes/total:bytes - /memory/classes/heap/released:bytes
        
        A zero limit or a limit that's lower than the amount of memory
        used by the Go runtime may cause the garbage collector to run
        nearly continuously. However, the application may still make
        progress.
        
        The memory limit is always respected by the Go runtime, so to
        effectively disable this behavior, set the limit very high.
        math.MaxInt64 is the canonical value for disabling the limit,
        but values much greater than the available memory on the underlying
        system work just as well.
        
        See https://go.dev/doc/gc-guide for a detailed guide explaining
        the soft memory limit in more detail, as well as a variety of common
        use-cases and scenarios.
        
        The initial setting is math.MaxInt64 unless the GOMEMLIMIT
        environment variable is set, in which case it provides the initial
        setting. GOMEMLIMIT is a numeric value in bytes with an optional
        unit suffix. The supported suffixes include B, KiB, MiB, GiB, and
        TiB. These suffixes represent quantities of bytes as defined by
        the IEC 80000-13 standard. That is, they are based on powers of
        two: KiB means 2^10 bytes, MiB means 2^20 bytes, and so on.
        
        SetMemoryLimit returns the previously set memory limit.
        A negative input does not adjust the limit, and allows for
        retrieval of the currently set memory limit.
    **/
    static public function setMemoryLimit(limit:haxe.Int64):haxe.Int64 {
        return stdgo._internal.runtime.debug.Debug.setMemoryLimit(limit);
    }
    /**
        ReadBuildInfo returns the build information embedded
        in the running binary. The information is available only
        in binaries built with module support.
    **/
    static public function readBuildInfo():stdgo.Tuple<BuildInfo, Bool> {
        return {
            final obj = stdgo._internal.runtime.debug.Debug.readBuildInfo();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseBuildInfo(data:String):stdgo.Tuple<BuildInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.runtime.debug.Debug.parseBuildInfo(data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        PrintStack prints to standard error the stack trace returned by runtime.Stack.
    **/
    static public function printStack():Void {
        stdgo._internal.runtime.debug.Debug.printStack();
    }
    /**
        Stack returns a formatted stack trace of the goroutine that calls it.
        It calls runtime.Stack with a large enough buffer to capture the entire trace.
    **/
    static public function stack():Array<StdTypes.Int> {
        return [for (i in stdgo._internal.runtime.debug.Debug.stack()) i];
    }
}
