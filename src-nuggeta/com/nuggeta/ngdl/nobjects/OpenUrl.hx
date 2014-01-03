package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.OpenUrl;

class OpenUrl implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_urlSet = false;
	}

	public static var serializerID:Int = -3157;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _url:String;

	var _urlSet:Bool;

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

	public function getUrl():String
	{
		return _url;
	}

	public function setUrl( value:String):Void
	{
		_url = value;
		_urlSet = true;
	}

	public function isurlSet():Bool
	{
		return _urlSet;
	}

	public function unSeturl():Void
	{
		_urlSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _f16801:OpenUrl = new OpenUrl();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16801.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16801.setRequestId(_RequestId);
		}
		if (_urlSet == true && Utils.isNull(_url) == false) 
		{
			_f16801.setUrl(_url);
		}
		return _f16801;
	}

	public function toString():String
	{
		var _j16802:String = "";
		_j16802 += "[" + "OpenUrl" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16802 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16802 += "_RequestId=" + _RequestId + "| ";
		}
		if (_urlSet == true && Utils.isNull(_url) == false) 
		{
			_j16802 += "_url=" + _url + "| ";
		}
		_j16802 += "]";
		return _j16802;
	}
}
