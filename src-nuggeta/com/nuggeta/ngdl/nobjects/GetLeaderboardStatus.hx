package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetLeaderboardStatus;

class GetLeaderboardStatus implements Serializable
{

	private static var _values:NList<GetLeaderboardStatus> = new NList<GetLeaderboardStatus>();

	public static var SUCCESS:GetLeaderboardStatus = new GetLeaderboardStatus("SUCCESS", 0);

	public static var FAILURE:GetLeaderboardStatus = new GetLeaderboardStatus("FAILURE", 1);

	public static var UNKNOWN_LEADERBOARD:GetLeaderboardStatus = new GetLeaderboardStatus("UNKNOWN_LEADERBOARD", 2);

	public static var INVALID_CALL:GetLeaderboardStatus = new GetLeaderboardStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:GetLeaderboardStatus = new GetLeaderboardStatus("INTERNAL_ERROR", 4);

	public static function values():NList<GetLeaderboardStatus>
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

	public static function fromValue( value:Int):GetLeaderboardStatus
	{
		for (_s7929 in 0 ... _values.size()) 
		{
			var _d7930:GetLeaderboardStatus = _values.get(_s7929);
			if (_d7930.getValue() == value) 
			{
				return _d7930;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetLeaderboardStatus
	{
		for (_x16900 in 0 ... _values.size()) 
		{
			var _k16901:GetLeaderboardStatus = _values.get(_x16900);
			if (name == _k16901.name()) 
			{
				return _k16901;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10318;
	}

	public function toString():String
	{
		return "GetLeaderboardStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
