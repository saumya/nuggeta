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
import com.nuggeta.ngdl.nobjects.FriendshipNotification;

class FriendshipNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_FriendSet = false;
	}

	public static var serializerID:Int = -3013;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Friend:NPlayer;

	var _FriendSet:Bool;

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

	public function getFriend():NPlayer
	{
		return _Friend;
	}

	public function setFriend( value:NPlayer):Void
	{
		_Friend = value;
		_FriendSet = true;
	}

	public function isFriendSet():Bool
	{
		return _FriendSet;
	}

	public function unSetFriend():Void
	{
		_FriendSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _a16005:FriendshipNotification = new FriendshipNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16005.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16005.setRequestId(_RequestId);
		}
		if (_FriendSet == true && Utils.isNull(_Friend) == false) 
		{
			_a16005.setFriend((cast (_Friend.clone())));
		}
		return _a16005;
	}

	public function toString():String
	{
		var _f16006:String = "";
		_f16006 += "[" + "FriendshipNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16006 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16006 += "_RequestId=" + _RequestId + "| ";
		}
		if (_FriendSet == true && Utils.isNull(_Friend) == false) 
		{
			_f16006 += "_Friend=" + _Friend + "| ";
		}
		_f16006 += "]";
		return _f16006;
	}
}
