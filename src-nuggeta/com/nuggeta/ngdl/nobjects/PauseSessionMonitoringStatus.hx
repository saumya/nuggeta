package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringStatus;

class PauseSessionMonitoringStatus implements Serializable
{

	private static var _values:NList<PauseSessionMonitoringStatus> = new NList<PauseSessionMonitoringStatus>();

	public static var PAUSED:PauseSessionMonitoringStatus = new PauseSessionMonitoringStatus("PAUSED", 0);

	public static var INTERNAL_ERROR:PauseSessionMonitoringStatus = new PauseSessionMonitoringStatus("INTERNAL_ERROR", 1);

	public static function values():NList<PauseSessionMonitoringStatus>
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

	public static function fromValue( value:Int):PauseSessionMonitoringStatus
	{
		for (_h7338 in 0 ... _values.size()) 
		{
			var _z7339:PauseSessionMonitoringStatus = _values.get(_h7338);
			if (_z7339.getValue() == value) 
			{
				return _z7339;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PauseSessionMonitoringStatus
	{
		for (_a16115 in 0 ... _values.size()) 
		{
			var _u16116:PauseSessionMonitoringStatus = _values.get(_a16115);
			if (name == _u16116.name()) 
			{
				return _u16116;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11078;
	}

	public function toString():String
	{
		return "PauseSessionMonitoringStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
