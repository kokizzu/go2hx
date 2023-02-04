package stdgo.log_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

function exampleLogger():Void {
	var _0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_1:Ref<Logger> = stdgo.log.Log.new_(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), ("logger: " : GoString), (16 : GoInt)),
		_logger:Ref<Logger> = _1,
		_buf:stdgo.bytes.Bytes.Buffer = _0;
	_logger.print(Go.toInterface(("Hello, log file!" : GoString)));
	stdgo.fmt.Fmt.print(Go.toInterface(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>))));
}

function exampleLogger_Output():Void {
	var _0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_1:Ref<Logger> = stdgo.log.Log.new_(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), ("INFO: " : GoString), (16 : GoInt)),
		_2:GoString->Void = function(_info:GoString):Void {
			_logger.output((2 : GoInt), _info);
		},
		_infof:GoString->Void = _2,
		_logger:Ref<Logger> = _1,
		_buf:stdgo.bytes.Bytes.Buffer = _0;
	_infof(("Hello world" : GoString));
	stdgo.fmt.Fmt.print(Go.toInterface(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>))));
}
