package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;

class ChallengeRefused implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_storeIdSet = false;
		_RequestIdSet = false;
		_ChallengeIdSet = false;
		_ReasonSet = false;
	}

	public static var serializerID:Int = -3116;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ChallengeId:String;

	var _ChallengeIdSet:Bool;

	var _Reason:String;

	var _ReasonSet:Bool;

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

	public function getStoreId():String
	{
		return _storeId;
	}

	public function setStoreId( value:String):Void
	{
		_storeId = value;
		_storeIdSet = true;
	}

	public function isstoreIdSet():Bool
	{
		return _storeIdSet;
	}

	public function unSetstoreId():Void
	{
		_storeIdSet = false;
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

	public function getReason():String
	{
		return _Reason;
	}

	public function setReason( value:String):Void
	{
		_Reason = value;
		_ReasonSet = true;
	}

	public function isReasonSet():Bool
	{
		return _ReasonSet;
	}

	public function unSetReason():Void
	{
		_ReasonSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e16657:ChallengeRefused = new ChallengeRefused();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16657.setMessageId(_MessageId);
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_e16657.setStoreId(_storeId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16657.setRequestId(_RequestId);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_e16657.setChallengeId(_ChallengeId);
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_e16657.setReason(_Reason);
		}
		return _e16657;
	}

	public function toString():String
	{
		var _p16658:String = "";
		_p16658 += "[" + "ChallengeRefused" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16658 += "_MessageId=" + _MessageId + "| ";
		}
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_p16658 += "_storeId=" + _storeId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16658 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_p16658 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_p16658 += "_Reason=" + _Reason + "| ";
		}
		_p16658 += "]";
		return _p16658;
	}
}
