package stdgo._internal.index.suffixarray;
function _expand_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        stdgo._internal.index.suffixarray.Suffixarray__bucketMax_32._bucketMax_32(_text, _freq, _bucket);
        var _x = (_numLMS - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _saX = (_sa[(_x : stdgo.GoInt)] : stdgo.GoInt32);
        var _c = (_text[(_saX : stdgo.GoInt)] : stdgo.GoInt32);
        var _b = (_bucket[(_c : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
        _bucket[(_c : stdgo.GoInt)] = _b;
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if (_i != ((_b : stdgo.GoInt))) {
                    _sa[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = _saX;
if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    _x--;
                    _saX = _sa[(_x : stdgo.GoInt)];
                    _c = _text[(_saX : stdgo.GoInt)];
                    _b = (_bucket[(_c : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _bucket[(_c : stdgo.GoInt)] = _b;
                };
                _i--;
            };
        };
    }
