package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ForumTopicStatus;

class ForumTopicStatus implements Serializable
{

	private static var _values:NList<ForumTopicStatus> = new NList<ForumTopicStatus>();

	public static var OPEN:ForumTopicStatus = new ForumTopicStatus("OPEN", 0);

	public static var RESOLVED:ForumTopicStatus = new ForumTopicStatus("RESOLVED", 1);

	public static function values():NList<ForumTopicStatus>
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

	public static function fromValue( value:Int):ForumTopicStatus
	{
		for (_v7619 in 0 ... _values.size()) 
		{
			var _j7620:ForumTopicStatus = _values.get(_v7619);
			if (_j7620.getValue() == value) 
			{
				return _j7620;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ForumTopicStatus
	{
		for (_w16526 in 0 ... _values.size()) 
		{
			var _r16527:ForumTopicStatus = _values.get(_w16526);
			if (name == _r16527.name()) 
			{
				return _r16527;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -32;
	}

	public function toString():String
	{
		return "ForumTopicStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
