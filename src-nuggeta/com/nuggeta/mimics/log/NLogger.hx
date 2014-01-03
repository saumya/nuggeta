package com.nuggeta.mimics.log;
import haxe.Int64;
import haxe.Int64;
import com.nuggeta.NError;

interface NLogger
{

	function errorCause( msg:String,  e:NError):Void;

	function error( msg:String):Void;

	function info( msg:String):Void;

	function infoCause( msg:String,  e:NError):Void;

	function debug( msg:String):Void;

	function debugCause( msg:String,  e:NError):Void;

	function warn( msg:String):Void;

	function warnCause( msg:String,  e:NError):Void;

	function isDebug():Bool;
}
