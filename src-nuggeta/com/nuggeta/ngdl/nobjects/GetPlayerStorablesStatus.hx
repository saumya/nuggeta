package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesStatus;

class GetPlayerStorablesStatus implements Serializable
{

	private static var _values:NList<GetPlayerStorablesStatus> = new NList<GetPlayerStorablesStatus>();

	public static var SUCCESS:GetPlayerStorablesStatus = new GetPlayerStorablesStatus("SUCCESS", 0);

	public static var FAILURE:GetPlayerStorablesStatus = new GetPlayerStorablesStatus("FAILURE", 1);

	public static var INVALID_CALL:GetPlayerStorablesStatus = new GetPlayerStorablesStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:GetPlayerStorablesStatus = new GetPlayerStorablesStatus("INTERNAL_ERROR", 3);

	public static var INVALID_QUERY:GetPlayerStorablesStatus = new GetPlayerStorablesStatus("INVALID_QUERY", 4);

	public static function values():NList<GetPlayerStorablesStatus>
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

	public static function fromValue( value:Int):GetPlayerStorablesStatus
	{
		for (_f7880 in 0 ... _values.size()) 
		{
			var _e7881:GetPlayerStorablesStatus = _values.get(_f7880);
			if (_e7881.getValue() == value) 
			{
				return _e7881;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetPlayerStorablesStatus
	{
		for (_d16849 in 0 ... _values.size()) 
		{
			var _z16850:GetPlayerStorablesStatus = _values.get(_d16849);
			if (name == _z16850.name()) 
			{
				return _z16850;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11058;
	}

	public function toString():String
	{
		return "GetPlayerStorablesStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
