package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;

class UpdatePlayerStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_UpdatePlayerStorableStatusSet = false;
	}

	public static var serializerID:Int = -11019;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _UpdatePlayerStorableStatus:UpdatePlayerStorableStatus;

	var _UpdatePlayerStorableStatusSet:Bool;

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

	public function getUpdatePlayerStorableStatus():UpdatePlayerStorableStatus
	{
		return _UpdatePlayerStorableStatus;
	}

	public function setUpdatePlayerStorableStatus( value:UpdatePlayerStorableStatus):Void
	{
		_UpdatePlayerStorableStatus = value;
		_UpdatePlayerStorableStatusSet = true;
	}

	public function isUpdatePlayerStorableStatusSet():Bool
	{
		return _UpdatePlayerStorableStatusSet;
	}

	public function unSetUpdatePlayerStorableStatus():Void
	{
		_UpdatePlayerStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _d15898:UpdatePlayerStorableResponse = new UpdatePlayerStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d15898.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d15898.setRequestId(_RequestId);
		}
		if (_UpdatePlayerStorableStatusSet == true && Utils.isNull(_UpdatePlayerStorableStatus) == false) 
		{
			_d15898.setUpdatePlayerStorableStatus(_UpdatePlayerStorableStatus);
		}
		return _d15898;
	}

	public function toString():String
	{
		var _m15899:String = "";
		_m15899 += "[" + "UpdatePlayerStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m15899 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m15899 += "_RequestId=" + _RequestId + "| ";
		}
		if (_UpdatePlayerStorableStatusSet == true && Utils.isNull(_UpdatePlayerStorableStatus) == false) 
		{
			_m15899 += "_UpdatePlayerStorableStatus=" + _UpdatePlayerStorableStatus + "| ";
		}
		_m15899 += "]";
		return _m15899;
	}
}
