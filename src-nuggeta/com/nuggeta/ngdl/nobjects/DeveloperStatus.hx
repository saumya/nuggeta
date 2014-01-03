package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DeveloperStatus;

class DeveloperStatus implements Serializable
{

	private static var _values:NList<DeveloperStatus> = new NList<DeveloperStatus>();

	public static var ACTIVE:DeveloperStatus = new DeveloperStatus("ACTIVE", 0);

	public static var INNACTIVE:DeveloperStatus = new DeveloperStatus("INNACTIVE", 1);

	public static function values():NList<DeveloperStatus>
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

	public static function fromValue( value:Int):DeveloperStatus
	{
		for (_m7238 in 0 ... _values.size()) 
		{
			var _h7239:DeveloperStatus = _values.get(_m7238);
			if (_h7239.getValue() == value) 
			{
				return _h7239;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DeveloperStatus
	{
		for (_q15981 in 0 ... _values.size()) 
		{
			var _o15982:DeveloperStatus = _values.get(_q15981);
			if (name == _o15982.name()) 
			{
				return _o15982;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -28;
	}

	public function toString():String
	{
		return "DeveloperStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
