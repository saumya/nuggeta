package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.PlayerMessage;

class PlayerMessage implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_storeIdSet = false;
		_RequestIdSet = false;
		_playerIdSet = false;
		_messageSet = false;
	}

	public static var serializerID:Int = -3118;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _playerId:String;

	var _playerIdSet:Bool;

	var _message:Message;

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

	public function getStoreId():String
	{
		return _storeId;
	}

	public function setStoreId( value:String):Void
	{
		_storeId = value;
		_storeIdSet = true;
	}

	public function isstoreIdSet():Bool
	{
		return _storeIdSet;
	}

	public function unSetstoreId():Void
	{
		_storeIdSet = false;
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

	public function getPlayerId():String
	{
		return _playerId;
	}

	public function setPlayerId( value:String):Void
	{
		_playerId = value;
		_playerIdSet = true;
	}

	public function isplayerIdSet():Bool
	{
		return _playerIdSet;
	}

	public function unSetplayerId():Void
	{
		_playerIdSet = false;
	}

	public function getMessage():Message
	{
		return _message;
	}

	public function setMessage( value:Message):Void
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
		var _s16817:PlayerMessage = new PlayerMessage();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s16817.setMessageId(_MessageId);
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_s16817.setStoreId(_storeId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s16817.setRequestId(_RequestId);
		}
		if (_playerIdSet == true && Utils.isNull(_playerId) == false) 
		{
			_s16817.setPlayerId(_playerId);
		}
		if (_messageSet == true && Utils.isNull(_message) == false) 
		{
			_s16817.setMessage((cast (_message.clone())));
		}
		return _s16817;
	}

	public function toString():String
	{
		var _x16818:String = "";
		_x16818 += "[" + "PlayerMessage" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16818 += "_MessageId=" + _MessageId + "| ";
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_x16818 += "_storeId=" + _storeId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16818 += "_RequestId=" + _RequestId + "| ";
		}
		if (_playerIdSet == true && Utils.isNull(_playerId) == false) 
		{
			_x16818 += "_playerId=" + _playerId + "| ";
		}
		if (_messageSet == true && Utils.isNull(_message) == false) 
		{
			_x16818 += "_message=" + _message + "| ";
		}
		_x16818 += "]";
		return _x16818;
	}
}
