package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ChallengeFriendStatus;

class ChallengeFriendStatus implements Serializable
{

	private static var _values:NList<ChallengeFriendStatus> = new NList<ChallengeFriendStatus>();

	public static var AUTHENTICATION_REQUIRED:ChallengeFriendStatus = new ChallengeFriendStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SENT:ChallengeFriendStatus = new ChallengeFriendStatus("SENT", 1);

	public static var ALREADY_PENDING_CHALLENGE:ChallengeFriendStatus = new ChallengeFriendStatus("ALREADY_PENDING_CHALLENGE", 2);

	public static var PLAYER_NOT_EXISTS:ChallengeFriendStatus = new ChallengeFriendStatus("PLAYER_NOT_EXISTS", 3);

	public static var CANT_CHALLENGE_YOURSELF:ChallengeFriendStatus = new ChallengeFriendStatus("CANT_CHALLENGE_YOURSELF", 4);

	public static var INVALID_CALL:ChallengeFriendStatus = new ChallengeFriendStatus("INVALID_CALL", 5);

	public static var INTERNAL_ERROR:ChallengeFriendStatus = new ChallengeFriendStatus("INTERNAL_ERROR", 6);

	public static function values():NList<ChallengeFriendStatus>
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

	public static function fromValue( value:Int):ChallengeFriendStatus
	{
		for (_m4204 in 0 ... _values.size()) 
		{
			var _x4205:ChallengeFriendStatus = _values.get(_m4204);
			if (_x4205.getValue() == value) 
			{
				return _x4205;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ChallengeFriendStatus
	{
		for (_r12052 in 0 ... _values.size()) 
		{
			var _l12053:ChallengeFriendStatus = _values.get(_r12052);
			if (name == _l12053.name()) 
			{
				return _l12053;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10158;
	}

	public function toString():String
	{
		return "ChallengeFriendStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
