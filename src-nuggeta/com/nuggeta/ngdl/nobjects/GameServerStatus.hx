package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GameServerStatus;

class GameServerStatus implements Serializable
{

	private static var _values:NList<GameServerStatus> = new NList<GameServerStatus>();

	public static var DOWN:GameServerStatus = new GameServerStatus("DOWN", 0);

	public static var UP:GameServerStatus = new GameServerStatus("UP", 1);

	public static function values():NList<GameServerStatus>
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

	public static function fromValue( value:Int):GameServerStatus
	{
		for (_u7864 in 0 ... _values.size()) 
		{
			var _r7865:GameServerStatus = _values.get(_u7864);
			if (_r7865.getValue() == value) 
			{
				return _r7865;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GameServerStatus
	{
		for (_m16833 in 0 ... _values.size()) 
		{
			var _a16834:GameServerStatus = _values.get(_m16833);
			if (name == _a16834.name()) 
			{
				return _a16834;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -27;
	}

	public function toString():String
	{
		return "GameServerStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
