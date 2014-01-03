package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LogoutStatus;

class LogoutStatus implements Serializable
{

	private static var _values:NList<LogoutStatus> = new NList<LogoutStatus>();

	public static var SUCCESS:LogoutStatus = new LogoutStatus("SUCCESS", 0);

	public static var INTERNAL_ERROR:LogoutStatus = new LogoutStatus("INTERNAL_ERROR", 2);

	public static function values():NList<LogoutStatus>
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

	public static function fromValue( value:Int):LogoutStatus
	{
		for (_p1238 in 0 ... _values.size()) 
		{
			var _d1239:LogoutStatus = _values.get(_p1238);
			if (_d1239.getValue() == value) 
			{
				return _d1239;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LogoutStatus
	{
		for (_v8196 in 0 ... _values.size()) 
		{
			var _q8197:LogoutStatus = _values.get(_v8196);
			if (name == _q8197.name()) 
			{
				return _q8197;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10138;
	}

	public function toString():String
	{
		return "LogoutStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
