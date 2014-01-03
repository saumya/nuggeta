package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableStatus;

class RemovePlayerStorableStatus implements Serializable
{

	private static var _values:NList<RemovePlayerStorableStatus> = new NList<RemovePlayerStorableStatus>();

	public static var SUCCESS:RemovePlayerStorableStatus = new RemovePlayerStorableStatus("SUCCESS", 0);

	public static var FAILURE:RemovePlayerStorableStatus = new RemovePlayerStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:RemovePlayerStorableStatus = new RemovePlayerStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:RemovePlayerStorableStatus = new RemovePlayerStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<RemovePlayerStorableStatus>
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

	public static function fromValue( value:Int):RemovePlayerStorableStatus
	{
		for (_l4178 in 0 ... _values.size()) 
		{
			var _x4179:RemovePlayerStorableStatus = _values.get(_l4178);
			if (_x4179.getValue() == value) 
			{
				return _x4179;
			}
		}
		return null;
	}

	public static function valueOf( name:String):RemovePlayerStorableStatus
	{
		for (_w12026 in 0 ... _values.size()) 
		{
			var _b12027:RemovePlayerStorableStatus = _values.get(_w12026);
			if (name == _b12027.name()) 
			{
				return _b12027;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11038;
	}

	public function toString():String
	{
		return "RemovePlayerStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
