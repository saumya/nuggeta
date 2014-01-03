package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SwitchToServerInformation;

class SwitchToServerInformation implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_AddressSet = false;
	}

	public static var serializerID:Int = -3137;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Address:String;

	var _AddressSet:Bool;

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

	public function getAddress():String
	{
		return _Address;
	}

	public function setAddress( value:String):Void
	{
		_Address = value;
		_AddressSet = true;
	}

	public function isAddressSet():Bool
	{
		return _AddressSet;
	}

	public function unSetAddress():Void
	{
		_AddressSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _s17171:SwitchToServerInformation = new SwitchToServerInformation();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_s17171.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_s17171.setRequestId(_RequestId);
		}
		if (_AddressSet == true && Utils.isNull(_Address) == false) 
		{
			_s17171.setAddress(_Address);
		}
		return _s17171;
	}

	public function toString():String
	{
		var _m17172:String = "";
		_m17172 += "[" + "SwitchToServerInformation" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m17172 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m17172 += "_RequestId=" + _RequestId + "| ";
		}
		if (_AddressSet == true && Utils.isNull(_Address) == false) 
		{
			_m17172 += "_Address=" + _Address + "| ";
		}
		_m17172 += "]";
		return _m17172;
	}
}
