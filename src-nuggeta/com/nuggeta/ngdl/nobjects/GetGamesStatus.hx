package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetGamesStatus;

class GetGamesStatus implements Serializable
{

	private static var _values:NList<GetGamesStatus> = new NList<GetGamesStatus>();

	public static var SUCCESS:GetGamesStatus = new GetGamesStatus("SUCCESS", 0);

	public static var INTERNAL_ERROR:GetGamesStatus = new GetGamesStatus("INTERNAL_ERROR", 1);

	public static var INVALID_QUERY:GetGamesStatus = new GetGamesStatus("INVALID_QUERY", 2);

	public static function values():NList<GetGamesStatus>
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

	public static function fromValue( value:Int):GetGamesStatus
	{
		for (_n7344 in 0 ... _values.size()) 
		{
			var _i7345:GetGamesStatus = _values.get(_n7344);
			if (_i7345.getValue() == value) 
			{
				return _i7345;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetGamesStatus
	{
		for (_y16121 in 0 ... _values.size()) 
		{
			var _e16122:GetGamesStatus = _values.get(_y16121);
			if (name == _e16122.name()) 
			{
				return _e16122;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10678;
	}

	public function toString():String
	{
		return "GetGamesStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
