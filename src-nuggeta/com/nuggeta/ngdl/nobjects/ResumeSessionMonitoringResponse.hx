package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;

class ResumeSessionMonitoringResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ResumeSessionMonitoringStatusSet = false;
	}

	public static var serializerID:Int = -11099;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ResumeSessionMonitoringStatus:ResumeSessionMonitoringStatus;

	var _ResumeSessionMonitoringStatusSet:Bool;

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

	public function getResumeSessionMonitoringStatus():ResumeSessionMonitoringStatus
	{
		return _ResumeSessionMonitoringStatus;
	}

	public function setResumeSessionMonitoringStatus( value:ResumeSessionMonitoringStatus):Void
	{
		_ResumeSessionMonitoringStatus = value;
		_ResumeSessionMonitoringStatusSet = true;
	}

	public function isResumeSessionMonitoringStatusSet():Bool
	{
		return _ResumeSessionMonitoringStatusSet;
	}

	public function unSetResumeSessionMonitoringStatus():Void
	{
		_ResumeSessionMonitoringStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _z12028:ResumeSessionMonitoringResponse = new ResumeSessionMonitoringResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z12028.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z12028.setRequestId(_RequestId);
		}
		if (_ResumeSessionMonitoringStatusSet == true && Utils.isNull(_ResumeSessionMonitoringStatus) == false) 
		{
			_z12028.setResumeSessionMonitoringStatus(_ResumeSessionMonitoringStatus);
		}
		return _z12028;
	}

	public function toString():String
	{
		var _e12029:String = "";
		_e12029 += "[" + "ResumeSessionMonitoringResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e12029 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e12029 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ResumeSessionMonitoringStatusSet == true && Utils.isNull(_ResumeSessionMonitoringStatus) == false) 
		{
			_e12029 += "_ResumeSessionMonitoringStatus=" + _ResumeSessionMonitoringStatus + "| ";
		}
		_e12029 += "]";
		return _e12029;
	}
}
