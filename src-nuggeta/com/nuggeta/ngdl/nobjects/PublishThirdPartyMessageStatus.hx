package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageStatus;

class PublishThirdPartyMessageStatus implements Serializable
{

	private static var _values:NList<PublishThirdPartyMessageStatus> = new NList<PublishThirdPartyMessageStatus>();

	public static var SUCCESS:PublishThirdPartyMessageStatus = new PublishThirdPartyMessageStatus("SUCCESS", 1);

	public static var INVALID_CALL:PublishThirdPartyMessageStatus = new PublishThirdPartyMessageStatus("INVALID_CALL", 2);

	public static var INTERNAL_ERROR:PublishThirdPartyMessageStatus = new PublishThirdPartyMessageStatus("INTERNAL_ERROR", 3);

	public static var CANCELED:PublishThirdPartyMessageStatus = new PublishThirdPartyMessageStatus("CANCELED", 4);

	public static function values():NList<PublishThirdPartyMessageStatus>
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

	public static function fromValue( value:Int):PublishThirdPartyMessageStatus
	{
		for (_s8113 in 0 ... _values.size()) 
		{
			var _e8114:PublishThirdPartyMessageStatus = _values.get(_s8113);
			if (_e8114.getValue() == value) 
			{
				return _e8114;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PublishThirdPartyMessageStatus
	{
		for (_h17177 in 0 ... _values.size()) 
		{
			var _r17178:PublishThirdPartyMessageStatus = _values.get(_h17177);
			if (name == _r17178.name()) 
			{
				return _r17178;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10918;
	}

	public function toString():String
	{
		return "PublishThirdPartyMessageStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
