package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GameMessageError;

class GameMessageError implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ReasonSet = false;
	}

	public static var serializerID:Int = -3122;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Reason:String;

	var _ReasonSet:Bool;

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

	public function getReason():String
	{
		return _Reason;
	}

	public function setReason( value:String):Void
	{
		_Reason = value;
		_ReasonSet = true;
	}

	public function isReasonSet():Bool
	{
		return _ReasonSet;
	}

	public function unSetReason():Void
	{
		_ReasonSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b17110:GameMessageError = new GameMessageError();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b17110.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b17110.setRequestId(_RequestId);
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_b17110.setReason(_Reason);
		}
		return _b17110;
	}

	public function toString():String
	{
		var _h17111:String = "";
		_h17111 += "[" + "GameMessageError" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h17111 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h17111 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_h17111 += "_Reason=" + _Reason + "| ";
		}
		_h17111 += "]";
		return _h17111;
	}
}
