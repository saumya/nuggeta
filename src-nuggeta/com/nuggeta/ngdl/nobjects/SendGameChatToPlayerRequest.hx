package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerRequest;

class SendGameChatToPlayerRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_PlayerIdSet = false;
		_MessageSet = false;
	}

	public static var serializerID:Int = -10756;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

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
		var _z15912:SendGameChatToPlayerRequest = new SendGameChatToPlayerRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z15912.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z15912.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_z15912.setGameId(_GameId);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_z15912.setPlayerId(_PlayerId);
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_z15912.setMessage(_Message);
		}
		return _z15912;
	}

	public function toString():String
	{
		var _r15913:String = "";
		_r15913 += "[" + "SendGameChatToPlayerRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r15913 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r15913 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_r15913 += "_GameId=" + _GameId + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_r15913 += "_PlayerId=" + _PlayerId + "| ";
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_r15913 += "_Message=" + _Message + "| ";
		}
		_r15913 += "]";
		return _r15913;
	}
}
