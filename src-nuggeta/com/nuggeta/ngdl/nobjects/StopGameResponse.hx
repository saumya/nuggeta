package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.StopGameStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.StopGameStatus;
import com.nuggeta.ngdl.nobjects.StopGameResponse;

class StopGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_StopGameStatusSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -10639;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _StopGameStatus:StopGameStatus;

	var _StopGameStatusSet:Bool;

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

	public function getStopGameStatus():StopGameStatus
	{
		return _StopGameStatus;
	}

	public function setStopGameStatus( value:StopGameStatus):Void
	{
		_StopGameStatus = value;
		_StopGameStatusSet = true;
	}

	public function isStopGameStatusSet():Bool
	{
		return _StopGameStatusSet;
	}

	public function unSetStopGameStatus():Void
	{
		_StopGameStatusSet = false;
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
		var _w16530:StopGameResponse = new StopGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w16530.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w16530.setRequestId(_RequestId);
		}
		if (_StopGameStatusSet == true && Utils.isNull(_StopGameStatus) == false) 
		{
			_w16530.setStopGameStatus(_StopGameStatus);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_w16530.setGameId(_GameId);
		}
		return _w16530;
	}

	public function toString():String
	{
		var _g16531:String = "";
		_g16531 += "[" + "StopGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16531 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16531 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StopGameStatusSet == true && Utils.isNull(_StopGameStatus) == false) 
		{
			_g16531 += "_StopGameStatus=" + _StopGameStatus + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_g16531 += "_GameId=" + _GameId + "| ";
		}
		_g16531 += "]";
		return _g16531;
	}
}
