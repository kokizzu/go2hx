package stdgo;

import haxe.Rest;
import haxe.ds.Vector;
import haxe.rtti.Meta;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes;

class VectorData<T> {
	public var vector:Vector<T>;
	public var cap:Int = -1;

	public var length(get, never):Int;

	function get_length():Int {
		return vector.length;
	}

	public function new(length) {
		vector = new Vector<T>(length);
	}

	public function get(i:Int):T
		return vector.get(i);

	public function set(i:Int, value:T):T
		return vector.set(i, value);
}

// @:generic
abstract GoArray<T>(VectorData<T>) from VectorData<T> {
	public var length(get, never):GoInt;

	public function __setCap__(cap:GoInt):GoArray<T> {
		this.cap = cap.toBasic();
		return this;
	}

	@:from private static function fromVector<T>(vector:Vector<T>):GoArray<T> {
		var data = new VectorData<T>(vector.length);
		data.vector = vector;
		return data;
	}

	public function cap():GoInt
		return this.cap == -1 ? length : this.cap;

	private function get_length():GoInt {
		return this.length;
	}

	public function iterator() {
		return new VectorIterator(this.vector);
	}

	public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new VectorKeyValueIterator(this.vector);
	}

	public function new(args:Rest<T>) {
		this = new VectorData<T>(args.length);
		for (i in 0...args.length) {
			this.set(i, args[i]);
		}
	}

	private function __boundsCheck__(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= this.length) {
			throw "array out of bounds, index: " + i + " length: " + length.toBasic();
		}
		#end
	}

	@:op([]) public function __set__(index:GoInt, value:T):T
		return this.set(index.toBasic(), value);

	@:op([]) public function __get__(index:GoInt):T {
		__boundsCheck__(index.toBasic());
		return this.get(index.toBasic());
	}

	public function __slice__(low:GoInt, high:GoInt = -1):Slice<T> {
		var pos = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		var obj = new Slice<T>();
		obj.__setUnderlying__(this.vector, pos.toBasic(), length.toBasic());
		return obj;
	}

	public inline function __setVector__(vector:Vector<T>) {
		this.vector = vector;
	}

	public inline function __toArray__():Array<T> {
		return [for (i in 0...length.toBasic()) this.get(i)];
	}

	public inline function __toVector__():Vector<T> {
		return this.vector;
	}

	public inline function __replace__(value:Vector<T>) {
		this.vector = value;
	}

	public inline function __setSize__(length:Int) {
		this = new VectorData<T>(length);
	}

	public function __copy__() {
		final array = new GoArray<T>();
		array.__setSize__(array.length.toBasic());
		array.__setVector__(this.vector.copy());
		return array;
	}
}

private class VectorKeyValueIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector:Vector<T>) {
		this.vector = vector.copy();
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return {key: (pos : GoInt), value: vector.get(pos++)};
	}
}

private class VectorIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector:Vector<T>) {
		this.vector = vector.copy();
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return vector.get(pos++);
	}
}
