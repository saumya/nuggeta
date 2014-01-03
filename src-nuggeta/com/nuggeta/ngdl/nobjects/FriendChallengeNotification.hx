package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;

class FriendChallengeNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeSet = false;
	}

	public static var serializerID:Int = -3130;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Challenge:NChallenge;

	var _ChallengeSet:Bool;

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

	public function getChallenge():NChallenge
	{
		return _Challenge;
	}

	public function setChallenge( value:NChallenge):Void
	{
		_Challenge = value;
		_ChallengeSet = true;
	}

	public function isChallengeSet():Bool
	{
		return _ChallengeSet;
	}

	public function unSetChallenge():Void
	{
		_ChallengeSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w12110:FriendChallengeNotification = new FriendChallengeNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w12110.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w12110.setRequestId(_RequestId);
		}
		if (_ChallengeSet == true && Utils.isNull(_Challenge) == false) 
		{
			_w12110.setChallenge((cast (_Challenge.clone())));
		}
		return _w12110;
	}

	public function toString():String
	{
		var _v12111:String = "";
		_v12111 += "[" + "FriendChallengeNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_v12111 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_v12111 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeSet == true && Utils.isNull(_Challenge) == false) 
		{
			_v12111 += "_Challenge=" + _Challenge + "| ";
		}
		_v12111 += "]";
		return _v12111;
	}
}
