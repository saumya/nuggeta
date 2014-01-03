package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringStatus;

class ResumeSessionMonitoringStatus implements Serializable
{

	private static var _values:NList<ResumeSessionMonitoringStatus> = new NList<ResumeSessionMonitoringStatus>();

	public static var RESUMED:ResumeSessionMonitoringStatus = new ResumeSessionMonitoringStatus("RESUMED", 0);

	public static var INTERNAL_ERROR:ResumeSessionMonitoringStatus = new ResumeSessionMonitoringStatus("INTERNAL_ERROR", 1);

	public static function values():NList<ResumeSessionMonitoringStatus>
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

	public static function fromValue( value:Int):ResumeSessionMonitoringStatus
	{
		for (_y7171 in 0 ... _values.size()) 
		{
			var _l7172:ResumeSessionMonitoringStatus = _values.get(_y7171);
			if (_l7172.getValue() == value) 
			{
				return _l7172;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ResumeSessionMonitoringStatus
	{
		for (_y15902 in 0 ... _values.size()) 
		{
			var _u15903:ResumeSessionMonitoringStatus = _values.get(_y15902);
			if (name == _u15903.name()) 
			{
				return _u15903;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11098;
	}

	public function toString():String
	{
		return "ResumeSessionMonitoringStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
