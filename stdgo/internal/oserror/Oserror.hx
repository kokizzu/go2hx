package stdgo.internal.oserror;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package oserror defines errors values used in the os package.
	//
	// These types are defined here to permit the syscall package to reference them.
**/
private var __go2hxdoc__package:Bool;

var errInvalid:Error = stdgo.errors.Errors.new_(Go.str("invalid argument"));
var errPermission:Error = stdgo.errors.Errors.new_(Go.str("permission denied"));
var errExist:Error = stdgo.errors.Errors.new_(Go.str("file already exists"));
var errNotExist:Error = stdgo.errors.Errors.new_(Go.str("file does not exist"));
var errClosed:Error = stdgo.errors.Errors.new_(Go.str("file already closed"));
