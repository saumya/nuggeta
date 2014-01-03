package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.RedirectStrategyType;

class RedirectStrategyType implements Serializable
{

	private static var _values:NList<RedirectStrategyType> = new NList<RedirectStrategyType>();

	public static var NO_REDIRECT:RedirectStrategyType = new RedirectStrategyType("NO_REDIRECT", 0);

	public static var REDIRECT:RedirectStrategyType = new RedirectStrategyType("REDIRECT", 1);

	public static var NOT_SUPPORTED:RedirectStrategyType = new RedirectStrategyType("NOT_SUPPORTED", 3);

	public static function values():NList<RedirectStrategyType>
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

	public static function fromValue( value:Int):RedirectStrategyType
	{
		for (_b7441 in 0 ... _values.size()) 
		{
			var _l7442:RedirectStrategyType = _values.get(_b7441);
			if (_l7442.getValue() == value) 
			{
				return _l7442;
			}
		}
		return null;
	}

	public static function valueOf( name:String):RedirectStrategyType
	{
		for (_h16310 in 0 ... _values.size()) 
		{
			var _m16311:RedirectStrategyType = _values.get(_h16310);
			if (name == _m16311.name()) 
			{
				return _m16311;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -15;
	}

	public function toString():String
	{
		return "RedirectStrategyType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
