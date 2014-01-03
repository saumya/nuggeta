package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SendGameChatRequest;

class SendGameChatRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_MessageSet = false;
	}

	public static var serializerID:Int = -10757;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

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

	public function getGameId():String
	{
		return _GameId;
	}

	public function setGameId( value:String):Void
	{
		_GameId = value;
		_GameIdSet = true;
	}

	public function isGameIdSet():Bool
	{
		return _GameIdSet;
	}

	public function unSetGameId():Void
	{
		_GameIdSet = false;
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
		var _q16555:SendGameChatRequest = new SendGameChatRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16555.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16555.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_q16555.setGameId(_GameId);
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_q16555.setMessage(_Message);
		}
		return _q16555;
	}

	public function toString():String
	{
		var _i16556:String = "";
		_i16556 += "[" + "SendGameChatRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i16556 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i16556 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_i16556 += "_GameId=" + _GameId + "| ";
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_i16556 += "_Message=" + _Message + "| ";
		}
		_i16556 += "]";
		return _i16556;
	}
}
