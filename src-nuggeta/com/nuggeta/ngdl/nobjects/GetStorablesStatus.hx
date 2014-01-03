package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetStorablesStatus;

class GetStorablesStatus implements Serializable
{

	private static var _values:NList<GetStorablesStatus> = new NList<GetStorablesStatus>();

	public static var SUCCESS:GetStorablesStatus = new GetStorablesStatus("SUCCESS", 0);

	public static var FAILURE:GetStorablesStatus = new GetStorablesStatus("FAILURE", 1);

	public static var INVALID_CALL:GetStorablesStatus = new GetStorablesStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:GetStorablesStatus = new GetStorablesStatus("INTERNAL_ERROR", 3);

	public static var INVALID_QUERY:GetStorablesStatus = new GetStorablesStatus("INVALID_QUERY", 4);

	public static function values():NList<GetStorablesStatus>
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

	public static function fromValue( value:Int):GetStorablesStatus
	{
		for (_k7179 in 0 ... _values.size()) 
		{
			var _a7180:GetStorablesStatus = _values.get(_k7179);
			if (_a7180.getValue() == value) 
			{
				return _a7180;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetStorablesStatus
	{
		for (_v15910 in 0 ... _values.size()) 
		{
			var _n15911:GetStorablesStatus = _values.get(_v15910);
			if (name == _n15911.name()) 
			{
				return _n15911;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10778;
	}

	public function toString():String
	{
		return "GetStorablesStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
