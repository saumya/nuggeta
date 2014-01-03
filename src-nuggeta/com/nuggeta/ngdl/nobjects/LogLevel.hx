package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LogLevel;

class LogLevel implements Serializable
{

	private static var _values:NList<LogLevel> = new NList<LogLevel>();

	public static var LOG_LEVEL_DEBUG:LogLevel = new LogLevel("LOG_LEVEL_DEBUG", 0);

	public static var LOG_LEVEL_INFO:LogLevel = new LogLevel("LOG_LEVEL_INFO", 1);

	public static var LOG_LEVEL_WARN:LogLevel = new LogLevel("LOG_LEVEL_WARN", 2);

	public static var LOG_LEVEL_ERROR:LogLevel = new LogLevel("LOG_LEVEL_ERROR", 3);

	public static var LOG_LEVEL_FATAL:LogLevel = new LogLevel("LOG_LEVEL_FATAL", 4);

	public static function values():NList<LogLevel>
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

	public static function fromValue( value:Int):LogLevel
	{
		for (_a7790 in 0 ... _values.size()) 
		{
			var _n7791:LogLevel = _values.get(_a7790);
			if (_n7791.getValue() == value) 
			{
				return _n7791;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LogLevel
	{
		for (_d16759 in 0 ... _values.size()) 
		{
			var _y16760:LogLevel = _values.get(_d16759);
			if (name == _y16760.name()) 
			{
				return _y16760;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -12;
	}

	public function toString():String
	{
		return "LogLevel." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
