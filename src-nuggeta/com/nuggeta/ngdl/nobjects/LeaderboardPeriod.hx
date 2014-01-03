package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;

class LeaderboardPeriod implements Serializable
{

	private static var _values:NList<LeaderboardPeriod> = new NList<LeaderboardPeriod>();

	public static var DAY:LeaderboardPeriod = new LeaderboardPeriod("DAY", 0);

	public static var MONTH:LeaderboardPeriod = new LeaderboardPeriod("MONTH", 1);

	public static var ALL:LeaderboardPeriod = new LeaderboardPeriod("ALL", 2);

	public static var WEEK:LeaderboardPeriod = new LeaderboardPeriod("WEEK", 3);

	public static function values():NList<LeaderboardPeriod>
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

	public static function fromValue( value:Int):LeaderboardPeriod
	{
		for (_z7433 in 0 ... _values.size()) 
		{
			var _u7434:LeaderboardPeriod = _values.get(_z7433);
			if (_u7434.getValue() == value) 
			{
				return _u7434;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LeaderboardPeriod
	{
		for (_a16302 in 0 ... _values.size()) 
		{
			var _c16303:LeaderboardPeriod = _values.get(_a16302);
			if (name == _c16303.name()) 
			{
				return _c16303;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -4;
	}

	public function toString():String
	{
		return "LeaderboardPeriod." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
