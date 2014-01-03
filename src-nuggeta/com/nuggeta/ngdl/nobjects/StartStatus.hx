package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.StartStatus;

class StartStatus implements Serializable
{

	private static var _values:NList<StartStatus> = new NList<StartStatus>();

	public static var READY:StartStatus = new StartStatus("READY", 0);

	public static var WARNED:StartStatus = new StartStatus("WARNED", 1);

	public static var FAILED:StartStatus = new StartStatus("FAILED", 2);

	public static var REFUSED:StartStatus = new StartStatus("REFUSED", 3);

	public static function values():NList<StartStatus>
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

	public static function fromValue( value:Int):StartStatus
	{
		for (_r7673 in 0 ... _values.size()) 
		{
			var _u7674:StartStatus = _values.get(_r7673);
			if (_u7674.getValue() == value) 
			{
				return _u7674;
			}
		}
		return null;
	}

	public static function valueOf( name:String):StartStatus
	{
		for (_b16597 in 0 ... _values.size()) 
		{
			var _h16598:StartStatus = _values.get(_b16597);
			if (name == _h16598.name()) 
			{
				return _h16598;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -34;
	}

	public function toString():String
	{
		return "StartStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
