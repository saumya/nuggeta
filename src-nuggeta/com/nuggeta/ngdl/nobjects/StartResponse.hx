package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.ngdl.nobjects.StartResponse;

class StartResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_StartStatusSet = false;
		_StartDetailsSet = false;
	}

	public static var serializerID:Int = -3181;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _StartStatus:StartStatus;

	var _StartStatusSet:Bool;

	var _StartDetails:StartDetails;

	var _StartDetailsSet:Bool;

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

	public function getStartStatus():StartStatus
	{
		return _StartStatus;
	}

	public function setStartStatus( value:StartStatus):Void
	{
		_StartStatus = value;
		_StartStatusSet = true;
	}

	public function isStartStatusSet():Bool
	{
		return _StartStatusSet;
	}

	public function unSetStartStatus():Void
	{
		_StartStatusSet = false;
	}

	public function getStartDetails():StartDetails
	{
		return _StartDetails;
	}

	public function setStartDetails( value:StartDetails):Void
	{
		_StartDetails = value;
		_StartDetailsSet = true;
	}

	public function isStartDetailsSet():Bool
	{
		return _StartDetailsSet;
	}

	public function unSetStartDetails():Void
	{
		_StartDetailsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b8198:StartResponse = new StartResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b8198.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b8198.setRequestId(_RequestId);
		}
		if (_StartStatusSet == true && Utils.isNull(_StartStatus) == false) 
		{
			_b8198.setStartStatus(_StartStatus);
		}
		if (_StartDetailsSet == true && Utils.isNull(_StartDetails) == false) 
		{
			_b8198.setStartDetails((cast (_StartDetails.clone())));
		}
		return _b8198;
	}

	public function toString():String
	{
		var _h8199:String = "";
		_h8199 += "[" + "StartResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h8199 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h8199 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StartStatusSet == true && Utils.isNull(_StartStatus) == false) 
		{
			_h8199 += "_StartStatus=" + _StartStatus + "| ";
		}
		if (_StartDetailsSet == true && Utils.isNull(_StartDetails) == false) 
		{
			_h8199 += "_StartDetails=" + _StartDetails + "| ";
		}
		_h8199 += "]";
		return _h8199;
	}
}
