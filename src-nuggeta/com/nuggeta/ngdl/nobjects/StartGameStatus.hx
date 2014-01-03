package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.StartGameStatus;

class StartGameStatus implements Serializable
{

	private static var _values:NList<StartGameStatus> = new NList<StartGameStatus>();

	public static var STARTED:StartGameStatus = new StartGameStatus("STARTED", 0);

	public static var ALREADY_STARTED:StartGameStatus = new StartGameStatus("ALREADY_STARTED", 1);

	public static var UNKNOWN_GAME:StartGameStatus = new StartGameStatus("UNKNOWN_GAME", 2);

	public static var INVALID_CALL:StartGameStatus = new StartGameStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:StartGameStatus = new StartGameStatus("INTERNAL_ERROR", 4);

	public static function values():NList<StartGameStatus>
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

	public static function fromValue( value:Int):StartGameStatus
	{
		for (_e8060 in 0 ... _values.size()) 
		{
			var _l8061:StartGameStatus = _values.get(_e8060);
			if (_l8061.getValue() == value) 
			{
				return _l8061;
			}
		}
		return null;
	}

	public static function valueOf( name:String):StartGameStatus
	{
		for (_s17124 in 0 ... _values.size()) 
		{
			var _j17125:StartGameStatus = _values.get(_s17124);
			if (name == _j17125.name()) 
			{
				return _j17125;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10618;
	}

	public function toString():String
	{
		return "StartGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
