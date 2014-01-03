package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SaveGameStatus;

class SaveGameStatus implements Serializable
{

	private static var _values:NList<SaveGameStatus> = new NList<SaveGameStatus>();

	public static var SUCCESS:SaveGameStatus = new SaveGameStatus("SUCCESS", 0);

	public static var INVALID_CALL:SaveGameStatus = new SaveGameStatus("INVALID_CALL", 1);

	public static var INTERNAL_ERROR:SaveGameStatus = new SaveGameStatus("INTERNAL_ERROR", 2);

	public static var NOT_SUPPORTED_IN_CONNECTED_MODE:SaveGameStatus = new SaveGameStatus("NOT_SUPPORTED_IN_CONNECTED_MODE", 3);

	public static var UNKNOWN_GAME_ID:SaveGameStatus = new SaveGameStatus("UNKNOWN_GAME_ID", 4);

	public static function values():NList<SaveGameStatus>
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

	public static function fromValue( value:Int):SaveGameStatus
	{
		for (_g7358 in 0 ... _values.size()) 
		{
			var _n7359:SaveGameStatus = _values.get(_g7358);
			if (_n7359.getValue() == value) 
			{
				return _n7359;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SaveGameStatus
	{
		for (_d16135 in 0 ... _values.size()) 
		{
			var _b16136:SaveGameStatus = _values.get(_d16135);
			if (name == _b16136.name()) 
			{
				return _b16136;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10958;
	}

	public function toString():String
	{
		return "SaveGameStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
