package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetChallengesStatus;

class GetChallengesStatus implements Serializable
{

	private static var _values:NList<GetChallengesStatus> = new NList<GetChallengesStatus>();

	public static var AUTHENTICATION_REQUIRED:GetChallengesStatus = new GetChallengesStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SUCCESS:GetChallengesStatus = new GetChallengesStatus("SUCCESS", 1);

	public static var INTERNAL_ERROR:GetChallengesStatus = new GetChallengesStatus("INTERNAL_ERROR", 2);

	public static var INVALID_QUERY:GetChallengesStatus = new GetChallengesStatus("INVALID_QUERY", 3);

	public static function values():NList<GetChallengesStatus>
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

	public static function fromValue( value:Int):GetChallengesStatus
	{
		for (_a7354 in 0 ... _values.size()) 
		{
			var _b7355:GetChallengesStatus = _values.get(_a7354);
			if (_b7355.getValue() == value) 
			{
				return _b7355;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetChallengesStatus
	{
		for (_s16131 in 0 ... _values.size()) 
		{
			var _x16132:GetChallengesStatus = _values.get(_s16131);
			if (name == _x16132.name()) 
			{
				return _x16132;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10598;
	}

	public function toString():String
	{
		return "GetChallengesStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
