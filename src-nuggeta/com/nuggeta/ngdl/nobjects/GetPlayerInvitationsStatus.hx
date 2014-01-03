package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsStatus;

class GetPlayerInvitationsStatus implements Serializable
{

	private static var _values:NList<GetPlayerInvitationsStatus> = new NList<GetPlayerInvitationsStatus>();

	public static var AUTHENTICATION_REQUIRED:GetPlayerInvitationsStatus = new GetPlayerInvitationsStatus("AUTHENTICATION_REQUIRED", 0);

	public static var SUCCESS:GetPlayerInvitationsStatus = new GetPlayerInvitationsStatus("SUCCESS", 1);

	public static var INTERNAL_ERROR:GetPlayerInvitationsStatus = new GetPlayerInvitationsStatus("INTERNAL_ERROR", 3);

	public static function values():NList<GetPlayerInvitationsStatus>
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

	public static function fromValue( value:Int):GetPlayerInvitationsStatus
	{
		for (_b4277 in 0 ... _values.size()) 
		{
			var _r4278:GetPlayerInvitationsStatus = _values.get(_b4277);
			if (_r4278.getValue() == value) 
			{
				return _r4278;
			}
		}
		return null;
	}

	public static function valueOf( name:String):GetPlayerInvitationsStatus
	{
		for (_g12145 in 0 ... _values.size()) 
		{
			var _e12146:GetPlayerInvitationsStatus = _values.get(_g12145);
			if (name == _e12146.name()) 
			{
				return _e12146;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10238;
	}

	public function toString():String
	{
		return "GetPlayerInvitationsStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
