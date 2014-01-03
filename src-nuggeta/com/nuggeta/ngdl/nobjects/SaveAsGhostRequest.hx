package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SaveAsGhostRequest;

class SaveAsGhostRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10697;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Game:NGame;

	var _GameSet:Bool;

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

	public function getGame():NGame
	{
		return _Game;
	}

	public function setGame( value:NGame):Void
	{
		_Game = value;
		_GameSet = true;
	}

	public function isGameSet():Bool
	{
		return _GameSet;
	}

	public function unSetGame():Void
	{
		_GameSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _d11601:SaveAsGhostRequest = new SaveAsGhostRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d11601.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d11601.setRequestId(_RequestId);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_d11601.setGame((cast (_Game.clone())));
		}
		return _d11601;
	}

	public function toString():String
	{
		var _p11602:String = "";
		_p11602 += "[" + "SaveAsGhostRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p11602 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p11602 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_p11602 += "_Game=" + _Game + "| ";
		}
		_p11602 += "]";
		return _p11602;
	}
}
