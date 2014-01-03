package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.AchieveStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AchieveStatus;
import com.nuggeta.ngdl.nobjects.AchieveResponse;

class AchieveResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_AchieveStatusSet = false;
	}

	public static var serializerID:Int = -10459;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _AchieveStatus:AchieveStatus;

	var _AchieveStatusSet:Bool;

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

	public function getAchieveStatus():AchieveStatus
	{
		return _AchieveStatus;
	}

	public function setAchieveStatus( value:AchieveStatus):Void
	{
		_AchieveStatus = value;
		_AchieveStatusSet = true;
	}

	public function isAchieveStatusSet():Bool
	{
		return _AchieveStatusSet;
	}

	public function unSetAchieveStatus():Void
	{
		_AchieveStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _t12054:AchieveResponse = new AchieveResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t12054.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t12054.setRequestId(_RequestId);
		}
		if (_AchieveStatusSet == true && Utils.isNull(_AchieveStatus) == false) 
		{
			_t12054.setAchieveStatus(_AchieveStatus);
		}
		return _t12054;
	}

	public function toString():String
	{
		var _d12055:String = "";
		_d12055 += "[" + "AchieveResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d12055 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d12055 += "_RequestId=" + _RequestId + "| ";
		}
		if (_AchieveStatusSet == true && Utils.isNull(_AchieveStatus) == false) 
		{
			_d12055 += "_AchieveStatus=" + _AchieveStatus + "| ";
		}
		_d12055 += "]";
		return _d12055;
	}
}
