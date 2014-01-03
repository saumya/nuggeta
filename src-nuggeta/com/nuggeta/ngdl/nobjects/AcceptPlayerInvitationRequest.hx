package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationRequest;

class AcceptPlayerInvitationRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_InvitationIdSet = false;
	}

	public static var serializerID:Int = -10257;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _InvitationId:String;

	var _InvitationIdSet:Bool;

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

	public function getInvitationId():String
	{
		return _InvitationId;
	}

	public function setInvitationId( value:String):Void
	{
		_InvitationId = value;
		_InvitationIdSet = true;
	}

	public function isInvitationIdSet():Bool
	{
		return _InvitationIdSet;
	}

	public function unSetInvitationId():Void
	{
		_InvitationIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _q17114:AcceptPlayerInvitationRequest = new AcceptPlayerInvitationRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q17114.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q17114.setRequestId(_RequestId);
		}
		if (_InvitationIdSet == true && Utils.isNull(_InvitationId) == false) 
		{
			_q17114.setInvitationId(_InvitationId);
		}
		return _q17114;
	}

	public function toString():String
	{
		var _d17115:String = "";
		_d17115 += "[" + "AcceptPlayerInvitationRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d17115 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d17115 += "_RequestId=" + _RequestId + "| ";
		}
		if (_InvitationIdSet == true && Utils.isNull(_InvitationId) == false) 
		{
			_d17115 += "_InvitationId=" + _InvitationId + "| ";
		}
		_d17115 += "]";
		return _d17115;
	}
}
