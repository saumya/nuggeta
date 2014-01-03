package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.DnsStatus;

class DnsStatus implements Serializable
{

	private static var _values:NList<DnsStatus> = new NList<DnsStatus>();

	public static var SUCCESS:DnsStatus = new DnsStatus("SUCCESS", 0);

	public static var WARNED:DnsStatus = new DnsStatus("WARNED", 1);

	public static var REFUSED:DnsStatus = new DnsStatus("REFUSED", 2);

	public static var FAILED:DnsStatus = new DnsStatus("FAILED", 3);

	public static var FAILED_TRY_LATER:DnsStatus = new DnsStatus("FAILED_TRY_LATER", 4);

	public static function values():NList<DnsStatus>
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

	public static function fromValue( value:Int):DnsStatus
	{
		for (_j7725 in 0 ... _values.size()) 
		{
			var _s7726:DnsStatus = _values.get(_j7725);
			if (_s7726.getValue() == value) 
			{
				return _s7726;
			}
		}
		return null;
	}

	public static function valueOf( name:String):DnsStatus
	{
		for (_s16665 in 0 ... _values.size()) 
		{
			var _k16666:DnsStatus = _values.get(_s16665);
			if (name == _k16666.name()) 
			{
				return _k16666;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -1;
	}

	public function toString():String
	{
		return "DnsStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
