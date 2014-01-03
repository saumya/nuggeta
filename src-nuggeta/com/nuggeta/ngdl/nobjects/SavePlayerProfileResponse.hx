package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;

class SavePlayerProfileResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SavePlayerProfileStatusSet = false;
	}

	public static var serializerID:Int = -10099;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SavePlayerProfileStatus:SavePlayerProfileStatus;

	var _SavePlayerProfileStatusSet:Bool;

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

	public function getSavePlayerProfileStatus():SavePlayerProfileStatus
	{
		return _SavePlayerProfileStatus;
	}

	public function setSavePlayerProfileStatus( value:SavePlayerProfileStatus):Void
	{
		_SavePlayerProfileStatus = value;
		_SavePlayerProfileStatusSet = true;
	}

	public function isSavePlayerProfileStatusSet():Bool
	{
		return _SavePlayerProfileStatusSet;
	}

	public function unSetSavePlayerProfileStatus():Void
	{
		_SavePlayerProfileStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n17088:SavePlayerProfileResponse = new SavePlayerProfileResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n17088.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n17088.setRequestId(_RequestId);
		}
		if (_SavePlayerProfileStatusSet == true && Utils.isNull(_SavePlayerProfileStatus) == false) 
		{
			_n17088.setSavePlayerProfileStatus(_SavePlayerProfileStatus);
		}
		return _n17088;
	}

	public function toString():String
	{
		var _r17089:String = "";
		_r17089 += "[" + "SavePlayerProfileResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r17089 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r17089 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SavePlayerProfileStatusSet == true && Utils.isNull(_SavePlayerProfileStatus) == false) 
		{
			_r17089 += "_SavePlayerProfileStatus=" + _SavePlayerProfileStatus + "| ";
		}
		_r17089 += "]";
		return _r17089;
	}
}
