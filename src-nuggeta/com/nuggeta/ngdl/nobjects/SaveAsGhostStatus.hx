package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SaveAsGhostStatus;

class SaveAsGhostStatus implements Serializable
{

	private static var _values:NList<SaveAsGhostStatus> = new NList<SaveAsGhostStatus>();

	public static var SUCCESS:SaveAsGhostStatus = new SaveAsGhostStatus("SUCCESS", 0);

	public static var FAILURE:SaveAsGhostStatus = new SaveAsGhostStatus("FAILURE", 1);

	public static var INVALID_CALL:SaveAsGhostStatus = new SaveAsGhostStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SaveAsGhostStatus = new SaveAsGhostStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SaveAsGhostStatus>
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

	public static function fromValue( value:Int):SaveAsGhostStatus
	{
		for (_k7868 in 0 ... _values.size()) 
		{
			var _o7869:SaveAsGhostStatus = _values.get(_k7868);
			if (_o7869.getValue() == value) 
			{
				return _o7869;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SaveAsGhostStatus
	{
		for (_e16837 in 0 ... _values.size()) 
		{
			var _y16838:SaveAsGhostStatus = _values.get(_e16837);
			if (name == _y16838.name()) 
			{
				return _y16838;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10698;
	}

	public function toString():String
	{
		return "SaveAsGhostStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
