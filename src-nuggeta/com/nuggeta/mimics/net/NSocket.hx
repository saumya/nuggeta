package com.nuggeta.mimics.net;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;
import com.nuggeta.net.NetConnectionDrainHandler;
import com.nuggeta.net.NetConnectionFailHandler;
import com.nuggeta.net.NetConnectionLostHandler;
import com.nuggeta.net.NetConnectionOpenedHandler;
import com.nuggeta.net.NetConnectionReceivedHandler;
import com.nuggeta.net.NetConnectionSendFailHandler;
import com.nuggeta.net.NetConnectionSendSuccessHandler;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;

interface NSocket
{

	function openConnection( id:String,  host:String,  port:Int,  url:String,  connectionOpenedHandler:Void ->Void,  connectionLostHandler:Void ->Void,  connectionFailHandler:Void ->Void,  connectionReceivedHandler:Dynamic ->Void):Void;

	function sendBytes( byteBuffer:ByteBuffer,  asyncSendSuccessResult:Void ->Void,  asyncSendFailResult:Void ->Void):Void;

	function sendString( strData:String,  asyncSendSuccessResult:Void ->Void,  asyncSendFailResult:Void ->Void):Void;

	function drain( connectionDrainHandler:Void ->Void):Void;

	function close():Void;
}
