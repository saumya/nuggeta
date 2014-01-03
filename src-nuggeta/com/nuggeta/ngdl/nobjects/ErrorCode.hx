package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ErrorCode;

class ErrorCode implements Serializable
{

	private static var _values:NList<ErrorCode> = new NList<ErrorCode>();

	public static var INVALID_MESSAGE:ErrorCode = new ErrorCode("INVALID_MESSAGE", 0);

	public static var INTERNAL_ERROR:ErrorCode = new ErrorCode("INTERNAL_ERROR", 1);

	public static function values():NList<ErrorCode>
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

	public static function fromValue( value:Int):ErrorCode
	{
		for (_s8145 in 0 ... _values.size()) 
		{
			var _m8146:ErrorCode = _values.get(_s8145);
			if (_m8146.getValue() == value) 
			{
				return _m8146;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ErrorCode
	{
		for (_e17214 in 0 ... _values.size()) 
		{
			var _e17215:ErrorCode = _values.get(_e17214);
			if (name == _e17215.name()) 
			{
				return _e17215;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -8;
	}

	public function toString():String
	{
		return "ErrorCode." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
