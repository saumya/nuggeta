package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.RemoveStorableRequest;

class RemoveStorableRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_StorableSet = false;
	}

	public static var serializerID:Int = -10877;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Storable:Storable;

	var _StorableSet:Bool;

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

	public function getStorable():Storable
	{
		return _Storable;
	}

	public function setStorable( value:Storable):Void
	{
		_Storable = value;
		_StorableSet = true;
	}

	public function isStorableSet():Bool
	{
		return _StorableSet;
	}

	public function unSetStorable():Void
	{
		_StorableSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _c16532:RemoveStorableRequest = new RemoveStorableRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c16532.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c16532.setRequestId(_RequestId);
		}
		if (_StorableSet == true && Utils.isNull(_Storable) == false) 
		{
			_c16532.setStorable((cast (_Storable.clone())));
		}
		return _c16532;
	}

	public function toString():String
	{
		var _a16533:String = "";
		_a16533 += "[" + "RemoveStorableRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16533 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16533 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StorableSet == true && Utils.isNull(_Storable) == false) 
		{
			_a16533 += "_Storable=" + _Storable + "| ";
		}
		_a16533 += "]";
		return _a16533;
	}
}
