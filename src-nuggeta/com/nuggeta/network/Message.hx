package com.nuggeta.network;
import com.nuggeta.network.Serializable;

interface Message extends Serializable
{

	function getRequestId():String;

	function setRequestId( requestId:String):Void;

	function setMessageId( messageId:String):Void;

	function getMessageId():String;
}
