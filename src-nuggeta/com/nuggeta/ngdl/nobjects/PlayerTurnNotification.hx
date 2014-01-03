package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;

class PlayerTurnNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_CurrentPlayerSet = false;
		_GameIdSet = false;
	}

	public static var serializerID:Int = -3140;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _CurrentPlayer:NPlayer;

	var _CurrentPlayerSet:Bool;

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

	public function getCurrentPlayer():NPlayer
	{
		return _CurrentPlayer;
	}

	public function setCurrentPlayer( value:NPlayer):Void
	{
		_CurrentPlayer = value;
		_CurrentPlayerSet = true;
	}

	public function isCurrentPlayerSet():Bool
	{
		return _CurrentPlayerSet;
	}

	public function unSetCurrentPlayer():Void
	{
		_CurrentPlayerSet = false;
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
		var _f16877:PlayerTurnNotification = new PlayerTurnNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16877.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16877.setRequestId(_RequestId);
		}
		if (_CurrentPlayerSet == true && Utils.isNull(_CurrentPlayer) == false) 
		{
			_f16877.setCurrentPlayer((cast (_CurrentPlayer.clone())));
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_f16877.setGameId(_GameId);
		}
		return _f16877;
	}

	public function toString():String
	{
		var _p16878:String = "";
		_p16878 += "[" + "PlayerTurnNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16878 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16878 += "_RequestId=" + _RequestId + "| ";
		}
		if (_CurrentPlayerSet == true && Utils.isNull(_CurrentPlayer) == false) 
		{
			_p16878 += "_CurrentPlayer=" + _CurrentPlayer + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_p16878 += "_GameId=" + _GameId + "| ";
		}
		_p16878 += "]";
		return _p16878;
	}
}
