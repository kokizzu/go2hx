package stdgo._internal.flag;
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling):stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _errorHandling : _errorHandling } : stdgo._internal.flag.Flag_FlagSet.FlagSet)) : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        (@:checkr _f ?? throw "null pointer dereference").usage = @:check2r _f._defaultUsage;
        return _f;
    }
