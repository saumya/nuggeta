package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.ngdl.nobjects.DnsResponse;

class DnsResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_IpAddressSet = false;
		_TcpPortSet = false;
		_DnsStatusSet = false;
		_StartDetailsSet = false;
	}

	public static var serializerID:Int = -3020;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _IpAddress:String;

	var _IpAddressSet:Bool;

	var _TcpPort:Int;

	var _TcpPortSet:Bool;

	var _DnsStatus:DnsStatus;

	var _DnsStatusSet:Bool;

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

	public function getDnsStatus():DnsStatus
	{
		return _DnsStatus;
	}

	public function setDnsStatus( value:DnsStatus):Void
	{
		_DnsStatus = value;
		_DnsStatusSet = true;
	}

	public function isDnsStatusSet():Bool
	{
		return _DnsStatusSet;
	}

	public function unSetDnsStatus():Void
	{
		_DnsStatusSet = false;
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
		var _b16813:DnsResponse = new DnsResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b16813.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b16813.setRequestId(_RequestId);
		}
		if (_IpAddressSet == true && Utils.isNull(_IpAddress) == false) 
		{
			_b16813.setIpAddress(_IpAddress);
		}
		if (_TcpPortSet == true && Utils.isNullInteger(_TcpPort) == false) 
		{
			_b16813.setTcpPort(_TcpPort);
		}
		if (_DnsStatusSet == true && Utils.isNull(_DnsStatus) == false) 
		{
			_b16813.setDnsStatus(_DnsStatus);
		}
		if (_StartDetailsSet == true && Utils.isNull(_StartDetails) == false) 
		{
			_b16813.setStartDetails((cast (_StartDetails.clone())));
		}
		return _b16813;
	}

	public function toString():String
	{
		var _p16814:String = "";
		_p16814 += "[" + "DnsResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16814 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16814 += "_RequestId=" + _RequestId + "| ";
		}
		if (_IpAddressSet == true && Utils.isNull(_IpAddress) == false) 
		{
			_p16814 += "_IpAddress=" + _IpAddress + "| ";
		}
		if (_TcpPortSet == true && Utils.isNullInteger(_TcpPort) == false) 
		{
			_p16814 += "_TcpPort=" + _TcpPort + "| ";
		}
		if (_DnsStatusSet == true && Utils.isNull(_DnsStatus) == false) 
		{
			_p16814 += "_DnsStatus=" + _DnsStatus + "| ";
		}
		if (_StartDetailsSet == true && Utils.isNull(_StartDetails) == false) 
		{
			_p16814 += "_StartDetails=" + _StartDetails + "| ";
		}
		_p16814 += "]";
		return _p16814;
	}
}
