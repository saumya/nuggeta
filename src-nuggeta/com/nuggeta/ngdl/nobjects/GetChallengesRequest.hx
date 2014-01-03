package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.GetChallengesRequest;

class GetChallengesRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_DbQuerySet = false;
	}

	public static var serializerID:Int = -10597;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _DbQuery:NuggetaQuery;

	var _DbQuerySet:Bool;

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

	public function getDbQuery():NuggetaQuery
	{
		return _DbQuery;
	}

	public function setDbQuery( value:NuggetaQuery):Void
	{
		_DbQuery = value;
		_DbQuerySet = true;
	}

	public function isDbQuerySet():Bool
	{
		return _DbQuerySet;
	}

	public function unSetDbQuery():Void
	{
		_DbQuerySet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _o16807:GetChallengesRequest = new GetChallengesRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o16807.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o16807.setRequestId(_RequestId);
		}
		if (_DbQuerySet == true && Utils.isNull(_DbQuery) == false) 
		{
			_o16807.setDbQuery((cast (_DbQuery.clone())));
		}
		return _o16807;
	}

	public function toString():String
	{
		var _k16808:String = "";
		_k16808 += "[" + "GetChallengesRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k16808 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k16808 += "_RequestId=" + _RequestId + "| ";
		}
		if (_DbQuerySet == true && Utils.isNull(_DbQuery) == false) 
		{
			_k16808 += "_DbQuery=" + _DbQuery + "| ";
		}
		_k16808 += "]";
		return _k16808;
	}
}
