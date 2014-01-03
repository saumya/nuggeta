package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableStatus;

class SavePlayerStorableStatus implements Serializable
{

	private static var _values:NList<SavePlayerStorableStatus> = new NList<SavePlayerStorableStatus>();

	public static var SUCCESS:SavePlayerStorableStatus = new SavePlayerStorableStatus("SUCCESS", 0);

	public static var FAILURE:SavePlayerStorableStatus = new SavePlayerStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:SavePlayerStorableStatus = new SavePlayerStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SavePlayerStorableStatus = new SavePlayerStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SavePlayerStorableStatus>
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

	public static function fromValue( value:Int):SavePlayerStorableStatus
	{
		for (_g3759 in 0 ... _values.size()) 
		{
			var _a3760:SavePlayerStorableStatus = _values.get(_g3759);
			if (_a3760.getValue() == value) 
			{
				return _a3760;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SavePlayerStorableStatus
	{
		for (_r11593 in 0 ... _values.size()) 
		{
			var _t11594:SavePlayerStorableStatus = _values.get(_r11593);
			if (name == _t11594.name()) 
			{
				return _t11594;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10998;
	}

	public function toString():String
	{
		return "SavePlayerStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
