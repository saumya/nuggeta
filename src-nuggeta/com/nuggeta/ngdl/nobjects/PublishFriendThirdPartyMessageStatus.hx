package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageStatus;

class PublishFriendThirdPartyMessageStatus implements Serializable
{

	private static var _values:NList<PublishFriendThirdPartyMessageStatus> = new NList<PublishFriendThirdPartyMessageStatus>();

	public static var SUCCESS:PublishFriendThirdPartyMessageStatus = new PublishFriendThirdPartyMessageStatus("SUCCESS", 0);

	public static var INVALID_CALL:PublishFriendThirdPartyMessageStatus = new PublishFriendThirdPartyMessageStatus("INVALID_CALL", 1);

	public static var INTERNAL_ERROR:PublishFriendThirdPartyMessageStatus = new PublishFriendThirdPartyMessageStatus("INTERNAL_ERROR", 2);

	public static var CANCELED:PublishFriendThirdPartyMessageStatus = new PublishFriendThirdPartyMessageStatus("CANCELED", 3);

	public static function values():NList<PublishFriendThirdPartyMessageStatus>
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

	public static function fromValue( value:Int):PublishFriendThirdPartyMessageStatus
	{
		for (_j1287 in 0 ... _values.size()) 
		{
			var _w1288:PublishFriendThirdPartyMessageStatus = _values.get(_j1287);
			if (_w1288.getValue() == value) 
			{
				return _w1288;
			}
		}
		return null;
	}

	public static function valueOf( name:String):PublishFriendThirdPartyMessageStatus
	{
		for (_e8264 in 0 ... _values.size()) 
		{
			var _b8265:PublishFriendThirdPartyMessageStatus = _values.get(_e8264);
			if (name == _b8265.name()) 
			{
				return _b8265;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -11118;
	}

	public function toString():String
	{
		return "PublishFriendThirdPartyMessageStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
