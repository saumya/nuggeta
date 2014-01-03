package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.BuyItemStatus;

class BuyItemStatus implements Serializable
{

	private static var _values:NList<BuyItemStatus> = new NList<BuyItemStatus>();

	public static var SUCCESS:BuyItemStatus = new BuyItemStatus("SUCCESS", 0);

	public static var NOT_ENOUGH_COINS:BuyItemStatus = new BuyItemStatus("NOT_ENOUGH_COINS", 1);

	public static var UNKNOWN_ITEM:BuyItemStatus = new BuyItemStatus("UNKNOWN_ITEM", 2);

	public static var INVALID_CALL:BuyItemStatus = new BuyItemStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:BuyItemStatus = new BuyItemStatus("INTERNAL_ERROR", 4);

	public static function values():NList<BuyItemStatus>
	{
		return _values;
	}

	private var _value:Int;

	private var _name:String;

	public function getValue():Int
	{
		return _value;
	}

	public function name():String
	{
		return _name;
	}

	public function ordinal():Int
	{
		return _value;
	}

	private function new( name:String,  value:Int)
	{
		this._value = value;
		this._name = name;
		_values.add(this);
	}

	public static function fromValue( value:Int):BuyItemStatus
	{
		for (_m7419 in 0 ... _values.size()) 
		{
			var _w7420:BuyItemStatus = _values.get(_m7419);
			if (_w7420.getValue() == value) 
			{
				return _w7420;
			}
		}
		return null;
	}

	public static function valueOf( name:String):BuyItemStatus
	{
		for (_j16275 in 0 ... _values.size()) 
		{
			var _o16276:BuyItemStatus = _values.get(_j16275);
			if (name == _o16276.name()) 
			{
				return _o16276;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10338;
	}

	public function toString():String
	{
		return "BuyItemStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
