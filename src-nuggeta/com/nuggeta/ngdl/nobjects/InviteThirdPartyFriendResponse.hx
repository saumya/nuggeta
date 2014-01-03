package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;

class InviteThirdPartyFriendResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_InviteThirdPartyFriendStatusSet = false;
	}

	public static var serializerID:Int = -10899;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _InviteThirdPartyFriendStatus:InviteThirdPartyFriendStatus;

	var _InviteThirdPartyFriendStatusSet:Bool;

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

	public function getInviteThirdPartyFriendStatus():InviteThirdPartyFriendStatus
	{
		return _InviteThirdPartyFriendStatus;
	}

	public function setInviteThirdPartyFriendStatus( value:InviteThirdPartyFriendStatus):Void
	{
		_InviteThirdPartyFriendStatus = value;
		_InviteThirdPartyFriendStatusSet = true;
	}

	public function isInviteThirdPartyFriendStatusSet():Bool
	{
		return _InviteThirdPartyFriendStatusSet;
	}

	public function unSetInviteThirdPartyFriendStatus():Void
	{
		_InviteThirdPartyFriendStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n16819:InviteThirdPartyFriendResponse = new InviteThirdPartyFriendResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16819.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16819.setRequestId(_RequestId);
		}
		if (_InviteThirdPartyFriendStatusSet == true && Utils.isNull(_InviteThirdPartyFriendStatus) == false) 
		{
			_n16819.setInviteThirdPartyFriendStatus(_InviteThirdPartyFriendStatus);
		}
		return _n16819;
	}

	public function toString():String
	{
		var _q16820:String = "";
		_q16820 += "[" + "InviteThirdPartyFriendResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16820 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16820 += "_RequestId=" + _RequestId + "| ";
		}
		if (_InviteThirdPartyFriendStatusSet == true && Utils.isNull(_InviteThirdPartyFriendStatus) == false) 
		{
			_q16820 += "_InviteThirdPartyFriendStatus=" + _InviteThirdPartyFriendStatus + "| ";
		}
		_q16820 += "]";
		return _q16820;
	}
}
