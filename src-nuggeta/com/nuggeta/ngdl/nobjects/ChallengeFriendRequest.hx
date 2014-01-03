package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ChallengeFriendRequest;

class ChallengeFriendRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PlayerIdSet = false;
	}

	public static var serializerID:Int = -10157;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PlayerId:String;

	var _PlayerIdSet:Bool;

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

	public function getPlayerId():String
	{
		return _PlayerId;
	}

	public function setPlayerId( value:String):Void
	{
		_PlayerId = value;
		_PlayerIdSet = true;
	}

	public function isPlayerIdSet():Bool
	{
		return _PlayerIdSet;
	}

	public function unSetPlayerId():Void
	{
		_PlayerIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w16779:ChallengeFriendRequest = new ChallengeFriendRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w16779.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w16779.setRequestId(_RequestId);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_w16779.setPlayerId(_PlayerId);
		}
		return _w16779;
	}

	public function toString():String
	{
		var _q16780:String = "";
		_q16780 += "[" + "ChallengeFriendRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16780 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16780 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_q16780 += "_PlayerId=" + _PlayerId + "| ";
		}
		_q16780 += "]";
		return _q16780;
	}
}
