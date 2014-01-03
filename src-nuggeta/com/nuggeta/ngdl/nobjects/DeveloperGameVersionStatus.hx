package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DeveloperGameVersionStatus;

class DeveloperGameVersionStatus implements Serializable
{

	private static var _values:NList<DeveloperGameVersionStatus> = new NList<DeveloperGameVersionStatus>();

	public static var VALIDATION:DeveloperGameVersionStatus = new DeveloperGameVersionStatus("VALIDATION", 0);

	public static var VALIDATED:DeveloperGameVersionStatus = new DeveloperGameVersionStatus("VALIDATED", 1);

	public static function values():NList<DeveloperGameVersionStatus>
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

	public static function fromValue( value:Int):DeveloperGameVersionStatus
	{
		for (_j7629 in 0 ... _values.size()) 
		{
			var _e7630:DeveloperGameVersionStatus = _values.get(_j7629);
			if (_e7630.getValue() == value) 
			{
				return _e7630;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DeveloperGameVersionStatus
	{
		for (_i16536 in 0 ... _values.size()) 
		{
			var _k16537:DeveloperGameVersionStatus = _values.get(_i16536);
			if (name == _k16537.name()) 
			{
				return _k16537;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -33;
	}

	public function toString():String
	{
		return "DeveloperGameVersionStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
