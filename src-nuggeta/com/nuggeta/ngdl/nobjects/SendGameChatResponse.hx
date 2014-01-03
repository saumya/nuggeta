package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SendGameChatStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SendGameChatStatus;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;

class SendGameChatResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SendGameChatStatusSet = false;
	}

	public static var serializerID:Int = -10759;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SendGameChatStatus:SendGameChatStatus;

	var _SendGameChatStatusSet:Bool;

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

	public function getSendGameChatStatus():SendGameChatStatus
	{
		return _SendGameChatStatus;
	}

	public function setSendGameChatStatus( value:SendGameChatStatus):Void
	{
		_SendGameChatStatus = value;
		_SendGameChatStatusSet = true;
	}

	public function isSendGameChatStatusSet():Bool
	{
		return _SendGameChatStatusSet;
	}

	public function unSetSendGameChatStatus():Void
	{
		_SendGameChatStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _x17145:SendGameChatResponse = new SendGameChatResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x17145.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x17145.setRequestId(_RequestId);
		}
		if (_SendGameChatStatusSet == true && Utils.isNull(_SendGameChatStatus) == false) 
		{
			_x17145.setSendGameChatStatus(_SendGameChatStatus);
		}
		return _x17145;
	}

	public function toString():String
	{
		var _n17146:String = "";
		_n17146 += "[" + "SendGameChatResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n17146 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n17146 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SendGameChatStatusSet == true && Utils.isNull(_SendGameChatStatus) == false) 
		{
			_n17146 += "_SendGameChatStatus=" + _SendGameChatStatus + "| ";
		}
		_n17146 += "]";
		return _n17146;
	}
}
