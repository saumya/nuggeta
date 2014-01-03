package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SaveStorableStatus;

class SaveStorableStatus implements Serializable
{

	private static var _values:NList<SaveStorableStatus> = new NList<SaveStorableStatus>();

	public static var SUCCESS:SaveStorableStatus = new SaveStorableStatus("SUCCESS", 0);

	public static var FAILURE:SaveStorableStatus = new SaveStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:SaveStorableStatus = new SaveStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SaveStorableStatus = new SaveStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SaveStorableStatus>
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

	public static function fromValue( value:Int):SaveStorableStatus
	{
		for (_n7605 in 0 ... _values.size()) 
		{
			var _b7606:SaveStorableStatus = _values.get(_n7605);
			if (_b7606.getValue() == value) 
			{
				return _b7606;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SaveStorableStatus
	{
		for (_v16512 in 0 ... _values.size()) 
		{
			var _i16513:SaveStorableStatus = _values.get(_v16512);
			if (name == _i16513.name()) 
			{
				return _i16513;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10798;
	}

	public function toString():String
	{
		return "SaveStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
