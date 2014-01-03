package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ThirdPartyMethodType;

class ThirdPartyMethodType implements Serializable
{

	private static var _values:NList<ThirdPartyMethodType> = new NList<ThirdPartyMethodType>();

	public static var GET_FRIENDS:ThirdPartyMethodType = new ThirdPartyMethodType("GET_FRIENDS", 0);

	public static var PUBLISH_MESSAGE:ThirdPartyMethodType = new ThirdPartyMethodType("PUBLISH_MESSAGE", 1);

	public static function values():NList<ThirdPartyMethodType>
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

	public static function fromValue( value:Int):ThirdPartyMethodType
	{
		for (_i8009 in 0 ... _values.size()) 
		{
			var _p8010:ThirdPartyMethodType = _values.get(_i8009);
			if (_p8010.getValue() == value) 
			{
				return _p8010;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ThirdPartyMethodType
	{
		for (_c17059 in 0 ... _values.size()) 
		{
			var _d17060:ThirdPartyMethodType = _values.get(_c17059);
			if (name == _d17060.name()) 
			{
				return _d17060;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -31;
	}

	public function toString():String
	{
		return "ThirdPartyMethodType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
