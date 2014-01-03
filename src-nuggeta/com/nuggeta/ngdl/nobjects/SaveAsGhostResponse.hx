package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SaveAsGhostStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SaveAsGhostStatus;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;

class SaveAsGhostResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SaveAsGhostStatusSet = false;
	}

	public static var serializerID:Int = -10699;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SaveAsGhostStatus:SaveAsGhostStatus;

	var _SaveAsGhostStatusSet:Bool;

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

	public function getSaveAsGhostStatus():SaveAsGhostStatus
	{
		return _SaveAsGhostStatus;
	}

	public function setSaveAsGhostStatus( value:SaveAsGhostStatus):Void
	{
		_SaveAsGhostStatus = value;
		_SaveAsGhostStatusSet = true;
	}

	public function isSaveAsGhostStatusSet():Bool
	{
		return _SaveAsGhostStatusSet;
	}

	public function unSetSaveAsGhostStatus():Void
	{
		_SaveAsGhostStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _m12569:SaveAsGhostResponse = new SaveAsGhostResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m12569.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m12569.setRequestId(_RequestId);
		}
		if (_SaveAsGhostStatusSet == true && Utils.isNull(_SaveAsGhostStatus) == false) 
		{
			_m12569.setSaveAsGhostStatus(_SaveAsGhostStatus);
		}
		return _m12569;
	}

	public function toString():String
	{
		var _r12570:String = "";
		_r12570 += "[" + "SaveAsGhostResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r12570 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r12570 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SaveAsGhostStatusSet == true && Utils.isNull(_SaveAsGhostStatus) == false) 
		{
			_r12570 += "_SaveAsGhostStatus=" + _SaveAsGhostStatus + "| ";
		}
		_r12570 += "]";
		return _r12570;
	}
}
