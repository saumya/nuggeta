package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetGhostsStatus;

class GetGhostsStatus implements Serializable
{

	private static var _values:NList<GetGhostsStatus> = new NList<GetGhostsStatus>();

	public static var SUCCESS:GetGhostsStatus = new GetGhostsStatus("SUCCESS", 0);

	public static var FAILURE:GetGhostsStatus = new GetGhostsStatus("FAILURE", 1);

	public static var INTERNAL_ERROR:GetGhostsStatus = new GetGhostsStatus("INTERNAL_ERROR", 2);

	public static var INVALID_QUERY:GetGhostsStatus = new GetGhostsStatus("INVALID_QUERY", 3);

	public static function values():NList<GetGhostsStatus>
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

	public static function fromValue( value:Int):GetGhostsStatus
	{
		for (_h8017 in 0 ... _values.size()) 
		{
			var _t8018:GetGhostsStatus = _values.get(_h8017);
			if (_t8018.getValue() == value) 
			{
				return _t8018;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetGhostsStatus
	{
		for (_y17078 in 0 ... _values.size()) 
		{
			var _r17079:GetGhostsStatus = _values.get(_y17078);
			if (name == _r17079.name()) 
			{
				return _r17079;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10718;
	}

	public function toString():String
	{
		return "GetGhostsStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
