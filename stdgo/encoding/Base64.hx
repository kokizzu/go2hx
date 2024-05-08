package stdgo.encoding;
/**
    Package base64 implements base64 encoding as specified by RFC 4648.
**/
private var __go2hxdoc__package : Bool;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.noPadding;
var stdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_stdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding;
private function set_stdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        stdgo._internal.encoding.base64.Base64.stdEncoding = v;
        return v;
    }
var urlencoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_urlencoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.urlencoding;
private function set_urlencoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        stdgo._internal.encoding.base64.Base64.urlencoding = v;
        return v;
    }
var rawStdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_rawStdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding;
private function set_rawStdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        stdgo._internal.encoding.base64.Base64.rawStdEncoding = v;
        return v;
    }
var rawURLEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_rawURLEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding;
private function set_rawURLEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        stdgo._internal.encoding.base64.Base64.rawURLEncoding = v;
        return v;
    }
abstract Encoding(stdgo._internal.encoding.base64.Base64.Encoding) from stdgo._internal.encoding.base64.Base64.Encoding to stdgo._internal.encoding.base64.Base64.Encoding {
    public var _encode(get, set) : haxe.ds.Vector<std.UInt>;
    function get__encode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._encode) i]);
    function set__encode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._encode = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _decodeMap(get, set) : haxe.ds.Vector<std.UInt>;
    function get__decodeMap():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._decodeMap) i]);
    function set__decodeMap(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._decodeMap = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _padChar(get, set) : StdTypes.Int;
    function get__padChar():StdTypes.Int return this._padChar;
    function set__padChar(v:StdTypes.Int):StdTypes.Int {
        this._padChar = v;
        return v;
    }
    public var _strict(get, set) : Bool;
    function get__strict():Bool return this._strict;
    function set__strict(v:Bool):Bool {
        this._strict = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int, ?_strict:Bool) this = new stdgo._internal.encoding.base64.Base64.Encoding(([for (i in _encode) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) i] : stdgo.GoArray<stdgo.GoUInt8>), _padChar, _strict);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encoder(stdgo._internal.encoding.base64.Base64.T_encoder) from stdgo._internal.encoding.base64.Base64.T_encoder to stdgo._internal.encoding.base64.Base64.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
    function get__enc():stdgo._internal.encoding.base64.Base64.Encoding return this._enc;
    function set__enc(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        this._enc = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:stdgo._internal.encoding.base64.Base64.Encoding, ?_w:stdgo._internal.io.Io.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64.T_encoder(_err, _enc, _w, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decoder(stdgo._internal.encoding.base64.Base64.T_decoder) from stdgo._internal.encoding.base64.Base64.T_decoder to stdgo._internal.encoding.base64.Base64.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
    function get__enc():stdgo._internal.encoding.base64.Base64.Encoding return this._enc;
    function set__enc(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        this._enc = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:stdgo._internal.encoding.base64.Base64.Encoding, ?_r:stdgo._internal.io.Io.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64.T_decoder(_err, _readErr, _enc, _r, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io.Reader;
    function get__wrapped():stdgo._internal.io.Io.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io.Reader) this = new stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testpair(stdgo._internal.encoding.base64.Base64.T_testpair) from stdgo._internal.encoding.base64.Base64.T_testpair to stdgo._internal.encoding.base64.Base64.T_testpair {
    public var _decoded(get, set) : String;
    function get__decoded():String return this._decoded;
    function set__decoded(v:String):String {
        this._decoded = v;
        return v;
    }
    public var _encoded(get, set) : String;
    function get__encoded():String return this._encoded;
    function set__encoded(v:String):String {
        this._encoded = v;
        return v;
    }
    public function new(?_decoded:String, ?_encoded:String) this = new stdgo._internal.encoding.base64.Base64.T_testpair(_decoded, _encoded);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encodingTest(stdgo._internal.encoding.base64.Base64.T_encodingTest) from stdgo._internal.encoding.base64.Base64.T_encodingTest to stdgo._internal.encoding.base64.Base64.T_encodingTest {
    public var _enc(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
    function get__enc():stdgo._internal.encoding.base64.Base64.Encoding return this._enc;
    function set__enc(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding {
        this._enc = v;
        return v;
    }
    public var _conv(get, set) : stdgo.GoString -> stdgo.GoString;
    function get__conv():stdgo.GoString -> stdgo.GoString return _0 -> this._conv(_0);
    function set__conv(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        this._conv = v;
        return v;
    }
    public function new(?_enc:stdgo._internal.encoding.base64.Base64.Encoding, ?_conv:stdgo.GoString -> stdgo.GoString) this = new stdgo._internal.encoding.base64.Base64.T_encodingTest(_enc, _conv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_nextRead(stdgo._internal.encoding.base64.Base64.T_nextRead) from stdgo._internal.encoding.base64.Base64.T_nextRead to stdgo._internal.encoding.base64.Base64.T_nextRead {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_err:stdgo.Error) this = new stdgo._internal.encoding.base64.Base64.T_nextRead(_n, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_faultInjectReader(stdgo._internal.encoding.base64.Base64.T_faultInjectReader) from stdgo._internal.encoding.base64.Base64.T_faultInjectReader to stdgo._internal.encoding.base64.Base64.T_faultInjectReader {
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = v;
        return v;
    }
    public var _nextc(get, set) : stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>;
    function get__nextc():stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead> return this._nextc;
    function set__nextc(v:stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>):stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead> {
        this._nextc = v;
        return v;
    }
    public function new(?_source:String, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>) this = new stdgo._internal.encoding.base64.Base64.T_faultInjectReader(_source, _nextc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.encoding.base64.Base64.T__struct_0;
typedef T__struct_1 = stdgo._internal.encoding.base64.Base64.T__struct_1;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64.CorruptInputError;
class Base64 {
    /**
        NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
    **/
    static public function newEncoding(encoder:String):Encoding {
        return stdgo._internal.encoding.base64.Base64.newEncoding(encoder);
    }
    /**
        NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public function newEncoder(enc:Encoding, w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.base64.Base64.newEncoder(enc, w);
    }
    /**
        NewDecoder constructs a new base64 stream decoder.
    **/
    static public function newDecoder(enc:Encoding, r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.base64.Base64.newDecoder(enc, r);
    }
    static public function testEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncode(t);
    }
    static public function testEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncoder(t);
    }
    static public function testEncoderBuffering(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncoderBuffering(t);
    }
    static public function testDecode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecode(t);
    }
    static public function testDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoder(t);
    }
    static public function testDecoderBuffering(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderBuffering(t);
    }
    static public function testDecodeCorrupt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodeCorrupt(t);
    }
    static public function testDecodeBounds(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodeBounds(t);
    }
    static public function testEncodedLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncodedLen(t);
    }
    static public function testDecodedLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodedLen(t);
    }
    static public function testBig(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testBig(t);
    }
    static public function testNewLineCharacters(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testNewLineCharacters(t);
    }
    /**
        tests that we don't ignore errors from our underlying reader
    **/
    static public function testDecoderIssue3577(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue3577(t);
    }
    static public function testDecoderIssue4779(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue4779(t);
    }
    static public function testDecoderIssue7733(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue7733(t);
    }
    static public function testDecoderIssue15656(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue15656(t);
    }
    static public function benchmarkEncodeToString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkEncodeToString(b);
    }
    static public function benchmarkDecodeString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkDecodeString(b);
    }
    static public function benchmarkNewEncoding(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkNewEncoding(b);
    }
    static public function testDecoderRaw(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderRaw(t);
    }
}
