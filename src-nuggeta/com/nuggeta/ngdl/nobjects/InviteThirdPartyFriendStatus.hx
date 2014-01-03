package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendStatus;

class InviteThirdPartyFriendStatus implements Serializable
{

	private static var _values:NList<InviteThirdPartyFriendStatus> = new NList<InviteThirdPartyFriendStatus>();

	public static var AUTHENTICATION_REQUIRED:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SUCCESS:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("SUCCESS", 1);

	public static var NOT_A_FRIEND:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("NOT_A_FRIEND", 2);

	public static var INVALID_CALL:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("INTERNAL_ERROR", 4);

	public static var ALREADY_PENDING_INVITATION:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("ALREADY_PENDING_INVITATION", 5);

	public static var ALREADY_FRIENDS:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("ALREADY_FRIENDS", 6);

	public static var CANCELED:InviteThirdPartyFriendStatus = new InviteThirdPartyFriendStatus("CANCELED", 7);

	public static function values():NList<InviteThirdPartyFriendStatus>
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

	public static function fromValue( value:Int):InviteThirdPartyFriendStatus
	{
		for (_x7452 in 0 ... _values.size()) 
		{
			var _i7453:InviteThirdPartyFriendStatus = _values.get(_x7452);
			if (_i7453.getValue() == value) 
			{
				return _i7453;
			}
		}
		return null;
	}

	public static function valueOf( name:String):InviteThirdPartyFriendStatus
	{
		for (_u16321 in 0 ... _values.size()) 
		{
			var _u16322:InviteThirdPartyFriendStatus = _values.get(_u16321);
			if (name == _u16322.name()) 
			{
				return _u16322;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10898;
	}

	public function toString():String
	{
		return "InviteThirdPartyFriendStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
