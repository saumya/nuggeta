package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationStatus;

class IgnorePlayerInvitationStatus implements Serializable
{

	private static var _values:NList<IgnorePlayerInvitationStatus> = new NList<IgnorePlayerInvitationStatus>();

	public static var AUTHENTICATION_REQUIRED:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("AUTHENTICATION_REQUIRED", 0);

	public static var UNKNOWN_INVITATION:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("UNKNOWN_INVITATION", 1);

	public static var SUCCESS:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("SUCCESS", 2);

	public static var FAILURE:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("FAILURE", 3);

	public static var INVALID_CALL:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("INVALID_CALL", 4);

	public static var INTERNAL_ERROR:IgnorePlayerInvitationStatus = new IgnorePlayerInvitationStatus("INTERNAL_ERROR", 5);

	public static function values():NList<IgnorePlayerInvitationStatus>
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

	public static function fromValue( value:Int):IgnorePlayerInvitationStatus
	{
		for (_x7711 in 0 ... _values.size()) 
		{
			var _i7712:IgnorePlayerInvitationStatus = _values.get(_x7711);
			if (_i7712.getValue() == value) 
			{
				return _i7712;
			}
		}
		return null;
	}

	public static function valueOf( name:String):IgnorePlayerInvitationStatus
	{
		for (_r16651 in 0 ... _values.size()) 
		{
			var _r16652:IgnorePlayerInvitationStatus = _values.get(_r16651);
			if (name == _r16652.name()) 
			{
				return _r16652;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10278;
	}

	public function toString():String
	{
		return "IgnorePlayerInvitationStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
