package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.StopGameStatus;

class StopGameStatus implements Serializable
{

	private static var _values:NList<StopGameStatus> = new NList<StopGameStatus>();

	public static var STOPPED:StopGameStatus = new StopGameStatus("STOPPED", 0);

	public static var ALREADY_STOPPED:StopGameStatus = new StopGameStatus("ALREADY_STOPPED", 1);

	public static var UNKNOWN_GAME:StopGameStatus = new StopGameStatus("UNKNOWN_GAME", 2);

	public static var INVALID_CALL:StopGameStatus = new StopGameStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:StopGameStatus = new StopGameStatus("INTERNAL_ERROR", 4);

	public static function values():NList<StopGameStatus>
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

	public static function fromValue( value:Int):StopGameStatus
	{
		for (_h3753 in 0 ... _values.size()) 
		{
			var _g3754:StopGameStatus = _values.get(_h3753);
			if (_g3754.getValue() == value) 
			{
				return _g3754;
			}
		}
		return null;
	}

	public static function valueOf( name:String):StopGameStatus
	{
		for (_v11587 in 0 ... _values.size()) 
		{
			var _e11588:StopGameStatus = _values.get(_v11587);
			if (name == _e11588.name()) 
			{
				return _e11588;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10638;
	}

	public function toString():String
	{
		return "StopGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
