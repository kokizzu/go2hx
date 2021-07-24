package stdgo.encoding.json;

import stdgo.GoString;
import stdgo.Slice;
import stdgo.internal.ErrorReturn;
import stdgo.StdGoTypes;

function marshal(v:AnyInterface):MultiReturn<{v0:Slice<GoByte>,v1:Error}> {
    return {v0: ((haxe.Json.stringify(v.value) : GoString) : Slice<GoByte>), v1: null};
}