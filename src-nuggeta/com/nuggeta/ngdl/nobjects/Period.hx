package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.Period;

class Period implements Serializable
{

	private static var _values:NList<Period> = new NList<Period>();

	public static var DAY:Period = new Period("DAY", 0);

	public static var WEEK:Period = new Period("WEEK", 1);

	public static var MONTH:Period = new Period("MONTH", 2);

	public static var YEAR:Period = new Period("YEAR", 3);

	public static function values():NList<Period>
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

	public static function fromValue( value:Int):Period
	{
		for (_t4232 in 0 ... _values.size()) 
		{
			var _g4233:Period = _values.get(_t4232);
			if (_g4233.getValue() == value) 
			{
				return _g4233;
			}
		}
		return null;
	}

	public static function valueOf( name:String):Period
	{
		for (_i12100 in 0 ... _values.size()) 
		{
			var _p12101:Period = _values.get(_i12100);
			if (name == _p12101.name()) 
			{
				return _p12101;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -22;
	}

	public function toString():String
	{
		return "Period." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
