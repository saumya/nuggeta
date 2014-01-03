package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.EntityType;

class EntityType implements Serializable
{

	private static var _values:NList<EntityType> = new NList<EntityType>();

	public static var DEVELOPER:EntityType = new EntityType("DEVELOPER", 0);

	public static var DEVELOPER_GAME:EntityType = new EntityType("DEVELOPER_GAME", 1);

	public static var GAME_SERVER:EntityType = new EntityType("GAME_SERVER", 2);

	public static var SERVER:EntityType = new EntityType("SERVER", 3);

	public static var NEBULA:EntityType = new EntityType("NEBULA", 4);

	public static var NUGGETA:EntityType = new EntityType("NUGGETA", 5);

	public static function values():NList<EntityType>
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

	public static function fromValue( value:Int):EntityType
	{
		for (_e4269 in 0 ... _values.size()) 
		{
			var _m4270:EntityType = _values.get(_e4269);
			if (_m4270.getValue() == value) 
			{
				return _m4270;
			}
		}
		return null;
	}

	public static function valueOf( name:String):EntityType
	{
		for (_g12137 in 0 ... _values.size()) 
		{
			var _u12138:EntityType = _values.get(_g12137);
			if (name == _u12138.name()) 
			{
				return _u12138;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -13;
	}

	public function toString():String
	{
		return "EntityType." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
