package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.BuyItemStatus;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.BuyItemStatus;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;

class BuyItemResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_BuyItemStatusSet = false;
		_BoughtItemSet = false;
		_QuantitySet = false;
	}

	public static var serializerID:Int = -10339;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _BuyItemStatus:BuyItemStatus;

	var _BuyItemStatusSet:Bool;

	var _BoughtItem:NItem;

	var _BoughtItemSet:Bool;

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

	public function getBuyItemStatus():BuyItemStatus
	{
		return _BuyItemStatus;
	}

	public function setBuyItemStatus( value:BuyItemStatus):Void
	{
		_BuyItemStatus = value;
		_BuyItemStatusSet = true;
	}

	public function isBuyItemStatusSet():Bool
	{
		return _BuyItemStatusSet;
	}

	public function unSetBuyItemStatus():Void
	{
		_BuyItemStatusSet = false;
	}

	public function getBoughtItem():NItem
	{
		return _BoughtItem;
	}

	public function setBoughtItem( value:NItem):Void
	{
		_BoughtItem = value;
		_BoughtItemSet = true;
	}

	public function isBoughtItemSet():Bool
	{
		return _BoughtItemSet;
	}

	public function unSetBoughtItem():Void
	{
		_BoughtItemSet = false;
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
		var _j16625:BuyItemResponse = new BuyItemResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16625.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16625.setRequestId(_RequestId);
		}
		if (_BuyItemStatusSet == true && Utils.isNull(_BuyItemStatus) == false) 
		{
			_j16625.setBuyItemStatus(_BuyItemStatus);
		}
		if (_BoughtItemSet == true && Utils.isNull(_BoughtItem) == false) 
		{
			_j16625.setBoughtItem((cast (_BoughtItem.clone())));
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_j16625.setQuantity(_Quantity);
		}
		return _j16625;
	}

	public function toString():String
	{
		var _q16626:String = "";
		_q16626 += "[" + "BuyItemResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16626 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16626 += "_RequestId=" + _RequestId + "| ";
		}
		if (_BuyItemStatusSet == true && Utils.isNull(_BuyItemStatus) == false) 
		{
			_q16626 += "_BuyItemStatus=" + _BuyItemStatus + "| ";
		}
		if (_BoughtItemSet == true && Utils.isNull(_BoughtItem) == false) 
		{
			_q16626 += "_BoughtItem=" + _BoughtItem + "| ";
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_q16626 += "_Quantity=" + _Quantity + "| ";
		}
		_q16626 += "]";
		return _q16626;
	}
}
