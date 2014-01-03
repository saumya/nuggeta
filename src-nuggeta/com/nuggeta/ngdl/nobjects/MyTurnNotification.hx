package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;

class MyTurnNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -3139;

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
		var _h11599:MyTurnNotification = new MyTurnNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h11599.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h11599.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_h11599.setGameId(_GameId);
		}
		return _h11599;
	}

	public function toString():String
	{
		var _t11600:String = "";
		_t11600 += "[" + "MyTurnNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t11600 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t11600 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_t11600 += "_GameId=" + _GameId + "| ";
		}
		_t11600 += "]";
		return _t11600;
	}
}
