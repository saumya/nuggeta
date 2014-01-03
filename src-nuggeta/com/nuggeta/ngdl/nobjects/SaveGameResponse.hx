package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SaveGameStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SaveGameStatus;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;

class SaveGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SaveGameStatusSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -10959;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SaveGameStatus:SaveGameStatus;

	var _SaveGameStatusSet:Bool;

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

	public function getSaveGameStatus():SaveGameStatus
	{
		return _SaveGameStatus;
	}

	public function setSaveGameStatus( value:SaveGameStatus):Void
	{
		_SaveGameStatus = value;
		_SaveGameStatusSet = true;
	}

	public function isSaveGameStatusSet():Bool
	{
		return _SaveGameStatusSet;
	}

	public function unSetSaveGameStatus():Void
	{
		_SaveGameStatusSet = false;
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
		var _m11579:SaveGameResponse = new SaveGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m11579.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m11579.setRequestId(_RequestId);
		}
		if (_SaveGameStatusSet == true && Utils.isNull(_SaveGameStatus) == false) 
		{
			_m11579.setSaveGameStatus(_SaveGameStatus);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_m11579.setGameId(_GameId);
		}
		return _m11579;
	}

	public function toString():String
	{
		var _y11580:String = "";
		_y11580 += "[" + "SaveGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y11580 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y11580 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SaveGameStatusSet == true && Utils.isNull(_SaveGameStatus) == false) 
		{
			_y11580 += "_SaveGameStatus=" + _SaveGameStatus + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_y11580 += "_GameId=" + _GameId + "| ";
		}
		_y11580 += "]";
		return _y11580;
	}
}
