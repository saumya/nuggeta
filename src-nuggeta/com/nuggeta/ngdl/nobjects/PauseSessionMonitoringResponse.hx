package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;

class PauseSessionMonitoringResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PauseSessionMonitoringStatusSet = false;
	}

	public static var serializerID:Int = -11079;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PauseSessionMonitoringStatus:PauseSessionMonitoringStatus;

	var _PauseSessionMonitoringStatusSet:Bool;

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

	public function getPauseSessionMonitoringStatus():PauseSessionMonitoringStatus
	{
		return _PauseSessionMonitoringStatus;
	}

	public function setPauseSessionMonitoringStatus( value:PauseSessionMonitoringStatus):Void
	{
		_PauseSessionMonitoringStatus = value;
		_PauseSessionMonitoringStatusSet = true;
	}

	public function isPauseSessionMonitoringStatusSet():Bool
	{
		return _PauseSessionMonitoringStatusSet;
	}

	public function unSetPauseSessionMonitoringStatus():Void
	{
		_PauseSessionMonitoringStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j12036:PauseSessionMonitoringResponse = new PauseSessionMonitoringResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j12036.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j12036.setRequestId(_RequestId);
		}
		if (_PauseSessionMonitoringStatusSet == true && Utils.isNull(_PauseSessionMonitoringStatus) == false) 
		{
			_j12036.setPauseSessionMonitoringStatus(_PauseSessionMonitoringStatus);
		}
		return _j12036;
	}

	public function toString():String
	{
		var _v12037:String = "";
		_v12037 += "[" + "PauseSessionMonitoringResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_v12037 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_v12037 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PauseSessionMonitoringStatusSet == true && Utils.isNull(_PauseSessionMonitoringStatus) == false) 
		{
			_v12037 += "_PauseSessionMonitoringStatus=" + _PauseSessionMonitoringStatus + "| ";
		}
		_v12037 += "]";
		return _v12037;
	}
}
