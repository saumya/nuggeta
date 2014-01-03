package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;

class AcceptPlayerInvitationResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_AcceptPlayerInvitationStatusSet = false;
		_PlayerInvitationIdSet = false;
	}

	public static var serializerID:Int = -10259;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _AcceptPlayerInvitationStatus:AcceptPlayerInvitationStatus;

	var _AcceptPlayerInvitationStatusSet:Bool;

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

	public function getAcceptPlayerInvitationStatus():AcceptPlayerInvitationStatus
	{
		return _AcceptPlayerInvitationStatus;
	}

	public function setAcceptPlayerInvitationStatus( value:AcceptPlayerInvitationStatus):Void
	{
		_AcceptPlayerInvitationStatus = value;
		_AcceptPlayerInvitationStatusSet = true;
	}

	public function isAcceptPlayerInvitationStatusSet():Bool
	{
		return _AcceptPlayerInvitationStatusSet;
	}

	public function unSetAcceptPlayerInvitationStatus():Void
	{
		_AcceptPlayerInvitationStatusSet = false;
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
		var _x16865:AcceptPlayerInvitationResponse = new AcceptPlayerInvitationResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16865.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16865.setRequestId(_RequestId);
		}
		if (_AcceptPlayerInvitationStatusSet == true && Utils.isNull(_AcceptPlayerInvitationStatus) == false) 
		{
			_x16865.setAcceptPlayerInvitationStatus(_AcceptPlayerInvitationStatus);
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_x16865.setPlayerInvitationId(_PlayerInvitationId);
		}
		return _x16865;
	}

	public function toString():String
	{
		var _g16866:String = "";
		_g16866 += "[" + "AcceptPlayerInvitationResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16866 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16866 += "_RequestId=" + _RequestId + "| ";
		}
		if (_AcceptPlayerInvitationStatusSet == true && Utils.isNull(_AcceptPlayerInvitationStatus) == false) 
		{
			_g16866 += "_AcceptPlayerInvitationStatus=" + _AcceptPlayerInvitationStatus + "| ";
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_g16866 += "_PlayerInvitationId=" + _PlayerInvitationId + "| ";
		}
		_g16866 += "]";
		return _g16866;
	}
}
