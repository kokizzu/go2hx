package stdgo.strings;

import haxe.Rest;
import stdgo.StdGoTypes;

@:structInit
class Builder {
	var buf:StringBuf;

	public function new() {
		buf = new StringBuf();
	}

	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		buf.add((p : GoString).toString());
		return {_0: p.length, _1: null};
	}

	public function read(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		return {_0: 0, _1: null};
	}

	public function writeString(s:GoString):{_0:GoInt, _1:Error} {
		buf.add(s.toString());
		return {_0: s.length, _1: null};
	}

	public function toString():GoString
		return buf.toString();

	public function len():GoInt {
		return buf.toString().length;
	}

	public function __underlying__():AnyInterface
		return null;
}

inline function contains(s:GoString, value:GoString):Bool {
	return StringTools.contains(s, value);
}

inline function count(s:GoString, value:GoString):GoInt {
	var index = -1;
	final s:String = s.toString();
	var count = 0;
	while (true) {
		index = s.indexOf(value, index + 1);
		if (index == -1)
			break;
		count++;
	}
	return count;
}

function join(elems:Slice<GoString>, sep:GoString):GoString {
	return elems.toVector().join(sep);
}

function repeat(s:GoString, count:GoInt):GoString {
	return [for (i in 0...count.toBasic()) s].join("");
}

function split(s:GoString, sep:GoString):Slice<GoString> {
	return splitN(s, sep, -1);
}

function splitN(s:GoString, sep:GoString, n:GoInt):Slice<GoString> {
	if (n == 0)
		return new Slice().nil();
	// very inefficent (TODO) more optimized version
	final s:String = s.toString();
	if (n == -1)
		n = s.length;
	return new Slice<GoString>(...[for (s in s.split(sep)) (s : GoString)].slice(0, n.toBasic()));
}

function hasPrefix(s:GoString, value:GoString):Bool {
	return s.substr(0, value.toString().length) == value;
}

inline function hasSuffix(s:GoString, value:GoString):Bool {
	return s.substr(s.toString().length - value.toString().length) == value;
}

function containsRune(s:GoString, r:GoRune):Bool {
	final s = s.toString();
	final r = r.toBasic();
	for (i in 0...s.length) {
		if (s.charCodeAt(i) == r)
			return true;
	}
	return false;
}

inline function index(s:GoString, substr:GoString):Int
	return s.toString().indexOf(substr);

function indexByte(s:GoString, c:GoByte):GoInt {
	for (i in 0...s.length.toBasic()) {
		if (s[i] == c)
			return i;
	}
	return -1;
}

function replace(s:GoString, sub:GoString, by:GoString, count:GoInt):GoString {
	if (count == 0)
		return s;
	if (count == -1)
		return StringTools.replace(s, sub, by);
	var str:String = s;
	var index = -1;
	for (i in 0...count.toBasic()) {
		var j = str.indexOf(sub, index + 1);
		if (j == -1)
			return str;
		index = j + sub.length.toBasic();
		str = str.substr(0, j) + by + str.substr(index);
	}
	return str;
}

function replaceAll(s:GoString, old:GoString, n:GoString):GoString {
	return StringTools.replace(s, old, n);
}

inline function toUpper(s:GoString):GoString {
	return s.toString().toUpperCase();
}

inline function toLower(s:GoString):GoString {
	return s.toString().toLowerCase();
}

@:structInit
class Replacer {
	var strings:Array<String> = [];

	public function new(?strings) {
		if (strings != null)
			this.strings = strings;
	}

	public function replace(s:GoString):GoString {
		return s;
	}

	public function writeString(w:stdgo.io.Io.Writer):{_0:GoInt, _1:Error} {
		return {_0: 0, _1: null};
	}
}

function newReplacer(oldnew:Rest<GoString>):Pointer<Replacer> {
	if (oldnew.length % 2 == 1) {
		throw "strings.NewReplacer: odd argument count";
	}
	return Go.pointer(new Replacer([for (str in oldnew) str.toString()]));
}

function toLowerSpecial(c:stdgo.unicode.Unicode.SpecialCase, s:GoString):GoString {
	return map(c.toLower, s);
}

function map(mapping:GoRune->GoRune, s:GoString):GoString {
	var b:GoString = "";
	for (i in 0...s.length.toBasic()) {
		var c = s[i];
		final r = mapping(c);
		if (r == c && c != stdgo.unicode.utf8.Utf8.runeError) {
			continue;
		}
		var width:GoInt = 0;
		if (c == stdgo.unicode.utf8.Utf8.runeError) {
			final __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(s.__slice__(i));
			c = __tmp__._0;
			width = __tmp__._1;
		} else {
			width = stdgo.unicode.utf8.Utf8.runeLen(c);
		}
		b += s.__slice__(0, i);
		if (r >= 0) {
			b += r;
		}

		s = s.__slice__(i + width);
		break;
	}
	if (b == "")
		return s;

	for (i in 0...s.length.toBasic()) {
		final c = s[i];
		final r = mapping(c);
		if (r >= 0) {
			if (r < stdgo.unicode.utf8.Utf8.runeSelf) {
				b += r;
			} else {
				b += r;
			}
		}
	}
	return b;
}
