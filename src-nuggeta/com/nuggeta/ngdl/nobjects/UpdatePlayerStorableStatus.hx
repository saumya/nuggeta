package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableStatus;

class UpdatePlayerStorableStatus implements Serializable
{

	private static var _values:NList<UpdatePlayerStorableStatus> = new NList<UpdatePlayerStorableStatus>();

	public static var SUCCESS:UpdatePlayerStorableStatus = new UpdatePlayerStorableStatus("SUCCESS", 0);

	public static var FAILURE:UpdatePlayerStorableStatus = new UpdatePlayerStorableStatus("FAILURE", 1);

	public static var INVALID_CALL:UpdatePlayerStorableStatus = new UpdatePlayerStorableStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:UpdatePlayerStorableStatus = new UpdatePlayerStorableStatus("INTERNAL_ERROR", 3);

	public static function values():NList<UpdatePlayerStorableStatus>
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

	public static function fromValue( value:Int):UpdatePlayerStorableStatus
	{
		for (_v7800 in 0 ... _values.size()) 
		{
			var _g7801:UpdatePlayerStorableStatus = _values.get(_v7800);
			if (_g7801.getValue() == value) 
			{
				return _g7801;
			}
		}
		return null;
	}

	public static function valueOf( name:String):UpdatePlayerStorableStatus
	{
		for (_z16769 in 0 ... _values.size()) 
		{
			var _j16770:UpdatePlayerStorableStatus = _values.get(_z16769);
			if (name == _j16770.name()) 
			{
				return _j16770;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11018;
	}

	public function toString():String
	{
		return "UpdatePlayerStorableStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
