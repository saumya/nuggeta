package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;

class CancelFriendChallengeResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_CancelFriendChallengeStatusSet = false;
		_ChallengeIdSet = false;
	}

	public static var serializerID:Int = -10559;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _CancelFriendChallengeStatus:CancelFriendChallengeStatus;

	var _CancelFriendChallengeStatusSet:Bool;

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

	public function getCancelFriendChallengeStatus():CancelFriendChallengeStatus
	{
		return _CancelFriendChallengeStatus;
	}

	public function setCancelFriendChallengeStatus( value:CancelFriendChallengeStatus):Void
	{
		_CancelFriendChallengeStatus = value;
		_CancelFriendChallengeStatusSet = true;
	}

	public function isCancelFriendChallengeStatusSet():Bool
	{
		return _CancelFriendChallengeStatusSet;
	}

	public function unSetCancelFriendChallengeStatus():Void
	{
		_CancelFriendChallengeStatusSet = false;
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
		var _y12030:CancelFriendChallengeResponse = new CancelFriendChallengeResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y12030.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y12030.setRequestId(_RequestId);
		}
		if (_CancelFriendChallengeStatusSet == true && Utils.isNull(_CancelFriendChallengeStatus) == false) 
		{
			_y12030.setCancelFriendChallengeStatus(_CancelFriendChallengeStatus);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_y12030.setChallengeId(_ChallengeId);
		}
		return _y12030;
	}

	public function toString():String
	{
		var _l12031:String = "";
		_l12031 += "[" + "CancelFriendChallengeResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l12031 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l12031 += "_RequestId=" + _RequestId + "| ";
		}
		if (_CancelFriendChallengeStatusSet == true && Utils.isNull(_CancelFriendChallengeStatus) == false) 
		{
			_l12031 += "_CancelFriendChallengeStatus=" + _CancelFriendChallengeStatus + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_l12031 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		_l12031 += "]";
		return _l12031;
	}
}
