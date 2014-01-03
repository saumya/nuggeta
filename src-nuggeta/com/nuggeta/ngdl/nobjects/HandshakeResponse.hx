package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;

class HandshakeResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ExecutionStatusSet = false;
		_ReasonSet = false;
		_dataPlayerIdSet = false;
		_sessionIdSet = false;
	}

	public static var serializerID:Int = -3001;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ExecutionStatus:ExecutionStatus;

	var _ExecutionStatusSet:Bool;

	var _Reason:HandshakeState;

	var _ReasonSet:Bool;

	var _dataPlayerId:String;

	var _dataPlayerIdSet:Bool;

	var _sessionId:String;

	var _sessionIdSet:Bool;

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

	public function getExecutionStatus():ExecutionStatus
	{
		return _ExecutionStatus;
	}

	public function setExecutionStatus( value:ExecutionStatus):Void
	{
		_ExecutionStatus = value;
		_ExecutionStatusSet = true;
	}

	public function isExecutionStatusSet():Bool
	{
		return _ExecutionStatusSet;
	}

	public function unSetExecutionStatus():Void
	{
		_ExecutionStatusSet = false;
	}

	public function getReason():HandshakeState
	{
		return _Reason;
	}

	public function setReason( value:HandshakeState):Void
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

	public function getDataPlayerId():String
	{
		return _dataPlayerId;
	}

	public function setDataPlayerId( value:String):Void
	{
		_dataPlayerId = value;
		_dataPlayerIdSet = true;
	}

	public function isdataPlayerIdSet():Bool
	{
		return _dataPlayerIdSet;
	}

	public function unSetdataPlayerId():Void
	{
		_dataPlayerIdSet = false;
	}

	public function getSessionId():String
	{
		return _sessionId;
	}

	public function setSessionId( value:String):Void
	{
		_sessionId = value;
		_sessionIdSet = true;
	}

	public function issessionIdSet():Bool
	{
		return _sessionIdSet;
	}

	public function unSetsessionId():Void
	{
		_sessionIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _s16379:HandshakeResponse = new HandshakeResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s16379.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s16379.setRequestId(_RequestId);
		}
		if (_ExecutionStatusSet == true && Utils.isNull(_ExecutionStatus) == false) 
		{
			_s16379.setExecutionStatus(_ExecutionStatus);
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_s16379.setReason(_Reason);
		}
		if (_dataPlayerIdSet == true && Utils.isNull(_dataPlayerId) == false) 
		{
			_s16379.setDataPlayerId(_dataPlayerId);
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_s16379.setSessionId(_sessionId);
		}
		return _s16379;
	}

	public function toString():String
	{
		var _w16380:String = "";
		_w16380 += "[" + "HandshakeResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w16380 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w16380 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ExecutionStatusSet == true && Utils.isNull(_ExecutionStatus) == false) 
		{
			_w16380 += "_ExecutionStatus=" + _ExecutionStatus + "| ";
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_w16380 += "_Reason=" + _Reason + "| ";
		}
		if (_dataPlayerIdSet == true && Utils.isNull(_dataPlayerId) == false) 
		{
			_w16380 += "_dataPlayerId=" + _dataPlayerId + "| ";
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_w16380 += "_sessionId=" + _sessionId + "| ";
		}
		_w16380 += "]";
		return _w16380;
	}
}
