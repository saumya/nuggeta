package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.MatchMakingType;

class MatchMakingType implements Serializable
{

	private static var _values:NList<MatchMakingType> = new NList<MatchMakingType>();

	public static var CHALLENGE:MatchMakingType = new MatchMakingType("CHALLENGE", 0);

	public static var SEARCH_GAME:MatchMakingType = new MatchMakingType("SEARCH_GAME", 1);

	public static function values():NList<MatchMakingType>
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

	public static function fromValue( value:Int):MatchMakingType
	{
		for (_f7836 in 0 ... _values.size()) 
		{
			var _h7837:MatchMakingType = _values.get(_f7836);
			if (_h7837.getValue() == value) 
			{
				return _h7837;
			}
		}
		return null;
	}

	public static function valueOf( name:String):MatchMakingType
	{
		for (_v16805 in 0 ... _values.size()) 
		{
			var _g16806:MatchMakingType = _values.get(_v16805);
			if (name == _g16806.name()) 
			{
				return _g16806;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -2;
	}

	public function toString():String
	{
		return "MatchMakingType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
