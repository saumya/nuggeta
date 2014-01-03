package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.UnjoinGameStatus;

class UnjoinGameStatus implements Serializable
{

	private static var _values:NList<UnjoinGameStatus> = new NList<UnjoinGameStatus>();

	public static var SUCCESS:UnjoinGameStatus = new UnjoinGameStatus("SUCCESS", 0);

	public static var GAME_NOT_FOUND:UnjoinGameStatus = new UnjoinGameStatus("GAME_NOT_FOUND", 1);

	public static var FAILURE:UnjoinGameStatus = new UnjoinGameStatus("FAILURE", 2);

	public static var INVALID_CALL:UnjoinGameStatus = new UnjoinGameStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:UnjoinGameStatus = new UnjoinGameStatus("INTERNAL_ERROR", 4);

	public static function values():NList<UnjoinGameStatus>
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

	public static function fromValue( value:Int):UnjoinGameStatus
	{
		for (_o7874 in 0 ... _values.size()) 
		{
			var _n7875:UnjoinGameStatus = _values.get(_o7874);
			if (_n7875.getValue() == value) 
			{
				return _n7875;
			}
		}
		return null;
	}

	public static function valueOf( name:String):UnjoinGameStatus
	{
		for (_i16843 in 0 ... _values.size()) 
		{
			var _t16844:UnjoinGameStatus = _values.get(_i16843);
			if (name == _t16844.name()) 
			{
				return _t16844;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10518;
	}

	public function toString():String
	{
		return "UnjoinGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
