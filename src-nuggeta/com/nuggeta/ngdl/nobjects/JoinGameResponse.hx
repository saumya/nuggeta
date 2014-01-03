package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.JoinGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.JoinGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;

class JoinGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_JoinGameStatusSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10499;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _JoinGameStatus:JoinGameStatus;

	var _JoinGameStatusSet:Bool;

	var _Game:NGame;

	var _GameSet:Bool;

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

	public function getJoinGameStatus():JoinGameStatus
	{
		return _JoinGameStatus;
	}

	public function setJoinGameStatus( value:JoinGameStatus):Void
	{
		_JoinGameStatus = value;
		_JoinGameStatusSet = true;
	}

	public function isJoinGameStatusSet():Bool
	{
		return _JoinGameStatusSet;
	}

	public function unSetJoinGameStatus():Void
	{
		_JoinGameStatusSet = false;
	}

	public function getGame():NGame
	{
		return _Game;
	}

	public function setGame( value:NGame):Void
	{
		_Game = value;
		_GameSet = true;
	}

	public function isGameSet():Bool
	{
		return _GameSet;
	}

	public function unSetGame():Void
	{
		_GameSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _t17241:JoinGameResponse = new JoinGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t17241.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t17241.setRequestId(_RequestId);
		}
		if (_JoinGameStatusSet == true && Utils.isNull(_JoinGameStatus) == false) 
		{
			_t17241.setJoinGameStatus(_JoinGameStatus);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_t17241.setGame((cast (_Game.clone())));
		}
		return _t17241;
	}

	public function toString():String
	{
		var _x17242:String = "";
		_x17242 += "[" + "JoinGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x17242 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x17242 += "_RequestId=" + _RequestId + "| ";
		}
		if (_JoinGameStatusSet == true && Utils.isNull(_JoinGameStatus) == false) 
		{
			_x17242 += "_JoinGameStatus=" + _JoinGameStatus + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_x17242 += "_Game=" + _Game + "| ";
		}
		_x17242 += "]";
		return _x17242;
	}
}
