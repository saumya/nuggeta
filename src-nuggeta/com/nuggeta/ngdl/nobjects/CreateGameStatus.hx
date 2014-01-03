package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.CreateGameStatus;

class CreateGameStatus implements Serializable
{

	private static var _values:NList<CreateGameStatus> = new NList<CreateGameStatus>();

	public static var SUCCESS:CreateGameStatus = new CreateGameStatus("SUCCESS", 0);

	public static var INVALID_CALL:CreateGameStatus = new CreateGameStatus("INVALID_CALL", 1);

	public static var INTERNAL_ERROR:CreateGameStatus = new CreateGameStatus("INTERNAL_ERROR", 2);

	public static function values():NList<CreateGameStatus>
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

	public static function fromValue( value:Int):CreateGameStatus
	{
		for (_t3763 in 0 ... _values.size()) 
		{
			var _u3764:CreateGameStatus = _values.get(_t3763);
			if (_u3764.getValue() == value) 
			{
				return _u3764;
			}
		}
		return null;
	}

	public static function valueOf( name:String):CreateGameStatus
	{
		for (_p11597 in 0 ... _values.size()) 
		{
			var _g11598:CreateGameStatus = _values.get(_p11597);
			if (name == _g11598.name()) 
			{
				return _g11598;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10658;
	}

	public function toString():String
	{
		return "CreateGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
