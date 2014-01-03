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
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginWithTokenRequest;

class ThirdPartyLoginWithTokenRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ThirdPartySourceSet = false;
		_AccessTokenSet = false;
	}

	public static var serializerID:Int = -10936;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ThirdPartySource:ThirdPartySource;

	var _ThirdPartySourceSet:Bool;

	var _AccessToken:String;

	var _AccessTokenSet:Bool;

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

	public function getAccessToken():String
	{
		return _AccessToken;
	}

	public function setAccessToken( value:String):Void
	{
		_AccessToken = value;
		_AccessTokenSet = true;
	}

	public function isAccessTokenSet():Bool
	{
		return _AccessTokenSet;
	}

	public function unSetAccessToken():Void
	{
		_AccessTokenSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _h15933:ThirdPartyLoginWithTokenRequest = new ThirdPartyLoginWithTokenRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h15933.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h15933.setRequestId(_RequestId);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_h15933.setThirdPartySource(_ThirdPartySource);
		}
		if (_AccessTokenSet == true && Utils.isNull(_AccessToken) == false) 
		{
			_h15933.setAccessToken(_AccessToken);
		}
		return _h15933;
	}

	public function toString():String
	{
		var _n15934:String = "";
		_n15934 += "[" + "ThirdPartyLoginWithTokenRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n15934 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n15934 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_n15934 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		if (_AccessTokenSet == true && Utils.isNull(_AccessToken) == false) 
		{
			_n15934 += "_AccessToken=" + _AccessToken + "| ";
		}
		_n15934 += "]";
		return _n15934;
	}
}
