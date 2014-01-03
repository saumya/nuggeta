package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletStatus;

class GetPlayerWalletStatus implements Serializable
{

	private static var _values:NList<GetPlayerWalletStatus> = new NList<GetPlayerWalletStatus>();

	public static var SUCCESS:GetPlayerWalletStatus = new GetPlayerWalletStatus("SUCCESS", 0);

	public static var FAILURE:GetPlayerWalletStatus = new GetPlayerWalletStatus("FAILURE", 1);

	public static var INTERNAL_ERROR:GetPlayerWalletStatus = new GetPlayerWalletStatus("INTERNAL_ERROR", 2);

	public static function values():NList<GetPlayerWalletStatus>
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

	public static function fromValue( value:Int):GetPlayerWalletStatus
	{
		for (_f4693 in 0 ... _values.size()) 
		{
			var _a4694:GetPlayerWalletStatus = _values.get(_f4693);
			if (_a4694.getValue() == value) 
			{
				return _a4694;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetPlayerWalletStatus
	{
		for (_j12565 in 0 ... _values.size()) 
		{
			var _x12566:GetPlayerWalletStatus = _values.get(_j12565);
			if (name == _x12566.name()) 
			{
				return _x12566;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10418;
	}

	public function toString():String
	{
		return "GetPlayerWalletStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
