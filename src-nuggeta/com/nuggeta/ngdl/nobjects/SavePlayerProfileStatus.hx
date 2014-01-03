package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileStatus;

class SavePlayerProfileStatus implements Serializable
{

	private static var _values:NList<SavePlayerProfileStatus> = new NList<SavePlayerProfileStatus>();

	public static var SUCCESS:SavePlayerProfileStatus = new SavePlayerProfileStatus("SUCCESS", 0);

	public static var INVALID_CALL:SavePlayerProfileStatus = new SavePlayerProfileStatus("INVALID_CALL", 1);

	public static var INTERNAL_ERROR:SavePlayerProfileStatus = new SavePlayerProfileStatus("INTERNAL_ERROR", 2);

	public static function values():NList<SavePlayerProfileStatus>
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

	public static function fromValue( value:Int):SavePlayerProfileStatus
	{
		for (_f7854 in 0 ... _values.size()) 
		{
			var _c7855:SavePlayerProfileStatus = _values.get(_f7854);
			if (_c7855.getValue() == value) 
			{
				return _c7855;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SavePlayerProfileStatus
	{
		for (_f16823 in 0 ... _values.size()) 
		{
			var _w16824:SavePlayerProfileStatus = _values.get(_f16823);
			if (name == _w16824.name()) 
			{
				return _w16824;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10098;
	}

	public function toString():String
	{
		return "SavePlayerProfileStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
