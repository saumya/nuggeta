package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeStatus;

class AcceptFriendChallengeStatus implements Serializable
{

	private static var _values:NList<AcceptFriendChallengeStatus> = new NList<AcceptFriendChallengeStatus>();

	public static var AUTHENTICATION_REQUIRED:AcceptFriendChallengeStatus = new AcceptFriendChallengeStatus("AUTHENTICATION_REQUIRED", 0);

	public static var UNKNOWN_CHALLENGE:AcceptFriendChallengeStatus = new AcceptFriendChallengeStatus("UNKNOWN_CHALLENGE", 1);

	public static var SUCCESS:AcceptFriendChallengeStatus = new AcceptFriendChallengeStatus("SUCCESS", 2);

	public static var INVALID_CALL:AcceptFriendChallengeStatus = new AcceptFriendChallengeStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:AcceptFriendChallengeStatus = new AcceptFriendChallengeStatus("INTERNAL_ERROR", 4);

	public static function values():NList<AcceptFriendChallengeStatus>
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

	public static function fromValue( value:Int):AcceptFriendChallengeStatus
	{
		for (_r7858 in 0 ... _values.size()) 
		{
			var _l7859:AcceptFriendChallengeStatus = _values.get(_r7858);
			if (_l7859.getValue() == value) 
			{
				return _l7859;
			}
		}
		return null;
	}

	public static function valueOf( name:String):AcceptFriendChallengeStatus
	{
		for (_n16827 in 0 ... _values.size()) 
		{
			var _b16828:AcceptFriendChallengeStatus = _values.get(_n16827);
			if (name == _b16828.name()) 
			{
				return _b16828;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10538;
	}

	public function toString():String
	{
		return "AcceptFriendChallengeStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
