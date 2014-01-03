package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardStatus;

class GetAchievementBoardStatus implements Serializable
{

	private static var _values:NList<GetAchievementBoardStatus> = new NList<GetAchievementBoardStatus>();

	public static var SUCCESS:GetAchievementBoardStatus = new GetAchievementBoardStatus("SUCCESS", 0);

	public static var FAILURE:GetAchievementBoardStatus = new GetAchievementBoardStatus("FAILURE", 1);

	public static var INTERNAL_ERROR:GetAchievementBoardStatus = new GetAchievementBoardStatus("INTERNAL_ERROR", 2);

	public static function values():NList<GetAchievementBoardStatus>
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

	public static function fromValue( value:Int):GetAchievementBoardStatus
	{
		for (_l7649 in 0 ... _values.size()) 
		{
			var _a7650:GetAchievementBoardStatus = _values.get(_l7649);
			if (_a7650.getValue() == value) 
			{
				return _a7650;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetAchievementBoardStatus
	{
		for (_d16561 in 0 ... _values.size()) 
		{
			var _x16562:GetAchievementBoardStatus = _values.get(_d16561);
			if (name == _x16562.name()) 
			{
				return _x16562;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10438;
	}

	public function toString():String
	{
		return "GetAchievementBoardStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
