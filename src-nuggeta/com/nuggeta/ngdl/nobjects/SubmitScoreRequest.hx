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
import com.nuggeta.ngdl.nobjects.SubmitScoreRequest;

class SubmitScoreRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ScoreSet = false;
		_LeaderboardIdSet = false;
	}

	public static var serializerID:Int = -10297;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

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
		var _z16585:SubmitScoreRequest = new SubmitScoreRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z16585.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z16585.setRequestId(_RequestId);
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_z16585.setScore((cast (_Score.clone())));
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_z16585.setLeaderboardId(_LeaderboardId);
		}
		return _z16585;
	}

	public function toString():String
	{
		var _o16586:String = "";
		_o16586 += "[" + "SubmitScoreRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o16586 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o16586 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_o16586 += "_Score=" + _Score + "| ";
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_o16586 += "_LeaderboardId=" + _LeaderboardId + "| ";
		}
		_o16586 += "]";
		return _o16586;
	}
}
