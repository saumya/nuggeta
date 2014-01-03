package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;

class RemovePlayerStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_RemovePlayerStorableStatusSet = false;
	}

	public static var serializerID:Int = -11039;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _RemovePlayerStorableStatus:RemovePlayerStorableStatus;

	var _RemovePlayerStorableStatusSet:Bool;

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

	public function getRemovePlayerStorableStatus():RemovePlayerStorableStatus
	{
		return _RemovePlayerStorableStatus;
	}

	public function setRemovePlayerStorableStatus( value:RemovePlayerStorableStatus):Void
	{
		_RemovePlayerStorableStatus = value;
		_RemovePlayerStorableStatusSet = true;
	}

	public function isRemovePlayerStorableStatusSet():Bool
	{
		return _RemovePlayerStorableStatusSet;
	}

	public function unSetRemovePlayerStorableStatus():Void
	{
		_RemovePlayerStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _v16403:RemovePlayerStorableResponse = new RemovePlayerStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_v16403.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_v16403.setRequestId(_RequestId);
		}
		if (_RemovePlayerStorableStatusSet == true && Utils.isNull(_RemovePlayerStorableStatus) == false) 
		{
			_v16403.setRemovePlayerStorableStatus(_RemovePlayerStorableStatus);
		}
		return _v16403;
	}

	public function toString():String
	{
		var _k16404:String = "";
		_k16404 += "[" + "RemovePlayerStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k16404 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k16404 += "_RequestId=" + _RequestId + "| ";
		}
		if (_RemovePlayerStorableStatusSet == true && Utils.isNull(_RemovePlayerStorableStatus) == false) 
		{
			_k16404 += "_RemovePlayerStorableStatus=" + _RemovePlayerStorableStatus + "| ";
		}
		_k16404 += "]";
		return _k16404;
	}
}
