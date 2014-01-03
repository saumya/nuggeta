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
import com.nuggeta.ngdl.nobjects.GameChatNotification;

class GameChatNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_playerSet = false;
		_messageSet = false;
	}

	public static var serializerID:Int = -3135;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _player:NPlayer;

	var _playerSet:Bool;

	var _message:String;

	var _messageSet:Bool;

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

	public function getPlayer():NPlayer
	{
		return _player;
	}

	public function setPlayer( value:NPlayer):Void
	{
		_player = value;
		_playerSet = true;
	}

	public function isplayerSet():Bool
	{
		return _playerSet;
	}

	public function unSetplayer():Void
	{
		_playerSet = false;
	}

	public function getMessage():String
	{
		return _message;
	}

	public function setMessage( value:String):Void
	{
		_message = value;
		_messageSet = true;
	}

	public function ismessageSet():Bool
	{
		return _messageSet;
	}

	public function unSetmessage():Void
	{
		_messageSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _g17256:GameChatNotification = new GameChatNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g17256.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g17256.setRequestId(_RequestId);
		}
		if (_playerSet == true && Utils.isNull(_player) == false) 
		{
			_g17256.setPlayer((cast (_player.clone())));
		}
		if (_messageSet == true && Utils.isNull(_message) == false) 
		{
			_g17256.setMessage(_message);
		}
		return _g17256;
	}

	public function toString():String
	{
		var _q17257:String = "";
		_q17257 += "[" + "GameChatNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q17257 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q17257 += "_RequestId=" + _RequestId + "| ";
		}
		if (_playerSet == true && Utils.isNull(_player) == false) 
		{
			_q17257 += "_player=" + _player + "| ";
		}
		if (_messageSet == true && Utils.isNull(_message) == false) 
		{
			_q17257 += "_message=" + _message + "| ";
		}
		_q17257 += "]";
		return _q17257;
	}
}
