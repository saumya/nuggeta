package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SubmitScoreStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SubmitScoreStatus;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;

class SubmitScoreResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SubmitScoreStatusSet = false;
	}

	public static var serializerID:Int = -10299;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SubmitScoreStatus:SubmitScoreStatus;

	var _SubmitScoreStatusSet:Bool;

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

	public function getSubmitScoreStatus():SubmitScoreStatus
	{
		return _SubmitScoreStatus;
	}

	public function setSubmitScoreStatus( value:SubmitScoreStatus):Void
	{
		_SubmitScoreStatus = value;
		_SubmitScoreStatusSet = true;
	}

	public function isSubmitScoreStatusSet():Bool
	{
		return _SubmitScoreStatusSet;
	}

	public function unSetSubmitScoreStatus():Void
	{
		_SubmitScoreStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n16815:SubmitScoreResponse = new SubmitScoreResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16815.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16815.setRequestId(_RequestId);
		}
		if (_SubmitScoreStatusSet == true && Utils.isNull(_SubmitScoreStatus) == false) 
		{
			_n16815.setSubmitScoreStatus(_SubmitScoreStatus);
		}
		return _n16815;
	}

	public function toString():String
	{
		var _y16816:String = "";
		_y16816 += "[" + "SubmitScoreResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y16816 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y16816 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SubmitScoreStatusSet == true && Utils.isNull(_SubmitScoreStatus) == false) 
		{
			_y16816 += "_SubmitScoreStatus=" + _SubmitScoreStatus + "| ";
		}
		_y16816 += "]";
		return _y16816;
	}
}
