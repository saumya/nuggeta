package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ErrorCode;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ErrorCode;
import com.nuggeta.ngdl.nobjects.NuggetaException;

class NuggetaException implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ErrorCodeSet = false;
		_ReasonSet = false;
	}

	public static var serializerID:Int = -3106;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ErrorCode:ErrorCode;

	var _ErrorCodeSet:Bool;

	var _Reason:String;

	var _ReasonSet:Bool;

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

	public function getErrorCode():ErrorCode
	{
		return _ErrorCode;
	}

	public function setErrorCode( value:ErrorCode):Void
	{
		_ErrorCode = value;
		_ErrorCodeSet = true;
	}

	public function isErrorCodeSet():Bool
	{
		return _ErrorCodeSet;
	}

	public function unSetErrorCode():Void
	{
		_ErrorCodeSet = false;
	}

	public function getReason():String
	{
		return _Reason;
	}

	public function setReason( value:String):Void
	{
		_Reason = value;
		_ReasonSet = true;
	}

	public function isReasonSet():Bool
	{
		return _ReasonSet;
	}

	public function unSetReason():Void
	{
		_ReasonSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _y17128:NuggetaException = new NuggetaException();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y17128.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y17128.setRequestId(_RequestId);
		}
		if (_ErrorCodeSet == true && Utils.isNull(_ErrorCode) == false) 
		{
			_y17128.setErrorCode(_ErrorCode);
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_y17128.setReason(_Reason);
		}
		return _y17128;
	}

	public function toString():String
	{
		var _w17129:String = "";
		_w17129 += "[" + "NuggetaException" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w17129 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w17129 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ErrorCodeSet == true && Utils.isNull(_ErrorCode) == false) 
		{
			_w17129 += "_ErrorCode=" + _ErrorCode + "| ";
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_w17129 += "_Reason=" + _Reason + "| ";
		}
		_w17129 += "]";
		return _w17129;
	}
}
