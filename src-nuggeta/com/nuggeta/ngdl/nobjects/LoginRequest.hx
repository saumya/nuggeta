package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ClientApplication;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ClientApplication;
import com.nuggeta.ngdl.nobjects.LoginRequest;

class LoginRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoginSet = false;
		_PasswordSet = false;
		_ClientApplicationSet = false;
	}

	public static var serializerID:Int = -10077;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Login:String;

	var _LoginSet:Bool;

	var _Password:String;

	var _PasswordSet:Bool;

	var _ClientApplication:ClientApplication;

	var _ClientApplicationSet:Bool;

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

	public function getPassword():String
	{
		return _Password;
	}

	public function setPassword( value:String):Void
	{
		_Password = value;
		_PasswordSet = true;
	}

	public function isPasswordSet():Bool
	{
		return _PasswordSet;
	}

	public function unSetPassword():Void
	{
		_PasswordSet = false;
	}

	public function getClientApplication():ClientApplication
	{
		return _ClientApplication;
	}

	public function setClientApplication( value:ClientApplication):Void
	{
		_ClientApplication = value;
		_ClientApplicationSet = true;
	}

	public function isClientApplicationSet():Bool
	{
		return _ClientApplicationSet;
	}

	public function unSetClientApplication():Void
	{
		_ClientApplicationSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _s16659:LoginRequest = new LoginRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s16659.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s16659.setRequestId(_RequestId);
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_s16659.setLogin(_Login);
		}
		if (_PasswordSet == true && Utils.isNull(_Password) == false) 
		{
			_s16659.setPassword(_Password);
		}
		if (_ClientApplicationSet == true && Utils.isNull(_ClientApplication) == false) 
		{
			_s16659.setClientApplication(_ClientApplication);
		}
		return _s16659;
	}

	public function toString():String
	{
		var _r16660:String = "";
		_r16660 += "[" + "LoginRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16660 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16660 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_r16660 += "_Login=" + _Login + "| ";
		}
		if (_PasswordSet == true && Utils.isNull(_Password) == false) 
		{
			_r16660 += "_Password=" + _Password + "| ";
		}
		if (_ClientApplicationSet == true && Utils.isNull(_ClientApplication) == false) 
		{
			_r16660 += "_ClientApplication=" + _ClientApplication + "| ";
		}
		_r16660 += "]";
		return _r16660;
	}
}
