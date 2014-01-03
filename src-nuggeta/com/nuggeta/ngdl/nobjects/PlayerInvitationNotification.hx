package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;

class PlayerInvitationNotification implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PlayerInvitationSet = false;
	}

	public static var serializerID:Int = -3129;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PlayerInvitation:NPlayerInvitation;

	var _PlayerInvitationSet:Bool;

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

	public function getPlayerInvitation():NPlayerInvitation
	{
		return _PlayerInvitation;
	}

	public function setPlayerInvitation( value:NPlayerInvitation):Void
	{
		_PlayerInvitation = value;
		_PlayerInvitationSet = true;
	}

	public function isPlayerInvitationSet():Bool
	{
		return _PlayerInvitationSet;
	}

	public function unSetPlayerInvitation():Void
	{
		_PlayerInvitationSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _c16643:PlayerInvitationNotification = new PlayerInvitationNotification();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c16643.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c16643.setRequestId(_RequestId);
		}
		if (_PlayerInvitationSet == true && Utils.isNull(_PlayerInvitation) == false) 
		{
			_c16643.setPlayerInvitation((cast (_PlayerInvitation.clone())));
		}
		return _c16643;
	}

	public function toString():String
	{
		var _t16644:String = "";
		_t16644 += "[" + "PlayerInvitationNotification" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t16644 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t16644 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PlayerInvitationSet == true && Utils.isNull(_PlayerInvitation) == false) 
		{
			_t16644 += "_PlayerInvitation=" + _PlayerInvitation + "| ";
		}
		_t16644 += "]";
		return _t16644;
	}
}
