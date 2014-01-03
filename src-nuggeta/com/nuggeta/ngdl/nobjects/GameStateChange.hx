package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.ngdl.nobjects.GameStateChange;

class GameStateChange implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_GameRunningStateSet = false;
	}

	public static var serializerID:Int = -3004;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

	var _GameRunningState:GameRunningState;

	var _GameRunningStateSet:Bool;

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

	public function getGameRunningState():GameRunningState
	{
		return _GameRunningState;
	}

	public function setGameRunningState( value:GameRunningState):Void
	{
		_GameRunningState = value;
		_GameRunningStateSet = true;
	}

	public function isGameRunningStateSet():Bool
	{
		return _GameRunningStateSet;
	}

	public function unSetGameRunningState():Void
	{
		_GameRunningStateSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _z12106:GameStateChange = new GameStateChange();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z12106.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z12106.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_z12106.setGameId(_GameId);
		}
		if (_GameRunningStateSet == true && Utils.isNull(_GameRunningState) == false) 
		{
			_z12106.setGameRunningState(_GameRunningState);
		}
		return _z12106;
	}

	public function toString():String
	{
		var _s12107:String = "";
		_s12107 += "[" + "GameStateChange" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s12107 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s12107 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_s12107 += "_GameId=" + _GameId + "| ";
		}
		if (_GameRunningStateSet == true && Utils.isNull(_GameRunningState) == false) 
		{
			_s12107 += "_GameRunningState=" + _GameRunningState + "| ";
		}
		_s12107 += "]";
		return _s12107;
	}
}
