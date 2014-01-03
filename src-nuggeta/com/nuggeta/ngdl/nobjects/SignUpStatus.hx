package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SignUpStatus;

class SignUpStatus implements Serializable
{

	private static var _values:NList<SignUpStatus> = new NList<SignUpStatus>();

	public static var ACCOUNT_CREATED:SignUpStatus = new SignUpStatus("ACCOUNT_CREATED", 0);

	public static var ACCOUNT_ALREADY_EXISTS:SignUpStatus = new SignUpStatus("ACCOUNT_ALREADY_EXISTS", 1);

	public static var INVALID_CALL:SignUpStatus = new SignUpStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SignUpStatus = new SignUpStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SignUpStatus>
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

	public static function fromValue( value:Int):SignUpStatus
	{
		for (_b4214 in 0 ... _values.size()) 
		{
			var _w4215:SignUpStatus = _values.get(_b4214);
			if (_w4215.getValue() == value) 
			{
				return _w4215;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SignUpStatus
	{
		for (_b12062 in 0 ... _values.size()) 
		{
			var _l12063:SignUpStatus = _values.get(_b12062);
			if (name == _l12063.name()) 
			{
				return _l12063;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10038;
	}

	public function toString():String
	{
		return "SignUpStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
