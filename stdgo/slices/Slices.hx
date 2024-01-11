package stdgo.slices;
/**
    // Package slices defines various functions useful with slices of any type.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _equalIntTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(4, 4, ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : false } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : true } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : true } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : false } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
var _equalFloatTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(2, 2, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(2, 2, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _wantEqual : true, _wantEqualNaN : true } : T__struct_1), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _wantEqual : false, _wantEqualNaN : true } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var _compareIntTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(
10,
10,
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2),
({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(5, 5, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
var _compareFloatTests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(
10,
10,
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(0, 0) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(0, 0) : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, (1 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, (1 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (4 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (4 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _want : (1 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (3 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _want : (1 : stdgo.GoInt) } : T__struct_3),
({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(4, 4, (1 : stdgo.GoFloat64), stdgo.math.Math.naN(), (3 : stdgo.GoFloat64), (4 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo.math.Math.naN()) : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3)) : stdgo.Slice<T__struct_3>);
/**
    
    
    
**/
var _indexTests : stdgo.Slice<T__struct_4> = (new stdgo.Slice<T__struct_4>(5, 5, ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (0 : stdgo.GoInt), _want : (-1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>), _v : (0 : stdgo.GoInt), _want : (-1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4)) : stdgo.Slice<T__struct_4>);
/**
    
    
    
**/
var _insertTests : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(4, 4, ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, (4 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(2, 2, (4 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(5, 5, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_5)) : stdgo.Slice<T__struct_5>);
/**
    
    
    
**/
var _deleteTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(5, 5, ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>) } : T__struct_6)) : stdgo.Slice<T__struct_6>);
/**
    
    
    
**/
var _deleteFuncTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(6, 6, ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return false;
    }, _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return _i > (2 : stdgo.GoInt);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return _i < (2 : stdgo.GoInt);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (10 : stdgo.GoInt), (2 : stdgo.GoInt), (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return _i >= (10 : stdgo.GoInt);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_7)) : stdgo.Slice<T__struct_7>);
/**
    
    
    
**/
var _compactTests : stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(6, 6, ({ _name : ("nil" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("one" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("sorted" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("1 item" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("unsorted" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("many" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(6, 6, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) } : T__struct_9)) : stdgo.Slice<T__struct_9>);
/**
    
    
    
**/
var _ints : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(
(74 : stdgo.GoInt),
(59 : stdgo.GoInt),
(238 : stdgo.GoInt),
(-784 : stdgo.GoInt),
(9845 : stdgo.GoInt),
(959 : stdgo.GoInt),
(905 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(42 : stdgo.GoInt),
(7586 : stdgo.GoInt),
(-5467984 : stdgo.GoInt),
(7586 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>);
/**
    
    
    
**/
var _float64s : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64),
stdgo.math.Math.inf((-1 : stdgo.GoInt)),
(9845.768 : stdgo.GoFloat64),
(-959.7485 : stdgo.GoFloat64),
(905 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64)) : stdgo.GoArray<stdgo.GoFloat64>);
/**
    
    
    
**/
var _float64sWithNaNs : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64),
stdgo.math.Math.naN(),
stdgo.math.Math.naN(),
stdgo.math.Math.inf((-1 : stdgo.GoInt)),
(9845.768 : stdgo.GoFloat64),
(-959.7485 : stdgo.GoFloat64),
(905 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64)) : stdgo.GoArray<stdgo.GoFloat64>);
/**
    
    
    
**/
var _strs : stdgo.GoArray<stdgo.GoString> = (new stdgo.GoArray<stdgo.GoString>(stdgo.Go.str()?.__copy__(), ("Hello" : stdgo.GoString), ("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("foo" : stdgo.GoString), ("f00" : stdgo.GoString), ("%*&^*&^&" : stdgo.GoString), ("***" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>);
/**
    
    
    
**/
final _unknownHint : stdgo.slices.Slices.T_sortedHint = (2 : stdgo.slices.Slices.T_sortedHint);
/**
    
    
    
**/
final _increasingHint = (2 : stdgo.slices.Slices.T_sortedHint);
/**
    
    
    
**/
final _decreasingHint = (2 : stdgo.slices.Slices.T_sortedHint);
/**
    
    
    
**/
final n : stdgo.GoUInt64 = (100000i64 : stdgo.GoUInt64);
/**
    // These benchmarks compare sorting a slice of structs with sort.Sort vs.
    // slices.SortFunc.
    
    
**/
@:structInit @:private class T_myStruct {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoString = "";
    public var _d : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoString, ?_d:stdgo.GoString, ?_n:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_a, _b, _c, _d, _n);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_intPair {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intPair(_a, _b);
    }
}
/**
    
    
    
**/
@:structInit class S {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoString = "";
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(_a, _b);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _s1 : stdgo.Slice<stdgo.GoInt>;
    public var _s2 : stdgo.Slice<stdgo.GoInt>;
    public var _want : Bool;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _s1 : stdgo.Slice<stdgo.GoFloat64>;
    public var _s2 : stdgo.Slice<stdgo.GoFloat64>;
    public var _wantEqual : Bool;
    public var _wantEqualNaN : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _s1 : stdgo.Slice<stdgo.GoInt>;
    public var _s2 : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _s1 : stdgo.Slice<stdgo.GoFloat64>;
    public var _s2 : stdgo.Slice<stdgo.GoFloat64>;
    public var _want : stdgo.GoInt;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.GoInt;
    public var _want : stdgo.GoInt;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _add : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _fn : stdgo.GoInt -> Bool;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _name : stdgo.GoString;
    public var _s : () -> stdgo.Slice<stdgo.GoInt>;
    public var _v : () -> stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _data : stdgo.Slice<stdgo.GoInt>;
    public var _wantMin : stdgo.GoInt;
    public var _wantMax : stdgo.GoInt;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _data : stdgo.Slice<stdgo.GoString>;
    public var _target : stdgo.GoString;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _target : stdgo.GoInt;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.slices.Slices.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _target : stdgo.GoFloat64;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
@:named typedef T_sortedHint = stdgo.GoInt;
/**
    // xorshift paper: https://www.jstatsoft.org/article/view/v008i14/xorshift.pdf
**/
@:named @:using(stdgo.slices.Slices.T_xorshift_static_extension) typedef T_xorshift = stdgo.GoUInt64;
@:named @:using(stdgo.slices.Slices.T_myStructs_static_extension) typedef T_myStructs = stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>;
@:named @:using(stdgo.slices.Slices.T_intPairs_static_extension) typedef T_intPairs = stdgo.Slice<stdgo.slices.Slices.T_intPair>;
/**
    // Equal reports whether two slices are equal: the same length and all
    // elements equal. If the lengths are different, Equal returns false.
    // Otherwise, the elements are compared in increasing index order, and the
    // comparison stops at the first unequal pair.
    // Floating point NaNs are not considered equal.
**/
macro function equal<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // EqualFunc reports whether two slices are equal using an equality
    // function on each pair of elements. If the lengths are different,
    // EqualFunc returns false. Otherwise, the elements are compared in
    // increasing index order, and the comparison stops at the first index
    // for which eq returns false.
**/
macro function equalFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _eq:haxe.macro.Expr.ExprOf<($E1, $E2) -> Bool>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
    // of elements. The elements are compared sequentially, starting at index 0,
    // until one element is not equal to the other.
    // The result of comparing the first non-matching elements is returned.
    // If both slices are equal until one of them ends, the shorter slice is
    // considered less than the longer one.
    // The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
**/
macro function compare<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // CompareFunc is like [Compare] but uses a custom comparison function on each
    // pair of elements.
    // The result is the first non-zero result of cmp; if cmp always
    // returns 0 the result is 0 if len(s1) == len(s2), -1 if len(s1) < len(s2),
    // and +1 if len(s1) > len(s2).
**/
macro function compareFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _cmp:haxe.macro.Expr.ExprOf<($E1, $E2) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // Index returns the index of the first occurrence of v in s,
    // or -1 if not present.
**/
macro function index<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // IndexFunc returns the first index i satisfying f(s[i]),
    // or -1 if none do.
**/
macro function indexFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // Contains reports whether v is present in s.
**/
macro function contains<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // ContainsFunc reports whether at least one
    // element e of s satisfies f(e).
**/
macro function containsFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // Insert inserts the values v... into s at index i,
    // returning the modified slice.
    // The elements at s[i:] are shifted up to make room.
    // In the returned slice r, r[i] == v[0],
    // and r[i+len(v)] == value originally at r[i].
    // Insert panics if i is out of range.
    // This function is O(len(s) + len(v)).
**/
macro function insert<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
/**
    // Delete removes the elements s[i:j] from s, returning the modified slice.
    // Delete panics if s[i:j] is not a valid slice of s.
    // Delete is O(len(s)-j), so if many items must be deleted, it is better to
    // make a single call deleting them all together than to delete one at a time.
    // Delete might not modify the elements s[len(s)-(j-i):len(s)]. If those
    // elements contain pointers you might consider zeroing those elements so that
    // objects they reference can be garbage collected.
**/
macro function delete<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S>;
/**
    // DeleteFunc removes any elements from s for which del returns true,
    // returning the modified slice.
    // When DeleteFunc removes m elements, it might not modify the elements
    // s[len(s)-m:len(s)]. If those elements contain pointers you might consider
    // zeroing those elements so that objects they reference can be garbage
    // collected.
**/
macro function deleteFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _del:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<S>;
/**
    // Replace replaces the elements s[i:j] by the given v, and returns the
    // modified slice. Replace panics if s[i:j] is not a valid slice of s.
**/
macro function replace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
/**
    // Clone returns a copy of the slice.
    // The elements are copied using assignment, so this is a shallow clone.
**/
macro function clone<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
/**
    // Compact replaces consecutive runs of equal elements with a single copy.
    // This is like the uniq command found on Unix.
    // Compact modifies the contents of the slice s and returns the modified slice,
    // which may have a smaller length.
    // When Compact discards m elements in total, it might not modify the elements
    // s[len(s)-m:len(s)]. If those elements contain pointers you might consider
    // zeroing those elements so that objects they reference can be garbage collected.
**/
macro function compact<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
/**
    // CompactFunc is like [Compact] but uses an equality function to compare elements.
    // For runs of elements that compare equal, CompactFunc keeps the first one.
**/
macro function compactFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _eq:haxe.macro.Expr.ExprOf<($E, $E) -> Bool>):haxe.macro.Expr.ExprOf<S>;
/**
    // Grow increases the slice's capacity, if necessary, to guarantee space for
    // another n elements. After Grow(n), at least n elements can be appended
    // to the slice without another allocation. If n is negative or too large to
    // allocate the memory, Grow panics.
**/
macro function grow<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S>;
/**
    // Clip removes unused capacity from the slice, returning s[:len(s):len(s)].
**/
macro function clip<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
/**
    // rotateLeft rotates b left by n spaces.
    // s_final[i] = s_orig[i+r], wrapping around.
**/
macro function _rotateLeft<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _rotateRight<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // swap swaps the contents of x and y. x and y must be equal length and disjoint.
**/
macro function _swap<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _y:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Void>;
/**
    // overlaps reports whether the memory ranges a[0:len(a)] and b[0:len(b)] overlap.
**/
macro function _overlaps<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _a:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _b:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // startIdx returns the index in haystack where the needle starts.
    // prerequisite: the needle must be aliased entirely inside the haystack.
**/
macro function _startIdx<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _haystack:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _needle:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // Reverse reverses the elements of the slice in place.
**/
macro function reverse<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void>;
function testEqual(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _equalIntTests) {
            {
                var _got:Bool = equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:Bool = equal((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if (_got != (_test._wantEqual)) {
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
        };
    }
/**
    // equal is simply ==.
**/
macro function _equal<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // equalNaN is like == except that all NaNs are equal.
**/
macro function _equalNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // offByOne returns true if integers v1 and v2 differ by 1.
**/
function _offByOne(_v1:stdgo.GoInt, _v2:stdgo.GoInt):Bool {
        return (_v1 == (_v2 + (1 : stdgo.GoInt))) || (_v1 == (_v2 - (1 : stdgo.GoInt)));
    }
function testEqualFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _equalIntTests) {
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, function(year:stdgo.GoInt, week:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), year, week));
                if (_got != (_test._want)) {
                    _t.errorf(("EqualFunc(%v, %v, equal[int]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equal((0 : stdgo.GoFloat64), _0, _1));
                if (_got != (_test._wantEqual)) {
                    _t.errorf(("Equal(%v, %v, equal[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equalNaN((0 : stdgo.GoFloat64), _0, _1));
                if (_got != (_test._wantEqualNaN)) {
                    _t.errorf(("Equal(%v, %v, equalNaN[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqualNaN));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s1, _offByOne)) {
            _t.errorf(("EqualFunc(%v, %v, offByOne) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s1));
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s2, _offByOne)) {
            _t.errorf(("EqualFunc(%v, %v, offByOne) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2));
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        if (!equalFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, stdgo.strings.Strings.equalFold)) {
            _t.errorf(("EqualFunc(%v, %v, strings.EqualFold) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4));
        };
        var _cmpIntString:(stdgo.GoInt, stdgo.GoString) -> Bool = function(_v1:stdgo.GoInt, _v2:stdgo.GoString):Bool {
            return (((_v1 : stdgo.GoRune) - (1 : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoString) == (_v2);
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _s1, _s3, _cmpIntString)) {
            _t.errorf(("EqualFunc(%v, %v, cmpIntString) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3));
        };
    }
@:named typedef T_benchmarkEqualFunc_Large_15___localname___Large = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkEqualFunc_Large(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _xs = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        var _ys = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                equalFunc((null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large>), (null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large>), new stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), new stdgo.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _xs, _ys, function(_x:T_benchmarkEqualFunc_Large_15___localname___Large, _y:T_benchmarkEqualFunc_Large_15___localname___Large):Bool {
                    return stdgo.Go.toInterface(_x) == stdgo.Go.toInterface(_y);
                });
            });
        };
    }
function testCompare(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _intWant:Bool -> stdgo.GoString = function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        };
        for (__0 => _test in _equalIntTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqualNaN)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqualNaN)));
                };
            };
        };
        for (__18 => _test in _compareIntTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__27 => _test in _compareFloatTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
macro function _equalToCmp<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _eq:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>):haxe.macro.Expr.ExprOf<(T_, T_) -> stdgo.GoInt>;
function testCompareFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _intWant:Bool -> stdgo.GoString = function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        };
        for (__0 => _test in _equalIntTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, _equalToCmp((0 : stdgo.GoInt), function(year:stdgo.GoInt, week:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), year, week)));
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[int])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, _equalToCmp((0 : stdgo.GoFloat64), function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equal((0 : stdgo.GoFloat64), _0, _1)));
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqual)) {
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[float64])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqual)));
                };
            };
        };
        for (__18 => _test in _compareIntTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, function(x:T_, y:T_):stdgo.GoInt return stdgo.cmp.Cmp.compare(x, y));
                if (_got != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, cmp[int]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__27 => _test in _compareFloatTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(x:T_, y:T_):stdgo.GoInt return stdgo.cmp.Cmp.compare(x, y));
                if (_got != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, cmp[float64]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s2, _equalToCmp((0 : stdgo.GoInt), _offByOne));
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, offByOne) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_got));
            };
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, stdgo.strings.Strings.compare);
            if (_got != ((1 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, strings.Compare) = %d, want 1" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _compareLower:(stdgo.GoString, stdgo.GoString) -> stdgo.GoInt = function(_v1:stdgo.GoString, _v2:stdgo.GoString):stdgo.GoInt {
            return stdgo.strings.Strings.compare(stdgo.strings.Strings.toLower(_v1?.__copy__())?.__copy__(), stdgo.strings.Strings.toLower(_v2?.__copy__())?.__copy__());
        };
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, _compareLower);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, compareLower) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _cmpIntString:(stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt = function(_v1:stdgo.GoInt, _v2:stdgo.GoString):stdgo.GoInt {
            return stdgo.strings.Strings.compare((((_v1 : stdgo.GoRune) - (1 : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoString)?.__copy__(), _v2?.__copy__());
        };
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _s1, _s3, _cmpIntString);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, cmpIntString) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_got));
            };
        };
    }
function testIndex(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:stdgo.GoInt = index((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._v);
                if (_got != (_test._want)) {
                    _t.errorf(("Index(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
macro function _equalToIndex<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>, _v1:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<T_ -> Bool>;
@:named typedef T_benchmarkIndex_Large_16___localname___Large = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkIndex_Large(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _ss = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkIndex_Large_16___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                index((null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkIndex_Large_16___localname___Large>), new stdgo.slices.Slices.T_benchmarkIndex_Large_16___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, (new stdgo.GoArray<stdgo.GoUInt8>(...([(1 : stdgo.GoUInt8)].concat([for (i in 0 ... 4095) (0 : stdgo.GoUInt8)]))) : stdgo.slices.Slices.T_benchmarkIndex_Large_16___localname___Large));
            });
        };
    }
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _equalToIndex((0 : stdgo.GoInt), function(year:stdgo.GoInt, week:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), year, week), _test._v));
                if (_got != (_test._want)) {
                    _t.errorf(("IndexFunc(%v, equalToIndex(equal[int], %v)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ("hi" : stdgo.GoString), ("HI" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        {
            var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("HI" : stdgo.GoString)));
            if (_got != ((1 : stdgo.GoInt))) {
                _t.errorf(("IndexFunc(%v, equalToIndex(equal[string], %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
        {
            var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), stdgo.strings.Strings.equalFold, ("HI" : stdgo.GoString)));
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("IndexFunc(%v, equalToIndex(strings.EqualFold, %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            };
        };
    }
@:named typedef T_benchmarkIndexFunc_Large_17___localname___Large = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkIndexFunc_Large(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _ss = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkIndexFunc_Large_17___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                indexFunc((null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkIndexFunc_Large_17___localname___Large>), new stdgo.slices.Slices.T_benchmarkIndexFunc_Large_17___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, function(_e:T_benchmarkIndexFunc_Large_17___localname___Large):Bool {
                    return stdgo.Go.toInterface(_e) == stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(...([(1 : stdgo.GoUInt8)].concat([for (i in 0 ... 4095) (0 : stdgo.GoUInt8)]))) : stdgo.slices.Slices.T_benchmarkIndexFunc_Large_17___localname___Large));
                });
            });
        };
    }
function testContains(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:Bool = contains((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._v);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    _t.errorf(("Contains(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
    }
function testContainsFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _equalToIndex((0 : stdgo.GoInt), function(year:stdgo.GoInt, week:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), year, week), _test._v));
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    _t.errorf(("ContainsFunc(%v, equalToIndex(equal[int], %v)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ("hi" : stdgo.GoString), ("HI" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("HI" : stdgo.GoString)));
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(equal[string], %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("hI" : stdgo.GoString)));
            if (_got != (false)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(false));
            };
        };
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), stdgo.strings.Strings.equalFold, ("hI" : stdgo.GoString)));
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
    }
function testInsert(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        {
            var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, (0 : stdgo.GoInt));
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _s)) {
                _t.errorf(("Insert(%v, 0) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_s));
            };
        };
        for (__8 => _test in _insertTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._i, ..._test._add.__toArray__());
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Insert(%v, %d, %v...) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._add), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        if (!stdgo.internal.testenv.Testenv.optimizationOff() && true) {
            {};
            var _n:stdgo.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < (50 : stdgo.GoInt), _i++, {
                        _s = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
                    });
                };
            });
            if (_n > (25 : stdgo.GoFloat64)) {
                _t.errorf(("too many allocations inserting %d elements: got %v, want less than %d" : stdgo.GoString), stdgo.Go.toInterface((50 : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((25 : stdgo.GoInt)));
            };
        };
    }
function testInsertOverlap(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _a = new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _want = new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_n <= (10 : stdgo.GoInt), _n++, {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i <= _n, _i++, {
                        {
                            var _x:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(_x <= (10 : stdgo.GoInt), _x++, {
                                {
                                    var _y:stdgo.GoInt = _x;
                                    stdgo.Go.cfor(_y <= (10 : stdgo.GoInt), _y++, {
                                        {
                                            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor(_k < (10 : stdgo.GoInt), _k++, {
                                                _a[(_k : stdgo.GoInt)] = _k;
                                            });
                                        };
                                        _want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                                        _want = (_want.__append__(...(_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                        _want = (_want.__append__(...(_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                        _want = (_want.__append__(...(_a.__slice__(_i, _n) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                        var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt>), _i, ...(_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>).__toArray__());
                                        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                                            _t.errorf(("Insert with overlap failed n=%d i=%d x=%d y=%d, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testDelete(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _deleteTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = delete((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._i, _test._j);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Delete(%v, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testDeleteFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _test in _deleteFuncTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = deleteFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._fn);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("DeleteFunc case %d: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function _panics(_f:() -> Void):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _b:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _x:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_x != null) {
                            _b = true;
                        };
                    };
                };
                a();
            });
            _f();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _b;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _b;
        };
    }
function testDeletePanics(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_8>(5, 5, ({ _name : ("with negative first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (-2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with negative second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (-1 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with out-of-bounds first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (3 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with out-of-bounds second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with invalid i>j" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_8)) : stdgo.Slice<T__struct_8>)) {
            if (!_panics(function():Void {
                delete((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._i, _test._j);
            })) {
                _t.errorf(("Delete %s: got no panic, want panic" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testClone(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _s2 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Clone(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        _s1[(0 : stdgo.GoInt)] = (4 : stdgo.GoInt);
        var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, _want)) {
            _t.errorf(("Clone(%v) changed unexpectedly to %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s2));
        };
        {
            var _got = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
            if (_got != null) {
                _t.errorf(("Clone(nil) = %#v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _got = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if ((_got == null) || (_got.length != (0 : stdgo.GoInt))) {
                _t.errorf(("Clone(%v) = %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
            };
        };
    }
function testCompact(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _compactTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = compact((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Compact(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function benchmarkCompact(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _c in _compactTests) {
            _b.run(_c._name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _ss = new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__();
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_k < _b.n, _k++, {
                        _ss = (_ss.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                        _ss = (_ss.__append__(..._c._s.__toArray__()));
                        compact((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss);
                    });
                };
            });
        };
    }
@:named typedef T_benchmarkCompact_Large_18___localname___Large = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkCompact_Large(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _ss = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkCompact_Large_18___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                compact((null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkCompact_Large_18___localname___Large>), new stdgo.slices.Slices.T_benchmarkCompact_Large_18___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss);
            });
        };
    }
function testCompactFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in _compactTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = compactFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, function(year:stdgo.GoInt, week:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), year, week));
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("CompactFunc(%v, equal[int]) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(5, 5, ("a" : stdgo.GoString), ("a" : stdgo.GoString), ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _copy = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1);
        var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("B" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        {
            var _got = compactFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _copy, stdgo.strings.Strings.equalFold);
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _got, _want)) {
                _t.errorf(("CompactFunc(%v, strings.EqualFold) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
@:named typedef T_benchmarkCompactFunc_Large_19___localname___Large = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkCompactFunc_Large(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _ss = new stdgo.Slice<stdgo.slices.Slices.T_benchmarkCompactFunc_Large_19___localname___Large>((1024 : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                compactFunc((null : stdgo.Slice<stdgo.slices.Slices.T_benchmarkCompactFunc_Large_19___localname___Large>), new stdgo.slices.Slices.T_benchmarkCompactFunc_Large_19___localname___Large(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, function(_a:T_benchmarkCompactFunc_Large_19___localname___Large, _b:T_benchmarkCompactFunc_Large_19___localname___Large):Bool {
                    return stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(_b);
                });
            });
        };
    }
function testGrow(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        var _s2 = grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, (1000 : stdgo.GoInt));
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Grow(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if (_s2.capacity < ((1000 : stdgo.GoInt) + _s1.length)) {
            _t.errorf(("after Grow(%v) cap = %d, want >= %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2.capacity), stdgo.Go.toInterface((1000 : stdgo.GoInt) + (_s1.length)));
        };
        _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        var _s3 = (grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (2 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s3)) {
            _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        _s3 = (grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (1000 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s3)) {
            _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        {
            var _n:stdgo.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, _s2.capacity - (_s2.length));
            });
            if (_n != (0 : stdgo.GoFloat64)) {
                _t.errorf(("Grow should not allocate when given sufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n:stdgo.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, (_s2.capacity - _s2.length) + (1 : stdgo.GoInt));
            });
            if (_n != (1 : stdgo.GoFloat64)) {
                var _errorf = _t.errorf;
                if (false || stdgo.internal.testenv.Testenv.optimizationOff()) {
                    _errorf = _t.logf;
                };
                _errorf(("Grow should allocate once when given insufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        var _gotPanic:Bool = false;
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            _gotPanic = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            }) != null;
                        };
                        a();
                    });
                    grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, (-1 : stdgo.GoInt));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
        if (!_gotPanic) {
            _t.errorf(("Grow(-1) did not panic; expected a panic" : stdgo.GoString));
        };
    }
function testClip(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _s1 = ((new stdgo.Slice<stdgo.GoInt>(6, 6, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _orig = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if ((_s1.length) != ((3 : stdgo.GoInt))) {
            _t.errorf(("len(%v) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface((_s1.length)));
        };
        if (_s1.capacity < (6 : stdgo.GoInt)) {
            _t.errorf(("cap(%v[:3]) = %d, want >= 6" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s1.capacity));
        };
        var _s2 = clip((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Clip(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if (_s2.capacity != ((3 : stdgo.GoInt))) {
            _t.errorf(("cap(Clip(%v)) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s2.capacity));
        };
    }
function testReverse(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _even = (new stdgo.Slice<stdgo.GoInt>(6, 6, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        reverse((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _even);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(6, 6, (9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _even, _want)) {
                _t.errorf(("Reverse(even) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_even), stdgo.Go.toInterface(_want));
            };
        };
        var _odd = (new stdgo.Slice<stdgo.GoInt>(7, 7, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        reverse((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _odd);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(7, 7, (2 : stdgo.GoInt), (9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _odd, _want)) {
                _t.errorf(("Reverse(odd) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_odd), stdgo.Go.toInterface(_want));
            };
        };
        var _words = stdgo.strings.Strings.fields(("one two three" : stdgo.GoString));
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _words);
        {
            var _want = stdgo.strings.Strings.fields(("three two one" : stdgo.GoString));
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _words, _want)) {
                _t.errorf(("Reverse(words) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_words), stdgo.Go.toInterface(_want));
            };
        };
        var _singleton = (new stdgo.Slice<stdgo.GoString>(1, 1, ("one" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _singleton);
        {
            var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ("one" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _singleton, _want)) {
                _t.errorf(("Reverse(singeleton) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_singleton), stdgo.Go.toInterface(_want));
            };
        };
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoString>));
    }
/**
    // naiveReplace is a baseline implementation to the Replace function.
**/
macro function _naiveReplace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
function testReplace(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_10>(4, 4, ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(4, 4, (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_10), ({ _s : {
            var a = function():stdgo.Slice<stdgo.GoInt> {
                var _s = new stdgo.Slice<stdgo.GoInt>((3 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__();
                _s[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _s[(1 : stdgo.GoInt)] = (1 : stdgo.GoInt);
                _s[(2 : stdgo.GoInt)] = (2 : stdgo.GoInt);
                return _s;
            };
            a();
        }, _v : (new stdgo.Slice<stdgo.GoInt>(5, 5, (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_10)) : stdgo.Slice<T__struct_10>)) {
            var __0 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s), __1 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._v), _vv = __1, _ss = __0;
            var _want = _naiveReplace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss, _test._i, _test._j, ..._vv.__toArray__());
            var _got = replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._i, _test._j, ..._test._v.__toArray__());
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                _t.errorf(("Replace(%v, %v, %v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testReplacePanics(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_11>(3, 3, ({ _name : ("indexes out of order" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_11), ({ _name : ("large index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (10 : stdgo.GoInt) } : T__struct_11), ({ _name : ("negative index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _i : (-1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_11)) : stdgo.Slice<T__struct_11>)) {
            var __0 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s), __1 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._v), _vv = __1, _ss = __0;
            if (!_panics(function():Void {
                replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss, _test._i, _test._j, ..._vv.__toArray__());
            })) {
                _t.errorf(("Replace %s: should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testReplaceOverlap(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _a = new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _want = new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_n <= (10 : stdgo.GoInt), _n++, {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i <= _n, _i++, {
                        {
                            var _j:stdgo.GoInt = _i;
                            stdgo.Go.cfor(_j <= _n, _j++, {
                                {
                                    var _x:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor(_x <= (10 : stdgo.GoInt), _x++, {
                                        {
                                            var _y:stdgo.GoInt = _x;
                                            stdgo.Go.cfor(_y <= (10 : stdgo.GoInt), _y++, {
                                                {
                                                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                                                    stdgo.Go.cfor(_k < (10 : stdgo.GoInt), _k++, {
                                                        _a[(_k : stdgo.GoInt)] = _k;
                                                    });
                                                };
                                                _want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                                                _want = (_want.__append__(...(_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                                _want = (_want.__append__(...(_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                                _want = (_want.__append__(...(_a.__slice__(_j, _n) : stdgo.Slice<stdgo.GoInt>).__toArray__()));
                                                var _got = replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt>), _i, _j, ...(_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>).__toArray__());
                                                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                                                    _t.errorf(("Insert with overlap failed n=%d i=%d j=%d x=%d y=%d, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                                };
                                            });
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function benchmarkReplace(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _cases = (new stdgo.Slice<T__struct_12>(2, 2, ({ _name : ("fast" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        }, _i : (10 : stdgo.GoInt), _j : (40 : stdgo.GoInt) } : T__struct_12), ({ _name : ("slow" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        }, _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
        for (__0 => _c in _cases) {
            _b.run(("naive-" : stdgo.GoString) + _c._name?.__copy__()?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_k < _b.n, _k++, {
                        var _s = _c._s();
                        var _v = _c._v();
                        _naiveReplace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, _c._i, _c._j, ..._v.__toArray__());
                    });
                };
            });
            _b.run(("optimized-" : stdgo.GoString) + _c._name?.__copy__()?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_k < _b.n, _k++, {
                        var _s = _c._s();
                        var _v = _c._v();
                        replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, _c._i, _c._j, ..._v.__toArray__());
                    });
                };
            });
        };
    }
function testRotate(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _s = new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__();
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_n < (10 : stdgo.GoInt), _n++, {
                {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_r < _n, _r++, {
                        _s = (_s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                        {
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(_i < _n, _i++, {
                                _s = (_s.__append__(_i));
                            });
                        };
                        _rotateLeft((0 : stdgo.GoInt), _s, _r);
                        {
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(_i < _n, _i++, {
                                if (_s[(_i : stdgo.GoInt)] != ((_i + _r) % _n)) {
                                    _t.errorf(("expected n=%d r=%d i:%d want:%d got:%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_i + _r) % _n), stdgo.Go.toInterface(_s[(_i : stdgo.GoInt)]));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testInsertGrowthRate(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _b = new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _maxCap:stdgo.GoInt = _b.capacity;
        var _nGrow:stdgo.GoInt = (0 : stdgo.GoInt);
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (1000000 : stdgo.GoInt), _i++, {
                _b = insert((null : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8), _b, (_b.length) - (1 : stdgo.GoInt), (0 : stdgo.GoUInt8));
                if (_b.capacity > _maxCap) {
                    _maxCap = _b.capacity;
                    _nGrow++;
                };
            });
        };
        var _want:stdgo.GoInt = (stdgo.math.Math.log((1e+06 : stdgo.GoFloat64)) / stdgo.math.Math.log((1.25 : stdgo.GoFloat64)) : stdgo.GoInt);
        if (_nGrow > _want) {
            _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
function testReplaceGrowthRate(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _b = new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _maxCap:stdgo.GoInt = _b.capacity;
        var _nGrow:stdgo.GoInt = (0 : stdgo.GoInt);
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (1000000 : stdgo.GoInt), _i++, {
                _b = replace((null : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8), _b, (_b.length) - (2 : stdgo.GoInt), (_b.length) - (1 : stdgo.GoInt), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                if (_b.capacity > _maxCap) {
                    _maxCap = _b.capacity;
                    _nGrow++;
                };
            });
        };
        var _want:stdgo.GoInt = (stdgo.math.Math.log((1e+06 : stdgo.GoFloat64)) / stdgo.math.Math.log((1.25 : stdgo.GoFloat64)) : stdgo.GoInt);
        if (_nGrow > _want) {
            _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
macro function _apply<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<$T_ -> Void>):haxe.macro.Expr.ExprOf<Void>;
@:named typedef T_testInference_20___localname___S = stdgo.Slice<stdgo.GoInt>;
/**
    // Test type inference with a named slice type.
**/
function testInference(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _apply((null : stdgo.Slice<stdgo.GoInt>), _s1, reverse);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, (3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _want)) {
                _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {};
        var _s2:stdgo.slices.Slices.T_testInference_20___localname___S = (new stdgo.Slice<stdgo.GoInt>(3, 3, (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.slices.Slices.T_testInference_20___localname___S);
        _apply(new stdgo.slices.Slices.T_testInference_20___localname___S(0, 0), _s2, reverse);
        {
            var _want:stdgo.slices.Slices.T_testInference_20___localname___S = ((new stdgo.Slice<stdgo.GoInt>(3, 3, (6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.slices.Slices.T_testInference_20___localname___S));
            if (!equal(new stdgo.slices.Slices.T_testInference_20___localname___S(0, 0), (0 : stdgo.GoInt), _s2, _want)) {
                _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.slices.Slices.T_testInference_20___localname___S)), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
    }
/**
    // Sort sorts a slice of any ordered type in ascending order.
    // When sorting floating-point numbers, NaNs are ordered before other values.
**/
macro function sort<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void>;
/**
    // SortFunc sorts the slice x in ascending order as determined by the cmp
    // function. This sort is not guaranteed to be stable.
    // cmp(a, b) should return a negative number when a < b, a positive number when
    // a > b and zero when a == b.
    //
    // SortFunc requires that cmp is a strict weak ordering.
    // See https://en.wikipedia.org/wiki/Weak_ordering#Strict_weak_orderings.
**/
macro function sortFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // SortStableFunc sorts the slice x while keeping the original order of equal
    // elements, using cmp to compare elements in the same way as [SortFunc].
**/
macro function sortStableFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // IsSorted reports whether x is sorted in ascending order.
**/
macro function isSorted<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // IsSortedFunc reports whether x is sorted in ascending order, with cmp as the
    // comparison function as defined by [SortFunc].
**/
macro function isSortedFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // Min returns the minimal value in x. It panics if x is empty.
    // For floating-point numbers, Min propagates NaNs (any NaN value in x
    // forces the output to be NaN).
**/
macro function min<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E>;
/**
    // MinFunc returns the minimal value in x, using cmp to compare elements.
    // It panics if x is empty. If there is more than one minimal element
    // according to the cmp function, MinFunc returns the first one.
**/
macro function minFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E>;
/**
    // Max returns the maximal value in x. It panics if x is empty.
    // For floating-point E, Max propagates NaNs (any NaN value in x
    // forces the output to be NaN).
**/
macro function max<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E>;
/**
    // MaxFunc returns the maximal value in x, using cmp to compare elements.
    // It panics if x is empty. If there is more than one maximal element
    // according to the cmp function, MaxFunc returns the first one.
**/
macro function maxFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E>;
/**
    // BinarySearch searches for target in a sorted slice and returns the position
    // where target is found, or the position where target would appear in the
    // sort order; it also returns a bool saying whether the target is really found
    // in the slice. The slice must be sorted in increasing order.
**/
macro function binarySearch<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
/**
    // BinarySearchFunc works like [BinarySearch], but uses a custom comparison
    // function. The slice must be sorted in increasing order, where "increasing"
    // is defined by cmp. cmp should return 0 if the slice element matches
    // the target, a negative number if the slice element precedes the target,
    // or a positive number if the slice element follows the target.
    // cmp must implement the same ordering as the slice, such that if
    // cmp(a, t) < 0 and cmp(b, t) >= 0, then a must precede b in the slice.
**/
macro function binarySearchFunc<S, E, T_>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, __generic__2:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<T_>, _cmp:haxe.macro.Expr.ExprOf<($E, $T_) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        return (1u32 : stdgo.GoUInt) << stdgo.math.bits.Bits.len((_length : stdgo.GoUInt));
    }
/**
    // isNaN reports whether x is a NaN without requiring the math package.
    // This will always return false if T is not floating-point.
**/
macro function _isNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // These benchmarks compare sorting a large slice of int with sort.Ints vs.
    // slices.Sort
**/
function _makeRandomInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        stdgo.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _ints = new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _ints[(_i : stdgo.GoInt)] = stdgo.math.rand.Rand.intn(_n);
            });
        };
        return _ints;
    }
function _makeSortedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _ints[(_i : stdgo.GoInt)] = _i;
            });
        };
        return _ints;
    }
function _makeReversedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _ints[(_i : stdgo.GoInt)] = _n - _i;
            });
        };
        return _ints;
    }
function benchmarkSortInts(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeRandomInts((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo.sort.Sort.ints(_ints);
            });
        };
    }
function _makeSortedStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _x = new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _x[(_i : stdgo.GoInt)] = stdgo.strconv.Strconv.itoa(_i)?.__copy__();
            });
        };
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _x);
        return _x;
    }
function benchmarkSlicesSortInts(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeRandomInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkSlicesSortInts_Sorted(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeReversedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkIntsAreSorted(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo.sort.Sort.intsAreSorted(_ints);
            });
        };
    }
function benchmarkIsSorted(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
/**
    // Since we're benchmarking these sorts against each other, make sure that they
    // generate similar results.
**/
function testIntSorts(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _ints = _makeRandomInts((200 : stdgo.GoInt));
        var _ints2 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
        stdgo.sort.Sort.ints(_ints);
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints2);
        for (_i in 0 ... _ints.length.toBasic()) {
            if (_ints[(_i : stdgo.GoInt)] != (_ints2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("ints2 mismatch at %d; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ints[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ints2[(_i : stdgo.GoInt)]));
            };
        };
    }
/**
    // makeRandomStrings generates n random strings with alphabetic runes of
    // varying lengths.
**/
function _makeRandomStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        stdgo.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _letters:stdgo.Slice<stdgo.GoInt32> = (("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString) : stdgo.Slice<stdgo.GoRune>);
        var _ss = new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                var _sb:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
                var _slen:stdgo.GoInt = (2 : stdgo.GoInt) + stdgo.math.rand.Rand.intn((50 : stdgo.GoInt));
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _slen, _j++, {
                        _sb.writeRune(_letters[(stdgo.math.rand.Rand.intn((_letters.length)) : stdgo.GoInt)]);
                    });
                };
                _ss[(_i : stdgo.GoInt)] = (_sb.string() : stdgo.GoString)?.__copy__();
            });
        };
        return _ss;
    }
function testStringSorts(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _ss = _makeRandomStrings((200 : stdgo.GoInt));
        var _ss2 = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
        stdgo.sort.Sort.strings(_ss);
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss2);
        for (_i in 0 ... _ss.length.toBasic()) {
            if (_ss[(_i : stdgo.GoInt)] != (_ss2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("ss2 mismatch at %d; %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ss[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ss2[(_i : stdgo.GoInt)]));
            };
        };
    }
function benchmarkSortStrings(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ss = _makeRandomStrings((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo.sort.Sort.strings(_ss);
            });
        };
    }
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _ss = _makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                stdgo.sort.Sort.strings(_ss);
            });
        };
    }
function benchmarkSlicesSortStrings(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ss = _makeRandomStrings((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
            });
        };
    }
function benchmarkSlicesSortStrings_Sorted(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _ss = _makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
            });
        };
    }
function _makeRandomStructs(_n:stdgo.GoInt):T_myStructs {
        stdgo.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _structs = new stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>((_n : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : stdgo.math.rand.Rand.intn(_n) } : stdgo.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo.slices.Slices.T_myStruct>);
            });
        };
        return _structs;
    }
function testStructSorts(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _ss:stdgo.slices.Slices.T_myStructs = _makeRandomStructs((200 : stdgo.GoInt));
        var _ss2 = new stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>((_ss.length : stdgo.GoInt).toBasic(), 0);
        for (_i => _ in _ss) {
            _ss2[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _ss[(_i : stdgo.GoInt)]._n } : stdgo.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo.slices.Slices.T_myStruct>);
        };
        stdgo.sort.Sort.sort(stdgo.Go.asInterface(_ss));
        sortFunc((null : stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>), (null : stdgo.Ref<stdgo.slices.Slices.T_myStruct>), _ss2, function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
            return _a._n - _b._n;
        });
        for (_i => _ in _ss) {
            if (stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo.slices.Slices.T_myStruct)) != stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo.slices.Slices.T_myStruct))) {
                _t.fatalf(("ints2 mismatch at %d; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo.slices.Slices.T_myStruct)), stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo.slices.Slices.T_myStruct)));
            };
        };
    }
function benchmarkSortStructs(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ss:stdgo.slices.Slices.T_myStructs = _makeRandomStructs((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo.sort.Sort.sort(stdgo.Go.asInterface(_ss));
            });
        };
    }
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _cmpFunc = function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
            return _a._n - _b._n;
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _b.stopTimer();
                var _ss:stdgo.slices.Slices.T_myStructs = _makeRandomStructs((100000 : stdgo.GoInt));
                _b.startTimer();
                sortFunc(new stdgo.slices.Slices.T_myStructs(0, 0), (null : stdgo.Ref<stdgo.slices.Slices.T_myStruct>), _ss, _cmpFunc);
            });
        };
    }
function benchmarkBinarySearchFloats(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _floats = new stdgo.Slice<stdgo.GoFloat64>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _floats.length.toBasic()) {
                    _floats[(_i : stdgo.GoInt)] = (_i : stdgo.GoFloat64);
                };
                var _midpoint:stdgo.GoInt = (_floats.length) / (2 : stdgo.GoInt);
                var _needle:stdgo.GoFloat64 = (_floats[(_midpoint : stdgo.GoInt)] + _floats[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)]) / (2 : stdgo.GoFloat64);
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        binarySearch((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _floats, _needle);
                    });
                };
            });
        };
    }
function benchmarkBinarySearchFuncStruct(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _structs = new stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>((_size : stdgo.GoInt).toBasic(), 0);
                for (_i in 0 ... _structs.length.toBasic()) {
                    _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _i } : stdgo.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo.slices.Slices.T_myStruct>);
                };
                var _midpoint:stdgo.GoInt = (_structs.length) / (2 : stdgo.GoInt);
                var _needle = (stdgo.Go.setRef(({ _n : (_structs[(_midpoint : stdgo.GoInt)]._n + _structs[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)]._n) / (2 : stdgo.GoInt) } : stdgo.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo.slices.Slices.T_myStruct>);
                var _lessFunc = function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
                    return _a._n - _b._n;
                };
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        binarySearchFunc((null : stdgo.Slice<stdgo.Ref<stdgo.slices.Slices.T_myStruct>>), (null : stdgo.Ref<stdgo.slices.Slices.T_myStruct>), (null : stdgo.Ref<stdgo.slices.Slices.T_myStruct>), _structs, _needle, _lessFunc);
                    });
                };
            });
        };
    }
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        sortFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data, function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return _a - _b;
        });
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (_float64s.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>));
        sort((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFloat64SliceWithNaNs(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = (_float64sWithNaNs.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>);
        var _data2 = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        sort((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        stdgo.sort.Sort.float64s(_data2);
        if (!isSorted((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data)) {
            _t.error(stdgo.Go.toInterface(("IsSorted indicates data isn\'t sorted" : stdgo.GoString)));
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _data, _data2, function(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
            return stdgo.cmp.Cmp.compare((0 : stdgo.GoFloat64), _a, _b) == ((0 : stdgo.GoInt));
        })) {
            _t.errorf(("mismatch between Sort and sort.Float64: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
        };
    }
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), (_strs.__slice__(0) : stdgo.Slice<stdgo.GoString>));
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_strs));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (1000000 : stdgo.GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = _n / ((100 : stdgo.GoInt));
        };
        var _data = new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_data.length), _i++, {
                _data[(_i : stdgo.GoInt)] = stdgo.math.rand.Rand.intn((100 : stdgo.GoInt));
            });
        };
        if (isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
/**
    // Pairs compare on a only.
**/
function _intPairCmp(_x:T_intPair, _y:T_intPair):stdgo.GoInt {
        return _x._a - _y._a;
    }
function testStability(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (100000 : stdgo.GoInt), __1:stdgo.GoInt = (1000 : stdgo.GoInt), _m:stdgo.GoInt = __1, _n:stdgo.GoInt = __0;
        if (stdgo.testing.Testing.short()) {
            {
                final __tmp__0 = (1000 : stdgo.GoInt);
                final __tmp__1 = (100 : stdgo.GoInt);
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data:stdgo.slices.Slices.T_intPairs = new stdgo.Slice<stdgo.slices.Slices.T_intPair>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo.slices.Slices.T_intPair)]);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_data.length), _i++, {
                _data[(_i : stdgo.GoInt)]._a = stdgo.math.rand.Rand.intn(_m);
            });
        };
        if (isSortedFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        _data._initB();
        sortStableFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _data._initB();
        sortStableFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable shuffled sorted %d ints (order)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable shuffled sorted %d ints (stability)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_data.length), _i++, {
                _data[(_i : stdgo.GoInt)]._a = (_data.length) - _i;
            });
        };
        _data._initB();
        sortStableFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo.slices.Slices.T_intPairs(0, 0), ({} : stdgo.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function _cmpS(_s1:S, _s2:S):stdgo.GoInt {
        return stdgo.cmp.Cmp.compare((0 : stdgo.GoInt), _s1._a, _s2._a);
    }
function testMinMax(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _intCmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return _a - _b;
        };
        var _tests = (new stdgo.Slice<T__struct_13>(
9,
9,
({ _data : (new stdgo.Slice<stdgo.GoInt>(1, 1, (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (7 : stdgo.GoInt), _wantMax : (7 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (3 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13),
({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (2 : stdgo.GoInt), (-9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _wantMin : (-9 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13)) : stdgo.Slice<T__struct_13>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._data))?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                var _gotMin:stdgo.GoInt = min((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data);
                if (_gotMin != (_tt._wantMin)) {
                    _t.errorf(("Min got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMin), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMinFunc:stdgo.GoInt = minFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data, _intCmp);
                if (_gotMinFunc != (_tt._wantMin)) {
                    _t.errorf(("MinFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMinFunc), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMax:stdgo.GoInt = max((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data);
                if (_gotMax != (_tt._wantMax)) {
                    _t.errorf(("Max got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMax), stdgo.Go.toInterface(_tt._wantMax));
                };
                var _gotMaxFunc:stdgo.GoInt = maxFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data, _intCmp);
                if (_gotMaxFunc != (_tt._wantMax)) {
                    _t.errorf(("MaxFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMaxFunc), stdgo.Go.toInterface(_tt._wantMax));
                };
            });
        };
        var _svals = (new stdgo.Slice<stdgo.slices.Slices.S>(4, 4, (new stdgo.slices.Slices.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo.slices.Slices.S), (new stdgo.slices.Slices.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo.slices.Slices.S), (new stdgo.slices.Slices.S((1 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo.slices.Slices.S), (new stdgo.slices.Slices.S((2 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo.slices.Slices.S)) : stdgo.Slice<stdgo.slices.Slices.S>);
        var _gotMin:stdgo.slices.Slices.S = minFunc((null : stdgo.Slice<stdgo.slices.Slices.S>), ({} : stdgo.slices.Slices.S), _svals, _cmpS)?.__copy__();
        var _wantMin:stdgo.slices.Slices.S = (new stdgo.slices.Slices.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo.slices.Slices.S);
        if (stdgo.Go.toInterface(_gotMin) != stdgo.Go.toInterface(_wantMin)) {
            _t.errorf(("MinFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(_gotMin), stdgo.Go.toInterface(_wantMin));
        };
        var _gotMax:stdgo.slices.Slices.S = maxFunc((null : stdgo.Slice<stdgo.slices.Slices.S>), ({} : stdgo.slices.Slices.S), _svals, _cmpS)?.__copy__();
        var _wantMax:stdgo.slices.Slices.S = (new stdgo.slices.Slices.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo.slices.Slices.S);
        if (stdgo.Go.toInterface(_gotMax) != stdgo.Go.toInterface(_wantMax)) {
            _t.errorf(("MaxFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(_gotMax), stdgo.Go.toInterface(_wantMax));
        };
    }
function testMinMaxNaNs(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fs = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, (1 : stdgo.GoFloat64), (999.9 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64), (-400.4 : stdgo.GoFloat64), (-5.14 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>);
        if (min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs) != (-400.4 : stdgo.GoFloat64)) {
            _t.errorf(("got min %v, want -400.4" : stdgo.GoString), stdgo.Go.toInterface(min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs)));
        };
        if (max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs) != (999.9 : stdgo.GoFloat64)) {
            _t.errorf(("got max %v, want 999.9" : stdgo.GoString), stdgo.Go.toInterface(max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs)));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_fs.length), _i++, {
                var _testfs = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs);
                _testfs[(_i : stdgo.GoInt)] = stdgo.math.Math.naN();
                var _fmin:stdgo.GoFloat64 = min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _testfs);
                if (!stdgo.math.Math.isNaN(_fmin)) {
                    _t.errorf(("got min %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmin));
                };
                var _fmax:stdgo.GoFloat64 = max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _testfs);
                if (!stdgo.math.Math.isNaN(_fmax)) {
                    _t.errorf(("got max %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmax));
                };
            });
        };
    }
function testMinMaxPanics(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _intCmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return _a - _b;
        };
        var _emptySlice = (new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>);
        if (!_panics(function():Void {
            min((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice);
        })) {
            _t.errorf(("Min([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            max((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice);
        })) {
            _t.errorf(("Max([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            minFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice, _intCmp);
        })) {
            _t.errorf(("MinFunc([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            maxFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice, _intCmp);
        })) {
            _t.errorf(("MaxFunc([]): got no panic, want panic" : stdgo.GoString));
        };
    }
function testBinarySearch(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _str1 = (new stdgo.Slice<stdgo.GoString>(1, 1, ("foo" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _str2 = (new stdgo.Slice<stdgo.GoString>(2, 2, ("ab" : stdgo.GoString), ("ca" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _str3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ("mo" : stdgo.GoString), ("qo" : stdgo.GoString), ("vo" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _str4 = (new stdgo.Slice<stdgo.GoString>(4, 4, ("ab" : stdgo.GoString), ("ad" : stdgo.GoString), ("ca" : stdgo.GoString), ("xy" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _strRepeats = (new stdgo.Slice<stdgo.GoString>(
9,
9,
("ba" : stdgo.GoString),
("ca" : stdgo.GoString),
("da" : stdgo.GoString),
("da" : stdgo.GoString),
("da" : stdgo.GoString),
("ka" : stdgo.GoString),
("ma" : stdgo.GoString),
("ma" : stdgo.GoString),
("ta" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _strSame = (new stdgo.Slice<stdgo.GoString>(3, 3, ("xx" : stdgo.GoString), ("xx" : stdgo.GoString), ("xx" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _tests = (new stdgo.Slice<T__struct_14>(
34,
34,
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>), _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>), _target : stdgo.Go.str()?.__copy__(), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str1, _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str1, _target : ("bar" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str1, _target : ("zx" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str2, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("ca" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str2, _target : ("ra" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("bb" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("mo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("nb" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("qo" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("tr" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("vo" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("xr" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("ac" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("ax" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ca" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("cc" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("dd" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("xy" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("zz" : stdgo.GoString), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strRepeats, _target : ("da" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strRepeats, _target : ("db" : stdgo.GoString), _wantPos : (5 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strRepeats, _target : ("ma" : stdgo.GoString), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strRepeats, _target : ("mb" : stdgo.GoString), _wantPos : (8 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strSame, _target : ("xx" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strSame, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strSame, _target : ("zz" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14)) : stdgo.Slice<T__struct_14>);
        for (__0 => _tt in _tests) {
            _t.run(_tt._target?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _tt._data, _tt._target?.__copy__()), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
                {
                    var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _tt._data, _tt._target?.__copy__(), stdgo.strings.Strings.compare), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                        _t.errorf(("BinarySearchFunc got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchInts(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(8, 8, (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt), (90 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _tests = (new stdgo.Slice<T__struct_15>(4, 4, ({ _target : (20 : stdgo.GoInt), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_15), ({ _target : (23 : stdgo.GoInt), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_15), ({ _target : (43 : stdgo.GoInt), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_15), ({ _target : (80 : stdgo.GoInt), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : T__struct_15)) : stdgo.Slice<T__struct_15>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo.strconv.Strconv.itoa(_tt._target)?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
                {
                    var _cmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
                        return _a - _b;
                    };
                    var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _data, _tt._target, _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                        _t.errorf(("BinarySearchFunc got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchFloats(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, stdgo.math.Math.naN(), (-0.25 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1.4 : stdgo.GoFloat64)) : stdgo.Slice<stdgo.GoFloat64>);
        var _tests = (new stdgo.Slice<T__struct_16>(6, 6, ({ _target : stdgo.math.Math.naN(), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : stdgo.math.Math.inf((-1 : stdgo.GoInt)), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_16), ({ _target : (-0.25 : stdgo.GoFloat64), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (0 : stdgo.GoFloat64), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (1.4 : stdgo.GoFloat64), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (1.5 : stdgo.GoFloat64), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : T__struct_16)) : stdgo.Slice<T__struct_16>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._target))?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchFunc(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _cmp:(stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo.strings.Strings.compare(stdgo.strconv.Strconv.itoa(_a)?.__copy__(), _b?.__copy__());
        };
        var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _data, ("2" : stdgo.GoString), _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        if ((_pos != (3 : stdgo.GoInt)) || !_found) {
            _t.errorf(("BinarySearchFunc(%v, %q, cmp) = %v, %v, want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(("2" : stdgo.GoString)), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(true));
        };
    }
/**
    // insertionSortCmpFunc sorts data[a:b] using insertion sort.
**/
macro function _insertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // siftDownCmpFunc implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
macro function _siftDownCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _heapSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // pdqsortCmpFunc sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
macro function _pdqsortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // partitionCmpFunc does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
macro function _partitionCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
/**
    // partitionEqualCmpFunc partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
macro function _partitionEqualCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // partialInsertionSortCmpFunc partially sorts a slice, returns true if the slice is sorted at the end.
**/
macro function _partialInsertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // breakPatternsCmpFunc scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
macro function _breakPatternsCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // choosePivotCmpFunc chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
macro function _choosePivotCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }>;
/**
    // order2CmpFunc returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
macro function _order2CmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }>;
/**
    // medianCmpFunc returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
macro function _medianCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // medianAdjacentCmpFunc finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
macro function _medianAdjacentCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _reverseRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _swapRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _stableCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // symMergeCmpFunc merges the two sorted subsequences data[a:m] and data[m:b] using
    // the SymMerge algorithm from Pok-Son Kim and Arne Kutzner, "Stable Minimum
    // Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz
    // Radzik, editors, Algorithms - ESA 2004, volume 3221 of Lecture Notes in
    // Computer Science, pages 714-723. Springer, 2004.
    //
    // Let M = m-a and N = b-n. Wolog M < N.
    // The recursion depth is bound by ceil(log(N+M)).
    // The algorithm needs O(M*log(N/M + 1)) calls to data.Less.
    // The algorithm needs O((M+N)*log(M)) calls to data.Swap.
    //
    // The paper gives O((M+N)*log(M)) as the number of assignments assuming a
    // rotation algorithm which uses O(M+N+gcd(M+N)) assignments. The argumentation
    // in the paper carries through for Swap operations, especially as the block
    // swapping rotate uses only O(M+N) Swaps.
    //
    // symMerge assumes non-degenerate arguments: a < m && m < b.
    // Having the caller check this condition eliminates many leaf recursion calls,
    // which improves performance.
**/
macro function _symMergeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // rotateCmpFunc rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
**/
macro function _rotateCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // insertionSortOrdered sorts data[a:b] using insertion sort.
**/
macro function _insertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // siftDownOrdered implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
macro function _siftDownOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _heapSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // pdqsortOrdered sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
macro function _pdqsortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // partitionOrdered does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
macro function _partitionOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
/**
    // partitionEqualOrdered partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
macro function _partitionEqualOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // partialInsertionSortOrdered partially sorts a slice, returns true if the slice is sorted at the end.
**/
macro function _partialInsertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
/**
    // breakPatternsOrdered scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
macro function _breakPatternsOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // choosePivotOrdered chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
macro function _choosePivotOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }>;
/**
    // order2Ordered returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
macro function _order2Ordered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }>;
/**
    // medianOrdered returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
macro function _medianOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
/**
    // medianAdjacentOrdered finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
macro function _medianAdjacentOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _reverseRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _swapRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _stableOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // symMergeOrdered merges the two sorted subsequences data[a:m] and data[m:b] using
    // the SymMerge algorithm from Pok-Son Kim and Arne Kutzner, "Stable Minimum
    // Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz
    // Radzik, editors, Algorithms - ESA 2004, volume 3221 of Lecture Notes in
    // Computer Science, pages 714-723. Springer, 2004.
    //
    // Let M = m-a and N = b-n. Wolog M < N.
    // The recursion depth is bound by ceil(log(N+M)).
    // The algorithm needs O(M*log(N/M + 1)) calls to data.Less.
    // The algorithm needs O((M+N)*log(M)) calls to data.Swap.
    //
    // The paper gives O((M+N)*log(M)) as the number of assignments assuming a
    // rotation algorithm which uses O(M+N+gcd(M+N)) assignments. The argumentation
    // in the paper carries through for Swap operations, especially as the block
    // swapping rotate uses only O(M+N) Swaps.
    //
    // symMerge assumes non-degenerate arguments: a < m && m < b.
    // Having the caller check this condition eliminates many leaf recursion calls,
    // which improves performance.
**/
macro function _symMergeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
/**
    // rotateOrdered rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
**/
macro function _rotateOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return __self__.value.next(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_xorshift>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T_xorshift_asInterface) class T_xorshift_static_extension {
    @:keep
    @:pointer
    static public function next(____:T_xorshift,  _r:stdgo.Pointer<T_xorshift>):stdgo.GoUInt64 {
        _r.value = _r.value ^ (_r.value << (13i64 : stdgo.GoUInt64));
        _r.value = _r.value ^ (_r.value >> (17i64 : stdgo.GoUInt64));
        _r.value = _r.value ^ (_r.value << (5i64 : stdgo.GoUInt64));
        return (_r.value : stdgo.GoUInt64);
    }
}
class T_myStructs_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_myStructs>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T_myStructs_asInterface) class T_myStructs_static_extension {
    @:keep
    static public function swap( _s:T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:T_myStructs = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            _s[(_i : stdgo.GoInt)] = __tmp__0;
            _s[(_j : stdgo.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _s:T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:T_myStructs = _s;
        return _s[(_i : stdgo.GoInt)]._n < _s[(_j : stdgo.GoInt)]._n;
    }
    @:keep
    static public function len( _s:T_myStructs):stdgo.GoInt {
        @:recv var _s:T_myStructs = _s;
        return (_s.length);
    }
}
class T_intPairs_asInterface {
    /**
        // InOrder checks if a-equal elements were not reordered.
    **/
    @:keep
    public dynamic function _inOrder():Bool return __self__.value._inOrder();
    /**
        // Record initial order in B.
    **/
    @:keep
    public dynamic function _initB():Void __self__.value._initB();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intPairs>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    /**
        // InOrder checks if a-equal elements were not reordered.
    **/
    @:keep
    static public function _inOrder( _d:T_intPairs):Bool {
        @:recv var _d:T_intPairs = _d;
        var __0:stdgo.GoInt = (-1 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _lastB:stdgo.GoInt = __1, _lastA:stdgo.GoInt = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_d.length), _i++, {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    continue;
                };
                if (_d[(_i : stdgo.GoInt)]._b <= _lastB) {
                    return false;
                };
                _lastB = _d[(_i : stdgo.GoInt)]._b;
            });
        };
        return true;
    }
    /**
        // Record initial order in B.
    **/
    @:keep
    static public function _initB( _d:T_intPairs):Void {
        @:recv var _d:T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}
