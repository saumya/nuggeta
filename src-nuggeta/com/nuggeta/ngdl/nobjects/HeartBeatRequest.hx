package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.HeartBeatRequest;

class HeartBeatRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_CounterSet = false;
	}

	public static var serializerID:Int = -3174;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Counter:Int;

	var _CounterSet:Bool;

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

	public function getCounter():Int
	{
		return _Counter;
	}

	public function setCounter( value:Int):Void
	{
		_Counter = value;
		_CounterSet = true;
	}

	public function isCounterSet():Bool
	{
		return _CounterSet;
	}

	public function unSetCounter():Void
	{
		_CounterSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _t15935:HeartBeatRequest = new HeartBeatRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t15935.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t15935.setRequestId(_RequestId);
		}
		if (_CounterSet == true && Utils.isNullInteger(_Counter) == false) 
		{
			_t15935.setCounter(_Counter);
		}
		return _t15935;
	}

	public function toString():String
	{
		var _w15936:String = "";
		_w15936 += "[" + "HeartBeatRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w15936 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w15936 += "_RequestId=" + _RequestId + "| ";
		}
		if (_CounterSet == true && Utils.isNullInteger(_Counter) == false) 
		{
			_w15936 += "_Counter=" + _Counter + "| ";
		}
		_w15936 += "]";
		return _w15936;
	}
}
