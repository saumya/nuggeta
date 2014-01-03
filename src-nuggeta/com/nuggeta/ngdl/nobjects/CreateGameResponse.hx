package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.CreateGameStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.CreateGameStatus;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;

class CreateGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_CreateGameStatusSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -10659;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _CreateGameStatus:CreateGameStatus;

	var _CreateGameStatusSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

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

	public function getCreateGameStatus():CreateGameStatus
	{
		return _CreateGameStatus;
	}

	public function setCreateGameStatus( value:CreateGameStatus):Void
	{
		_CreateGameStatus = value;
		_CreateGameStatusSet = true;
	}

	public function isCreateGameStatusSet():Bool
	{
		return _CreateGameStatusSet;
	}

	public function unSetCreateGameStatus():Void
	{
		_CreateGameStatusSet = false;
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


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _m17147:CreateGameResponse = new CreateGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m17147.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m17147.setRequestId(_RequestId);
		}
		if (_CreateGameStatusSet == true && Utils.isNull(_CreateGameStatus) == false) 
		{
			_m17147.setCreateGameStatus(_CreateGameStatus);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_m17147.setGameId(_GameId);
		}
		return _m17147;
	}

	public function toString():String
	{
		var _c17148:String = "";
		_c17148 += "[" + "CreateGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c17148 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c17148 += "_RequestId=" + _RequestId + "| ";
		}
		if (_CreateGameStatusSet == true && Utils.isNull(_CreateGameStatus) == false) 
		{
			_c17148 += "_CreateGameStatus=" + _CreateGameStatus + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_c17148 += "_GameId=" + _GameId + "| ";
		}
		_c17148 += "]";
		return _c17148;
	}
}
