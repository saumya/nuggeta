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
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;

class FriendConnectedNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_friendSet = false;
	}

	public static var serializerID:Int = -3098;

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
		var _o17153:FriendConnectedNotification = new FriendConnectedNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o17153.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o17153.setRequestId(_RequestId);
		}
		if (_friendSet == true && Utils.isNull(_friend) == false) 
		{
			_o17153.setFriend((cast (_friend.clone())));
		}
		return _o17153;
	}

	public function toString():String
	{
		var _u17154:String = "";
		_u17154 += "[" + "FriendConnectedNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_u17154 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_u17154 += "_RequestId=" + _RequestId + "| ";
		}
		if (_friendSet == true && Utils.isNull(_friend) == false) 
		{
			_u17154 += "_friend=" + _friend + "| ";
		}
		_u17154 += "]";
		return _u17154;
	}
}
