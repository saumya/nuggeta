package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerListRequest;

class SendGameChatToPlayerListRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_MessageSet = false;
	}

	public static var serializerID:Int = -10755;

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
		var _z16777:SendGameChatToPlayerListRequest = new SendGameChatToPlayerListRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z16777.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z16777.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_z16777.setGameId(_GameId);
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_z16777.setMessage(_Message);
		}
		return _z16777;
	}

	public function toString():String
	{
		var _s16778:String = "";
		_s16778 += "[" + "SendGameChatToPlayerListRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s16778 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s16778 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_s16778 += "_GameId=" + _GameId + "| ";
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_s16778 += "_Message=" + _Message + "| ";
		}
		_s16778 += "]";
		return _s16778;
	}
}
