package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.RemoveStorableStatus;

class RemoveStorableStatus implements Serializable
{

	private static var _values:NList<RemoveStorableStatus> = new NList<RemoveStorableStatus>();

	public static var SUCCESS:RemoveStorableStatus = new RemoveStorableStatus("SUCCESS", 0);

	public static var FAILURE:RemoveStorableStatus = new RemoveStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:RemoveStorableStatus = new RemoveStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:RemoveStorableStatus = new RemoveStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<RemoveStorableStatus>
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

	public static function fromValue( value:Int):RemoveStorableStatus
	{
		for (_x8040 in 0 ... _values.size()) 
		{
			var _a8041:RemoveStorableStatus = _values.get(_x8040);
			if (_a8041.getValue() == value) 
			{
				return _a8041;
			}
		}
		return null;
	}

	public static function valueOf( name:String):RemoveStorableStatus
	{
		for (_r17104 in 0 ... _values.size()) 
		{
			var _v17105:RemoveStorableStatus = _values.get(_r17104);
			if (name == _v17105.name()) 
			{
				return _v17105;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10878;
	}

	public function toString():String
	{
		return "RemoveStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
