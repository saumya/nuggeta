package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ChallengeFriendStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ChallengeFriendStatus;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;

class ChallengeFriendResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeFriendStatusSet = false;
		_PlayerIdSet = false;
	}

	public static var serializerID:Int = -10159;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ChallengeFriendStatus:ChallengeFriendStatus;

	var _ChallengeFriendStatusSet:Bool;

	var _PlayerId:String;

	var _PlayerIdSet:Bool;

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

	public function getChallengeFriendStatus():ChallengeFriendStatus
	{
		return _ChallengeFriendStatus;
	}

	public function setChallengeFriendStatus( value:ChallengeFriendStatus):Void
	{
		_ChallengeFriendStatus = value;
		_ChallengeFriendStatusSet = true;
	}

	public function isChallengeFriendStatusSet():Bool
	{
		return _ChallengeFriendStatusSet;
	}

	public function unSetChallengeFriendStatus():Void
	{
		_ChallengeFriendStatusSet = false;
	}

	public function getPlayerId():String
	{
		return _PlayerId;
	}

	public function setPlayerId( value:String):Void
	{
		_PlayerId = value;
		_PlayerIdSet = true;
	}

	public function isPlayerIdSet():Bool
	{
		return _PlayerIdSet;
	}

	public function unSetPlayerId():Void
	{
		_PlayerIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b17084:ChallengeFriendResponse = new ChallengeFriendResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b17084.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b17084.setRequestId(_RequestId);
		}
		if (_ChallengeFriendStatusSet == true && Utils.isNull(_ChallengeFriendStatus) == false) 
		{
			_b17084.setChallengeFriendStatus(_ChallengeFriendStatus);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_b17084.setPlayerId(_PlayerId);
		}
		return _b17084;
	}

	public function toString():String
	{
		var _z17085:String = "";
		_z17085 += "[" + "ChallengeFriendResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z17085 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z17085 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeFriendStatusSet == true && Utils.isNull(_ChallengeFriendStatus) == false) 
		{
			_z17085 += "_ChallengeFriendStatus=" + _ChallengeFriendStatus + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_z17085 += "_PlayerId=" + _PlayerId + "| ";
		}
		_z17085 += "]";
		return _z17085;
	}
}
