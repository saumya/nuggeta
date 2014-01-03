package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;

class SavePlayerStorableResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SavePlayerStorableStatusSet = false;
	}

	public static var serializerID:Int = -10999;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SavePlayerStorableStatus:SavePlayerStorableStatus;

	var _SavePlayerStorableStatusSet:Bool;

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

	public function getSavePlayerStorableStatus():SavePlayerStorableStatus
	{
		return _SavePlayerStorableStatus;
	}

	public function setSavePlayerStorableStatus( value:SavePlayerStorableStatus):Void
	{
		_SavePlayerStorableStatus = value;
		_SavePlayerStorableStatusSet = true;
	}

	public function isSavePlayerStorableStatusSet():Bool
	{
		return _SavePlayerStorableStatusSet;
	}

	public function unSetSavePlayerStorableStatus():Void
	{
		_SavePlayerStorableStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e15904:SavePlayerStorableResponse = new SavePlayerStorableResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e15904.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e15904.setRequestId(_RequestId);
		}
		if (_SavePlayerStorableStatusSet == true && Utils.isNull(_SavePlayerStorableStatus) == false) 
		{
			_e15904.setSavePlayerStorableStatus(_SavePlayerStorableStatus);
		}
		return _e15904;
	}

	public function toString():String
	{
		var _x15905:String = "";
		_x15905 += "[" + "SavePlayerStorableResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x15905 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x15905 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SavePlayerStorableStatusSet == true && Utils.isNull(_SavePlayerStorableStatus) == false) 
		{
			_x15905 += "_SavePlayerStorableStatus=" + _SavePlayerStorableStatus + "| ";
		}
		_x15905 += "]";
		return _x15905;
	}
}
