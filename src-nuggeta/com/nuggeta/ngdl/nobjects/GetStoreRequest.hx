package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetStoreRequest;

class GetStoreRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
	}

	public static var serializerID:Int = -10357;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

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


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _x16867:GetStoreRequest = new GetStoreRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16867.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16867.setRequestId(_RequestId);
		}
		return _x16867;
	}

	public function toString():String
	{
		var _p16868:String = "";
		_p16868 += "[" + "GetStoreRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16868 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16868 += "_RequestId=" + _RequestId + "| ";
		}
		_p16868 += "]";
		return _p16868;
	}
}
