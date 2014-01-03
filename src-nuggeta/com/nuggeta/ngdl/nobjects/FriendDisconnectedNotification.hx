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
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;

class FriendDisconnectedNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_friendSet = false;
	}

	public static var serializerID:Int = -3099;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _friend:NPlayer;

	var _friendSet:Bool;

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
		return _friend;
	}

	public function setFriend( value:NPlayer):Void
	{
		_friend = value;
		_friendSet = true;
	}

	public function isfriendSet():Bool
	{
		return _friendSet;
	}

	public function unSetfriend():Void
	{
		_friendSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _d8232:FriendDisconnectedNotification = new FriendDisconnectedNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d8232.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d8232.setRequestId(_RequestId);
		}
		if (_friendSet == true && Utils.isNull(_friend) == false) 
		{
			_d8232.setFriend((cast (_friend.clone())));
		}
		return _d8232;
	}

	public function toString():String
	{
		var _g8233:String = "";
		_g8233 += "[" + "FriendDisconnectedNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g8233 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g8233 += "_RequestId=" + _RequestId + "| ";
		}
		if (_friendSet == true && Utils.isNull(_friend) == false) 
		{
			_g8233 += "_friend=" + _friend + "| ";
		}
		_g8233 += "]";
		return _g8233;
	}
}
