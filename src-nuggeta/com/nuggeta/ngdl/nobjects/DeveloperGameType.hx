package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DeveloperGameType;

class DeveloperGameType implements Serializable
{

	private static var _values:NList<DeveloperGameType> = new NList<DeveloperGameType>();

	public static var REALTIME:DeveloperGameType = new DeveloperGameType("REALTIME", 0);

	public static var EVENT_BASED:DeveloperGameType = new DeveloperGameType("EVENT_BASED", 1);

	public static var TURN_BASED:DeveloperGameType = new DeveloperGameType("TURN_BASED", 2);

	public static function values():NList<DeveloperGameType>
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

	public static function fromValue( value:Int):DeveloperGameType
	{
		for (_s7269 in 0 ... _values.size()) 
		{
			var _w7270:DeveloperGameType = _values.get(_s7269);
			if (_w7270.getValue() == value) 
			{
				return _w7270;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DeveloperGameType
	{
		for (_e16015 in 0 ... _values.size()) 
		{
			var _b16016:DeveloperGameType = _values.get(_e16015);
			if (name == _b16016.name()) 
			{
				return _b16016;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -5;
	}

	public function toString():String
	{
		return "DeveloperGameType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
