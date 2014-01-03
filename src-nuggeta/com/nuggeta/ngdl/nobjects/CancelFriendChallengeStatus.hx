package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeStatus;

class CancelFriendChallengeStatus implements Serializable
{

	private static var _values:NList<CancelFriendChallengeStatus> = new NList<CancelFriendChallengeStatus>();

	public static var AUTHENTICATION_REQUIRED:CancelFriendChallengeStatus = new CancelFriendChallengeStatus("AUTHENTICATION_REQUIRED", 0);

	public static var UNKNOWN_CHALLENGE:CancelFriendChallengeStatus = new CancelFriendChallengeStatus("UNKNOWN_CHALLENGE", 1);

	public static var SUCCESS:CancelFriendChallengeStatus = new CancelFriendChallengeStatus("SUCCESS", 2);

	public static var INVALID_CALL:CancelFriendChallengeStatus = new CancelFriendChallengeStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:CancelFriendChallengeStatus = new CancelFriendChallengeStatus("INTERNAL_ERROR", 4);

	public static function values():NList<CancelFriendChallengeStatus>
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

	public static function fromValue( value:Int):CancelFriendChallengeStatus
	{
		for (_u7611 in 0 ... _values.size()) 
		{
			var _a7612:CancelFriendChallengeStatus = _values.get(_u7611);
			if (_a7612.getValue() == value) 
			{
				return _a7612;
			}
		}
		return null;
	}

	public static function valueOf( name:String):CancelFriendChallengeStatus
	{
		for (_a16518 in 0 ... _values.size()) 
		{
			var _t16519:CancelFriendChallengeStatus = _values.get(_a16518);
			if (name == _t16519.name()) 
			{
				return _t16519;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10558;
	}

	public function toString():String
	{
		return "CancelFriendChallengeStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
