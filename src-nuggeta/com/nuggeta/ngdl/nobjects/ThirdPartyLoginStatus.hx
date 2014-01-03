package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginStatus;

class ThirdPartyLoginStatus implements Serializable
{

	private static var _values:NList<ThirdPartyLoginStatus> = new NList<ThirdPartyLoginStatus>();

	public static var CONNECTED:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("CONNECTED", 0);

	public static var INVALID_LOGIN:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("INVALID_LOGIN", 1);

	public static var ALREADY_CONNECTED:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("ALREADY_CONNECTED", 2);

	public static var INVALID_CALL:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("INVALID_CALL", 3);

	public static var INTERNAL_ERROR:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("INTERNAL_ERROR", 4);

	public static var CANCELED:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("CANCELED", 5);

	public static var INVALID_TOKEN:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("INVALID_TOKEN", 6);

	public static var TOKEN_EXPIRED:ThirdPartyLoginStatus = new ThirdPartyLoginStatus("TOKEN_EXPIRED", 7);

	public static function values():NList<ThirdPartyLoginStatus>
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

	public static function fromValue( value:Int):ThirdPartyLoginStatus
	{
		for (_k7884 in 0 ... _values.size()) 
		{
			var _d7885:ThirdPartyLoginStatus = _values.get(_k7884);
			if (_d7885.getValue() == value) 
			{
				return _d7885;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ThirdPartyLoginStatus
	{
		for (_g16853 in 0 ... _values.size()) 
		{
			var _k16854:ThirdPartyLoginStatus = _values.get(_g16853);
			if (name == _k16854.name()) 
			{
				return _k16854;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10938;
	}

	public function toString():String
	{
		return "ThirdPartyLoginStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
