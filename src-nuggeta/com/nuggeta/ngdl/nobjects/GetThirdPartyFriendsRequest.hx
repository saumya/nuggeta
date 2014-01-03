package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsRequest;

class GetThirdPartyFriendsRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ThirdPartySourceSet = false;
	}

	public static var serializerID:Int = -10217;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ThirdPartySource:ThirdPartySource;

	var _ThirdPartySourceSet:Bool;

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

	public function getThirdPartySource():ThirdPartySource
	{
		return _ThirdPartySource;
	}

	public function setThirdPartySource( value:ThirdPartySource):Void
	{
		_ThirdPartySource = value;
		_ThirdPartySourceSet = true;
	}

	public function isThirdPartySourceSet():Bool
	{
		return _ThirdPartySourceSet;
	}

	public function unSetThirdPartySource():Void
	{
		_ThirdPartySourceSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _q16317:GetThirdPartyFriendsRequest = new GetThirdPartyFriendsRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16317.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16317.setRequestId(_RequestId);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_q16317.setThirdPartySource(_ThirdPartySource);
		}
		return _q16317;
	}

	public function toString():String
	{
		var _a16318:String = "";
		_a16318 += "[" + "GetThirdPartyFriendsRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16318 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16318 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_a16318 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		_a16318 += "]";
		return _a16318;
	}
}
