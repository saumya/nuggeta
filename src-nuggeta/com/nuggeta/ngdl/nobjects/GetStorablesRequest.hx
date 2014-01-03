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
import com.nuggeta.ngdl.nobjects.GetStorablesRequest;

class GetStorablesRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_DbQuerySet = false;
	}

	public static var serializerID:Int = -10777;

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
		var _t16809:GetStorablesRequest = new GetStorablesRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t16809.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t16809.setRequestId(_RequestId);
		}
		if (_DbQuerySet == true && Utils.isNull(_DbQuery) == false) 
		{
			_t16809.setDbQuery((cast (_DbQuery.clone())));
		}
		return _t16809;
	}

	public function toString():String
	{
		var _g16810:String = "";
		_g16810 += "[" + "GetStorablesRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16810 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16810 += "_RequestId=" + _RequestId + "| ";
		}
		if (_DbQuerySet == true && Utils.isNull(_DbQuery) == false) 
		{
			_g16810 += "_DbQuery=" + _DbQuery + "| ";
		}
		_g16810 += "]";
		return _g16810;
	}
}
