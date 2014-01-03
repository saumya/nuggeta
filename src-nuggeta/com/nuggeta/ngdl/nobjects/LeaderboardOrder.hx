package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LeaderboardOrder;

class LeaderboardOrder implements Serializable
{

	private static var _values:NList<LeaderboardOrder> = new NList<LeaderboardOrder>();

	public static var ASCENDING:LeaderboardOrder = new LeaderboardOrder("ASCENDING", 0);

	public static var DESCENDING:LeaderboardOrder = new LeaderboardOrder("DESCENDING", 1);

	public static function values():NList<LeaderboardOrder>
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

	public static function fromValue( value:Int):LeaderboardOrder
	{
		for (_n4093 in 0 ... _values.size()) 
		{
			var _o4094:LeaderboardOrder = _values.get(_n4093);
			if (_o4094.getValue() == value) 
			{
				return _o4094;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LeaderboardOrder
	{
		for (_c11927 in 0 ... _values.size()) 
		{
			var _g11928:LeaderboardOrder = _values.get(_c11927);
			if (name == _g11928.name()) 
			{
				return _g11928;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -3;
	}

	public function toString():String
	{
		return "LeaderboardOrder." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
