package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.BuyItemRequest;

class BuyItemRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ItemIdSet = false;
		_QuantitySet = false;
	}

	public static var serializerID:Int = -10337;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ItemId:String;

	var _ItemIdSet:Bool;

	var _Quantity:Int;

	var _QuantitySet:Bool;

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

	public function getItemId():String
	{
		return _ItemId;
	}

	public function setItemId( value:String):Void
	{
		_ItemId = value;
		_ItemIdSet = true;
	}

	public function isItemIdSet():Bool
	{
		return _ItemIdSet;
	}

	public function unSetItemId():Void
	{
		_ItemIdSet = false;
	}

	public function getQuantity():Int
	{
		return _Quantity;
	}

	public function setQuantity( value:Int):Void
	{
		_Quantity = value;
		_QuantitySet = true;
	}

	public function isQuantitySet():Bool
	{
		return _QuantitySet;
	}

	public function unSetQuantity():Void
	{
		_QuantitySet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _y17120:BuyItemRequest = new BuyItemRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y17120.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y17120.setRequestId(_RequestId);
		}
		if (_ItemIdSet == true && Utils.isNull(_ItemId) == false) 
		{
			_y17120.setItemId(_ItemId);
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_y17120.setQuantity(_Quantity);
		}
		return _y17120;
	}

	public function toString():String
	{
		var _v17121:String = "";
		_v17121 += "[" + "BuyItemRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_v17121 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_v17121 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ItemIdSet == true && Utils.isNull(_ItemId) == false) 
		{
			_v17121 += "_ItemId=" + _ItemId + "| ";
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_v17121 += "_Quantity=" + _Quantity + "| ";
		}
		_v17121 += "]";
		return _v17121;
	}
}
