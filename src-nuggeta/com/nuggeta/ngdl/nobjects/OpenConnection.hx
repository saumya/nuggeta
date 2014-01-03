package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.OpenConnection;

class OpenConnection implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_IpAddressSet = false;
		_TcpPortSet = false;
	}

	public static var serializerID:Int = -3113;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _IpAddress:String;

	var _IpAddressSet:Bool;

	var _TcpPort:Int;

	var _TcpPortSet:Bool;

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

	public function getIpAddress():String
	{
		return _IpAddress;
	}

	public function setIpAddress( value:String):Void
	{
		_IpAddress = value;
		_IpAddressSet = true;
	}

	public function isIpAddressSet():Bool
	{
		return _IpAddressSet;
	}

	public function unSetIpAddress():Void
	{
		_IpAddressSet = false;
	}

	public function getTcpPort():Int
	{
		return _TcpPort;
	}

	public function setTcpPort( value:Int):Void
	{
		_TcpPort = value;
		_TcpPortSet = true;
	}

	public function isTcpPortSet():Bool
	{
		return _TcpPortSet;
	}

	public function unSetTcpPort():Void
	{
		_TcpPortSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e12149:OpenConnection = new OpenConnection();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e12149.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e12149.setRequestId(_RequestId);
		}
		if (_IpAddressSet == true && Utils.isNull(_IpAddress) == false) 
		{
			_e12149.setIpAddress(_IpAddress);
		}
		if (_TcpPortSet == true && Utils.isNullInteger(_TcpPort) == false) 
		{
			_e12149.setTcpPort(_TcpPort);
		}
		return _e12149;
	}

	public function toString():String
	{
		var _g12150:String = "";
		_g12150 += "[" + "OpenConnection" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g12150 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g12150 += "_RequestId=" + _RequestId + "| ";
		}
		if (_IpAddressSet == true && Utils.isNull(_IpAddress) == false) 
		{
			_g12150 += "_IpAddress=" + _IpAddress + "| ";
		}
		if (_TcpPortSet == true && Utils.isNullInteger(_TcpPort) == false) 
		{
			_g12150 += "_TcpPort=" + _TcpPort + "| ";
		}
		_g12150 += "]";
		return _g12150;
	}
}
