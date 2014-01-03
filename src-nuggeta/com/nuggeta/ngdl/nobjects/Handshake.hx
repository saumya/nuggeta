package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.Handshake;

class Handshake implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_VersionSet = false;
		_ReasonSet = false;
		_dataPlayerIdSet = false;
		_sessionIdSet = false;
		_platformSet = false;
	}

	public static var serializerID:Int = -3000;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Version:String;

	var _VersionSet:Bool;

	var _Reason:HandshakeState;

	var _ReasonSet:Bool;

	var _dataPlayerId:String;

	var _dataPlayerIdSet:Bool;

	var _sessionId:String;

	var _sessionIdSet:Bool;

	var _platform:String;

	var _platformSet:Bool;

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

	public function getVersion():String
	{
		return _Version;
	}

	public function setVersion( value:String):Void
	{
		_Version = value;
		_VersionSet = true;
	}

	public function isVersionSet():Bool
	{
		return _VersionSet;
	}

	public function unSetVersion():Void
	{
		_VersionSet = false;
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

	public function getPlatform():String
	{
		return _platform;
	}

	public function setPlatform( value:String):Void
	{
		_platform = value;
		_platformSet = true;
	}

	public function isplatformSet():Bool
	{
		return _platformSet;
	}

	public function unSetplatform():Void
	{
		_platformSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _c16811:Handshake = new Handshake();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c16811.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c16811.setRequestId(_RequestId);
		}
		if (_VersionSet == true && Utils.isNull(_Version) == false) 
		{
			_c16811.setVersion(_Version);
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_c16811.setReason(_Reason);
		}
		if (_dataPlayerIdSet == true && Utils.isNull(_dataPlayerId) == false) 
		{
			_c16811.setDataPlayerId(_dataPlayerId);
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_c16811.setSessionId(_sessionId);
		}
		if (_platformSet == true && Utils.isNull(_platform) == false) 
		{
			_c16811.setPlatform(_platform);
		}
		return _c16811;
	}

	public function toString():String
	{
		var _d16812:String = "";
		_d16812 += "[" + "Handshake" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d16812 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d16812 += "_RequestId=" + _RequestId + "| ";
		}
		if (_VersionSet == true && Utils.isNull(_Version) == false) 
		{
			_d16812 += "_Version=" + _Version + "| ";
		}
		if (_ReasonSet == true && Utils.isNull(_Reason) == false) 
		{
			_d16812 += "_Reason=" + _Reason + "| ";
		}
		if (_dataPlayerIdSet == true && Utils.isNull(_dataPlayerId) == false) 
		{
			_d16812 += "_dataPlayerId=" + _dataPlayerId + "| ";
		}
		if (_sessionIdSet == true && Utils.isNull(_sessionId) == false) 
		{
			_d16812 += "_sessionId=" + _sessionId + "| ";
		}
		if (_platformSet == true && Utils.isNull(_platform) == false) 
		{
			_d16812 += "_platform=" + _platform + "| ";
		}
		_d16812 += "]";
		return _d16812;
	}
}
