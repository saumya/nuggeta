package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;

class IgnorePlayerInvitationResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_IgnorePlayerInvitationStatusSet = false;
		_PlayerInvitationIdSet = false;
	}

	public static var serializerID:Int = -10279;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _IgnorePlayerInvitationStatus:IgnorePlayerInvitationStatus;

	var _IgnorePlayerInvitationStatusSet:Bool;

	var _PlayerInvitationId:String;

	var _PlayerInvitationIdSet:Bool;

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

	public function getIgnorePlayerInvitationStatus():IgnorePlayerInvitationStatus
	{
		return _IgnorePlayerInvitationStatus;
	}

	public function setIgnorePlayerInvitationStatus( value:IgnorePlayerInvitationStatus):Void
	{
		_IgnorePlayerInvitationStatus = value;
		_IgnorePlayerInvitationStatusSet = true;
	}

	public function isIgnorePlayerInvitationStatusSet():Bool
	{
		return _IgnorePlayerInvitationStatusSet;
	}

	public function unSetIgnorePlayerInvitationStatus():Void
	{
		_IgnorePlayerInvitationStatusSet = false;
	}

	public function getPlayerInvitationId():String
	{
		return _PlayerInvitationId;
	}

	public function setPlayerInvitationId( value:String):Void
	{
		_PlayerInvitationId = value;
		_PlayerInvitationIdSet = true;
	}

	public function isPlayerInvitationIdSet():Bool
	{
		return _PlayerInvitationIdSet;
	}

	public function unSetPlayerInvitationId():Void
	{
		_PlayerInvitationIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _k12032:IgnorePlayerInvitationResponse = new IgnorePlayerInvitationResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k12032.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k12032.setRequestId(_RequestId);
		}
		if (_IgnorePlayerInvitationStatusSet == true && Utils.isNull(_IgnorePlayerInvitationStatus) == false) 
		{
			_k12032.setIgnorePlayerInvitationStatus(_IgnorePlayerInvitationStatus);
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_k12032.setPlayerInvitationId(_PlayerInvitationId);
		}
		return _k12032;
	}

	public function toString():String
	{
		var _h12033:String = "";
		_h12033 += "[" + "IgnorePlayerInvitationResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h12033 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h12033 += "_RequestId=" + _RequestId + "| ";
		}
		if (_IgnorePlayerInvitationStatusSet == true && Utils.isNull(_IgnorePlayerInvitationStatus) == false) 
		{
			_h12033 += "_IgnorePlayerInvitationStatus=" + _IgnorePlayerInvitationStatus + "| ";
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_h12033 += "_PlayerInvitationId=" + _PlayerInvitationId + "| ";
		}
		_h12033 += "]";
		return _h12033;
	}
}
