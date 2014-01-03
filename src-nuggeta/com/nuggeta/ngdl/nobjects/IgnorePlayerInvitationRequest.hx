package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationRequest;

class IgnorePlayerInvitationRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_InvitationIdSet = false;
	}

	public static var serializerID:Int = -10277;

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
		var _v17094:IgnorePlayerInvitationRequest = new IgnorePlayerInvitationRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_v17094.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_v17094.setRequestId(_RequestId);
		}
		if (_InvitationIdSet == true && Utils.isNull(_InvitationId) == false) 
		{
			_v17094.setInvitationId(_InvitationId);
		}
		return _v17094;
	}

	public function toString():String
	{
		var _f17095:String = "";
		_f17095 += "[" + "IgnorePlayerInvitationRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f17095 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f17095 += "_RequestId=" + _RequestId + "| ";
		}
		if (_InvitationIdSet == true && Utils.isNull(_InvitationId) == false) 
		{
			_f17095 += "_InvitationId=" + _InvitationId + "| ";
		}
		_f17095 += "]";
		return _f17095;
	}
}
