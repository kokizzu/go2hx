package stdgo._internal.net.rpc;
function register(_rcvr:stdgo.AnyInterface):stdgo.Error {
        return @:check2r stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer.register(_rcvr);
    }
