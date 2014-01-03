package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetLeaderboardStatus;
import com.nuggeta.ngdl.nobjects.NLeaderboard;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetLeaderboardStatus;
import com.nuggeta.ngdl.nobjects.NLeaderboard;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;

class GetLeaderboardResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetLeaderboardStatusSet = false;
		_LeaderboardSet = false;
	}

	public static var serializerID:Int = -10319;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetLeaderboardStatus:GetLeaderboardStatus;

	var _GetLeaderboardStatusSet:Bool;

	var _Leaderboard:NLeaderboard;

	var _LeaderboardSet:Bool;

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

	public function getGetLeaderboardStatus():GetLeaderboardStatus
	{
		return _GetLeaderboardStatus;
	}

	public function setGetLeaderboardStatus( value:GetLeaderboardStatus):Void
	{
		_GetLeaderboardStatus = value;
		_GetLeaderboardStatusSet = true;
	}

	public function isGetLeaderboardStatusSet():Bool
	{
		return _GetLeaderboardStatusSet;
	}

	public function unSetGetLeaderboardStatus():Void
	{
		_GetLeaderboardStatusSet = false;
	}

	public function getLeaderboard():NLeaderboard
	{
		return _Leaderboard;
	}

	public function setLeaderboard( value:NLeaderboard):Void
	{
		_Leaderboard = value;
		_LeaderboardSet = true;
	}

	public function isLeaderboardSet():Bool
	{
		return _LeaderboardSet;
	}

	public function unSetLeaderboard():Void
	{
		_LeaderboardSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _h16645:GetLeaderboardResponse = new GetLeaderboardResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h16645.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h16645.setRequestId(_RequestId);
		}
		if (_GetLeaderboardStatusSet == true && Utils.isNull(_GetLeaderboardStatus) == false) 
		{
			_h16645.setGetLeaderboardStatus(_GetLeaderboardStatus);
		}
		if (_LeaderboardSet == true && Utils.isNull(_Leaderboard) == false) 
		{
			_h16645.setLeaderboard((cast (_Leaderboard.clone())));
		}
		return _h16645;
	}

	public function toString():String
	{
		var _i16646:String = "";
		_i16646 += "[" + "GetLeaderboardResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i16646 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i16646 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetLeaderboardStatusSet == true && Utils.isNull(_GetLeaderboardStatus) == false) 
		{
			_i16646 += "_GetLeaderboardStatus=" + _GetLeaderboardStatus + "| ";
		}
		if (_LeaderboardSet == true && Utils.isNull(_Leaderboard) == false) 
		{
			_i16646 += "_Leaderboard=" + _Leaderboard + "| ";
		}
		_i16646 += "]";
		return _i16646;
	}
}
