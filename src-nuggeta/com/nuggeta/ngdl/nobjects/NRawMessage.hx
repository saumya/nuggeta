package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.GameMessage;
import com.nuggeta.ngdl.nobjects.NRawMessage;

class NRawMessage implements GameMessage
{

	public function new()
	{
		_MessageIdSet = false;
		_SenderIdSet = false;
		_storeIdSet = false;
		_RequestIdSet = false;
		_gameIdSet = false;
		_contentSet = false;
	}

	public static var serializerID:Int = -3119;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _SenderId:String;

	var _SenderIdSet:Bool;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _gameId:String;

	var _gameIdSet:Bool;

	var _content:String;

	var _contentSet:Bool;

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

	public function getSenderId():String
	{
		return _SenderId;
	}

	public function setSenderId( value:String):Void
	{
		_SenderId = value;
		_SenderIdSet = true;
	}

	public function isSenderIdSet():Bool
	{
		return _SenderIdSet;
	}

	public function unSetSenderId():Void
	{
		_SenderIdSet = false;
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

	public function getGameId():String
	{
		return _gameId;
	}

	public function setGameId( value:String):Void
	{
		_gameId = value;
		_gameIdSet = true;
	}

	public function isgameIdSet():Bool
	{
		return _gameIdSet;
	}

	public function unSetgameId():Void
	{
		_gameIdSet = false;
	}

	public function getContent():String
	{
		return _content;
	}

	public function setContent( value:String):Void
	{
		_content = value;
		_contentSet = true;
	}

	public function iscontentSet():Bool
	{
		return _contentSet;
	}

	public function unSetcontent():Void
	{
		_contentSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e16641:NRawMessage = new NRawMessage();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16641.setMessageId(_MessageId);
		}
		if (_SenderIdSet == true && Utils.isNull(_SenderId) == false) 
		{
			_e16641.setSenderId(_SenderId);
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_e16641.setStoreId(_storeId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16641.setRequestId(_RequestId);
		}
		if (_gameIdSet == true && Utils.isNull(_gameId) == false) 
		{
			_e16641.setGameId(_gameId);
		}
		if (_contentSet == true && Utils.isNull(_content) == false) 
		{
			_e16641.setContent(_content);
		}
		return _e16641;
	}

	public function toString():String
	{
		var _q16642:String = "";
		_q16642 += "[" + "NRawMessage" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16642 += "_MessageId=" + _MessageId + "| ";
		}
		if (_SenderIdSet == true && Utils.isNull(_SenderId) == false) 
		{
			_q16642 += "_SenderId=" + _SenderId + "| ";
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_q16642 += "_storeId=" + _storeId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16642 += "_RequestId=" + _RequestId + "| ";
		}
		if (_gameIdSet == true && Utils.isNull(_gameId) == false) 
		{
			_q16642 += "_gameId=" + _gameId + "| ";
		}
		if (_contentSet == true && Utils.isNull(_content) == false) 
		{
			_q16642 += "_content=" + _content + "| ";
		}
		_q16642 += "]";
		return _q16642;
	}
}
