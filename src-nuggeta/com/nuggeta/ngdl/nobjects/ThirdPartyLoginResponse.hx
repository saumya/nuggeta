package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;

class ThirdPartyLoginResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ThirdPartyLoginStatusSet = false;
		_PlayerSet = false;
	}

	public static var serializerID:Int = -10939;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ThirdPartyLoginStatus:ThirdPartyLoginStatus;

	var _ThirdPartyLoginStatusSet:Bool;

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

	public function getThirdPartyLoginStatus():ThirdPartyLoginStatus
	{
		return _ThirdPartyLoginStatus;
	}

	public function setThirdPartyLoginStatus( value:ThirdPartyLoginStatus):Void
	{
		_ThirdPartyLoginStatus = value;
		_ThirdPartyLoginStatusSet = true;
	}

	public function isThirdPartyLoginStatusSet():Bool
	{
		return _ThirdPartyLoginStatusSet;
	}

	public function unSetThirdPartyLoginStatus():Void
	{
		_ThirdPartyLoginStatusSet = false;
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
		var _n16007:ThirdPartyLoginResponse = new ThirdPartyLoginResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16007.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16007.setRequestId(_RequestId);
		}
		if (_ThirdPartyLoginStatusSet == true && Utils.isNull(_ThirdPartyLoginStatus) == false) 
		{
			_n16007.setThirdPartyLoginStatus(_ThirdPartyLoginStatus);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_n16007.setPlayer((cast (_Player.clone())));
		}
		return _n16007;
	}

	public function toString():String
	{
		var _a16008:String = "";
		_a16008 += "[" + "ThirdPartyLoginResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16008 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16008 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ThirdPartyLoginStatusSet == true && Utils.isNull(_ThirdPartyLoginStatus) == false) 
		{
			_a16008 += "_ThirdPartyLoginStatus=" + _ThirdPartyLoginStatus + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_a16008 += "_Player=" + _Player + "| ";
		}
		_a16008 += "]";
		return _a16008;
	}
}
