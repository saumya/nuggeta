package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.InvitePlayerByIdRequest;

class InvitePlayerByIdRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_IdSet = false;
	}

	public static var serializerID:Int = -10017;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

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

	public function getId():String
	{
		return _Id;
	}

	public function setId( value:String):Void
	{
		_Id = value;
		_IdSet = true;
	}

	public function isIdSet():Bool
	{
		return _IdSet;
	}

	public function unSetId():Void
	{
		_IdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e16593:InvitePlayerByIdRequest = new InvitePlayerByIdRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16593.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16593.setRequestId(_RequestId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_e16593.setId(_Id);
		}
		return _e16593;
	}

	public function toString():String
	{
		var _f16594:String = "";
		_f16594 += "[" + "InvitePlayerByIdRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16594 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16594 += "_RequestId=" + _RequestId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_f16594 += "_Id=" + _Id + "| ";
		}
		_f16594 += "]";
		return _f16594;
	}
}
