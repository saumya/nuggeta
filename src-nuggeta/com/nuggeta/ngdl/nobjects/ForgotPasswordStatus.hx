package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ForgotPasswordStatus;

class ForgotPasswordStatus implements Serializable
{

	private static var _values:NList<ForgotPasswordStatus> = new NList<ForgotPasswordStatus>();

	public static var CHECKOUT_YOUR_MAILBOX:ForgotPasswordStatus = new ForgotPasswordStatus("CHECKOUT_YOUR_MAILBOX", 0);

	public static var INVALID_CREDENTIALS:ForgotPasswordStatus = new ForgotPasswordStatus("INVALID_CREDENTIALS", 1);

	public static var INTERNAL_ERROR:ForgotPasswordStatus = new ForgotPasswordStatus("INTERNAL_ERROR", 2);

	public static var INVALID_CALL:ForgotPasswordStatus = new ForgotPasswordStatus("INVALID_CALL", 3);

	public static function values():NList<ForgotPasswordStatus>
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

	public static function fromValue( value:Int):ForgotPasswordStatus
	{
		for (_s8054 in 0 ... _values.size()) 
		{
			var _k8055:ForgotPasswordStatus = _values.get(_s8054);
			if (_k8055.getValue() == value) 
			{
				return _k8055;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ForgotPasswordStatus
	{
		for (_i17118 in 0 ... _values.size()) 
		{
			var _h17119:ForgotPasswordStatus = _values.get(_i17118);
			if (name == _h17119.name()) 
			{
				return _h17119;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10058;
	}

	public function toString():String
	{
		return "ForgotPasswordStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
