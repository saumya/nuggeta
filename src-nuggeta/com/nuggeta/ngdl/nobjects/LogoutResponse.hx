package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.LogoutStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.LogoutStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.LogoutResponse;

class LogoutResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LogoutStatusSet = false;
		_PlayerSet = false;
	}

	public static var serializerID:Int = -10139;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _LogoutStatus:LogoutStatus;

	var _LogoutStatusSet:Bool;

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

	public function getLogoutStatus():LogoutStatus
	{
		return _LogoutStatus;
	}

	public function setLogoutStatus( value:LogoutStatus):Void
	{
		_LogoutStatus = value;
		_LogoutStatusSet = true;
	}

	public function isLogoutStatusSet():Bool
	{
		return _LogoutStatusSet;
	}

	public function unSetLogoutStatus():Void
	{
		_LogoutStatusSet = false;
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
		var _w16025:LogoutResponse = new LogoutResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w16025.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w16025.setRequestId(_RequestId);
		}
		if (_LogoutStatusSet == true && Utils.isNull(_LogoutStatus) == false) 
		{
			_w16025.setLogoutStatus(_LogoutStatus);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_w16025.setPlayer((cast (_Player.clone())));
		}
		return _w16025;
	}

	public function toString():String
	{
		var _n16026:String = "";
		_n16026 += "[" + "LogoutResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16026 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16026 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LogoutStatusSet == true && Utils.isNull(_LogoutStatus) == false) 
		{
			_n16026 += "_LogoutStatus=" + _LogoutStatus + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_n16026 += "_Player=" + _Player + "| ";
		}
		_n16026 += "]";
		return _n16026;
	}
}
