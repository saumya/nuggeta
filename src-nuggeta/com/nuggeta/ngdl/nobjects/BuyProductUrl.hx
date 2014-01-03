package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.BuyProductUrl;

class BuyProductUrl implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_urlSet = false;
	}

	public static var serializerID:Int = -3109;

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
		var _g17126:BuyProductUrl = new BuyProductUrl();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g17126.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g17126.setRequestId(_RequestId);
		}
		if (_urlSet == true && Utils.isNull(_url) == false) 
		{
			_g17126.setUrl(_url);
		}
		return _g17126;
	}

	public function toString():String
	{
		var _o17127:String = "";
		_o17127 += "[" + "BuyProductUrl" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o17127 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o17127 += "_RequestId=" + _RequestId + "| ";
		}
		if (_urlSet == true && Utils.isNull(_url) == false) 
		{
			_o17127 += "_url=" + _url + "| ";
		}
		_o17127 += "]";
		return _o17127;
	}
}
