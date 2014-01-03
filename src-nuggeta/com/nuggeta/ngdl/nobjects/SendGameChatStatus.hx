package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SendGameChatStatus;

class SendGameChatStatus implements Serializable
{

	private static var _values:NList<SendGameChatStatus> = new NList<SendGameChatStatus>();

	public static var SENT:SendGameChatStatus = new SendGameChatStatus("SENT", 0);

	public static var FAILURE:SendGameChatStatus = new SendGameChatStatus("FAILURE", 1);

	public static var INVALID_CALL:SendGameChatStatus = new SendGameChatStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:SendGameChatStatus = new SendGameChatStatus("INTERNAL_ERROR", 3);

	public static function values():NList<SendGameChatStatus>
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

	public static function fromValue( value:Int):SendGameChatStatus
	{
		for (_o7683 in 0 ... _values.size()) 
		{
			var _i7684:SendGameChatStatus = _values.get(_o7683);
			if (_i7684.getValue() == value) 
			{
				return _i7684;
			}
		}
		return null;
	}

	public static function valueOf( name:String):SendGameChatStatus
	{
		for (_v16623 in 0 ... _values.size()) 
		{
			var _s16624:SendGameChatStatus = _values.get(_v16623);
			if (name == _s16624.name()) 
			{
				return _s16624;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10758;
	}

	public function toString():String
	{
		return "SendGameChatStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
