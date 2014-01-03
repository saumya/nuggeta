package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.GetLeaderboardRequest;

class GetLeaderboardRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LeaderboardIdSet = false;
		_PeriodSet = false;
		_StartSet = false;
		_LimitSet = false;
	}

	public static var serializerID:Int = -10317;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _LeaderboardId:String;

	var _LeaderboardIdSet:Bool;

	var _Period:LeaderboardPeriod;

	var _PeriodSet:Bool;

	var _Start:Int;

	var _StartSet:Bool;

	var _Limit:Int;

	var _LimitSet:Bool;

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

	public function getPeriod():LeaderboardPeriod
	{
		return _Period;
	}

	public function setPeriod( value:LeaderboardPeriod):Void
	{
		_Period = value;
		_PeriodSet = true;
	}

	public function isPeriodSet():Bool
	{
		return _PeriodSet;
	}

	public function unSetPeriod():Void
	{
		_PeriodSet = false;
	}

	public function getStart():Int
	{
		return _Start;
	}

	public function setStart( value:Int):Void
	{
		_Start = value;
		_StartSet = true;
	}

	public function isStartSet():Bool
	{
		return _StartSet;
	}

	public function unSetStart():Void
	{
		_StartSet = false;
	}

	public function getLimit():Int
	{
		return _Limit;
	}

	public function setLimit( value:Int):Void
	{
		_Limit = value;
		_LimitSet = true;
	}

	public function isLimitSet():Bool
	{
		return _LimitSet;
	}

	public function unSetLimit():Void
	{
		_LimitSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _r16389:GetLeaderboardRequest = new GetLeaderboardRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16389.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16389.setRequestId(_RequestId);
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_r16389.setLeaderboardId(_LeaderboardId);
		}
		if (_PeriodSet == true && Utils.isNull(_Period) == false) 
		{
			_r16389.setPeriod(_Period);
		}
		if (_StartSet == true && Utils.isNullInteger(_Start) == false) 
		{
			_r16389.setStart(_Start);
		}
		if (_LimitSet == true && Utils.isNullInteger(_Limit) == false) 
		{
			_r16389.setLimit(_Limit);
		}
		return _r16389;
	}

	public function toString():String
	{
		var _p16390:String = "";
		_p16390 += "[" + "GetLeaderboardRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16390 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16390 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LeaderboardIdSet == true && Utils.isNull(_LeaderboardId) == false) 
		{
			_p16390 += "_LeaderboardId=" + _LeaderboardId + "| ";
		}
		if (_PeriodSet == true && Utils.isNull(_Period) == false) 
		{
			_p16390 += "_Period=" + _Period + "| ";
		}
		if (_StartSet == true && Utils.isNullInteger(_Start) == false) 
		{
			_p16390 += "_Start=" + _Start + "| ";
		}
		if (_LimitSet == true && Utils.isNullInteger(_Limit) == false) 
		{
			_p16390 += "_Limit=" + _Limit + "| ";
		}
		_p16390 += "]";
		return _p16390;
	}
}
