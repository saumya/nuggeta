package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletRequest;

class IncreasePlayerWalletRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ValueSet = false;
	}

	public static var serializerID:Int = -10397;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Value:Int;

	var _ValueSet:Bool;

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

	public function getValue():Int
	{
		return _Value;
	}

	public function setValue( value:Int):Void
	{
		_Value = value;
		_ValueSet = true;
	}

	public function isValueSet():Bool
	{
		return _ValueSet;
	}

	public function unSetValue():Void
	{
		_ValueSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j16367:IncreasePlayerWalletRequest = new IncreasePlayerWalletRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16367.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16367.setRequestId(_RequestId);
		}
		if (_ValueSet == true && Utils.isNullInteger(_Value) == false) 
		{
			_j16367.setValue(_Value);
		}
		return _j16367;
	}

	public function toString():String
	{
		var _d16368:String = "";
		_d16368 += "[" + "IncreasePlayerWalletRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d16368 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d16368 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ValueSet == true && Utils.isNullInteger(_Value) == false) 
		{
			_d16368 += "_Value=" + _Value + "| ";
		}
		_d16368 += "]";
		return _d16368;
	}
}
