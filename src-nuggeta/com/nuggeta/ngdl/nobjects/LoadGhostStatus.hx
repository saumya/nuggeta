package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LoadGhostStatus;

class LoadGhostStatus implements Serializable
{

	private static var _values:NList<LoadGhostStatus> = new NList<LoadGhostStatus>();

	public static var SUCCESS:LoadGhostStatus = new LoadGhostStatus("SUCCESS", 0);

	public static var FAILURE:LoadGhostStatus = new LoadGhostStatus("FAILURE", 1);

	public static var INVALID_CALL:LoadGhostStatus = new LoadGhostStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:LoadGhostStatus = new LoadGhostStatus("INTERNAL_ERROR", 3);

	public static function values():NList<LoadGhostStatus>
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

	public static function fromValue( value:Int):LoadGhostStatus
	{
		for (_r7961 in 0 ... _values.size()) 
		{
			var _x7962:LoadGhostStatus = _values.get(_r7961);
			if (_x7962.getValue() == value) 
			{
				return _x7962;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LoadGhostStatus
	{
		for (_e16932 in 0 ... _values.size()) 
		{
			var _q16933:LoadGhostStatus = _values.get(_e16932);
			if (name == _q16933.name()) 
			{
				return _q16933;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10738;
	}

	public function toString():String
	{
		return "LoadGhostStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
