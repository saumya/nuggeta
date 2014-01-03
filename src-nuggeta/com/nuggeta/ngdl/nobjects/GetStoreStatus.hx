package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetStoreStatus;

class GetStoreStatus implements Serializable
{

	private static var _values:NList<GetStoreStatus> = new NList<GetStoreStatus>();

	public static var SUCCESS:GetStoreStatus = new GetStoreStatus("SUCCESS", 0);

	public static var FAILURE:GetStoreStatus = new GetStoreStatus("FAILURE", 1);

	public static var INTERNAL_ERROR:GetStoreStatus = new GetStoreStatus("INTERNAL_ERROR", 2);

	public static function values():NList<GetStoreStatus>
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

	public static function fromValue( value:Int):GetStoreStatus
	{
		for (_f7185 in 0 ... _values.size()) 
		{
			var _y7186:GetStoreStatus = _values.get(_f7185);
			if (_y7186.getValue() == value) 
			{
				return _y7186;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetStoreStatus
	{
		for (_z15916 in 0 ... _values.size()) 
		{
			var _l15917:GetStoreStatus = _values.get(_z15916);
			if (name == _l15917.name()) 
			{
				return _l15917;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10358;
	}

	public function toString():String
	{
		return "GetStoreStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
