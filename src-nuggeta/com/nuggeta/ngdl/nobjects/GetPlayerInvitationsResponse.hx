package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsStatus;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;

class GetPlayerInvitationsResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetPlayerInvitationsStatusSet = false;
		_Invitations = new NList<NPlayerInvitation>();
		_InvitationsSet = false;
	}

	public static var serializerID:Int = -10239;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetPlayerInvitationsStatus:GetPlayerInvitationsStatus;

	var _GetPlayerInvitationsStatusSet:Bool;

	var _Invitations:NList<NPlayerInvitation>;

	var _InvitationsSet:Bool;

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

	public function getGetPlayerInvitationsStatus():GetPlayerInvitationsStatus
	{
		return _GetPlayerInvitationsStatus;
	}

	public function setGetPlayerInvitationsStatus( value:GetPlayerInvitationsStatus):Void
	{
		_GetPlayerInvitationsStatus = value;
		_GetPlayerInvitationsStatusSet = true;
	}

	public function isGetPlayerInvitationsStatusSet():Bool
	{
		return _GetPlayerInvitationsStatusSet;
	}

	public function unSetGetPlayerInvitationsStatus():Void
	{
		_GetPlayerInvitationsStatusSet = false;
	}

	public function getInvitations():NList<NPlayerInvitation>
	{
		return _Invitations;
	}

	public function setInvitations( value:NList<NPlayerInvitation>):Void
	{
		_Invitations = value;
		_InvitationsSet = true;
	}

	public function isInvitationsSet():Bool
	{
		return _InvitationsSet;
	}

	public function unSetInvitations():Void
	{
		_InvitationsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e17163:GetPlayerInvitationsResponse = new GetPlayerInvitationsResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e17163.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e17163.setRequestId(_RequestId);
		}
		if (_GetPlayerInvitationsStatusSet == true && Utils.isNull(_GetPlayerInvitationsStatus) == false) 
		{
			_e17163.setGetPlayerInvitationsStatus(_GetPlayerInvitationsStatus);
		}
		if (_InvitationsSet == true && Utils.isNull(_Invitations) == false) 
		{
			var _q17164:NList<NPlayerInvitation> = new NList<NPlayerInvitation>();
			for (_b17165 in _Invitations.tab) {
				if (_b17165 != null) 
				{
					_q17164.add((cast ((cast _b17165)).clone()));
				} else 
				{
					_q17164.add((cast _b17165));
				}
			}
			_e17163.setInvitations(_q17164);
		}
		return _e17163;
	}

	public function toString():String
	{
		var _p17166:String = "";
		_p17166 += "[" + "GetPlayerInvitationsResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p17166 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p17166 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetPlayerInvitationsStatusSet == true && Utils.isNull(_GetPlayerInvitationsStatus) == false) 
		{
			_p17166 += "_GetPlayerInvitationsStatus=" + _GetPlayerInvitationsStatus + "| ";
		}
		if (_InvitationsSet == true && Utils.isNull(_Invitations) == false) 
		{
			_p17166 += "_Invitations=" + _Invitations + "| ";
		}
		_p17166 += "]";
		return _p17166;
	}
}
