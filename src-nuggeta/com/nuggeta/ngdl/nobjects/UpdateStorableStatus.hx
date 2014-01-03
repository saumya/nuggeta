package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.UpdateStorableStatus;

class UpdateStorableStatus implements Serializable
{

	private static var _values:NList<UpdateStorableStatus> = new NList<UpdateStorableStatus>();

	public static var SUCCESS:UpdateStorableStatus = new UpdateStorableStatus("SUCCESS", 0);

	public static var FAILURE:UpdateStorableStatus = new UpdateStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:UpdateStorableStatus = new UpdateStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:UpdateStorableStatus = new UpdateStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<UpdateStorableStatus>
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

	public static function fromValue( value:Int):UpdateStorableStatus
	{
		for (_c7368 in 0 ... _values.size()) 
		{
			var _p7369:UpdateStorableStatus = _values.get(_c7368);
			if (_p7369.getValue() == value) 
			{
				return _p7369;
			}
		}
		return null;
	}

	public static function valueOf( name:String):UpdateStorableStatus
	{
		for (_v16145 in 0 ... _values.size()) 
		{
			var _a16146:UpdateStorableStatus = _values.get(_v16145);
			if (name == _a16146.name()) 
			{
				return _a16146;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10858;
	}

	public function toString():String
	{
		return "UpdateStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
