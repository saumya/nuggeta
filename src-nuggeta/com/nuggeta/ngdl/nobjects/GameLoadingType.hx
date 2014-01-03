package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GameLoadingType;

class GameLoadingType implements Serializable
{

	private static var _values:NList<GameLoadingType> = new NList<GameLoadingType>();

	public static var BY_ID:GameLoadingType = new GameLoadingType("BY_ID", 0);

	public static var BY_QUERY:GameLoadingType = new GameLoadingType("BY_QUERY", 1);

	public static function values():NList<GameLoadingType>
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

	public static function fromValue( value:Int):GameLoadingType
	{
		for (_l7633 in 0 ... _values.size()) 
		{
			var _g7634:GameLoadingType = _values.get(_l7633);
			if (_g7634.getValue() == value) 
			{
				return _g7634;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GameLoadingType
	{
		for (_v16540 in 0 ... _values.size()) 
		{
			var _b16541:GameLoadingType = _values.get(_v16540);
			if (name == _b16541.name()) 
			{
				return _b16541;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -6;
	}

	public function toString():String
	{
		return "GameLoadingType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
