package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ClientApplication;

class ClientApplication implements Serializable
{

	private static var _values:NList<ClientApplication> = new NList<ClientApplication>();

	public static var PC:ClientApplication = new ClientApplication("PC", 0);

	public static var MOBILE:ClientApplication = new ClientApplication("MOBILE", 1);

	public static function values():NList<ClientApplication>
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

	public static function fromValue( value:Int):ClientApplication
	{
		for (_v8172 in 0 ... _values.size()) 
		{
			var _f8173:ClientApplication = _values.get(_v8172);
			if (_f8173.getValue() == value) 
			{
				return _f8173;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ClientApplication
	{
		for (_l17252 in 0 ... _values.size()) 
		{
			var _l17253:ClientApplication = _values.get(_l17252);
			if (name == _l17253.name()) 
			{
				return _l17253;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -20;
	}

	public function toString():String
	{
		return "ClientApplication." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
