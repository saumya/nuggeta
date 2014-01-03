package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;

class RefuseFriendChallengeResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_RefuseFriendChallengeStatusSet = false;
		_ChallengeIdSet = false;
	}

	public static var serializerID:Int = -10579;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _RefuseFriendChallengeStatus:RefuseFriendChallengeStatus;

	var _RefuseFriendChallengeStatusSet:Bool;

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

	public function getRefuseFriendChallengeStatus():RefuseFriendChallengeStatus
	{
		return _RefuseFriendChallengeStatus;
	}

	public function setRefuseFriendChallengeStatus( value:RefuseFriendChallengeStatus):Void
	{
		_RefuseFriendChallengeStatus = value;
		_RefuseFriendChallengeStatusSet = true;
	}

	public function isRefuseFriendChallengeStatusSet():Bool
	{
		return _RefuseFriendChallengeStatusSet;
	}

	public function unSetRefuseFriendChallengeStatus():Void
	{
		_RefuseFriendChallengeStatusSet = false;
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
		var _j16896:RefuseFriendChallengeResponse = new RefuseFriendChallengeResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16896.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16896.setRequestId(_RequestId);
		}
		if (_RefuseFriendChallengeStatusSet == true && Utils.isNull(_RefuseFriendChallengeStatus) == false) 
		{
			_j16896.setRefuseFriendChallengeStatus(_RefuseFriendChallengeStatus);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_j16896.setChallengeId(_ChallengeId);
		}
		return _j16896;
	}

	public function toString():String
	{
		var _f16897:String = "";
		_f16897 += "[" + "RefuseFriendChallengeResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16897 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16897 += "_RequestId=" + _RequestId + "| ";
		}
		if (_RefuseFriendChallengeStatusSet == true && Utils.isNull(_RefuseFriendChallengeStatus) == false) 
		{
			_f16897 += "_RefuseFriendChallengeStatus=" + _RefuseFriendChallengeStatus + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_f16897 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		_f16897 += "]";
		return _f16897;
	}
}
