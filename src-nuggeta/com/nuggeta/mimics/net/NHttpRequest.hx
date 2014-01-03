package com.nuggeta.mimics.net;
import com.nuggeta.net.NetConnectionReceivedHandler;
import com.nuggeta.net.NetConnectionSendFailHandler;

interface NHttpRequest
{

	function get( id:String,  url:String,  connectionReceivedHandler:Dynamic ->Void,  asyncSendFailResult:Void ->Void):Void;

	function post( id:String,  url:String,  data:String,  connectionReceivedHandler:Dynamic ->Void,  asyncSendFailResult:Void ->Void):Void;
}
