package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeStatus;

class RefuseFriendChallengeStatus implements Serializable
{

	private static var _values:NList<RefuseFriendChallengeStatus> = new NList<RefuseFriendChallengeStatus>();

	public static var AUTHENTICATION_REQUIRED:RefuseFriendChallengeStatus = new RefuseFriendChallengeStatus("AUTHENTICATION_REQUIRED", 0);

	public static var UNKNOWN_CHALLENGE:RefuseFriendChallengeStatus = new RefuseFriendChallengeStatus("UNKNOWN_CHALLENGE", 1);

	public static var SUCCESS:RefuseFriendChallengeStatus = new RefuseFriendChallengeStatus("SUCCESS", 2);

	public static var INVALID_CALL:RefuseFriendChallengeStatus = new RefuseFriendChallengeStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:RefuseFriendChallengeStatus = new RefuseFriendChallengeStatus("INTERNAL_ERROR", 4);

	public static function values():NList<RefuseFriendChallengeStatus>
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

	public static function fromValue( value:Int):RefuseFriendChallengeStatus
	{
		for (_l8184 in 0 ... _values.size()) 
		{
			var _h8185:RefuseFriendChallengeStatus = _values.get(_l8184);
			if (_h8185.getValue() == value) 
			{
				return _h8185;
			}
		}
		return null;
	}

	public static function valueOf( name:String):RefuseFriendChallengeStatus
	{
		for (_s17264 in 0 ... _values.size()) 
		{
			var _w17265:RefuseFriendChallengeStatus = _values.get(_s17264);
			if (name == _w17265.name()) 
			{
				return _w17265;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10578;
	}

	public function toString():String
	{
		return "RefuseFriendChallengeStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
