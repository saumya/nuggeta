package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.RemoveStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.RemoveStorableStatus;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;

class RemoveStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_RemoveStorableStatusSet = false;
	}

	public static var serializerID:Int = -10879;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _RemoveStorableStatus:RemoveStorableStatus;

	var _RemoveStorableStatusSet:Bool;

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

	public function getRemoveStorableStatus():RemoveStorableStatus
	{
		return _RemoveStorableStatus;
	}

	public function setRemoveStorableStatus( value:RemoveStorableStatus):Void
	{
		_RemoveStorableStatus = value;
		_RemoveStorableStatusSet = true;
	}

	public function isRemoveStorableStatusSet():Bool
	{
		return _RemoveStorableStatusSet;
	}

	public function unSetRemoveStorableStatus():Void
	{
		_RemoveStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j16583:RemoveStorableResponse = new RemoveStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16583.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16583.setRequestId(_RequestId);
		}
		if (_RemoveStorableStatusSet == true && Utils.isNull(_RemoveStorableStatus) == false) 
		{
			_j16583.setRemoveStorableStatus(_RemoveStorableStatus);
		}
		return _j16583;
	}

	public function toString():String
	{
		var _k16584:String = "";
		_k16584 += "[" + "RemoveStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k16584 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k16584 += "_RequestId=" + _RequestId + "| ";
		}
		if (_RemoveStorableStatusSet == true && Utils.isNull(_RemoveStorableStatus) == false) 
		{
			_k16584 += "_RemoveStorableStatus=" + _RemoveStorableStatus + "| ";
		}
		_k16584 += "]";
		return _k16584;
	}
}
