package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.OpenUrlData;

class OpenUrlData implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SessionIdSet = false;
		_CallbackIdSet = false;
		_CallbackUrlSet = false;
		_ThirdPartySourceSet = false;
	}

	public static var serializerID:Int = -3164;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SessionId:String;

	var _SessionIdSet:Bool;

	var _CallbackId:String;

	var _CallbackIdSet:Bool;

	var _CallbackUrl:String;

	var _CallbackUrlSet:Bool;

	var _ThirdPartySource:ThirdPartySource;

	var _ThirdPartySourceSet:Bool;

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

	public function getSessionId():String
	{
		return _SessionId;
	}

	public function setSessionId( value:String):Void
	{
		_SessionId = value;
		_SessionIdSet = true;
	}

	public function isSessionIdSet():Bool
	{
		return _SessionIdSet;
	}

	public function unSetSessionId():Void
	{
		_SessionIdSet = false;
	}

	public function getCallbackId():String
	{
		return _CallbackId;
	}

	public function setCallbackId( value:String):Void
	{
		_CallbackId = value;
		_CallbackIdSet = true;
	}

	public function isCallbackIdSet():Bool
	{
		return _CallbackIdSet;
	}

	public function unSetCallbackId():Void
	{
		_CallbackIdSet = false;
	}

	public function getCallbackUrl():String
	{
		return _CallbackUrl;
	}

	public function setCallbackUrl( value:String):Void
	{
		_CallbackUrl = value;
		_CallbackUrlSet = true;
	}

	public function isCallbackUrlSet():Bool
	{
		return _CallbackUrlSet;
	}

	public function unSetCallbackUrl():Void
	{
		_CallbackUrlSet = false;
	}

	public function getThirdPartySource():ThirdPartySource
	{
		return _ThirdPartySource;
	}

	public function setThirdPartySource( value:ThirdPartySource):Void
	{
		_ThirdPartySource = value;
		_ThirdPartySourceSet = true;
	}

	public function isThirdPartySourceSet():Bool
	{
		return _ThirdPartySourceSet;
	}

	public function unSetThirdPartySource():Void
	{
		_ThirdPartySourceSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _d12119:OpenUrlData = new OpenUrlData();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d12119.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d12119.setRequestId(_RequestId);
		}
		if (_SessionIdSet == true && Utils.isNull(_SessionId) == false) 
		{
			_d12119.setSessionId(_SessionId);
		}
		if (_CallbackIdSet == true && Utils.isNull(_CallbackId) == false) 
		{
			_d12119.setCallbackId(_CallbackId);
		}
		if (_CallbackUrlSet == true && Utils.isNull(_CallbackUrl) == false) 
		{
			_d12119.setCallbackUrl(_CallbackUrl);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_d12119.setThirdPartySource(_ThirdPartySource);
		}
		return _d12119;
	}

	public function toString():String
	{
		var _e12120:String = "";
		_e12120 += "[" + "OpenUrlData" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e12120 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e12120 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SessionIdSet == true && Utils.isNull(_SessionId) == false) 
		{
			_e12120 += "_SessionId=" + _SessionId + "| ";
		}
		if (_CallbackIdSet == true && Utils.isNull(_CallbackId) == false) 
		{
			_e12120 += "_CallbackId=" + _CallbackId + "| ";
		}
		if (_CallbackUrlSet == true && Utils.isNull(_CallbackUrl) == false) 
		{
			_e12120 += "_CallbackUrl=" + _CallbackUrl + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_e12120 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		_e12120 += "]";
		return _e12120;
	}
}
