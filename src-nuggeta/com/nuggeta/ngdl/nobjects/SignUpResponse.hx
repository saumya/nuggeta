package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SignUpStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SignUpStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.SignUpResponse;

class SignUpResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SignUpStatusSet = false;
		_PlayerSet = false;
	}

	public static var serializerID:Int = -10039;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SignUpStatus:SignUpStatus;

	var _SignUpStatusSet:Bool;

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

	public function getSignUpStatus():SignUpStatus
	{
		return _SignUpStatus;
	}

	public function setSignUpStatus( value:SignUpStatus):Void
	{
		_SignUpStatus = value;
		_SignUpStatusSet = true;
	}

	public function isSignUpStatusSet():Bool
	{
		return _SignUpStatusSet;
	}

	public function unSetSignUpStatus():Void
	{
		_SignUpStatusSet = false;
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
		var _l16021:SignUpResponse = new SignUpResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l16021.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l16021.setRequestId(_RequestId);
		}
		if (_SignUpStatusSet == true && Utils.isNull(_SignUpStatus) == false) 
		{
			_l16021.setSignUpStatus(_SignUpStatus);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_l16021.setPlayer((cast (_Player.clone())));
		}
		return _l16021;
	}

	public function toString():String
	{
		var _p16022:String = "";
		_p16022 += "[" + "SignUpResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16022 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16022 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SignUpStatusSet == true && Utils.isNull(_SignUpStatus) == false) 
		{
			_p16022 += "_SignUpStatus=" + _SignUpStatus + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_p16022 += "_Player=" + _Player + "| ";
		}
		_p16022 += "]";
		return _p16022;
	}
}
