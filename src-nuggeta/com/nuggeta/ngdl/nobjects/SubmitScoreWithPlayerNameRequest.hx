package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.SubmitScoreWithPlayerNameRequest;

class SubmitScoreWithPlayerNameRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_NameSet = false;
		_ScoreSet = false;
		_LeaderboardIdSet = false;
	}

	public static var serializerID:Int = -10296;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _Score:NScore;

	var _ScoreSet:Bool;

	var _LeaderboardId:String;

	var _LeaderboardIdSet:Bool;

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

	public function getName():String
	{
		return _Name;
	}

	public function setName( value:String):Void
	{
		_Name = value;
		_NameSet = true;
	}

	public function isNameSet():Bool
	{
		return _NameSet;
	}

	public function unSetName():Void
	{
		_NameSet = false;
	}

	public function getScore():NScore
	{
		return _Score;
	}

	public function setScore( value:NScore):Void
	{
		_Score = value;
		_ScoreSet = true;
	}

	public function isScoreSet():Bool
	{
		return _ScoreSet;
	}

	public function unSetScore():Void
	{
		_ScoreSet = false;
	}

	public function getLeaderboardId():String
	{
		return _LeaderboardId;
	}

	public function setLeaderboardId( value:String):Void
	{
		_LeaderboardId = value;
		_LeaderboardIdSet = true;
	}

	public function isLeaderboardIdSet():Bool
	{
		return _LeaderboardIdSet;
	}

	public function unSetLeaderboardId():Void
	{
		_LeaderboardIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _a12042:SubmitScoreWithPlayerNameRequest = new SubmitScoreWithPlayerNameRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a12042.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a12042.setRequestId(_RequestId);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_a12042.setName(_Name);
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_a12042.setScore((cast (_Score.clone())));
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_a12042.setLeaderboardId(_LeaderboardId);
		}
		return _a12042;
	}

	public function toString():String
	{
		var _r12043:String = "";
		_r12043 += "[" + "SubmitScoreWithPlayerNameRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r12043 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r12043 += "_RequestId=" + _RequestId + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_r12043 += "_Name=" + _Name + "| ";
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_r12043 += "_Score=" + _Score + "| ";
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_r12043 += "_LeaderboardId=" + _LeaderboardId + "| ";
		}
		_r12043 += "]";
		return _r12043;
	}
}
