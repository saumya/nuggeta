package com.nuggeta.temp.a.b.c.d;

interface ConnectionListener
{

	function onConnectionReady( listenerId:String):Void;

	function onConnectionFail( listenerId:String):Void;

	function onConnectionLost( listenerId:String):Void;

	function onInvalidVersionDetected( listenerId:String):Void;
}
