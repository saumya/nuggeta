package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.HandshakeState;

class HandshakeState implements Serializable
{

	private static var _values:NList<HandshakeState> = new NList<HandshakeState>();

	public static var INIT:HandshakeState = new HandshakeState("INIT", 0);

	public static var BALANCE:HandshakeState = new HandshakeState("BALANCE", 1);

	public static var OPEN_SLAVE_CONNECTION:HandshakeState = new HandshakeState("OPEN_SLAVE_CONNECTION", 2);

	public static var SWITCH:HandshakeState = new HandshakeState("SWITCH", 3);

	public static function values():NList<HandshakeState>
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

	public static function fromValue( value:Int):HandshakeState
	{
		for (_u7946 in 0 ... _values.size()) 
		{
			var _d7947:HandshakeState = _values.get(_u7946);
			if (_d7947.getValue() == value) 
			{
				return _d7947;
			}
		}
		return null;
	}

	public static function valueOf( name:String):HandshakeState
	{
		for (_t16917 in 0 ... _values.size()) 
		{
			var _m16918:HandshakeState = _values.get(_t16917);
			if (name == _m16918.name()) 
			{
				return _m16918;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -18;
	}

	public function toString():String
	{
		return "HandshakeState." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
