package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnStatus;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;

class NextPlayerTurnResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_NextPlayerTurnStatusSet = false;
	}

	public static var serializerID:Int = -10819;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _NextPlayerTurnStatus:NextPlayerTurnStatus;

	var _NextPlayerTurnStatusSet:Bool;

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

	public function getNextPlayerTurnStatus():NextPlayerTurnStatus
	{
		return _NextPlayerTurnStatus;
	}

	public function setNextPlayerTurnStatus( value:NextPlayerTurnStatus):Void
	{
		_NextPlayerTurnStatus = value;
		_NextPlayerTurnStatusSet = true;
	}

	public function isNextPlayerTurnStatusSet():Bool
	{
		return _NextPlayerTurnStatusSet;
	}

	public function unSetNextPlayerTurnStatus():Void
	{
		_NextPlayerTurnStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _x16928:NextPlayerTurnResponse = new NextPlayerTurnResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16928.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16928.setRequestId(_RequestId);
		}
		if (_NextPlayerTurnStatusSet == true && Utils.isNull(_NextPlayerTurnStatus) == false) 
		{
			_x16928.setNextPlayerTurnStatus(_NextPlayerTurnStatus);
		}
		return _x16928;
	}

	public function toString():String
	{
		var _b16929:String = "";
		_b16929 += "[" + "NextPlayerTurnResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b16929 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b16929 += "_RequestId=" + _RequestId + "| ";
		}
		if (_NextPlayerTurnStatusSet == true && Utils.isNull(_NextPlayerTurnStatus) == false) 
		{
			_b16929 += "_NextPlayerTurnStatus=" + _NextPlayerTurnStatus + "| ";
		}
		_b16929 += "]";
		return _b16929;
	}
}
