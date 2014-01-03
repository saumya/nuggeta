package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DeveloperGameMode;

class DeveloperGameMode implements Serializable
{

	private static var _values:NList<DeveloperGameMode> = new NList<DeveloperGameMode>();

	public static var CONNECTED:DeveloperGameMode = new DeveloperGameMode("CONNECTED", 0);

	public static var DISCONNECTED:DeveloperGameMode = new DeveloperGameMode("DISCONNECTED", 1);

	public static function values():NList<DeveloperGameMode>
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

	public static function fromValue( value:Int):DeveloperGameMode
	{
		for (_e7921 in 0 ... _values.size()) 
		{
			var _s7922:DeveloperGameMode = _values.get(_e7921);
			if (_s7922.getValue() == value) 
			{
				return _s7922;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DeveloperGameMode
	{
		for (_q16892 in 0 ... _values.size()) 
		{
			var _i16893:DeveloperGameMode = _values.get(_q16892);
			if (name == _i16893.name()) 
			{
				return _i16893;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -7;
	}

	public function toString():String
	{
		return "DeveloperGameMode." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
