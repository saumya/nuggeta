package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PlayerInvitationStatus;

class PlayerInvitationStatus implements Serializable
{

	private static var _values:NList<PlayerInvitationStatus> = new NList<PlayerInvitationStatus>();

	public static var PENDING:PlayerInvitationStatus = new PlayerInvitationStatus("PENDING", 0);

	public static var ACCEPTED:PlayerInvitationStatus = new PlayerInvitationStatus("ACCEPTED", 1);

	public static function values():NList<PlayerInvitationStatus>
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

	public static function fromValue( value:Int):PlayerInvitationStatus
	{
		for (_c8149 in 0 ... _values.size()) 
		{
			var _p8150:PlayerInvitationStatus = _values.get(_c8149);
			if (_p8150.getValue() == value) 
			{
				return _p8150;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PlayerInvitationStatus
	{
		for (_x17218 in 0 ... _values.size()) 
		{
			var _j17219:PlayerInvitationStatus = _values.get(_x17218);
			if (name == _j17219.name()) 
			{
				return _j17219;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -23;
	}

	public function toString():String
	{
		return "PlayerInvitationStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
