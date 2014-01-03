package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendStatus;

class ChallengeThirdPartyFriendStatus implements Serializable
{

	private static var _values:NList<ChallengeThirdPartyFriendStatus> = new NList<ChallengeThirdPartyFriendStatus>();

	public static var AUTHENTICATION_REQUIRED:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SENT:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("SENT", 1);

	public static var ALREADY_PENDING_CHALLENGE:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("ALREADY_PENDING_CHALLENGE", 2);

	public static var PLAYER_NOT_EXISTS:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("PLAYER_NOT_EXISTS", 3);

	public static var CANT_CHALLENGE_YOURSELF:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("CANT_CHALLENGE_YOURSELF", 4);

	public static var INVALID_CALL:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("INVALID_CALL", 5);

	public static var INTERNAL_ERROR:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("INTERNAL_ERROR", 6);

	public static var CANCELED:ChallengeThirdPartyFriendStatus = new ChallengeThirdPartyFriendStatus("CANCELED", 7);

	public static function values():NList<ChallengeThirdPartyFriendStatus>
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

	public static function fromValue( value:Int):ChallengeThirdPartyFriendStatus
	{
		for (_o7695 in 0 ... _values.size()) 
		{
			var _r7696:ChallengeThirdPartyFriendStatus = _values.get(_o7695);
			if (_r7696.getValue() == value) 
			{
				return _r7696;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ChallengeThirdPartyFriendStatus
	{
		for (_n16635 in 0 ... _values.size()) 
		{
			var _j16636:ChallengeThirdPartyFriendStatus = _values.get(_n16635);
			if (name == _j16636.name()) 
			{
				return _j16636;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10178;
	}

	public function toString():String
	{
		return "ChallengeThirdPartyFriendStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
