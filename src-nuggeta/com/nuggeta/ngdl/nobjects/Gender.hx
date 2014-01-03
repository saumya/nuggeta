package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.Gender;

class Gender implements Serializable
{

	private static var _values:NList<Gender> = new NList<Gender>();

	public static var MALE:Gender = new Gender("MALE", 0);

	public static var FEMALE:Gender = new Gender("FEMALE", 1);

	public static var OTHER:Gender = new Gender("OTHER", 2);

	public static function values():NList<Gender>
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

	public static function fromValue( value:Int):Gender
	{
		for (_n7220 in 0 ... _values.size()) 
		{
			var _n7221:Gender = _values.get(_n7220);
			if (_n7221.getValue() == value) 
			{
				return _n7221;
			}
		}
		return null;
	}

	public static function valueOf( name:String):Gender
	{
		for (_j15951 in 0 ... _values.size()) 
		{
			var _i15952:Gender = _values.get(_j15951);
			if (name == _i15952.name()) 
			{
				return _i15952;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -14;
	}

	public function toString():String
	{
		return "Gender." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
