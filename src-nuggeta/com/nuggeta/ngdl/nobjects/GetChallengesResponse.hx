package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetChallengesStatus;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.ngdl.nobjects.GetChallengesStatus;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;

class GetChallengesResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetChallengesStatusSet = false;
		_Challenges = new NList<NChallenge>();
		_ChallengesSet = false;
	}

	public static var serializerID:Int = -10599;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetChallengesStatus:GetChallengesStatus;

	var _GetChallengesStatusSet:Bool;

	var _Challenges:NList<NChallenge>;

	var _ChallengesSet:Bool;

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

	public function getGetChallengesStatus():GetChallengesStatus
	{
		return _GetChallengesStatus;
	}

	public function setGetChallengesStatus( value:GetChallengesStatus):Void
	{
		_GetChallengesStatus = value;
		_GetChallengesStatusSet = true;
	}

	public function isGetChallengesStatusSet():Bool
	{
		return _GetChallengesStatusSet;
	}

	public function unSetGetChallengesStatus():Void
	{
		_GetChallengesStatusSet = false;
	}

	public function getChallenges():NList<NChallenge>
	{
		return _Challenges;
	}

	public function setChallenges( value:NList<NChallenge>):Void
	{
		_Challenges = value;
		_ChallengesSet = true;
	}

	public function isChallengesSet():Bool
	{
		return _ChallengesSet;
	}

	public function unSetChallenges():Void
	{
		_ChallengesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _g16391:GetChallengesResponse = new GetChallengesResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16391.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16391.setRequestId(_RequestId);
		}
		if (_GetChallengesStatusSet == true && Utils.isNull(_GetChallengesStatus) == false) 
		{
			_g16391.setGetChallengesStatus(_GetChallengesStatus);
		}
		if (_ChallengesSet == true && Utils.isNull(_Challenges) == false) 
		{
			var _v16392:NList<NChallenge> = new NList<NChallenge>();
			for (_e16393 in _Challenges.tab) {
				if (_e16393 != null) 
				{
					_v16392.add((cast ((cast _e16393)).clone()));
				} else 
				{
					_v16392.add((cast _e16393));
				}
			}
			_g16391.setChallenges(_v16392);
		}
		return _g16391;
	}

	public function toString():String
	{
		var _j16394:String = "";
		_j16394 += "[" + "GetChallengesResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16394 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16394 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetChallengesStatusSet == true && Utils.isNull(_GetChallengesStatus) == false) 
		{
			_j16394 += "_GetChallengesStatus=" + _GetChallengesStatus + "| ";
		}
		if (_ChallengesSet == true && Utils.isNull(_Challenges) == false) 
		{
			_j16394 += "_Challenges=" + _Challenges + "| ";
		}
		_j16394 += "]";
		return _j16394;
	}
}
