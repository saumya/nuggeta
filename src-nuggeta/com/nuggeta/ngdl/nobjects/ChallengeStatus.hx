package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.ChallengeStatus;

class ChallengeStatus implements Serializable
{

	private static var _values:NList<ChallengeStatus> = new NList<ChallengeStatus>();

	public static var PENDING:ChallengeStatus = new ChallengeStatus("PENDING", 0);

	public static var ACCEPTED:ChallengeStatus = new ChallengeStatus("ACCEPTED", 1);

	public static var REFUSED:ChallengeStatus = new ChallengeStatus("REFUSED", 2);

	public static function values():NList<ChallengeStatus>
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

	public static function fromValue( value:Int):ChallengeStatus
	{
		for (_m7216 in 0 ... _values.size()) 
		{
			var _r7217:ChallengeStatus = _values.get(_m7216);
			if (_r7217.getValue() == value) 
			{
				return _r7217;
			}
		}
		return null;
	}

	public static function valueOf( name:String):ChallengeStatus
	{
		for (_y15947 in 0 ... _values.size()) 
		{
			var _p15948:ChallengeStatus = _values.get(_y15947);
			if (name == _p15948.name()) 
			{
				return _p15948;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -10;
	}

	public function toString():String
	{
		return "ChallengeStatus." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
