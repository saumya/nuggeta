package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.InvitePlayerStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.InvitePlayerStatus;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;

class InvitePlayerResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_InvitePlayerStatusSet = false;
	}

	public static var serializerID:Int = -10019;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _InvitePlayerStatus:InvitePlayerStatus;

	var _InvitePlayerStatusSet:Bool;

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

	public function getInvitePlayerStatus():InvitePlayerStatus
	{
		return _InvitePlayerStatus;
	}

	public function setInvitePlayerStatus( value:InvitePlayerStatus):Void
	{
		_InvitePlayerStatus = value;
		_InvitePlayerStatusSet = true;
	}

	public function isInvitePlayerStatusSet():Bool
	{
		return _InvitePlayerStatusSet;
	}

	public function unSetInvitePlayerStatus():Void
	{
		_InvitePlayerStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _c16323:InvitePlayerResponse = new InvitePlayerResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c16323.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c16323.setRequestId(_RequestId);
		}
		if (_InvitePlayerStatusSet == true && Utils.isNull(_InvitePlayerStatus) == false) 
		{
			_c16323.setInvitePlayerStatus(_InvitePlayerStatus);
		}
		return _c16323;
	}

	public function toString():String
	{
		var _n16324:String = "";
		_n16324 += "[" + "InvitePlayerResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16324 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16324 += "_RequestId=" + _RequestId + "| ";
		}
		if (_InvitePlayerStatusSet == true && Utils.isNull(_InvitePlayerStatus) == false) 
		{
			_n16324 += "_InvitePlayerStatus=" + _InvitePlayerStatus + "| ";
		}
		_n16324 += "]";
		return _n16324;
	}
}
