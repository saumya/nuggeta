package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SaveStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SaveStorableStatus;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;

class SaveStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SaveStorableStatusSet = false;
	}

	public static var serializerID:Int = -10799;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SaveStorableStatus:SaveStorableStatus;

	var _SaveStorableStatusSet:Bool;

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

	public function getSaveStorableStatus():SaveStorableStatus
	{
		return _SaveStorableStatus;
	}

	public function setSaveStorableStatus( value:SaveStorableStatus):Void
	{
		_SaveStorableStatus = value;
		_SaveStorableStatusSet = true;
	}

	public function isSaveStorableStatusSet():Bool
	{
		return _SaveStorableStatusSet;
	}

	public function unSetSaveStorableStatus():Void
	{
		_SaveStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _i16520:SaveStorableResponse = new SaveStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i16520.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i16520.setRequestId(_RequestId);
		}
		if (_SaveStorableStatusSet == true && Utils.isNull(_SaveStorableStatus) == false) 
		{
			_i16520.setSaveStorableStatus(_SaveStorableStatus);
		}
		return _i16520;
	}

	public function toString():String
	{
		var _k16521:String = "";
		_k16521 += "[" + "SaveStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k16521 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k16521 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SaveStorableStatusSet == true && Utils.isNull(_SaveStorableStatus) == false) 
		{
			_k16521 += "_SaveStorableStatus=" + _SaveStorableStatus + "| ";
		}
		_k16521 += "]";
		return _k16521;
	}
}
