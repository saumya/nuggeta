package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeRequest;

class RefuseFriendChallengeRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeIdSet = false;
	}

	public static var serializerID:Int = -10577;

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
		var _s16599:RefuseFriendChallengeRequest = new RefuseFriendChallengeRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s16599.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s16599.setRequestId(_RequestId);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_s16599.setChallengeId(_ChallengeId);
		}
		return _s16599;
	}

	public function toString():String
	{
		var _t16600:String = "";
		_t16600 += "[" + "RefuseFriendChallengeRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t16600 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t16600 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_t16600 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		_t16600 += "]";
		return _t16600;
	}
}
