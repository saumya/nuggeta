package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;

class ThirdPartySource implements Serializable
{

	private static var _values:NList<ThirdPartySource> = new NList<ThirdPartySource>();

	public static var FACEBOOK:ThirdPartySource = new ThirdPartySource("FACEBOOK", 1);

	public static var GOOGLEPLUS:ThirdPartySource = new ThirdPartySource("GOOGLEPLUS", 2);

	public static function values():NList<ThirdPartySource>
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

	public static function fromValue( value:Int):ThirdPartySource
	{
		for (_k7933 in 0 ... _values.size()) 
		{
			var _n7934:ThirdPartySource = _values.get(_k7933);
			if (_n7934.getValue() == value) 
			{
				return _n7934;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ThirdPartySource
	{
		for (_y16904 in 0 ... _values.size()) 
		{
			var _h16905:ThirdPartySource = _values.get(_y16904);
			if (name == _h16905.name()) 
			{
				return _h16905;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -9;
	}

	public function toString():String
	{
		return "ThirdPartySource." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
