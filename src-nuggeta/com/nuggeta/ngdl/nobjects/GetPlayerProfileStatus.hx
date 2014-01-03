package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileStatus;

class GetPlayerProfileStatus implements Serializable
{

	private static var _values:NList<GetPlayerProfileStatus> = new NList<GetPlayerProfileStatus>();

	public static var SUCCESS:GetPlayerProfileStatus = new GetPlayerProfileStatus("SUCCESS", 0);

	public static var FAILURE:GetPlayerProfileStatus = new GetPlayerProfileStatus("FAILURE", 1);

	public static var INVALID_CALL:GetPlayerProfileStatus = new GetPlayerProfileStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:GetPlayerProfileStatus = new GetPlayerProfileStatus("INTERNAL_ERROR", 3);

	public static function values():NList<GetPlayerProfileStatus>
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

	public static function fromValue( value:Int):GetPlayerProfileStatus
	{
		for (_t7423 in 0 ... _values.size()) 
		{
			var _l7424:GetPlayerProfileStatus = _values.get(_t7423);
			if (_l7424.getValue() == value) 
			{
				return _l7424;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetPlayerProfileStatus
	{
		for (_d16279 in 0 ... _values.size()) 
		{
			var _w16280:GetPlayerProfileStatus = _values.get(_d16279);
			if (name == _w16280.name()) 
			{
				return _w16280;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10118;
	}

	public function toString():String
	{
		return "GetPlayerProfileStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
