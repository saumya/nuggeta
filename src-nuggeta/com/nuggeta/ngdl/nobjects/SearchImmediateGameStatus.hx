package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameStatus;

class SearchImmediateGameStatus implements Serializable
{

	private static var _values:NList<SearchImmediateGameStatus> = new NList<SearchImmediateGameStatus>();

	public static var ACCEPTED:SearchImmediateGameStatus = new SearchImmediateGameStatus("ACCEPTED", 0);

	public static var GAME_NOT_FOUND:SearchImmediateGameStatus = new SearchImmediateGameStatus("GAME_NOT_FOUND", 1);

	public static var ALREADY_IN_GAME:SearchImmediateGameStatus = new SearchImmediateGameStatus("ALREADY_IN_GAME", 2);

	public static var REJECTED:SearchImmediateGameStatus = new SearchImmediateGameStatus("REJECTED", 3);

	public static var INTERNAL_ERROR:SearchImmediateGameStatus = new SearchImmediateGameStatus("INTERNAL_ERROR", 4);

	public static var INVALID_QUERY:SearchImmediateGameStatus = new SearchImmediateGameStatus("INVALID_QUERY", 5);

	public static function values():NList<SearchImmediateGameStatus>
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

	public static function fromValue( value:Int):SearchImmediateGameStatus
	{
		for (_e8097 in 0 ... _values.size()) 
		{
			var _y8098:SearchImmediateGameStatus = _values.get(_e8097);
			if (_y8098.getValue() == value) 
			{
				return _y8098;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SearchImmediateGameStatus
	{
		for (_h17161 in 0 ... _values.size()) 
		{
			var _o17162:SearchImmediateGameStatus = _values.get(_h17161);
			if (name == _o17162.name()) 
			{
				return _o17162;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10478;
	}

	public function toString():String
	{
		return "SearchImmediateGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
