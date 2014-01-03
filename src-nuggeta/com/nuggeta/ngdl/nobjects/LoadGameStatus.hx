package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.LoadGameStatus;

class LoadGameStatus implements Serializable
{

	private static var _values:NList<LoadGameStatus> = new NList<LoadGameStatus>();

	public static var SUCCESS:LoadGameStatus = new LoadGameStatus("SUCCESS", 0);

	public static var INVALID_CALL:LoadGameStatus = new LoadGameStatus("INVALID_CALL", 1);

	public static var INTERNAL_ERROR:LoadGameStatus = new LoadGameStatus("INTERNAL_ERROR", 2);

	public static var NOT_SUPPORTED_IN_CONNECTED_MODE:LoadGameStatus = new LoadGameStatus("NOT_SUPPORTED_IN_CONNECTED_MODE", 3);

	public static var UNKNOWN_GAME_ID:LoadGameStatus = new LoadGameStatus("UNKNOWN_GAME_ID", 4);

	public static function values():NList<LoadGameStatus>
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

	public static function fromValue( value:Int):LoadGameStatus
	{
		for (_h7794 in 0 ... _values.size()) 
		{
			var _t7795:LoadGameStatus = _values.get(_h7794);
			if (_t7795.getValue() == value) 
			{
				return _t7795;
			}
		}
		return null;
	}

	public static function valueOf( name:String):LoadGameStatus
	{
		for (_n16763 in 0 ... _values.size()) 
		{
			var _c16764:LoadGameStatus = _values.get(_n16763);
			if (name == _c16764.name()) 
			{
				return _c16764;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10978;
	}

	public function toString():String
	{
		return "LoadGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
