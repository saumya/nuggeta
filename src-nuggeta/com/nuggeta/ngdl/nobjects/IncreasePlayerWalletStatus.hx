package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletStatus;

class IncreasePlayerWalletStatus implements Serializable
{

	private static var _values:NList<IncreasePlayerWalletStatus> = new NList<IncreasePlayerWalletStatus>();

	public static var SUCCESS:IncreasePlayerWalletStatus = new IncreasePlayerWalletStatus("SUCCESS", 0);

	public static var FAILURE:IncreasePlayerWalletStatus = new IncreasePlayerWalletStatus("FAILURE", 1);

	public static var INVALID_CALL:IncreasePlayerWalletStatus = new IncreasePlayerWalletStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:IncreasePlayerWalletStatus = new IncreasePlayerWalletStatus("INTERNAL_ERROR", 3);

	public static function values():NList<IncreasePlayerWalletStatus>
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

	public static function fromValue( value:Int):IncreasePlayerWalletStatus
	{
		for (_k4210 in 0 ... _values.size()) 
		{
			var _m4211:IncreasePlayerWalletStatus = _values.get(_k4210);
			if (_m4211.getValue() == value) 
			{
				return _m4211;
			}
		}
		return null;
	}

	public static function valueOf( name:String):IncreasePlayerWalletStatus
	{
		for (_f12058 in 0 ... _values.size()) 
		{
			var _r12059:IncreasePlayerWalletStatus = _values.get(_f12058);
			if (name == _r12059.name()) 
			{
				return _r12059;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10398;
	}

	public function toString():String
	{
		return "IncreasePlayerWalletStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
