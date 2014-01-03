package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.UpdateStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.UpdateStorableStatus;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;

class UpdateStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_UpdateStorableStatusSet = false;
	}

	public static var serializerID:Int = -10859;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _UpdateStorableStatus:UpdateStorableStatus;

	var _UpdateStorableStatusSet:Bool;

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

	public function getUpdateStorableStatus():UpdateStorableStatus
	{
		return _UpdateStorableStatus;
	}

	public function setUpdateStorableStatus( value:UpdateStorableStatus):Void
	{
		_UpdateStorableStatus = value;
		_UpdateStorableStatusSet = true;
	}

	public function isUpdateStorableStatusSet():Bool
	{
		return _UpdateStorableStatusSet;
	}

	public function unSetUpdateStorableStatus():Void
	{
		_UpdateStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _z11581:UpdateStorableResponse = new UpdateStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z11581.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z11581.setRequestId(_RequestId);
		}
		if (_UpdateStorableStatusSet == true && Utils.isNull(_UpdateStorableStatus) == false) 
		{
			_z11581.setUpdateStorableStatus(_UpdateStorableStatus);
		}
		return _z11581;
	}

	public function toString():String
	{
		var _x11582:String = "";
		_x11582 += "[" + "UpdateStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x11582 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x11582 += "_RequestId=" + _RequestId + "| ";
		}
		if (_UpdateStorableStatusSet == true && Utils.isNull(_UpdateStorableStatus) == false) 
		{
			_x11582 += "_UpdateStorableStatus=" + _UpdateStorableStatus + "| ";
		}
		_x11582 += "]";
		return _x11582;
	}
}
