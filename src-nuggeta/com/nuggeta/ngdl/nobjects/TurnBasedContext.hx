package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.TurnBasedContext;

class TurnBasedContext implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_CurrentPlayerSet = false;
	}

	public static var serializerID:Int = -3158;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _CurrentPlayer:NPlayer;

	var _CurrentPlayerSet:Bool;

	public function getMessageId():String
	{
		return _MessageId;
	}

	public function setMessageId( value:String):Void
	{
		_MessageId = value;
		_MessageIdSet = true;
	}

	public function isMessageIdSet():Bool
	{
		return _MessageIdSet;
	}

	public function unSetMessageId():Void
	{
		_MessageIdSet = false;
	}

	public function getRequestId():String
	{
		return _RequestId;
	}

	public function setRequestId( value:String):Void
	{
		_RequestId = value;
		_RequestIdSet = true;
	}

	public function isRequestIdSet():Bool
	{
		return _RequestIdSet;
	}

	public function unSetRequestId():Void
	{
		_RequestIdSet = false;
	}

	public function getCurrentPlayer():NPlayer
	{
		return _CurrentPlayer;
	}

	public function setCurrentPlayer( value:NPlayer):Void
	{
		_CurrentPlayer = value;
		_CurrentPlayerSet = true;
	}

	public function isCurrentPlayerSet():Bool
	{
		return _CurrentPlayerSet;
	}

	public function unSetCurrentPlayer():Void
	{
		_CurrentPlayerSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _r16661:TurnBasedContext = new TurnBasedContext();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16661.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16661.setRequestId(_RequestId);
		}
		if (_CurrentPlayerSet == true && Utils.isNull(_CurrentPlayer) == false) 
		{
			_r16661.setCurrentPlayer((cast (_CurrentPlayer.clone())));
		}
		return _r16661;
	}

	public function toString():String
	{
		var _z16662:String = "";
		_z16662 += "[" + "TurnBasedContext" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_z16662 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_z16662 += "_RequestId=" + _RequestId + "| ";
		}
		if (_CurrentPlayerSet == true && Utils.isNull(_CurrentPlayer) == false) 
		{
			_z16662 += "_CurrentPlayer=" + _CurrentPlayer + "| ";
		}
		_z16662 += "]";
		return _z16662;
	}
}
