package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageStatus;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;

class PublishThirdPartyMessageResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PublishThirdPartyMessageStatusSet = false;
	}

	public static var serializerID:Int = -10919;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PublishThirdPartyMessageStatus:PublishThirdPartyMessageStatus;

	var _PublishThirdPartyMessageStatusSet:Bool;

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

	public function getPublishThirdPartyMessageStatus():PublishThirdPartyMessageStatus
	{
		return _PublishThirdPartyMessageStatus;
	}

	public function setPublishThirdPartyMessageStatus( value:PublishThirdPartyMessageStatus):Void
	{
		_PublishThirdPartyMessageStatus = value;
		_PublishThirdPartyMessageStatusSet = true;
	}

	public function isPublishThirdPartyMessageStatusSet():Bool
	{
		return _PublishThirdPartyMessageStatusSet;
	}

	public function unSetPublishThirdPartyMessageStatus():Void
	{
		_PublishThirdPartyMessageStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _y15983:PublishThirdPartyMessageResponse = new PublishThirdPartyMessageResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y15983.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y15983.setRequestId(_RequestId);
		}
		if (_PublishThirdPartyMessageStatusSet == true && Utils.isNull(_PublishThirdPartyMessageStatus) == false) 
		{
			_y15983.setPublishThirdPartyMessageStatus(_PublishThirdPartyMessageStatus);
		}
		return _y15983;
	}

	public function toString():String
	{
		var _i15984:String = "";
		_i15984 += "[" + "PublishThirdPartyMessageResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i15984 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i15984 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PublishThirdPartyMessageStatusSet == true && Utils.isNull(_PublishThirdPartyMessageStatus) == false) 
		{
			_i15984 += "_PublishThirdPartyMessageStatus=" + _PublishThirdPartyMessageStatus + "| ";
		}
		_i15984 += "]";
		return _i15984;
	}
}
