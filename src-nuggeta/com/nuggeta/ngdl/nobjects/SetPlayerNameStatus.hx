package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SetPlayerNameStatus;

class SetPlayerNameStatus implements Serializable
{

	private static var _values:NList<SetPlayerNameStatus> = new NList<SetPlayerNameStatus>();

	public static var SUCCESS:SetPlayerNameStatus = new SetPlayerNameStatus("SUCCESS", 0);

	public static var NOT_ANONYMOUS_PLAYER:SetPlayerNameStatus = new SetPlayerNameStatus("NOT_ANONYMOUS_PLAYER", 1);

	public static var INVALID_CALL:SetPlayerNameStatus = new SetPlayerNameStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SetPlayerNameStatus = new SetPlayerNameStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SetPlayerNameStatus>
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

	public static function fromValue( value:Int):SetPlayerNameStatus
	{
		for (_o4192 in 0 ... _values.size()) 
		{
			var _q4193:SetPlayerNameStatus = _values.get(_o4192);
			if (_q4193.getValue() == value) 
			{
				return _q4193;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SetPlayerNameStatus
	{
		for (_b12040 in 0 ... _values.size()) 
		{
			var _l12041:SetPlayerNameStatus = _values.get(_b12040);
			if (name == _l12041.name()) 
			{
				return _l12041;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10838;
	}

	public function toString():String
	{
		return "SetPlayerNameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
