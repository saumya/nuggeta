package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByLoginRequest;

class ForgotPasswordByLoginRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoginSet = false;
	}

	public static var serializerID:Int = -10057;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Login:String;

	var _LoginSet:Bool;

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

	public function getLogin():String
	{
		return _Login;
	}

	public function setLogin( value:String):Void
	{
		_Login = value;
		_LoginSet = true;
	}

	public function isLoginSet():Bool
	{
		return _LoginSet;
	}

	public function unSetLogin():Void
	{
		_LoginSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _k16888:ForgotPasswordByLoginRequest = new ForgotPasswordByLoginRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k16888.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k16888.setRequestId(_RequestId);
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_k16888.setLogin(_Login);
		}
		return _k16888;
	}

	public function toString():String
	{
		var _f16889:String = "";
		_f16889 += "[" + "ForgotPasswordByLoginRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16889 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16889 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_f16889 += "_Login=" + _Login + "| ";
		}
		_f16889 += "]";
		return _f16889;
	}
}
