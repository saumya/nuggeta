package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByEmailRequest;

class ForgotPasswordByEmailRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_EmailSet = false;
	}

	public static var serializerID:Int = -10056;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Email:String;

	var _EmailSet:Bool;

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

	public function getEmail():String
	{
		return _Email;
	}

	public function setEmail( value:String):Void
	{
		_Email = value;
		_EmailSet = true;
	}

	public function isEmailSet():Bool
	{
		return _EmailSet;
	}

	public function unSetEmail():Void
	{
		_EmailSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _r16377:ForgotPasswordByEmailRequest = new ForgotPasswordByEmailRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16377.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16377.setRequestId(_RequestId);
		}
		if (_EmailSet == true && Utils.isNull(_Email) == false) 
		{
			_r16377.setEmail(_Email);
		}
		return _r16377;
	}

	public function toString():String
	{
		var _r16378:String = "";
		_r16378 += "[" + "ForgotPasswordByEmailRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16378 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16378 += "_RequestId=" + _RequestId + "| ";
		}
		if (_EmailSet == true && Utils.isNull(_Email) == false) 
		{
			_r16378 += "_Email=" + _Email + "| ";
		}
		_r16378 += "]";
		return _r16378;
	}
}
