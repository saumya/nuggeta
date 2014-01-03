package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.Environment;

class Environment implements Serializable
{

	private static var _values:NList<Environment> = new NList<Environment>();

	public static var DEVELOPER:Environment = new Environment("DEVELOPER", 0);

	public static var SANDBOX:Environment = new Environment("SANDBOX", 1);

	public static var PRODUCTION:Environment = new Environment("PRODUCTION", 2);

	public static function values():NList<Environment>
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

	public static function fromValue( value:Int):Environment
	{
		for (_o7234 in 0 ... _values.size()) 
		{
			var _m7235:Environment = _values.get(_o7234);
			if (_m7235.getValue() == value) 
			{
				return _m7235;
			}
		}
		return null;
	}

	public static function valueOf( name:String):Environment
	{
		for (_d15977 in 0 ... _values.size()) 
		{
			var _p15978:Environment = _values.get(_d15977);
			if (name == _p15978.name()) 
			{
				return _p15978;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -17;
	}

	public function toString():String
	{
		return "Environment." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
