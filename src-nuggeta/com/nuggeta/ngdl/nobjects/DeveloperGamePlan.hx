package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DeveloperGamePlan;

class DeveloperGamePlan implements Serializable
{

	private static var _values:NList<DeveloperGamePlan> = new NList<DeveloperGamePlan>();

	public static var OPENNUG:DeveloperGamePlan = new DeveloperGamePlan("OPENNUG", 0);

	public static var ADNUG:DeveloperGamePlan = new DeveloperGamePlan("ADNUG", 1);

	public static var NUGPLUS:DeveloperGamePlan = new DeveloperGamePlan("NUGPLUS", 2);

	public static function values():NList<DeveloperGamePlan>
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

	public static function fromValue( value:Int):DeveloperGamePlan
	{
		for (_n7458 in 0 ... _values.size()) 
		{
			var _q7459:DeveloperGamePlan = _values.get(_n7458);
			if (_q7459.getValue() == value) 
			{
				return _q7459;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DeveloperGamePlan
	{
		for (_j16327 in 0 ... _values.size()) 
		{
			var _x16328:DeveloperGamePlan = _values.get(_j16327);
			if (name == _x16328.name()) 
			{
				return _x16328;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -29;
	}

	public function toString():String
	{
		return "DeveloperGamePlan." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
