package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetStoreStatus;
import com.nuggeta.ngdl.nobjects.NStore;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetStoreStatus;
import com.nuggeta.ngdl.nobjects.NStore;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;

class GetStoreResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetStoreStatusSet = false;
		_StoreSet = false;
	}

	public static var serializerID:Int = -10359;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetStoreStatus:GetStoreStatus;

	var _GetStoreStatusSet:Bool;

	var _Store:NStore;

	var _StoreSet:Bool;

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

	public function getGetStoreStatus():GetStoreStatus
	{
		return _GetStoreStatus;
	}

	public function setGetStoreStatus( value:GetStoreStatus):Void
	{
		_GetStoreStatus = value;
		_GetStoreStatusSet = true;
	}

	public function isGetStoreStatusSet():Bool
	{
		return _GetStoreStatusSet;
	}

	public function unSetGetStoreStatus():Void
	{
		_GetStoreStatusSet = false;
	}

	public function getStore():NStore
	{
		return _Store;
	}

	public function setStore( value:NStore):Void
	{
		_Store = value;
		_StoreSet = true;
	}

	public function isStoreSet():Bool
	{
		return _StoreSet;
	}

	public function unSetStore():Void
	{
		_StoreSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _c17143:GetStoreResponse = new GetStoreResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c17143.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c17143.setRequestId(_RequestId);
		}
		if (_GetStoreStatusSet == true && Utils.isNull(_GetStoreStatus) == false) 
		{
			_c17143.setGetStoreStatus(_GetStoreStatus);
		}
		if (_StoreSet == true && Utils.isNull(_Store) == false) 
		{
			_c17143.setStore((cast (_Store.clone())));
		}
		return _c17143;
	}

	public function toString():String
	{
		var _e17144:String = "";
		_e17144 += "[" + "GetStoreResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e17144 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e17144 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetStoreStatusSet == true && Utils.isNull(_GetStoreStatus) == false) 
		{
			_e17144 += "_GetStoreStatus=" + _GetStoreStatus + "| ";
		}
		if (_StoreSet == true && Utils.isNull(_Store) == false) 
		{
			_e17144 += "_Store=" + _Store + "| ";
		}
		_e17144 += "]";
		return _e17144;
	}
}
