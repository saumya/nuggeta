package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NebulaPlayerStatus;

class NebulaPlayerStatus implements Serializable
{

	private static var _values:NList<NebulaPlayerStatus> = new NList<NebulaPlayerStatus>();

	public static var CONNECTED:NebulaPlayerStatus = new NebulaPlayerStatus("CONNECTED", 0);

	public static var SWITCHING:NebulaPlayerStatus = new NebulaPlayerStatus("SWITCHING", 1);

	public static var BALANCING:NebulaPlayerStatus = new NebulaPlayerStatus("BALANCING", 2);

	public static var DISCONNECTED:NebulaPlayerStatus = new NebulaPlayerStatus("DISCONNECTED", 3);

	public static function values():NList<NebulaPlayerStatus>
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

	public static function fromValue( value:Int):NebulaPlayerStatus
	{
		for (_m7350 in 0 ... _values.size()) 
		{
			var _r7351:NebulaPlayerStatus = _values.get(_m7350);
			if (_r7351.getValue() == value) 
			{
				return _r7351;
			}
		}
		return null;
	}

	public static function valueOf( name:String):NebulaPlayerStatus
	{
		for (_f16127 in 0 ... _values.size()) 
		{
			var _b16128:NebulaPlayerStatus = _values.get(_f16127);
			if (name == _b16128.name()) 
			{
				return _b16128;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -26;
	}

	public function toString():String
	{
		return "NebulaPlayerStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
