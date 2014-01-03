package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ConsumeItemStatus;

class ConsumeItemStatus implements Serializable
{

	private static var _values:NList<ConsumeItemStatus> = new NList<ConsumeItemStatus>();

	public static var SUCCESS:ConsumeItemStatus = new ConsumeItemStatus("SUCCESS", 0);

	public static var NOT_ENOUGH_QUANTITY:ConsumeItemStatus = new ConsumeItemStatus("NOT_ENOUGH_QUANTITY", 1);

	public static var UNKNOWN_ITEM:ConsumeItemStatus = new ConsumeItemStatus("UNKNOWN_ITEM", 2);

	public static var INVALID_CALL:ConsumeItemStatus = new ConsumeItemStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:ConsumeItemStatus = new ConsumeItemStatus("INTERNAL_ERROR", 4);

	public static function values():NList<ConsumeItemStatus>
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

	public static function fromValue( value:Int):ConsumeItemStatus
	{
		for (_f1283 in 0 ... _values.size()) 
		{
			var _f1284:ConsumeItemStatus = _values.get(_f1283);
			if (_f1284.getValue() == value) 
			{
				return _f1284;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ConsumeItemStatus
	{
		for (_w8260 in 0 ... _values.size()) 
		{
			var _f8261:ConsumeItemStatus = _values.get(_w8260);
			if (name == _f8261.name()) 
			{
				return _f8261;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10378;
	}

	public function toString():String
	{
		return "ConsumeItemStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
