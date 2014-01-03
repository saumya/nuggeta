package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PlayerState;

class PlayerState implements Serializable
{

	private static var _values:NList<PlayerState> = new NList<PlayerState>();

	public static var AVAILABLE:PlayerState = new PlayerState("AVAILABLE", 0);

	public static var PLAYING:PlayerState = new PlayerState("PLAYING", 1);

	public static function values():NList<PlayerState>
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

	public static function fromValue( value:Int):PlayerState
	{
		for (_g7814 in 0 ... _values.size()) 
		{
			var _x7815:PlayerState = _values.get(_g7814);
			if (_x7815.getValue() == value) 
			{
				return _x7815;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PlayerState
	{
		for (_f16783 in 0 ... _values.size()) 
		{
			var _e16784:PlayerState = _values.get(_f16783);
			if (name == _e16784.name()) 
			{
				return _e16784;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -19;
	}

	public function toString():String
	{
		return "PlayerState." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
