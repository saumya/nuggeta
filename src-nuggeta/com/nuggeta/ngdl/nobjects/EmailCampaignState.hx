package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.EmailCampaignState;

class EmailCampaignState implements Serializable
{

	private static var _values:NList<EmailCampaignState> = new NList<EmailCampaignState>();

	public static var PENDING:EmailCampaignState = new EmailCampaignState("PENDING", 0);

	public static var RUNNING:EmailCampaignState = new EmailCampaignState("RUNNING", 1);

	public static var PAUSED:EmailCampaignState = new EmailCampaignState("PAUSED", 2);

	public static var FINISHED:EmailCampaignState = new EmailCampaignState("FINISHED", 3);

	public static function values():NList<EmailCampaignState>
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

	public static function fromValue( value:Int):EmailCampaignState
	{
		for (_y4273 in 0 ... _values.size()) 
		{
			var _l4274:EmailCampaignState = _values.get(_y4273);
			if (_l4274.getValue() == value) 
			{
				return _l4274;
			}
		}
		return null;
	}

	public static function valueOf( name:String):EmailCampaignState
	{
		for (_b12141 in 0 ... _values.size()) 
		{
			var _j12142:EmailCampaignState = _values.get(_b12141);
			if (name == _j12142.name()) 
			{
				return _j12142;
			}
		}
		return null;
	}


	public function getSerializerID():Int
	{
		return -35;
	}

	public function toString():String
	{
		return "EmailCampaignState." + _name;
	}

	public function clone():Dynamic
	{
		return this;
	}
}
