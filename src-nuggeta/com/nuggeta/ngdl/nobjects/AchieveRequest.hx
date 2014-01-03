package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.AchieveRequest;

class AchieveRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_AchivementIdSet = false;
	}

	public static var serializerID:Int = -10457;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _AchivementId:String;

	var _AchivementIdSet:Bool;

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

	public function getAchivementId():String
	{
		return _AchivementId;
	}

	public function setAchivementId( value:String):Void
	{
		_AchivementId = value;
		_AchivementIdSet = true;
	}

	public function isAchivementIdSet():Bool
	{
		return _AchivementIdSet;
	}

	public function unSetAchivementId():Void
	{
		_AchivementIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w17055:AchieveRequest = new AchieveRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w17055.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w17055.setRequestId(_RequestId);
		}
		if (_AchivementIdSet == true && Utils.isNull(_AchivementId) == false) 
		{
			_w17055.setAchivementId(_AchivementId);
		}
		return _w17055;
	}

	public function toString():String
	{
		var _m17056:String = "";
		_m17056 += "[" + "AchieveRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m17056 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m17056 += "_RequestId=" + _RequestId + "| ";
		}
		if (_AchivementIdSet == true && Utils.isNull(_AchivementId) == false) 
		{
			_m17056 += "_AchivementId=" + _AchivementId + "| ";
		}
		_m17056 += "]";
		return _m17056;
	}
}
