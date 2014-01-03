package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationStatus;

class AcceptPlayerInvitationStatus implements Serializable
{

	private static var _values:NList<AcceptPlayerInvitationStatus> = new NList<AcceptPlayerInvitationStatus>();

	public static var AUTHENTICATION_REQUIRED:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("AUTHENTICATION_REQUIRED", 0);

	public static var UNKNOWN_INVITATION:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("UNKNOWN_INVITATION", 1);

	public static var SUCCESS:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("SUCCESS", 2);

	public static var FAILURE:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("FAILURE", 3);

	public static var INVALID_CALL:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("INVALID_CALL", 4);

	public static var INTERNAL_ERROR:AcceptPlayerInvitationStatus = new AcceptPlayerInvitationStatus("INTERNAL_ERROR", 5);

	public static function values():NList<AcceptPlayerInvitationStatus>
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

	public static function fromValue( value:Int):AcceptPlayerInvitationStatus
	{
		for (_i7954 in 0 ... _values.size()) 
		{
			var _l7955:AcceptPlayerInvitationStatus = _values.get(_i7954);
			if (_l7955.getValue() == value) 
			{
				return _l7955;
			}
		}
		return null;
	}

	public static function valueOf( name:String):AcceptPlayerInvitationStatus
	{
		for (_p16925 in 0 ... _values.size()) 
		{
			var _n16926:AcceptPlayerInvitationStatus = _values.get(_p16925);
			if (name == _n16926.name()) 
			{
				return _n16926;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10258;
	}

	public function toString():String
	{
		return "AcceptPlayerInvitationStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
