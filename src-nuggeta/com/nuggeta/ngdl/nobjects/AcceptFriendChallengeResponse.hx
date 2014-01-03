package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;

class AcceptFriendChallengeResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_AcceptFriendChallengeStatusSet = false;
		_GameIdSet = false;
		_ChallengeIdSet = false;
	}

	public static var serializerID:Int = -10539;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _AcceptFriendChallengeStatus:AcceptFriendChallengeStatus;

	var _AcceptFriendChallengeStatusSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

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

	public function getAcceptFriendChallengeStatus():AcceptFriendChallengeStatus
	{
		return _AcceptFriendChallengeStatus;
	}

	public function setAcceptFriendChallengeStatus( value:AcceptFriendChallengeStatus):Void
	{
		_AcceptFriendChallengeStatus = value;
		_AcceptFriendChallengeStatusSet = true;
	}

	public function isAcceptFriendChallengeStatusSet():Bool
	{
		return _AcceptFriendChallengeStatusSet;
	}

	public function unSetAcceptFriendChallengeStatus():Void
	{
		_AcceptFriendChallengeStatusSet = false;
	}

	public function getGameId():String
	{
		return _GameId;
	}

	public function setGameId( value:String):Void
	{
		_GameId = value;
		_GameIdSet = true;
	}

	public function isGameIdSet():Bool
	{
		return _GameIdSet;
	}

	public function unSetGameId():Void
	{
		_GameIdSet = false;
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
		var _g16845:AcceptFriendChallengeResponse = new AcceptFriendChallengeResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16845.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16845.setRequestId(_RequestId);
		}
		if (_AcceptFriendChallengeStatusSet == true && Utils.isNull(_AcceptFriendChallengeStatus) == false) 
		{
			_g16845.setAcceptFriendChallengeStatus(_AcceptFriendChallengeStatus);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_g16845.setGameId(_GameId);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_g16845.setChallengeId(_ChallengeId);
		}
		return _g16845;
	}

	public function toString():String
	{
		var _y16846:String = "";
		_y16846 += "[" + "AcceptFriendChallengeResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y16846 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y16846 += "_RequestId=" + _RequestId + "| ";
		}
		if (_AcceptFriendChallengeStatusSet == true && Utils.isNull(_AcceptFriendChallengeStatus) == false) 
		{
			_y16846 += "_AcceptFriendChallengeStatus=" + _AcceptFriendChallengeStatus + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_y16846 += "_GameId=" + _GameId + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_y16846 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		_y16846 += "]";
		return _y16846;
	}
}
