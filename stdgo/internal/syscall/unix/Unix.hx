package stdgo.internal.syscall.unix;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

function recvfromInet4(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _from:Ref<stdgo.syscall.Syscall.SockaddrInet4>):{var _0:GoInt; var _1:Error;}
	throw "internal.syscall.unix.recvfromInet4 is not yet implemented";

function recvfromInet6(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _from:Ref<stdgo.syscall.Syscall.SockaddrInet6>):{var _0:GoInt; var _1:Error;}
	throw "internal.syscall.unix.recvfromInet6 is not yet implemented";

function sendtoInet4(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Ref<stdgo.syscall.Syscall.SockaddrInet4>):Error
	throw "internal.syscall.unix.sendtoInet4 is not yet implemented";

function sendtoInet6(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Ref<stdgo.syscall.Syscall.SockaddrInet6>):Error
	throw "internal.syscall.unix.sendtoInet6 is not yet implemented";

function sendmsgNInet4(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Ref<stdgo.syscall.Syscall.SockaddrInet4>,
		_flags:GoInt):{var _0:GoInt; var _1:Error;}
	throw "internal.syscall.unix.sendmsgNInet4 is not yet implemented";

function sendmsgNInet6(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Ref<stdgo.syscall.Syscall.SockaddrInet6>,
		_flags:GoInt):{var _0:GoInt; var _1:Error;}
	throw "internal.syscall.unix.sendmsgNInet6 is not yet implemented";

function recvmsgInet4(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt, _from:Ref<stdgo.syscall.Syscall.SockaddrInet4>):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:Error;
}
	throw "internal.syscall.unix.recvmsgInet4 is not yet implemented";

function recvmsgInet6(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt, _from:Ref<stdgo.syscall.Syscall.SockaddrInet6>):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:Error;
}
	throw "internal.syscall.unix.recvmsgInet6 is not yet implemented";

function isNonblock(_fd:GoInt):{var _0:Bool; var _1:Error;}
	throw "internal.syscall.unix.isNonblock is not yet implemented";
