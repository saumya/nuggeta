package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsStatus;

class GetThirdPartyFriendsStatus implements Serializable
{

	private static var _values:NList<GetThirdPartyFriendsStatus> = new NList<GetThirdPartyFriendsStatus>();

	public static var AUTHENTICATION_REQUIRED:GetThirdPartyFriendsStatus = new GetThirdPartyFriendsStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SUCCESS:GetThirdPartyFriendsStatus = new GetThirdPartyFriendsStatus("SUCCESS", 1);

	public static var NO_THIRD_PARTY_SOURCE_ATTACHED:GetThirdPartyFriendsStatus = new GetThirdPartyFriendsStatus("NO_THIRD_PARTY_SOURCE_ATTACHED", 2);

	public static var INTERNAL_ERROR:GetThirdPartyFriendsStatus = new GetThirdPartyFriendsStatus("INTERNAL_ERROR", 4);

	public static var INVALID_CALL:GetThirdPartyFriendsStatus = new GetThirdPartyFriendsStatus("INVALID_CALL", 5);

	public static function values():NList<GetThirdPartyFriendsStatus>
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

	public static function fromValue( value:Int):GetThirdPartyFriendsStatus
	{
		for (_d7641 in 0 ... _values.size()) 
		{
			var _b7642:GetThirdPartyFriendsStatus = _values.get(_d7641);
			if (_b7642.getValue() == value) 
			{
				return _b7642;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetThirdPartyFriendsStatus
	{
		for (_v16548 in 0 ... _values.size()) 
		{
			var _d16549:GetThirdPartyFriendsStatus = _values.get(_v16548);
			if (name == _d16549.name()) 
			{
				return _d16549;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10218;
	}

	public function toString():String
	{
		return "GetThirdPartyFriendsStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
