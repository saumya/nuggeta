package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.JobStatus;

class JobStatus implements Serializable
{

	private static var _values:NList<JobStatus> = new NList<JobStatus>();

	public static var PENDING:JobStatus = new JobStatus("PENDING", 0);

	public static var DONE:JobStatus = new JobStatus("DONE", 1);

	public static var FAILED:JobStatus = new JobStatus("FAILED", 2);

	public static function values():NList<JobStatus>
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

	public static function fromValue( value:Int):JobStatus
	{
		for (_t8021 in 0 ... _values.size()) 
		{
			var _f8022:JobStatus = _values.get(_t8021);
			if (_f8022.getValue() == value) 
			{
				return _f8022;
			}
		}
		return null;
	}

	public static function valueOf( name:String):JobStatus
	{
		for (_l17082 in 0 ... _values.size()) 
		{
			var _i17083:JobStatus = _values.get(_l17082);
			if (name == _i17083.name()) 
			{
				return _i17083;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -16;
	}

	public function toString():String
	{
		return "JobStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
