package stdgo.path;
/**
    // Package path implements utility routines for manipulating slash-separated
    // paths.
    //
    // The path package should only be used for paths separated by forward
    // slashes, such as the paths in URLs. This package does not deal with
    // Windows paths with drive letters or backslashes; to manipulate
    // operating system paths, use the path/filepath package.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrBadPattern indicates a pattern was malformed.
    
    
**/
var errBadPattern : stdgo.Error = stdgo.errors.Errors.new_(("syntax error in pattern" : stdgo.GoString)?.__copy__());
/**
    // A lazybuf is a lazily constructed path buffer.
    // It supports append, reading previously appended bytes,
    // and retrieving the final string. It does not allocate a buffer
    // to hold the output until that output diverges from s.
    
    
**/
@:structInit @:private @:using(stdgo.path.Path.T_lazybuf_static_extension) class T_lazybuf {
    public var _s : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _w : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_w:stdgo.StdGoTypes.GoInt) {
        if (_s != null) this._s = _s;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_s, _buf, _w);
    }
}
/**
    // Match reports whether name matches the shell pattern.
    // The pattern syntax is:
    //
    //	pattern:
    //		{ term }
    //	term:
    //		'*'         matches any sequence of non-/ characters
    //		'?'         matches any single non-/ character
    //		'[' [ '^' ] { character-range } ']'
    //		            character class (must be non-empty)
    //		c           matches character c (c != '*', '?', '\\', '[')
    //		'\\' c      matches character c
    //
    //	character-range:
    //		c           matches character c (c != '\\', '-', ']')
    //		'\\' c      matches character c
    //		lo '-' hi   matches character c for lo <= c <= hi
    //
    // Match requires pattern to match all of name, not just a substring.
    // The only possible returned error is ErrBadPattern, when pattern
    // is malformed.
**/
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
            @:label("Pattern") while ((_pattern.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                var _star:Bool = false;
                var _chunk:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _scanChunk(_pattern?.__copy__());
                    _star = __tmp__._0;
                    _chunk = __tmp__._1?.__copy__();
                    _pattern = __tmp__._2?.__copy__();
                };
                if (_star && (_chunk == stdgo.Go.str())) {
                    return { _0 : stdgo.internal.bytealg.Bytealg.indexByteString(_name?.__copy__(), (47 : stdgo.StdGoTypes.GoUInt8)) < (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Error) };
                };
                var __tmp__ = _matchChunk(_chunk?.__copy__(), _name?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_ok && ((_t.length == (0 : stdgo.StdGoTypes.GoInt)) || (_pattern.length > (0 : stdgo.StdGoTypes.GoInt)))) {
                    _name = _t?.__copy__();
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor((_i < _name.length) && (_name[(_i : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8)), _i++, {
                            var __tmp__ = _matchChunk(_chunk?.__copy__(), (_name.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if ((_pattern.length == (0 : stdgo.StdGoTypes.GoInt)) && (_t.length > (0 : stdgo.StdGoTypes.GoInt))) {
                                    continue;
                                };
                                _name = _t?.__copy__();
                                @:jump("Pattern") continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                while ((_pattern.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                    {
                        var __tmp__ = _scanChunk(_pattern?.__copy__());
                        _chunk = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        var __tmp__ = _matchChunk(_chunk?.__copy__(), stdgo.Go.str()?.__copy__()), __0:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            return { _0 : false, _1 : _err };
                        };
                    };
                };
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            return { _0 : (_name.length) == ((0 : stdgo.StdGoTypes.GoInt)), _1 : (null : stdgo.Error) };
        });
        throw "controlFlow did not return";
    }
/**
    // scanChunk gets the next segment of pattern, which is a non-star string
    // possibly preceded by a star.
**/
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:stdgo.GoString = ("" : stdgo.GoString), _rest:stdgo.GoString = ("" : stdgo.GoString);
            while ((_pattern.length > (0 : stdgo.StdGoTypes.GoInt)) && (_pattern[(0 : stdgo.StdGoTypes.GoInt)] == (42 : stdgo.StdGoTypes.GoUInt8))) {
                _pattern = (_pattern.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            @:label("Scan") {
                _i = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_pattern.length), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : stdgo.StdGoTypes.GoInt)];
                                if (__value__ == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                                    if ((_i + (1 : stdgo.StdGoTypes.GoInt)) < (_pattern.length)) {
                                        _i++;
                                    };
                                    break;
                                } else if (__value__ == ((91 : stdgo.StdGoTypes.GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : stdgo.StdGoTypes.GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (!_inrange) {
                                        @:jump("Scan") break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
            };
            return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i) : stdgo.GoString)?.__copy__() };
        });
        throw "controlFlow did not return";
    }
/**
    // matchChunk checks whether chunk matches the beginning of s.
    // If so, it returns the remainder of s (after the match).
    // Chunk is all single-character operators: literals, char classes, and ?.
**/
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var _failed:Bool = false;
        while ((_chunk.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            if (!_failed && (_s.length == (0 : stdgo.StdGoTypes.GoInt))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.StdGoTypes.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.StdGoTypes.GoUInt8)))) {
                            var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
                            if (!_failed) {
                                var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                {
                                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
                                    _r = __tmp__._0;
                                    _n = __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            var _negated:Bool = false;
                            if ((_chunk.length > (0 : stdgo.StdGoTypes.GoInt)) && (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (94 : stdgo.StdGoTypes.GoUInt8))) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            var _match:Bool = false;
                            var _nrange:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            while (true) {
                                if (((_chunk.length > (0 : stdgo.StdGoTypes.GoInt)) && (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (93 : stdgo.StdGoTypes.GoUInt8))) && (_nrange > (0 : stdgo.StdGoTypes.GoInt))) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                };
                                var __0:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), __1:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _hi:stdgo.StdGoTypes.GoRune = __1, _lo:stdgo.StdGoTypes.GoRune = __0;
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk?.__copy__());
                                        _lo = __tmp__._0;
                                        _chunk = __tmp__._1?.__copy__();
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _getEsc((_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__());
                                            _hi = __tmp__._0;
                                            _chunk = __tmp__._1?.__copy__();
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                        };
                                    };
                                };
                                if ((_lo <= _r) && (_r <= _hi)) {
                                    _match = true;
                                };
                                _nrange++;
                            };
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (!_failed) {
                                if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((47 : stdgo.StdGoTypes.GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.StdGoTypes.GoUInt8)))) {
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            if ((_chunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : errBadPattern };
                            };
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_failed) {
                                if (_chunk[(0 : stdgo.StdGoTypes.GoInt)] != (_s[((0 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
        };
        return { _0 : _s?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
    }
/**
    // getEsc gets a possibly-escaped character from chunk, for a character class.
**/
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _nchunk:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((_chunk.length == (0 : stdgo.StdGoTypes.GoInt)) || (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) || (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (93 : stdgo.StdGoTypes.GoUInt8))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == ((92 : stdgo.StdGoTypes.GoUInt8))) {
            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_chunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk?.__copy__()), _r:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if ((_r == (65533 : stdgo.StdGoTypes.GoInt32)) && (_n == (1 : stdgo.StdGoTypes.GoInt))) {
            _err = errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_nchunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
/**
    // Clean returns the shortest path name equivalent to path
    // by purely lexical processing. It applies the following rules
    // iteratively until no further processing can be done:
    //
    //  1. Replace multiple slashes with a single slash.
    //  2. Eliminate each . path name element (the current directory).
    //  3. Eliminate each inner .. path name element (the parent directory)
    //     along with the non-.. element that precedes it.
    //  4. Eliminate .. elements that begin a rooted path:
    //     that is, replace "/.." by "/" at the beginning of a path.
    //
    // The returned path ends in a slash only if it is the root "/".
    //
    // If the result of this process is an empty string, Clean
    // returns the string ".".
    //
    // See also Rob Pike, “Lexical File Names in Plan 9 or
    // Getting Dot-Dot Right,”
    // https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString)?.__copy__();
        };
        var _rooted:Bool = _path[(0 : stdgo.StdGoTypes.GoInt)] == ((47 : stdgo.StdGoTypes.GoUInt8));
        var _n:stdgo.StdGoTypes.GoInt = (_path.length);
        var _out:stdgo.path.Path.T_lazybuf = ({ _s : _path?.__copy__() } : stdgo.path.Path.T_lazybuf);
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _dotdot:stdgo.StdGoTypes.GoInt = __1, _r:stdgo.StdGoTypes.GoInt = __0;
        if (_rooted) {
            _out._append((47 : stdgo.StdGoTypes.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.StdGoTypes.GoInt);
                final __tmp__1 = (1 : stdgo.StdGoTypes.GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while (_r < _n) {
            if (_path[(_r : stdgo.StdGoTypes.GoInt)] == ((47 : stdgo.StdGoTypes.GoUInt8))) {
                _r++;
            } else if ((_path[(_r : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8)) && (((_r + (1 : stdgo.StdGoTypes.GoInt)) == _n) || (_path[(_r + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8)))) {
                _r++;
            } else if (((_path[(_r : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8)) && (_path[(_r + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8))) && (((_r + (2 : stdgo.StdGoTypes.GoInt)) == _n) || (_path[(_r + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8)))) {
                _r = _r + ((2 : stdgo.StdGoTypes.GoInt));
                if (_out._w > _dotdot) {
                    _out._w--;
                    while ((_out._w > _dotdot) && (_out._index(_out._w) != (47 : stdgo.StdGoTypes.GoUInt8))) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if (_out._w > (0 : stdgo.StdGoTypes.GoInt)) {
                        _out._append((47 : stdgo.StdGoTypes.GoUInt8));
                    };
                    _out._append((46 : stdgo.StdGoTypes.GoUInt8));
                    _out._append((46 : stdgo.StdGoTypes.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if ((_rooted && (_out._w != (1 : stdgo.StdGoTypes.GoInt))) || (!_rooted && (_out._w != (0 : stdgo.StdGoTypes.GoInt)))) {
                    _out._append((47 : stdgo.StdGoTypes.GoUInt8));
                };
                stdgo.Go.cfor((_r < _n) && (_path[(_r : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8)), _r++, {
                    _out._append(_path[(_r : stdgo.StdGoTypes.GoInt)]);
                });
            };
        };
        if (_out._w == ((0 : stdgo.StdGoTypes.GoInt))) {
            return ("." : stdgo.GoString)?.__copy__();
        };
        return _out._string()?.__copy__();
    }
/**
    // lastSlash(s) is strings.LastIndex(s, "/") but we can't import strings.
**/
function _lastSlash(_s:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        var _i:stdgo.StdGoTypes.GoInt = (_s.length) - (1 : stdgo.StdGoTypes.GoInt);
        while ((_i >= (0 : stdgo.StdGoTypes.GoInt)) && (_s[(_i : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8))) {
            _i--;
        };
        return _i;
    }
/**
    // Split splits path immediately following the final slash,
    // separating it into a directory and file name component.
    // If there is no slash in path, Split returns an empty dir and
    // file set to path.
    // The returned values have the property that path = dir+file.
**/
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir:stdgo.GoString = ("" : stdgo.GoString), _file:stdgo.GoString = ("" : stdgo.GoString);
        var _i:stdgo.StdGoTypes.GoInt = _lastSlash(_path?.__copy__());
        return { _0 : (_path.__slice__(0, _i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__() };
    }
/**
    // Join joins any number of path elements into a single path,
    // separating them with slashes. Empty elements are ignored.
    // The result is Cleaned. However, if the argument list is
    // empty or all its elements are empty, Join returns
    // an empty string.
**/
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (__0 => _e in _elem) {
            _size = _size + ((_e.length));
        };
        if (_size == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (_size + _elem.length) - (1 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        for (__1 => _e in _elem) {
            if ((_buf.length > (0 : stdgo.StdGoTypes.GoInt)) || (_e != stdgo.Go.str())) {
                if ((_buf.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                    _buf = (_buf.__append__((47 : stdgo.StdGoTypes.GoUInt8)));
                };
                _buf = (_buf.__append__(..._e.__toArray__()));
            };
        };
        return clean((_buf : stdgo.GoString)?.__copy__())?.__copy__();
    }
/**
    // Ext returns the file name extension used by path.
    // The extension is the suffix beginning at the final dot
    // in the final slash-separated element of path;
    // it is empty if there is no dot.
**/
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i:stdgo.StdGoTypes.GoInt = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.StdGoTypes.GoInt)) && (_path[(_i : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8)), _i--, {
                if (_path[(_i : stdgo.StdGoTypes.GoInt)] == ((46 : stdgo.StdGoTypes.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return stdgo.Go.str()?.__copy__();
    }
/**
    // Base returns the last element of path.
    // Trailing slashes are removed before extracting the last element.
    // If the path is empty, Base returns ".".
    // If the path consists entirely of slashes, Base returns "/".
**/
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString)?.__copy__();
        };
        while ((_path.length > (0 : stdgo.StdGoTypes.GoInt)) && (_path[((_path.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8))) {
            _path = (_path.__slice__((0 : stdgo.StdGoTypes.GoInt), (_path.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = _lastSlash(_path?.__copy__());
            if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                _path = (_path.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_path == (stdgo.Go.str())) {
            return ("/" : stdgo.GoString)?.__copy__();
        };
        return _path?.__copy__();
    }
/**
    // IsAbs reports whether the path is absolute.
**/
function isAbs(_path:stdgo.GoString):Bool {
        return (_path.length > (0 : stdgo.StdGoTypes.GoInt)) && (_path[(0 : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8));
    }
/**
    // Dir returns all but the last element of path, typically the path's directory.
    // After dropping the final element using Split, the path is Cleaned and trailing
    // slashes are removed.
    // If the path is empty, Dir returns ".".
    // If the path consists entirely of slashes followed by non-slash bytes, Dir
    // returns a single slash. In any other case, the returned path does not end in a
    // slash.
**/
function dir(_path:stdgo.GoString):stdgo.GoString {
        var __tmp__ = split(_path?.__copy__()), _dir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return clean(_dir?.__copy__())?.__copy__();
    }
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _append(_c:stdgo.StdGoTypes.GoByte):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lazybuf>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.Path.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:stdgo.StdGoTypes.Ref<T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            return (_b._s.__slice__(0, _b._w) : stdgo.GoString)?.__copy__();
        };
        return ((_b._buf.__slice__(0, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _append( _b:stdgo.StdGoTypes.Ref<T_lazybuf>, _c:stdgo.StdGoTypes.GoByte):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            if ((_b._w < _b._s.length) && (_b._s[(_b._w : stdgo.StdGoTypes.GoInt)] == _c)) {
                _b._w++;
                return;
            };
            _b._buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_b._s.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            stdgo.Go.copySlice(_b._buf, (_b._s.__slice__(0, _b._w) : stdgo.GoString));
        };
        _b._buf[(_b._w : stdgo.StdGoTypes.GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:stdgo.StdGoTypes.Ref<T_lazybuf>, _i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf != null) {
            return _b._buf[(_i : stdgo.StdGoTypes.GoInt)];
        };
        return _b._s[(_i : stdgo.StdGoTypes.GoInt)];
    }
}
