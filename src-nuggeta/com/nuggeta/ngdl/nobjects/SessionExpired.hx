package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SessionExpired;

class SessionExpired implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_sessionIdSet = false;
	}

	public static var serializerID:Int = -3121;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _sessionId:String;

	var _sessionIdSet:Bool;

	public function getMessageId():String
	{
		return _MessageId;
	}

	public function setMessageId( value:String):Void
	{
		_MessageId = value;
		_MessageIdSet = true;
	}

	public function isMessageIdSet():Bool
	{
		return _MessageIdSet;
	}

	public function unSetMessageId():Void
	{
		_MessageIdSet = false;
	}

	public function getRequestId():String
	{
		return _RequestId;
	}

	public function setRequestId( value:String):Void
	{
		_RequestId = value;
		_RequestIdSet = true;
	}

	public function isRequestIdSet():Bool
	{
		return _RequestIdSet;
	}

	public function unSetRequestId():Void
	{
		_RequestIdSet = false;
	}

	public function getSessionId():String
	{
		return _sessionId;
	}

	public function setSessionId( value:String):Void
	{
		_sessionId = value;
		_sessionIdSet = true;
	}

	public function issessionIdSet():Bool
	{
		return _sessionIdSet;
	}

	public function unSetsessionId():Void
	{
		_sessionIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _p16315:SessionExpired = new SessionExpired();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16315.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16315.setRequestId(_RequestId);
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_p16315.setSessionId(_sessionId);
		}
		return _p16315;
	}

	public function toString():String
	{
		var _j16316:String = "";
		_j16316 += "[" + "SessionExpired" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16316 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16316 += "_RequestId=" + _RequestId + "| ";
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_j16316 += "_sessionId=" + _sessionId + "| ";
		}
		_j16316 += "]";
		return _j16316;
	}
}
