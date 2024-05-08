package stdgo.internal;
/**
    Package oserror defines errors values used in the os package.
    
    These types are defined here to permit the syscall package to reference them.
**/
private var __go2hxdoc__package : Bool;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.internal.oserror.Oserror.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.oserror.Oserror.errInvalid = v;
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.internal.oserror.Oserror.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.oserror.Oserror.errPermission = v;
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.internal.oserror.Oserror.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.oserror.Oserror.errExist = v;
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.internal.oserror.Oserror.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.oserror.Oserror.errNotExist = v;
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.internal.oserror.Oserror.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.oserror.Oserror.errClosed = v;
class Oserror {

}
