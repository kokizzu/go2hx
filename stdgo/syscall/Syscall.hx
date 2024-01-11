package stdgo.syscall;
/**
    // Package syscall contains an interface to the low-level operating system
    // primitives. The details vary depending on the underlying system, and
    // by default, godoc will display the syscall documentation for the current
    // system. If you want godoc to display syscall documentation for another
    // system, set $GOOS and $GOARCH to the desired system. For example, if
    // you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    // to freebsd and $GOARCH to arm.
    // The primary use of syscall is inside other packages that provide a more
    // portable interface to the system, such as "os", "time" and "net".  Use
    // those packages rather than this one if you can.
    // For details of the functions and data types in this package consult
    // the manuals for the appropriate operating system.
    // These calls return err == nil to indicate success; otherwise
    // err is an operating system error describing the failure.
    // On most systems, that error has type syscall.Errno.
    //
    // Deprecated: this package is locked down. Callers should use the
    // corresponding package in the golang.org/x/sys repository instead.
    // That is also where updates required by new systems or versions
    // should be applied. See https://golang.org/s/go1.4-syscall for more
    // information.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final _asanenabled : Bool = false;
/**
    
    
    
**/
final _isBigEndian : Bool = false;
/**
    // envOnce guards initialization by copyenv, which populates env.
    
    
**/
var _envOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
/**
    // envLock guards env and envs.
    
    
**/
var _envLock : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
/**
    // env maps from an environment variable to its first occurrence in envs.
    
    
**/
var _env : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
/**
    // envs is provided by the runtime. elements are expected to
    // be of the form "key=value". An empty string means deleted
    // (or a duplicate to be ignored).
    
    
**/
var _envs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _jsProcess : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _jsFS : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _constants : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _uint8Array : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _nodeWRONLY : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _nodeRDWR : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _nodeCREATE : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _nodeTRUNC : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _nodeAPPEND : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _nodeEXCL : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    
    
    
**/
var _filesMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    
    
    
**/
var _files : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.syscall.Syscall.T_jsFile>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.syscall.Syscall.T_jsFile>>);
/**
    
    
    
**/
final _msanenabled : Bool = false;
/**
    
    
    
**/
final af_UNSPEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final af_UNIX = @:invalid_type null;
/**
    
    
    
**/
final af_INET = @:invalid_type null;
/**
    
    
    
**/
final af_INET6 = @:invalid_type null;
/**
    
    
    
**/
final sock_STREAM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final sock_DGRAM = @:invalid_type null;
/**
    
    
    
**/
final sock_RAW = @:invalid_type null;
/**
    
    
    
**/
final sock_SEQPACKET = @:invalid_type null;
/**
    
    
    
**/
final ipproto_IP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final ipproto_IPV4 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final ipproto_IPV6 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final ipproto_TCP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final ipproto_UDP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final __8 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final ipv6_V6ONLY = @:invalid_type null;
/**
    
    
    
**/
final somaxconn = @:invalid_type null;
/**
    
    
    
**/
final so_ERROR = @:invalid_type null;
/**
    // Misc constants expected by package net but not supported.
    
    
**/
final __9 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // Misc constants expected by package net but not supported.
    
    
**/
final f_DUPFD_CLOEXEC = @:invalid_type null;
/**
    // Misc constants expected by package net but not supported.
    
    // unsupported
**/
final sys_FCNTL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // Single-word zero for use when we need a valid pointer to 0 bytes.
    // See mksyscall.pl.
    
    
**/
var __zero : stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
/**
    
    
    
**/
final _direntSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final pathMax : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final __10 : stdgo.syscall.Syscall.Signal = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigchld = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigint = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigkill = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigtrap = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigquit = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigterm = ((0 : stdgo.GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
var _signals : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 0) ("" : stdgo.GoString)]);
/**
    
    
    
**/
final stdin : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final stdout : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final stderr : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_RDONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_WRONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_RDWR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_CREAT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_CREATE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_TRUNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_APPEND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_EXCL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_SYNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final o_CLOEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_DUPFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_GETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_SETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_GETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_SETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_GETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_SETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_GETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_SETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_SETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_RGETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_RSETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_CNVT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_RSETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_RDLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_WRLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_UNLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final f_UNLKSYS : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFMT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFSHM_SYSV : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFSEMA : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFCOND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFMUTEX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFSHM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFBOUNDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFSOCKADDR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFLNK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFREG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFBLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFDIR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFCHR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IFIFO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_UNSUP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_ISUID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_ISGID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_ISVTX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IREAD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IWRITE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IRWXU : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IRUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IWUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IXUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IRWXG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IRGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IWGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IXGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IRWXO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IROTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IWOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
final s_IXOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    
    
    
**/
var forkLock : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
/**
    
    
    
**/
final implementsGetwd : Bool = false;
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_null : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_nameservice : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_dup : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_dup2 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_open : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_close : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_read : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_write : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_lseek : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_stat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_fstat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_chmod : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_isatty : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_brk : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mmap : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_munmap : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_getdents : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mprotect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_list_mappings : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_exit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_getpid : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sched_yield : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sysconf : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_gettimeofday : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_clock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_nanosleep : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_clock_getres : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_clock_gettime : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mkdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_rmdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_chdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_getcwd : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_unlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_makeboundsock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_accept : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_connect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_sendmsg : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_recvmsg : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_mem_obj_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_imc_socketpair : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mutex_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mutex_lock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mutex_trylock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_mutex_unlock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_cond_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_cond_wait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_cond_signal : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_cond_broadcast : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_cond_timed_wait_abs : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_thread_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_thread_exit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_tls_init : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_thread_nice : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_tls_get : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_second_tls_set : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_second_tls_get : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_exception_handler : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_exception_stack : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_exception_clear_flag : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sem_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sem_wait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sem_post : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_sem_get_value : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_dyncode_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_dyncode_modify : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_dyncode_delete : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_test_infoleak : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_test_crash : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_test_syscall_1 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_test_syscall_2 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_futex_wait_abs : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_futex_wake : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_pread : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_pwrite : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_truncate : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_lstat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_link : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_rename : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_symlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_access : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_readlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_utimes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
final _sys_get_random_bytes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
/**
    // native_client/src/trusted/service_runtime/include/sys/errno.h
    // The errors are mainly copied from Linux.
    
    /|* Operation not permitted *|/
**/
final eperm : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such file or directory *|/
**/
final enoent : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such process *|/
**/
final esrch : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Interrupted system call *|/
**/
final eintr : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* I/O error *|/
**/
final eio : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such device or address *|/
**/
final enxio : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Argument list too long *|/
**/
final e2big : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Exec format error *|/
**/
final enoexec : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad file number *|/
**/
final ebadf : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No child processes *|/
**/
final echild : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Try again *|/
**/
final eagain : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Out of memory *|/
**/
final enomem : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Permission denied *|/
**/
final eacces : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad address *|/
**/
final efault : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Device or resource busy *|/
**/
final ebusy : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File exists *|/
**/
final eexist : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Cross-device link *|/
**/
final exdev : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such device *|/
**/
final enodev : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not a directory *|/
**/
final enotdir : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Is a directory *|/
**/
final eisdir : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid argument *|/
**/
final einval : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File table overflow *|/
**/
final enfile : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many open files *|/
**/
final emfile : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not a typewriter *|/
**/
final enotty : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File too large *|/
**/
final efbig : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No space left on device *|/
**/
final enospc : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Illegal seek *|/
**/
final espipe : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Read-only file system *|/
**/
final erofs : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many links *|/
**/
final emlink : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Broken pipe *|/
**/
final epipe : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File name too long *|/
**/
final enametoolong : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Function not implemented *|/
**/
final enosys : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Quota exceeded *|/
**/
final edquot : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Math arg out of domain of func *|/
**/
final edom : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Math result not representable *|/
**/
final erange : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Deadlock condition *|/
**/
final edeadlk : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No record locks available *|/
**/
final enolck : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Directory not empty *|/
**/
final enotempty : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many symbolic links *|/
**/
final eloop : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No message of desired type *|/
**/
final enomsg : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Identifier removed *|/
**/
final eidrm : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Channel number out of range *|/
**/
final echrng : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 2 not synchronized *|/
**/
final el2nsync : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 3 halted *|/
**/
final el3hlt : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 3 reset *|/
**/
final el3rst : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Link number out of range *|/
**/
final elnrng : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol driver not attached *|/
**/
final eunatch : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No CSI structure available *|/
**/
final enocsi : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 2 halted *|/
**/
final el2hlt : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid exchange *|/
**/
final ebade : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid request descriptor *|/
**/
final ebadr : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Exchange full *|/
**/
final exfull : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No anode *|/
**/
final enoano : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid request code *|/
**/
final ebadrqc : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid slot *|/
**/
final ebadslt : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File locking deadlock error *|/
**/
final edeadlock : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad font file fmt *|/
**/
final ebfont : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Device not a stream *|/
**/
final enostr : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No data (for no delay io) *|/
**/
final enodata : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Timer expired *|/
**/
final etime : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Out of streams resources *|/
**/
final enosr : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Machine is not on the network *|/
**/
final enonet : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Package not installed *|/
**/
final enopkg : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* The object is remote *|/
**/
final eremote : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* The link has been severed *|/
**/
final enolink : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Advertise error *|/
**/
final eadv : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Srmount error *|/
**/
final esrmnt : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Communication error on send *|/
**/
final ecomm : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol error *|/
**/
final eproto : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Multihop attempted *|/
**/
final emultihop : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Cross mount point (not really error) *|/
**/
final edotdot : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Trying to read unreadable message *|/
**/
final ebadmsg : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Value too large for defined data type *|/
**/
final eoverflow : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Given log. name not unique *|/
**/
final enotuniq : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* f.d. invalid for this operation *|/
**/
final ebadfd : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Remote address changed *|/
**/
final eremchg : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Can't access a needed shared lib *|/
**/
final elibacc : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Accessing a corrupted shared lib *|/
**/
final elibbad : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* .lib section in a.out corrupted *|/
**/
final elibscn : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Attempting to link in too many libs *|/
**/
final elibmax : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Attempting to exec a shared library *|/
**/
final elibexec : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eilseq : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eusers : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket operation on non-socket *|/
**/
final enotsock : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Destination address required *|/
**/
final edestaddrreq : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Message too long *|/
**/
final emsgsize : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol wrong type for socket *|/
**/
final eprototype : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol not available *|/
**/
final enoprotoopt : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Unknown protocol *|/
**/
final eprotonosupport : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket type not supported *|/
**/
final esocktnosupport : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation not supported on transport endpoint *|/
**/
final eopnotsupp : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol family not supported *|/
**/
final epfnosupport : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address family not supported by protocol family *|/
**/
final eafnosupport : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address already in use *|/
**/
final eaddrinuse : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address not available *|/
**/
final eaddrnotavail : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Network interface is not configured *|/
**/
final enetdown : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Network is unreachable *|/
**/
final enetunreach : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final enetreset : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection aborted *|/
**/
final econnaborted : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection reset by peer *|/
**/
final econnreset : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No buffer space available *|/
**/
final enobufs : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket is already connected *|/
**/
final eisconn : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket is not connected *|/
**/
final enotconn : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Can't send after socket shutdown *|/
**/
final eshutdown : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final etoomanyrefs : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection timed out *|/
**/
final etimedout : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection refused *|/
**/
final econnrefused : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Host is down *|/
**/
final ehostdown : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Host is unreachable *|/
**/
final ehostunreach : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket already connected *|/
**/
final ealready : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection already in progress *|/
**/
final einprogress : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final estale : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not supported *|/
**/
final enotsup : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No medium (in tape drive) *|/
**/
final enomedium : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation canceled. *|/
**/
final ecanceled : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Inode is remote (not really error) *|/
**/
final elbin : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Inappropriate file type or format *|/
**/
final eftype : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No more files *|/
**/
final enmfile : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eproclim : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such host or network path *|/
**/
final enoshare : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Filename exists with different case *|/
**/
final ecaseclash : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation would block *|/
**/
final ewouldblock : stdgo.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
var _errorstr : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2054) ("" : stdgo.GoString)]);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
var _errEAGAIN : stdgo.Error = (null : stdgo.Error);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
var _errEINVAL : stdgo.Error = (null : stdgo.Error);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
var _errENOENT : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var _errnoByCode : stdgo.GoMap<stdgo.GoString, stdgo.syscall.Syscall.Errno> = (null : stdgo.GoMap<stdgo.GoString, stdgo.syscall.Syscall.Errno>);
/**
    
    
    
**/
final _faketime : Bool = false;
/**
    // A RawConn is a raw network connection.
    
    
**/
typedef RawConn = stdgo.StructType & {
    /**
        // Control invokes f on the underlying connection's file
        // descriptor or handle.
        // The file descriptor fd is guaranteed to remain valid while
        // f executes but not after f returns.
        
        
    **/
    public dynamic function control(_f:(_fd:stdgo.GoUIntptr) -> Void):stdgo.Error;
    /**
        // Read invokes f on the underlying connection's file
        // descriptor or handle; f is expected to try to read from the
        // file descriptor.
        // If f returns true, Read returns. Otherwise Read blocks
        // waiting for the connection to be ready for reading and
        // tries again repeatedly.
        // The file descriptor is guaranteed to remain valid while f
        // executes but not after f returns.
        
        
    **/
    public dynamic function read(_f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error;
    /**
        // Write is like Read but for writing.
        
        
    **/
    public dynamic function write(_f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error;
};
/**
    // Conn is implemented by some types in the net and os packages to provide
    // access to the underlying file descriptor or handle.
    
    
**/
typedef Conn = stdgo.StructType & {
    /**
        // SyscallConn returns a raw network connection.
        
        
    **/
    public dynamic function syscallConn():{ var _0 : RawConn; var _1 : stdgo.Error; };
};
/**
    
    
    
**/
@:structInit @:private class T_jsFile {
    public var _path : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _dirIdx : stdgo.GoInt = 0;
    public var _pos : stdgo.GoInt64 = 0;
    public var _seeked : Bool = false;
    public function new(?_path:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.GoString>, ?_dirIdx:stdgo.GoInt, ?_pos:stdgo.GoInt64, ?_seeked:Bool) {
        if (_path != null) this._path = _path;
        if (_entries != null) this._entries = _entries;
        if (_dirIdx != null) this._dirIdx = _dirIdx;
        if (_pos != null) this._pos = _pos;
        if (_seeked != null) this._seeked = _seeked;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrInet4 {
    public var port : stdgo.GoInt = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public function new(?port:stdgo.GoInt, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet4(port, addr);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrInet6 {
    public var port : stdgo.GoInt = 0;
    public var zoneId : stdgo.GoUInt32 = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public function new(?port:stdgo.GoInt, ?zoneId:stdgo.GoUInt32, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (zoneId != null) this.zoneId = zoneId;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet6(port, zoneId, addr);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrUnix {
    public var name : stdgo.GoString = "";
    public function new(?name:stdgo.GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
/**
    
    
    
**/
@:structInit class Dirent {
    public var reclen : stdgo.GoUInt16 = 0;
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public function new(?reclen:stdgo.GoUInt16, ?name:stdgo.GoArray<stdgo.GoUInt8>) {
        if (reclen != null) this.reclen = reclen;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dirent(reclen, name);
    }
}
/**
    
    
    
**/
@:structInit class Stat_t {
    public var dev : stdgo.GoInt64 = 0;
    public var ino : stdgo.GoUInt64 = 0;
    public var mode : stdgo.GoUInt32 = 0;
    public var nlink : stdgo.GoUInt32 = 0;
    public var uid : stdgo.GoUInt32 = 0;
    public var gid : stdgo.GoUInt32 = 0;
    public var rdev : stdgo.GoInt64 = 0;
    public var size : stdgo.GoInt64 = 0;
    public var blksize : stdgo.GoInt32 = 0;
    public var blocks : stdgo.GoInt32 = 0;
    public var atime : stdgo.GoInt64 = 0;
    public var atimeNsec : stdgo.GoInt64 = 0;
    public var mtime : stdgo.GoInt64 = 0;
    public var mtimeNsec : stdgo.GoInt64 = 0;
    public var ctime : stdgo.GoInt64 = 0;
    public var ctimeNsec : stdgo.GoInt64 = 0;
    public function new(?dev:stdgo.GoInt64, ?ino:stdgo.GoUInt64, ?mode:stdgo.GoUInt32, ?nlink:stdgo.GoUInt32, ?uid:stdgo.GoUInt32, ?gid:stdgo.GoUInt32, ?rdev:stdgo.GoInt64, ?size:stdgo.GoInt64, ?blksize:stdgo.GoInt32, ?blocks:stdgo.GoInt32, ?atime:stdgo.GoInt64, ?atimeNsec:stdgo.GoInt64, ?mtime:stdgo.GoInt64, ?mtimeNsec:stdgo.GoInt64, ?ctime:stdgo.GoInt64, ?ctimeNsec:stdgo.GoInt64) {
        if (dev != null) this.dev = dev;
        if (ino != null) this.ino = ino;
        if (mode != null) this.mode = mode;
        if (nlink != null) this.nlink = nlink;
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (rdev != null) this.rdev = rdev;
        if (size != null) this.size = size;
        if (blksize != null) this.blksize = blksize;
        if (blocks != null) this.blocks = blocks;
        if (atime != null) this.atime = atime;
        if (atimeNsec != null) this.atimeNsec = atimeNsec;
        if (mtime != null) this.mtime = mtime;
        if (mtimeNsec != null) this.mtimeNsec = mtimeNsec;
        if (ctime != null) this.ctime = ctime;
        if (ctimeNsec != null) this.ctimeNsec = ctimeNsec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Stat_t(
dev,
ino,
mode,
nlink,
uid,
gid,
rdev,
size,
blksize,
blocks,
atime,
atimeNsec,
mtime,
mtimeNsec,
ctime,
ctimeNsec);
    }
}
/**
    // XXX made up
    
    
**/
@:structInit class Rusage {
    public var utime : stdgo.syscall.Syscall.Timeval = ({} : stdgo.syscall.Syscall.Timeval);
    public var stime : stdgo.syscall.Syscall.Timeval = ({} : stdgo.syscall.Syscall.Timeval);
    public function new(?utime:stdgo.syscall.Syscall.Timeval, ?stime:stdgo.syscall.Syscall.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
/**
    // XXX made up
    
    
**/
@:structInit class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var sys : stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr> = (null : stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo.syscall.Syscall.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
/**
    
    
    
**/
@:structInit class SysProcAttr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysProcAttr();
    }
}
/**
    
    
    // dummy
**/
@:structInit class Iovec {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) class Timespec {
    public var sec : stdgo.GoInt64 = 0;
    public var nsec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?nsec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (nsec != null) this.nsec = nsec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timespec(sec, nsec);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) class Timeval {
    public var sec : stdgo.GoInt64 = 0;
    public var usec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?usec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (usec != null) this.usec = usec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timeval(sec, usec);
    }
}
@:follow typedef Sockaddr = stdgo.AnyInterface;
/**
    // An Errno is an unsigned number describing an error condition.
    // It implements the error interface. The zero Errno is by convention
    // a non-error, so code to convert from Errno to error should use:
    //
    //	err = nil
    //	if errno != 0 {
    //		err = errno
    //	}
    //
    // Errno values can be tested against error values using errors.Is.
    // For example:
    //
    //	_, _, err := syscall.Syscall(...)
    //	if errors.Is(err, fs.ErrNotExist) ...
**/
@:named @:using(stdgo.syscall.Syscall.Errno_static_extension) typedef Errno = stdgo.GoUIntptr;
/**
    // A Signal is a number describing a process signal.
    // It implements the os.Signal interface.
**/
@:named @:using(stdgo.syscall.Syscall.Signal_static_extension) typedef Signal = stdgo.GoInt;
@:named @:using(stdgo.syscall.Syscall.WaitStatus_static_extension) typedef WaitStatus = stdgo.GoUInt32;
function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._asanRead is not yet implemented";
function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._asanWrite is not yet implemented";
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._readInt is not yet implemented";
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":syscall._readIntBE is not yet implemented";
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":syscall._readIntLE is not yet implemented";
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Slice<stdgo.GoString>; } throw ":syscall.parseDirent is not yet implemented";
function _runtime_envs():stdgo.Slice<stdgo.GoString> throw ":syscall._runtime_envs is not yet implemented";
function _copyenv():Void throw ":syscall._copyenv is not yet implemented";
function unsetenv(_key:stdgo.GoString):stdgo.Error throw ":syscall.unsetenv is not yet implemented";
function getenv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } throw ":syscall.getenv is not yet implemented";
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error throw ":syscall.setenv is not yet implemented";
function clearenv():Void throw ":syscall.clearenv is not yet implemented";
function environ():stdgo.Slice<stdgo.GoString> throw ":syscall.environ is not yet implemented";
/**
    // Provided by package runtime.
**/
function _now():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt32; } throw ":syscall._now is not yet implemented";
function _fdToFile(_fd:stdgo.GoInt):{ var _0 : stdgo.Ref<T_jsFile>; var _1 : stdgo.Error; } throw ":syscall._fdToFile is not yet implemented";
function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.open is not yet implemented";
function close(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.close is not yet implemented";
function closeOnExec(_fd:stdgo.GoInt):Void throw ":syscall.closeOnExec is not yet implemented";
function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error throw ":syscall.mkdir is not yet implemented";
function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.readDirent is not yet implemented";
function _setStat(_st:stdgo.Ref<Stat_t>, _jsSt:stdgo.syscall.js.Js.Value):Void throw ":syscall._setStat is not yet implemented";
function stat(_path:stdgo.GoString, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.stat is not yet implemented";
function lstat(_path:stdgo.GoString, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.lstat is not yet implemented";
function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.fstat is not yet implemented";
function unlink(_path:stdgo.GoString):stdgo.Error throw ":syscall.unlink is not yet implemented";
function rmdir(_path:stdgo.GoString):stdgo.Error throw ":syscall.rmdir is not yet implemented";
function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error throw ":syscall.chmod is not yet implemented";
function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error throw ":syscall.fchmod is not yet implemented";
function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.chown is not yet implemented";
function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.fchown is not yet implemented";
function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.lchown is not yet implemented";
function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<Timespec>):stdgo.Error throw ":syscall.utimesNano is not yet implemented";
function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error throw ":syscall.rename is not yet implemented";
function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error throw ":syscall.truncate is not yet implemented";
function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error throw ":syscall.ftruncate is not yet implemented";
function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.getcwd is not yet implemented";
function chdir(_path:stdgo.GoString):stdgo.Error throw ":syscall.chdir is not yet implemented";
function fchdir(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.fchdir is not yet implemented";
function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.readlink is not yet implemented";
function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error throw ":syscall.link is not yet implemented";
function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error throw ":syscall.symlink is not yet implemented";
function fsync(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.fsync is not yet implemented";
function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.read is not yet implemented";
function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.write is not yet implemented";
function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.pread is not yet implemented";
function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.pwrite is not yet implemented";
function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw ":syscall.seek is not yet implemented";
function dup(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.dup is not yet implemented";
function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error throw ":syscall.dup2 is not yet implemented";
function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error throw ":syscall.pipe is not yet implemented";
function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.syscall.js.Js.Value; var _1 : stdgo.Error; } throw ":syscall._fsCall is not yet implemented";
/**
    // checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:stdgo.GoString):stdgo.Error throw ":syscall._checkPath is not yet implemented";
function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void throw ":syscall._recoverErr is not yet implemented";
/**
    // mapJSError maps an error given by Node.js to the appropriate Go error.
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):stdgo.Error throw ":syscall._mapJSError is not yet implemented";
function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._msanRead is not yet implemented";
function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._msanWrite is not yet implemented";
function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.socket is not yet implemented";
function bind(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error throw ":syscall.bind is not yet implemented";
function stopIO(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.stopIO is not yet implemented";
function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error throw ":syscall.listen is not yet implemented";
function accept(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Sockaddr; var _2 : stdgo.Error; } throw ":syscall.accept is not yet implemented";
function connect(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error throw ":syscall.connect is not yet implemented";
function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Sockaddr; var _2 : stdgo.Error; } throw ":syscall.recvfrom is not yet implemented";
function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:Sockaddr):stdgo.Error throw ":syscall.sendto is not yet implemented";
function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : Sockaddr; var _4 : stdgo.Error; } throw ":syscall.recvmsg is not yet implemented";
function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:Sockaddr, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.sendmsgN is not yet implemented";
function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.getsockoptInt is not yet implemented";
function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error throw ":syscall.setsockoptInt is not yet implemented";
function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error throw ":syscall.setReadDeadline is not yet implemented";
function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error throw ":syscall.setWriteDeadline is not yet implemented";
function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error throw ":syscall.shutdown is not yet implemented";
function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error throw ":syscall.setNonblock is not yet implemented";
/**
    // StringByteSlice converts a string to a NUL-terminated []byte,
    // If s contains a NUL byte this function panics instead of
    // returning an error.
    //
    // Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> throw ":syscall.stringByteSlice is not yet implemented";
/**
    // ByteSliceFromString returns a NUL-terminated slice of bytes
    // containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw ":syscall.byteSliceFromString is not yet implemented";
/**
    // StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    // If s contains a NUL byte this function panics instead of returning
    // an error.
    //
    // Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte> throw ":syscall.stringBytePtr is not yet implemented";
/**
    // BytePtrFromString returns a pointer to a NUL-terminated array of
    // bytes containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:stdgo.GoString):{ var _0 : stdgo.Pointer<stdgo.GoByte>; var _1 : stdgo.Error; } throw ":syscall.bytePtrFromString is not yet implemented";
function getpagesize():stdgo.GoInt return 4096;
function exit(_code:stdgo.GoInt):Void throw ":syscall.exit is not yet implemented";
/**
    // runtimeSetenv and runtimeUnsetenv are provided by the runtime.
**/
function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void throw ":syscall._runtimeSetenv is not yet implemented";
function _runtimeUnsetenv(_k:stdgo.GoString):Void throw ":syscall._runtimeUnsetenv is not yet implemented";
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntIno is not yet implemented";
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntReclen is not yet implemented";
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntNamlen is not yet implemented";
function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.syscall is not yet implemented";
function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.syscall6 is not yet implemented";
function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.rawSyscall is not yet implemented";
function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.rawSyscall6 is not yet implemented";
function sysctl(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":syscall.sysctl is not yet implemented";
function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":syscall.getwd is not yet implemented";
function getuid():stdgo.GoInt throw ":syscall.getuid is not yet implemented";
function getgid():stdgo.GoInt throw ":syscall.getgid is not yet implemented";
function geteuid():stdgo.GoInt throw ":syscall.geteuid is not yet implemented";
function getegid():stdgo.GoInt throw ":syscall.getegid is not yet implemented";
function getgroups():{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Error; } throw ":syscall.getgroups is not yet implemented";
function getpid():stdgo.GoInt throw ":syscall.getpid is not yet implemented";
function getppid():stdgo.GoInt throw ":syscall.getppid is not yet implemented";
function umask(_mask:stdgo.GoInt):stdgo.GoInt throw ":syscall.umask is not yet implemented";
function gettimeofday(_tv:stdgo.Ref<Timeval>):stdgo.Error throw ":syscall.gettimeofday is not yet implemented";
function kill(_pid:stdgo.GoInt, _signum:Signal):stdgo.Error throw ":syscall.kill is not yet implemented";
function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.sendfile is not yet implemented";
function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUIntptr; var _2 : stdgo.Error; } throw ":syscall.startProcess is not yet implemented";
function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<Rusage>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.wait4 is not yet implemented";
function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Timespec throw ":syscall._setTimespec is not yet implemented";
function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):Timeval throw ":syscall._setTimeval is not yet implemented";
/**
    // errnoErr returns common boxed Errno values, to prevent
    // allocations at runtime.
**/
function _errnoErr(_e:Errno):stdgo.Error throw ":syscall._errnoErr is not yet implemented";
function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt throw ":syscall._faketimeWrite is not yet implemented";
/**
    // TimespecToNsec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):stdgo.GoInt64 throw ":syscall.timespecToNsec is not yet implemented";
/**
    // NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:stdgo.GoInt64):Timespec throw ":syscall.nsecToTimespec is not yet implemented";
/**
    // TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):stdgo.GoInt64 throw ":syscall.timevalToNsec is not yet implemented";
/**
    // NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:stdgo.GoInt64):Timeval throw ":syscall.nsecToTimeval is not yet implemented";
class Timespec_asInterface {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    public dynamic function nano():stdgo.GoInt64 return __self__.value.nano();
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    public dynamic function unix():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Timespec>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Timespec_asInterface) class Timespec_static_extension {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    static public function nano( _ts:stdgo.Ref<Timespec>):stdgo.GoInt64 throw "Timespec:syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _ts:stdgo.Ref<Timespec>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timespec:syscall.unix is not yet implemented";
}
class Timeval_asInterface {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    public dynamic function nano():stdgo.GoInt64 return __self__.value.nano();
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    public dynamic function unix():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Timeval>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Timeval_asInterface) class Timeval_static_extension {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    static public function nano( _tv:stdgo.Ref<Timeval>):stdgo.GoInt64 throw "Timeval:syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _tv:stdgo.Ref<Timeval>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timeval:syscall.unix is not yet implemented";
}
class Errno_asInterface {
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function is_(_target:stdgo.Error):Bool return __self__.value.is_(_target);
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Errno>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Errno_asInterface) class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool throw "Errno:syscall.timeout is not yet implemented";
    @:keep
    static public function temporary( _e:Errno):Bool throw "Errno:syscall.temporary is not yet implemented";
    @:keep
    static public function is_( _e:Errno, _target:stdgo.Error):Bool throw "Errno:syscall.is_ is not yet implemented";
    @:keep
    static public function error( _e:Errno):stdgo.GoString throw "Errno:syscall.error is not yet implemented";
}
class Signal_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function signal():Void __self__.value.signal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Signal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Signal_asInterface) class Signal_static_extension {
    @:keep
    static public function string( _s:Signal):stdgo.GoString throw "Signal:syscall.string is not yet implemented";
    @:keep
    static public function signal( _s:Signal):Void throw "Signal:syscall.signal is not yet implemented";
}
class WaitStatus_asInterface {
    @:keep
    public dynamic function trapCause():stdgo.GoInt return __self__.value.trapCause();
    @:keep
    public dynamic function stopSignal():Signal return __self__.value.stopSignal();
    @:keep
    public dynamic function continued():Bool return __self__.value.continued();
    @:keep
    public dynamic function stopped():Bool return __self__.value.stopped();
    @:keep
    public dynamic function coreDump():Bool return __self__.value.coreDump();
    @:keep
    public dynamic function signal():Signal return __self__.value.signal();
    @:keep
    public dynamic function signaled():Bool return __self__.value.signaled();
    @:keep
    public dynamic function exitStatus():stdgo.GoInt return __self__.value.exitStatus();
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<WaitStatus>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.WaitStatus_asInterface) class WaitStatus_static_extension {
    @:keep
    static public function trapCause( _w:WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.trapCause is not yet implemented";
    @:keep
    static public function stopSignal( _w:WaitStatus):Signal throw "WaitStatus:syscall.stopSignal is not yet implemented";
    @:keep
    static public function continued( _w:WaitStatus):Bool throw "WaitStatus:syscall.continued is not yet implemented";
    @:keep
    static public function stopped( _w:WaitStatus):Bool throw "WaitStatus:syscall.stopped is not yet implemented";
    @:keep
    static public function coreDump( _w:WaitStatus):Bool throw "WaitStatus:syscall.coreDump is not yet implemented";
    @:keep
    static public function signal( _w:WaitStatus):Signal throw "WaitStatus:syscall.signal is not yet implemented";
    @:keep
    static public function signaled( _w:WaitStatus):Bool throw "WaitStatus:syscall.signaled is not yet implemented";
    @:keep
    static public function exitStatus( _w:WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.exitStatus is not yet implemented";
    @:keep
    static public function exited( _w:WaitStatus):Bool throw "WaitStatus:syscall.exited is not yet implemented";
}
