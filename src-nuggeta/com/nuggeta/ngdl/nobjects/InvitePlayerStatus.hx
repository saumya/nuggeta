package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.InvitePlayerStatus;

class InvitePlayerStatus implements Serializable
{

	private static var _values:NList<InvitePlayerStatus> = new NList<InvitePlayerStatus>();

	public static var AUTHENTICATION_REQUIRED:InvitePlayerStatus = new InvitePlayerStatus("AUTHENTICATION_REQUIRED", 0);

	public static var ALREADY_FRIENDS:InvitePlayerStatus = new InvitePlayerStatus("ALREADY_FRIENDS", 1);

	public static var PLAYER_NOT_EXISTS:InvitePlayerStatus = new InvitePlayerStatus("PLAYER_NOT_EXISTS", 2);

	public static var HAVE_PENDING_INVITATION:InvitePlayerStatus = new InvitePlayerStatus("HAVE_PENDING_INVITATION", 3);

	public static var PENDING:InvitePlayerStatus = new InvitePlayerStatus("PENDING", 5);

	public static var CANT_INVITE_YOURSELF:InvitePlayerStatus = new InvitePlayerStatus("CANT_INVITE_YOURSELF", 6);

	public static var INVALID_CALL:InvitePlayerStatus = new InvitePlayerStatus("INVALID_CALL", 7);

	public static var INTERNAL_ERROR:InvitePlayerStatus = new InvitePlayerStatus("INTERNAL_ERROR", 8);

	public static function values():NList<InvitePlayerStatus>
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

	public static function fromValue( value:Int):InvitePlayerStatus
	{
		for (_t4246 in 0 ... _values.size()) 
		{
			var _p4247:InvitePlayerStatus = _values.get(_t4246);
			if (_p4247.getValue() == value) 
			{
				return _p4247;
			}
		}
		return null;
	}

	public static function valueOf( name:String):InvitePlayerStatus
	{
		for (_a12114 in 0 ... _values.size()) 
		{
			var _n12115:InvitePlayerStatus = _values.get(_a12114);
			if (name == _n12115.name()) 
			{
				return _n12115;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10018;
	}

	public function toString():String
	{
		return "InvitePlayerStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
