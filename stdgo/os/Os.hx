package stdgo.os;

import haxe.io.Output;
import haxe.io.Path;
import stdgo.Pointer;
import stdgo.StdGoTypes;
import sys.FileStat;
import sys.FileSystem;

var args = new Slice<GoString>(...([(Sys.programPath() : GoString)].concat([for (arg in Sys.args()) (arg : GoString)])));
var stderr = Go.pointer(new OutputWriter(Sys.stderr()));

var stdin:Dynamic = {
	value: {
		name: () -> "name"
	}
};

var stdout = Go.pointer(new OutputWriter(Sys.stdout()));

class OutputWriter {
	public function __underlying__():AnyInterface
		return null;

	var output:Output;

	public function new(output) {
		this.output = output;
	}

	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		for (c in p)
			output.writeByte(c.toBasic());
		return {_0: 0, _1: null};
	}

	public function name():GoString {
		return "";
	}
}

inline function mkdir(path:GoString, ?perm:GoInt):Error {
	try {
		FileSystem.createDirectory(path);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function getenv(path:GoString):GoString {
	var e = Sys.getEnv(path);
	if (path == "GOSSAINTERP")
		return "1";
	if (path == "GOARCH")
		return stdgo.runtime.Runtime.goarch;
	return e == null ? "" : e;
}

function isNotExist(err:Error):Bool {
	return false;
}

inline function open(name:GoString):{_0:Pointer<File>, _1:Error} {
	return {_0: null, _1: stdgo.errors.Errors.new_("unable to open")};
}

inline function lookupEnv(path:GoString):{_0:GoString, _1:Bool} {
	var e = Sys.getEnv(path);
	if (e == null)
		return {_0: "", _1: false};
	return {_0: e, _1: true};
}

inline function mkdirAll(path:GoString, ?perm:GoInt):Error {
	return mkdir(path, perm);
}

inline function create(path:GoString):{_0:Pointer<File>, _1:Error} {
	var dir = haxe.io.Path.directory(path);
	if (!sys.FileSystem.exists(dir))
		sys.FileSystem.createDirectory(dir);
	sys.io.File.saveContent(path, "");
	var file = new stdgo.os.Os.File(sys.io.File.read(path), sys.io.File.write(path));
	return {_0: Go.pointer(file), _1: null};
}

inline function exit(code:GoInt) {
	Sys.exit(code.toBasic());
}

inline function newSyscallError(syscall:GoString, err:Error):Error {
	if (err == null)
		return null;
	return stdgo.errors.Errors.new_(syscall);
}

inline function chdir(dir:GoString):Error {
	try {
		Sys.setCwd(dir);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function remove(name:GoString):Error {
	try {
		if (FileSystem.isDirectory(name)) {
			FileSystem.deleteDirectory(name);
		} else {
			FileSystem.deleteFile(name);
		}
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function removeAll(path:GoString):Error {
	if (sys.FileSystem.exists(path) && sys.FileSystem.isDirectory(path)) {
		var entries = sys.FileSystem.readDirectory(path);
		for (entry in entries) {
			if (sys.FileSystem.isDirectory(path + '/' + entry)) {
				removeAll(path + '/' + entry);
				sys.FileSystem.deleteDirectory(path + '/' + entry);
			} else {
				sys.FileSystem.deleteFile(path + '/' + entry);
			}
		}
	}
	return null;
}

class File {
	public function __underlying__():AnyInterface
		return null;

	var input:sys.io.FileInput;
	var output:sys.io.FileOutput;

	public function new(input, output) {
		this.input = input;
		this.output = output;
	}

	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		for (c in p)
			output.writeByte(c.toBasic());
		return {_0: p.length, _1: null};
	}

	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		for (i in 0...p.length.toBasic()) {
			p[i] = (input.readByte() : GoByte);
		}
		return {_0: p.length, _1: null};
	}

	public function close():Error {
		input.close();
		output.close();
		return null;
	}
}
