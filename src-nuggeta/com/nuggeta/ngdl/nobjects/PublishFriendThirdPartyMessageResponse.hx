package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageStatus;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;

class PublishFriendThirdPartyMessageResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PublishFriendThirdPartyMessageStatusSet = false;
	}

	public static var serializerID:Int = -11119;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PublishFriendThirdPartyMessageStatus:PublishFriendThirdPartyMessageStatus;

	var _PublishFriendThirdPartyMessageStatusSet:Bool;

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

	public function getPublishFriendThirdPartyMessageStatus():PublishFriendThirdPartyMessageStatus
	{
		return _PublishFriendThirdPartyMessageStatus;
	}

	public function setPublishFriendThirdPartyMessageStatus( value:PublishFriendThirdPartyMessageStatus):Void
	{
		_PublishFriendThirdPartyMessageStatus = value;
		_PublishFriendThirdPartyMessageStatusSet = true;
	}

	public function isPublishFriendThirdPartyMessageStatusSet():Bool
	{
		return _PublishFriendThirdPartyMessageStatusSet;
	}

	public function unSetPublishFriendThirdPartyMessageStatus():Void
	{
		_PublishFriendThirdPartyMessageStatusSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _r16387:PublishFriendThirdPartyMessageResponse = new PublishFriendThirdPartyMessageResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16387.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16387.setRequestId(_RequestId);
		}
		if (_PublishFriendThirdPartyMessageStatusSet == true && Utils.isNull(_PublishFriendThirdPartyMessageStatus) == false) 
		{
			_r16387.setPublishFriendThirdPartyMessageStatus(_PublishFriendThirdPartyMessageStatus);
		}
		return _r16387;
	}

	public function toString():String
	{
		var _x16388:String = "";
		_x16388 += "[" + "PublishFriendThirdPartyMessageResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16388 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16388 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PublishFriendThirdPartyMessageStatusSet == true && Utils.isNull(_PublishFriendThirdPartyMessageStatus) == false) 
		{
			_x16388 += "_PublishFriendThirdPartyMessageStatus=" + _PublishFriendThirdPartyMessageStatus + "| ";
		}
		_x16388 += "]";
		return _x16388;
	}
}
