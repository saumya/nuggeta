package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeRequest;

class AcceptFriendChallengeRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeIdSet = false;
	}

	public static var serializerID:Int = -10537;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ChallengeId:String;

	var _ChallengeIdSet:Bool;

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

	public function getChallengeId():String
	{
		return _ChallengeId;
	}

	public function setChallengeId( value:String):Void
	{
		_ChallengeId = value;
		_ChallengeIdSet = true;
	}

	public function isChallengeIdSet():Bool
	{
		return _ChallengeIdSet;
	}

	public function unSetChallengeId():Void
	{
		_ChallengeIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _y11589:AcceptFriendChallengeRequest = new AcceptFriendChallengeRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y11589.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y11589.setRequestId(_RequestId);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_y11589.setChallengeId(_ChallengeId);
		}
		return _y11589;
	}

	public function toString():String
	{
		var _q11590:String = "";
		_q11590 += "[" + "AcceptFriendChallengeRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q11590 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q11590 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_q11590 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		_q11590 += "]";
		return _q11590;
	}
}
