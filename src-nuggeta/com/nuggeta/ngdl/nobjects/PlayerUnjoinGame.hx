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
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;

class PlayerUnjoinGame implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_PlayerSet = false;
	}

	public static var serializerID:Int = -3017;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

	var _Player:NPlayer;

	var _PlayerSet:Bool;

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

	public function getPlayer():NPlayer
	{
		return _Player;
	}

	public function setPlayer( value:NPlayer):Void
	{
		_Player = value;
		_PlayerSet = true;
	}

	public function isPlayerSet():Bool
	{
		return _PlayerSet;
	}

	public function unSetPlayer():Void
	{
		_PlayerSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _q15985:PlayerUnjoinGame = new PlayerUnjoinGame();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q15985.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q15985.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_q15985.setGameId(_GameId);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_q15985.setPlayer((cast (_Player.clone())));
		}
		return _q15985;
	}

	public function toString():String
	{
		var _k15986:String = "";
		_k15986 += "[" + "PlayerUnjoinGame" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k15986 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k15986 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_k15986 += "_GameId=" + _GameId + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_k15986 += "_Player=" + _Player + "| ";
		}
		_k15986 += "]";
		return _k15986;
	}
}
