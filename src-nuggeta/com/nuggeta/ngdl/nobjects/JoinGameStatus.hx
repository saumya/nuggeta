package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.JoinGameStatus;

class JoinGameStatus implements Serializable
{

	private static var _values:NList<JoinGameStatus> = new NList<JoinGameStatus>();

	public static var ACCEPTED:JoinGameStatus = new JoinGameStatus("ACCEPTED", 0);

	public static var REJECTED_NO_MORE_SEAT:JoinGameStatus = new JoinGameStatus("REJECTED_NO_MORE_SEAT", 1);

	public static var GAME_NOT_FOUND:JoinGameStatus = new JoinGameStatus("GAME_NOT_FOUND", 2);

	public static var ALREADY_IN_GAME:JoinGameStatus = new JoinGameStatus("ALREADY_IN_GAME", 3);

	public static var REJECTED:JoinGameStatus = new JoinGameStatus("REJECTED", 4);

	public static var INVALID_CALL:JoinGameStatus = new JoinGameStatus("INVALID_CALL", 5);

	public static var INTERNAL_ERROR:JoinGameStatus = new JoinGameStatus("INTERNAL_ERROR", 6);

	public static function values():NList<JoinGameStatus>
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

	public static function fromValue( value:Int):JoinGameStatus
	{
		for (_b8013 in 0 ... _values.size()) 
		{
			var _e8014:JoinGameStatus = _values.get(_b8013);
			if (_e8014.getValue() == value) 
			{
				return _e8014;
			}
		}
		return null;
	}

	public static function valueOf( name:String):JoinGameStatus
	{
		for (_b17074 in 0 ... _values.size()) 
		{
			var _n17075:JoinGameStatus = _values.get(_b17074);
			if (name == _n17075.name()) 
			{
				return _n17075;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10498;
	}

	public function toString():String
	{
		return "JoinGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
