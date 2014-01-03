package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnStatus;

class NextPlayerTurnStatus implements Serializable
{

	private static var _values:NList<NextPlayerTurnStatus> = new NList<NextPlayerTurnStatus>();

	public static var SUCCESS:NextPlayerTurnStatus = new NextPlayerTurnStatus("SUCCESS", 0);

	public static var FAILURE:NextPlayerTurnStatus = new NextPlayerTurnStatus("FAILURE", 1);

	public static var INVALID_CALL:NextPlayerTurnStatus = new NextPlayerTurnStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:NextPlayerTurnStatus = new NextPlayerTurnStatus("INTERNAL_ERROR", 3);

	public static var GAME_NOT_FOUND:NextPlayerTurnStatus = new NextPlayerTurnStatus("GAME_NOT_FOUND", 4);

	public static function values():NList<NextPlayerTurnStatus>
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

	public static function fromValue( value:Int):NextPlayerTurnStatus
	{
		for (_d8180 in 0 ... _values.size()) 
		{
			var _l8181:NextPlayerTurnStatus = _values.get(_d8180);
			if (_l8181.getValue() == value) 
			{
				return _l8181;
			}
		}
		return null;
	}

	public static function valueOf( name:String):NextPlayerTurnStatus
	{
		for (_n17260 in 0 ... _values.size()) 
		{
			var _g17261:NextPlayerTurnStatus = _values.get(_n17260);
			if (name == _g17261.name()) 
			{
				return _g17261;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10818;
	}

	public function toString():String
	{
		return "NextPlayerTurnStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
