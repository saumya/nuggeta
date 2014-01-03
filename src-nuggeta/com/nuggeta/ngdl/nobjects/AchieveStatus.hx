package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.AchieveStatus;

class AchieveStatus implements Serializable
{

	private static var _values:NList<AchieveStatus> = new NList<AchieveStatus>();

	public static var SUCCESS:AchieveStatus = new AchieveStatus("SUCCESS", 0);

	public static var FAILURE:AchieveStatus = new AchieveStatus("FAILURE", 1);

	public static var UNKNOWN_ACHIEVEMENT:AchieveStatus = new AchieveStatus("UNKNOWN_ACHIEVEMENT", 2);

	public static var ALREADY_ACHIEVED:AchieveStatus = new AchieveStatus("ALREADY_ACHIEVED", 3);

	public static var INVALID_CALL:AchieveStatus = new AchieveStatus("INVALID_CALL", 4);

	public static var INTERNAL_ERROR:AchieveStatus = new AchieveStatus("INTERNAL_ERROR", 5);

	public static function values():NList<AchieveStatus>
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

	public static function fromValue( value:Int):AchieveStatus
	{
		for (_g4263 in 0 ... _values.size()) 
		{
			var _x4264:AchieveStatus = _values.get(_g4263);
			if (_x4264.getValue() == value) 
			{
				return _x4264;
			}
		}
		return null;
	}

	public static function valueOf( name:String):AchieveStatus
	{
		for (_v12131 in 0 ... _values.size()) 
		{
			var _s12132:AchieveStatus = _values.get(_v12131);
			if (name == _s12132.name()) 
			{
				return _s12132;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10458;
	}

	public function toString():String
	{
		return "AchieveStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
