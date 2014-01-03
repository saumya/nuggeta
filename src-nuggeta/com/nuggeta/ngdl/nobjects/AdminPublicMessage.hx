package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AdminPublicMessage;

class AdminPublicMessage implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PlayerIdSet = false;
		_MessageSet = false;
	}

	public static var serializerID:Int = -3012;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PlayerId:String;

	var _PlayerIdSet:Bool;

	var _Message:String;

	var _MessageSet:Bool;

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

	public function getPlayerId():String
	{
		return _PlayerId;
	}

	public function setPlayerId( value:String):Void
	{
		_PlayerId = value;
		_PlayerIdSet = true;
	}

	public function isPlayerIdSet():Bool
	{
		return _PlayerIdSet;
	}

	public function unSetPlayerId():Void
	{
		_PlayerIdSet = false;
	}

	public function getMessage():String
	{
		return _Message;
	}

	public function setMessage( value:String):Void
	{
		_Message = value;
		_MessageSet = true;
	}

	public function isMessageSet():Bool
	{
		return _MessageSet;
	}

	public function unSetMessage():Void
	{
		_MessageSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w15920:AdminPublicMessage = new AdminPublicMessage();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w15920.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w15920.setRequestId(_RequestId);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_w15920.setPlayerId(_PlayerId);
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_w15920.setMessage(_Message);
		}
		return _w15920;
	}

	public function toString():String
	{
		var _d15921:String = "";
		_d15921 += "[" + "AdminPublicMessage" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d15921 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d15921 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_d15921 += "_PlayerId=" + _PlayerId + "| ";
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_d15921 += "_Message=" + _Message + "| ";
		}
		_d15921 += "]";
		return _d15921;
	}
}
