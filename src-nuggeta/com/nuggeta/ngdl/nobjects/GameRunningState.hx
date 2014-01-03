package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GameRunningState;

class GameRunningState implements Serializable
{

	private static var _values:NList<GameRunningState> = new NList<GameRunningState>();

	public static var PENDING:GameRunningState = new GameRunningState("PENDING", 0);

	public static var RUNNING:GameRunningState = new GameRunningState("RUNNING", 1);

	public static var FINISHED:GameRunningState = new GameRunningState("FINISHED", 5);

	public static function values():NList<GameRunningState>
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

	public static function fromValue( value:Int):GameRunningState
	{
		for (_f7499 in 0 ... _values.size()) 
		{
			var _i7500:GameRunningState = _values.get(_f7499);
			if (_i7500.getValue() == value) 
			{
				return _i7500;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GameRunningState
	{
		for (_v16375 in 0 ... _values.size()) 
		{
			var _m16376:GameRunningState = _values.get(_v16375);
			if (name == _m16376.name()) 
			{
				return _m16376;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -21;
	}

	public function toString():String
	{
		return "GameRunningState." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
