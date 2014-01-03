package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;

class ChallengeThirdPartyFriendResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeThirdPartyFriendStatusSet = false;
		_ThirdPartyIdSet = false;
	}

	public static var serializerID:Int = -10179;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ChallengeThirdPartyFriendStatus:ChallengeThirdPartyFriendStatus;

	var _ChallengeThirdPartyFriendStatusSet:Bool;

	var _ThirdPartyId:String;

	var _ThirdPartyIdSet:Bool;

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

	public function getChallengeThirdPartyFriendStatus():ChallengeThirdPartyFriendStatus
	{
		return _ChallengeThirdPartyFriendStatus;
	}

	public function setChallengeThirdPartyFriendStatus( value:ChallengeThirdPartyFriendStatus):Void
	{
		_ChallengeThirdPartyFriendStatus = value;
		_ChallengeThirdPartyFriendStatusSet = true;
	}

	public function isChallengeThirdPartyFriendStatusSet():Bool
	{
		return _ChallengeThirdPartyFriendStatusSet;
	}

	public function unSetChallengeThirdPartyFriendStatus():Void
	{
		_ChallengeThirdPartyFriendStatusSet = false;
	}

	public function getThirdPartyId():String
	{
		return _ThirdPartyId;
	}

	public function setThirdPartyId( value:String):Void
	{
		_ThirdPartyId = value;
		_ThirdPartyIdSet = true;
	}

	public function isThirdPartyIdSet():Bool
	{
		return _ThirdPartyIdSet;
	}

	public function unSetThirdPartyId():Void
	{
		_ThirdPartyIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _a16601:ChallengeThirdPartyFriendResponse = new ChallengeThirdPartyFriendResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16601.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16601.setRequestId(_RequestId);
		}
		if (_ChallengeThirdPartyFriendStatusSet == true && Utils.isNull(_ChallengeThirdPartyFriendStatus) == false) 
		{
			_a16601.setChallengeThirdPartyFriendStatus(_ChallengeThirdPartyFriendStatus);
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_a16601.setThirdPartyId(_ThirdPartyId);
		}
		return _a16601;
	}

	public function toString():String
	{
		var _l16602:String = "";
		_l16602 += "[" + "ChallengeThirdPartyFriendResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l16602 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l16602 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeThirdPartyFriendStatusSet == true && Utils.isNull(_ChallengeThirdPartyFriendStatus) == false) 
		{
			_l16602 += "_ChallengeThirdPartyFriendStatus=" + _ChallengeThirdPartyFriendStatus + "| ";
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_l16602 += "_ThirdPartyId=" + _ThirdPartyId + "| ";
		}
		_l16602 += "]";
		return _l16602;
	}
}
