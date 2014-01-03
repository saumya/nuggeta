package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;

class IncreasePlayerWalletResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_IncreasePlayerWalletStatusSet = false;
		_ValueSet = false;
	}

	public static var serializerID:Int = -10399;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _IncreasePlayerWalletStatus:IncreasePlayerWalletStatus;

	var _IncreasePlayerWalletStatusSet:Bool;

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

	public function getIncreasePlayerWalletStatus():IncreasePlayerWalletStatus
	{
		return _IncreasePlayerWalletStatus;
	}

	public function setIncreasePlayerWalletStatus( value:IncreasePlayerWalletStatus):Void
	{
		_IncreasePlayerWalletStatus = value;
		_IncreasePlayerWalletStatusSet = true;
	}

	public function isIncreasePlayerWalletStatusSet():Bool
	{
		return _IncreasePlayerWalletStatusSet;
	}

	public function unSetIncreasePlayerWalletStatus():Void
	{
		_IncreasePlayerWalletStatusSet = false;
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
		var _e16871:IncreasePlayerWalletResponse = new IncreasePlayerWalletResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16871.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16871.setRequestId(_RequestId);
		}
		if (_IncreasePlayerWalletStatusSet == true && Utils.isNull(_IncreasePlayerWalletStatus) == false) 
		{
			_e16871.setIncreasePlayerWalletStatus(_IncreasePlayerWalletStatus);
		}
		if (_ValueSet == true && Utils.isNullInteger(_Value) == false) 
		{
			_e16871.setValue(_Value);
		}
		return _e16871;
	}

	public function toString():String
	{
		var _d16872:String = "";
		_d16872 += "[" + "IncreasePlayerWalletResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d16872 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d16872 += "_RequestId=" + _RequestId + "| ";
		}
		if (_IncreasePlayerWalletStatusSet == true && Utils.isNull(_IncreasePlayerWalletStatus) == false) 
		{
			_d16872 += "_IncreasePlayerWalletStatus=" + _IncreasePlayerWalletStatus + "| ";
		}
		if (_ValueSet == true && Utils.isNullInteger(_Value) == false) 
		{
			_d16872 += "_Value=" + _Value + "| ";
		}
		_d16872 += "]";
		return _d16872;
	}
}
