package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetFriendsStatus;

class GetFriendsStatus implements Serializable
{

	private static var _values:NList<GetFriendsStatus> = new NList<GetFriendsStatus>();

	public static var AUTHENTICATION_REQUIRED:GetFriendsStatus = new GetFriendsStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SUCCESS:GetFriendsStatus = new GetFriendsStatus("SUCCESS", 1);

	public static var INVALID_CALL:GetFriendsStatus = new GetFriendsStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:GetFriendsStatus = new GetFriendsStatus("INTERNAL_ERROR", 4);

	public static function values():NList<GetFriendsStatus>
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

	public static function fromValue( value:Int):GetFriendsStatus
	{
		for (_b7495 in 0 ... _values.size()) 
		{
			var _p7496:GetFriendsStatus = _values.get(_b7495);
			if (_p7496.getValue() == value) 
			{
				return _p7496;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetFriendsStatus
	{
		for (_m16371 in 0 ... _values.size()) 
		{
			var _v16372:GetFriendsStatus = _values.get(_m16371);
			if (name == _v16372.name()) 
			{
				return _v16372;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10198;
	}

	public function toString():String
	{
		return "GetFriendsStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
