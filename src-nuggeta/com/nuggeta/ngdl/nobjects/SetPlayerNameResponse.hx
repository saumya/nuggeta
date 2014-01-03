package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SetPlayerNameStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SetPlayerNameStatus;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;

class SetPlayerNameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SetPlayerNameStatusSet = false;
	}

	public static var serializerID:Int = -10839;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SetPlayerNameStatus:SetPlayerNameStatus;

	var _SetPlayerNameStatusSet:Bool;

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

	public function getSetPlayerNameStatus():SetPlayerNameStatus
	{
		return _SetPlayerNameStatus;
	}

	public function setSetPlayerNameStatus( value:SetPlayerNameStatus):Void
	{
		_SetPlayerNameStatus = value;
		_SetPlayerNameStatusSet = true;
	}

	public function isSetPlayerNameStatusSet():Bool
	{
		return _SetPlayerNameStatusSet;
	}

	public function unSetSetPlayerNameStatus():Void
	{
		_SetPlayerNameStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _k15896:SetPlayerNameResponse = new SetPlayerNameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k15896.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k15896.setRequestId(_RequestId);
		}
		if (_SetPlayerNameStatusSet == true && Utils.isNull(_SetPlayerNameStatus) == false) 
		{
			_k15896.setSetPlayerNameStatus(_SetPlayerNameStatus);
		}
		return _k15896;
	}

	public function toString():String
	{
		var _w15897:String = "";
		_w15897 += "[" + "SetPlayerNameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w15897 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w15897 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SetPlayerNameStatusSet == true && Utils.isNull(_SetPlayerNameStatus) == false) 
		{
			_w15897 += "_SetPlayerNameStatus=" + _SetPlayerNameStatus + "| ";
		}
		_w15897 += "]";
		return _w15897;
	}
}
