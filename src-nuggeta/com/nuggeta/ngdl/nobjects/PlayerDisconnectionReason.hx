package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PlayerDisconnectionReason;

class PlayerDisconnectionReason implements Serializable
{

	private static var _values:NList<PlayerDisconnectionReason> = new NList<PlayerDisconnectionReason>();

	public static var CONNECTION_STOP:PlayerDisconnectionReason = new PlayerDisconnectionReason("CONNECTION_STOP", 0);

	public static var CONNECTION_LOST:PlayerDisconnectionReason = new PlayerDisconnectionReason("CONNECTION_LOST", 1);

	public static function values():NList<PlayerDisconnectionReason>
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

	public static function fromValue( value:Int):PlayerDisconnectionReason
	{
		for (_r7637 in 0 ... _values.size()) 
		{
			var _r7638:PlayerDisconnectionReason = _values.get(_r7637);
			if (_r7638.getValue() == value) 
			{
				return _r7638;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PlayerDisconnectionReason
	{
		for (_k16544 in 0 ... _values.size()) 
		{
			var _y16545:PlayerDisconnectionReason = _values.get(_k16544);
			if (name == _y16545.name()) 
			{
				return _y16545;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11;
	}

	public function toString():String
	{
		return "PlayerDisconnectionReason." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
