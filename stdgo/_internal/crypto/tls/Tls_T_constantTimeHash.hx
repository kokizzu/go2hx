package stdgo._internal.crypto.tls;
typedef T_constantTimeHash = stdgo.StructType & {
    > stdgo._internal.hash.Hash_Hash.Hash,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function constantTimeSum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
};
