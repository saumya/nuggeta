package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpRequest;

class SignUpRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoginSet = false;
		_PasswordSet = false;
		_PlayerProfileSet = false;
	}

	public static var serializerID:Int = -10037;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Login:String;

	var _LoginSet:Bool;

	var _Password:String;

	var _PasswordSet:Bool;

	var _PlayerProfile:NPlayerProfile;

	var _PlayerProfileSet:Bool;

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

	public function getPlayerProfile():NPlayerProfile
	{
		return _PlayerProfile;
	}

	public function setPlayerProfile( value:NPlayerProfile):Void
	{
		_PlayerProfile = value;
		_PlayerProfileSet = true;
	}

	public function isPlayerProfileSet():Bool
	{
		return _PlayerProfileSet;
	}

	public function unSetPlayerProfile():Void
	{
		_PlayerProfileSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _z17149:SignUpRequest = new SignUpRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z17149.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z17149.setRequestId(_RequestId);
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_z17149.setLogin(_Login);
		}
		if (_PasswordSet == true && Utils.isNull(_Password) == false) 
		{
			_z17149.setPassword(_Password);
		}
		if (_PlayerProfileSet == true && Utils.isNull(_PlayerProfile) == false) 
		{
			_z17149.setPlayerProfile((cast (_PlayerProfile.clone())));
		}
		return _z17149;
	}

	public function toString():String
	{
		var _c17150:String = "";
		_c17150 += "[" + "SignUpRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c17150 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c17150 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoginSet == true && Utils.isNull(_Login) == false) 
		{
			_c17150 += "_Login=" + _Login + "| ";
		}
		if (_PasswordSet == true && Utils.isNull(_Password) == false) 
		{
			_c17150 += "_Password=" + _Password + "| ";
		}
		if (_PlayerProfileSet == true && Utils.isNull(_PlayerProfile) == false) 
		{
			_c17150 += "_PlayerProfile=" + _PlayerProfile + "| ";
		}
		_c17150 += "]";
		return _c17150;
	}
}
