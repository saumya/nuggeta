package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SubmitScoreStatus;

class SubmitScoreStatus implements Serializable
{

	private static var _values:NList<SubmitScoreStatus> = new NList<SubmitScoreStatus>();

	public static var SUCCESS:SubmitScoreStatus = new SubmitScoreStatus("SUCCESS", 0);

	public static var UNKNOWN_LEADERBOARD:SubmitScoreStatus = new SubmitScoreStatus("UNKNOWN_LEADERBOARD", 1);

	public static var AUTHENTICATION_REQUIRED:SubmitScoreStatus = new SubmitScoreStatus("AUTHENTICATION_REQUIRED", 2);

	public static var FAILURE:SubmitScoreStatus = new SubmitScoreStatus("FAILURE", 3);

	public static var INVALID_CALL:SubmitScoreStatus = new SubmitScoreStatus("INVALID_CALL", 4);

	public static var INTERNAL_ERROR:SubmitScoreStatus = new SubmitScoreStatus("INTERNAL_ERROR", 5);

	public static function values():NList<SubmitScoreStatus>
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

	public static function fromValue( value:Int):SubmitScoreStatus
	{
		for (_g7915 in 0 ... _values.size()) 
		{
			var _v7916:SubmitScoreStatus = _values.get(_g7915);
			if (_v7916.getValue() == value) 
			{
				return _v7916;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SubmitScoreStatus
	{
		for (_u16886 in 0 ... _values.size()) 
		{
			var _y16887:SubmitScoreStatus = _values.get(_u16886);
			if (name == _y16887.name()) 
			{
				return _y16887;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10298;
	}

	public function toString():String
	{
		return "SubmitScoreStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
