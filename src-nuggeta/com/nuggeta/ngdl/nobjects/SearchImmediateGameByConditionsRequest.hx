package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameByConditionsRequest;

class SearchImmediateGameByConditionsRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_QuerySet = false;
		_MatchMakingConditionsSet = false;
	}

	public static var serializerID:Int = -10476;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Query:NuggetaQuery;

	var _QuerySet:Bool;

	var _MatchMakingConditions:NMatchMakingConditions;

	var _MatchMakingConditionsSet:Bool;

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

	public function getQuery():NuggetaQuery
	{
		return _Query;
	}

	public function setQuery( value:NuggetaQuery):Void
	{
		_Query = value;
		_QuerySet = true;
	}

	public function isQuerySet():Bool
	{
		return _QuerySet;
	}

	public function unSetQuery():Void
	{
		_QuerySet = false;
	}

	public function getMatchMakingConditions():NMatchMakingConditions
	{
		return _MatchMakingConditions;
	}

	public function setMatchMakingConditions( value:NMatchMakingConditions):Void
	{
		_MatchMakingConditions = value;
		_MatchMakingConditionsSet = true;
	}

	public function isMatchMakingConditionsSet():Bool
	{
		return _MatchMakingConditionsSet;
	}

	public function unSetMatchMakingConditions():Void
	{
		_MatchMakingConditionsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _t12147:SearchImmediateGameByConditionsRequest = new SearchImmediateGameByConditionsRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t12147.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t12147.setRequestId(_RequestId);
		}
		if (_QuerySet == true && Utils.isNull(_Query) == false) 
		{
			_t12147.setQuery((cast (_Query.clone())));
		}
		if (_MatchMakingConditionsSet == true && Utils.isNull(_MatchMakingConditions) == false) 
		{
			_t12147.setMatchMakingConditions((cast (_MatchMakingConditions.clone())));
		}
		return _t12147;
	}

	public function toString():String
	{
		var _b12148:String = "";
		_b12148 += "[" + "SearchImmediateGameByConditionsRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b12148 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b12148 += "_RequestId=" + _RequestId + "| ";
		}
		if (_QuerySet == true && Utils.isNull(_Query) == false) 
		{
			_b12148 += "_Query=" + _Query + "| ";
		}
		if (_MatchMakingConditionsSet == true && Utils.isNull(_MatchMakingConditions) == false) 
		{
			_b12148 += "_MatchMakingConditions=" + _MatchMakingConditions + "| ";
		}
		_b12148 += "]";
		return _b12148;
	}
}
