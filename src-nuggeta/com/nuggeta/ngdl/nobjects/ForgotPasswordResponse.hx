package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ForgotPasswordStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ForgotPasswordStatus;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;

class ForgotPasswordResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ForgotPasswordStatusSet = false;
	}

	public static var serializerID:Int = -10059;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ForgotPasswordStatus:ForgotPasswordStatus;

	var _ForgotPasswordStatusSet:Bool;

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

	public function getForgotPasswordStatus():ForgotPasswordStatus
	{
		return _ForgotPasswordStatus;
	}

	public function setForgotPasswordStatus( value:ForgotPasswordStatus):Void
	{
		_ForgotPasswordStatus = value;
		_ForgotPasswordStatusSet = true;
	}

	public function isForgotPasswordStatusSet():Bool
	{
		return _ForgotPasswordStatusSet;
	}

	public function unSetForgotPasswordStatus():Void
	{
		_ForgotPasswordStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _o16019:ForgotPasswordResponse = new ForgotPasswordResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o16019.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o16019.setRequestId(_RequestId);
		}
		if (_ForgotPasswordStatusSet == true && Utils.isNull(_ForgotPasswordStatus) == false) 
		{
			_o16019.setForgotPasswordStatus(_ForgotPasswordStatus);
		}
		return _o16019;
	}

	public function toString():String
	{
		var _u16020:String = "";
		_u16020 += "[" + "ForgotPasswordResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_u16020 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_u16020 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ForgotPasswordStatusSet == true && Utils.isNull(_ForgotPasswordStatus) == false) 
		{
			_u16020 += "_ForgotPasswordStatus=" + _ForgotPasswordStatus + "| ";
		}
		_u16020 += "]";
		return _u16020;
	}
}
