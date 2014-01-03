package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.LoginStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.LoginStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.LoginResponse;

class LoginResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoginStatusSet = false;
		_PlayerSet = false;
	}

	public static var serializerID:Int = -10079;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _LoginStatus:LoginStatus;

	var _LoginStatusSet:Bool;

	var _Player:NPlayer;

	var _PlayerSet:Bool;

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

	public function getLoginStatus():LoginStatus
	{
		return _LoginStatus;
	}

	public function setLoginStatus( value:LoginStatus):Void
	{
		_LoginStatus = value;
		_LoginStatusSet = true;
	}

	public function isLoginStatusSet():Bool
	{
		return _LoginStatusSet;
	}

	public function unSetLoginStatus():Void
	{
		_LoginStatusSet = false;
	}

	public function getPlayer():NPlayer
	{
		return _Player;
	}

	public function setPlayer( value:NPlayer):Void
	{
		_Player = value;
		_PlayerSet = true;
	}

	public function isPlayerSet():Bool
	{
		return _PlayerSet;
	}

	public function unSetPlayer():Void
	{
		_PlayerSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _o16921:LoginResponse = new LoginResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o16921.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o16921.setRequestId(_RequestId);
		}
		if (_LoginStatusSet == true && Utils.isNull(_LoginStatus) == false) 
		{
			_o16921.setLoginStatus(_LoginStatus);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_o16921.setPlayer((cast (_Player.clone())));
		}
		return _o16921;
	}

	public function toString():String
	{
		var _n16922:String = "";
		_n16922 += "[" + "LoginResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16922 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16922 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoginStatusSet == true && Utils.isNull(_LoginStatus) == false) 
		{
			_n16922 += "_LoginStatus=" + _LoginStatus + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_n16922 += "_Player=" + _Player + "| ";
		}
		_n16922 += "]";
		return _n16922;
	}
}
