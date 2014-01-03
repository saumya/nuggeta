package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.StartGameRequest;

class StartGameRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -10617;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

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
		var _n16910:StartGameRequest = new StartGameRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16910.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16910.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_n16910.setGameId(_GameId);
		}
		return _n16910;
	}

	public function toString():String
	{
		var _o16911:String = "";
		_o16911 += "[" + "StartGameRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o16911 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o16911 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_o16911 += "_GameId=" + _GameId + "| ";
		}
		_o16911 += "]";
		return _o16911;
	}
}
