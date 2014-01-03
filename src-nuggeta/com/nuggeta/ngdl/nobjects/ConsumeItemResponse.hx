package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ConsumeItemStatus;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ConsumeItemStatus;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;

class ConsumeItemResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ConsumeItemStatusSet = false;
		_ConsumedItemSet = false;
		_QuantitySet = false;
	}

	public static var serializerID:Int = -10379;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ConsumeItemStatus:ConsumeItemStatus;

	var _ConsumeItemStatusSet:Bool;

	var _ConsumedItem:NItem;

	var _ConsumedItemSet:Bool;

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

	public function getConsumeItemStatus():ConsumeItemStatus
	{
		return _ConsumeItemStatus;
	}

	public function setConsumeItemStatus( value:ConsumeItemStatus):Void
	{
		_ConsumeItemStatus = value;
		_ConsumeItemStatusSet = true;
	}

	public function isConsumeItemStatusSet():Bool
	{
		return _ConsumeItemStatusSet;
	}

	public function unSetConsumeItemStatus():Void
	{
		_ConsumeItemStatusSet = false;
	}

	public function getConsumedItem():NItem
	{
		return _ConsumedItem;
	}

	public function setConsumedItem( value:NItem):Void
	{
		_ConsumedItem = value;
		_ConsumedItemSet = true;
	}

	public function isConsumedItemSet():Bool
	{
		return _ConsumedItemSet;
	}

	public function unSetConsumedItem():Void
	{
		_ConsumedItemSet = false;
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
		var _e16141:ConsumeItemResponse = new ConsumeItemResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16141.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16141.setRequestId(_RequestId);
		}
		if (_ConsumeItemStatusSet == true && Utils.isNull(_ConsumeItemStatus) == false) 
		{
			_e16141.setConsumeItemStatus(_ConsumeItemStatus);
		}
		if (_ConsumedItemSet == true && Utils.isNull(_ConsumedItem) == false) 
		{
			_e16141.setConsumedItem((cast (_ConsumedItem.clone())));
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_e16141.setQuantity(_Quantity);
		}
		return _e16141;
	}

	public function toString():String
	{
		var _p16142:String = "";
		_p16142 += "[" + "ConsumeItemResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16142 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16142 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ConsumeItemStatusSet == true && Utils.isNull(_ConsumeItemStatus) == false) 
		{
			_p16142 += "_ConsumeItemStatus=" + _ConsumeItemStatus + "| ";
		}
		if (_ConsumedItemSet == true && Utils.isNull(_ConsumedItem) == false) 
		{
			_p16142 += "_ConsumedItem=" + _ConsumedItem + "| ";
		}
		if (_QuantitySet == true && Utils.isNullInteger(_Quantity) == false) 
		{
			_p16142 += "_Quantity=" + _Quantity + "| ";
		}
		_p16142 += "]";
		return _p16142;
	}
}
