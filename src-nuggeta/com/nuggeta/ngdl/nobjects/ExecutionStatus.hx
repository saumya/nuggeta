package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;

class ExecutionStatus implements Serializable
{

	private static var _values:NList<ExecutionStatus> = new NList<ExecutionStatus>();

	public static var OK:ExecutionStatus = new ExecutionStatus("OK", 0);

	public static var FAILED:ExecutionStatus = new ExecutionStatus("FAILED", 1);

	public static function values():NList<ExecutionStatus>
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

	public static function fromValue( value:Int):ExecutionStatus
	{
		for (_w7437 in 0 ... _values.size()) 
		{
			var _b7438:ExecutionStatus = _values.get(_w7437);
			if (_b7438.getValue() == value) 
			{
				return _b7438;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ExecutionStatus
	{
		for (_p16306 in 0 ... _values.size()) 
		{
			var _b16307:ExecutionStatus = _values.get(_p16306);
			if (name == _b16307.name()) 
			{
				return _b16307;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -24;
	}

	public function toString():String
	{
		return "ExecutionStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
