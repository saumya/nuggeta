package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LoginStatus;

class LoginStatus implements Serializable
{

	private static var _values:NList<LoginStatus> = new NList<LoginStatus>();

	public static var CONNECTED:LoginStatus = new LoginStatus("CONNECTED", 0);

	public static var INVALID_LOGIN:LoginStatus = new LoginStatus("INVALID_LOGIN", 1);

	public static var ALREADY_CONNECTED:LoginStatus = new LoginStatus("ALREADY_CONNECTED", 2);

	public static var INVALID_CALL:LoginStatus = new LoginStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:LoginStatus = new LoginStatus("INTERNAL_ERROR", 4);

	public static function values():NList<LoginStatus>
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

	public static function fromValue( value:Int):LoginStatus
	{
		for (_n7937 in 0 ... _values.size()) 
		{
			var _y7938:LoginStatus = _values.get(_n7937);
			if (_y7938.getValue() == value) 
			{
				return _y7938;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LoginStatus
	{
		for (_n16908 in 0 ... _values.size()) 
		{
			var _i16909:LoginStatus = _values.get(_n16908);
			if (name == _i16909.name()) 
			{
				return _i16909;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10078;
	}

	public function toString():String
	{
		return "LoginStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
