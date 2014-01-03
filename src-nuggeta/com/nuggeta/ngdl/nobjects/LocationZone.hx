package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LocationZone;

class LocationZone implements Serializable
{

	private static var _values:NList<LocationZone> = new NList<LocationZone>();

	public static var EUROPE:LocationZone = new LocationZone("EUROPE", 0);

	public static var AMERICA:LocationZone = new LocationZone("AMERICA", 1);

	public static var ASIA:LocationZone = new LocationZone("ASIA", 2);

	public static function values():NList<LocationZone>
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

	public static function fromValue( value:Int):LocationZone
	{
		for (_y4200 in 0 ... _values.size()) 
		{
			var _f4201:LocationZone = _values.get(_y4200);
			if (_f4201.getValue() == value) 
			{
				return _f4201;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LocationZone
	{
		for (_s12048 in 0 ... _values.size()) 
		{
			var _o12049:LocationZone = _values.get(_s12048);
			if (name == _o12049.name()) 
			{
				return _o12049;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -30;
	}

	public function toString():String
	{
		return "LocationZone." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
