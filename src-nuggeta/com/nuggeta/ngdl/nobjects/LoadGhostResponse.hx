package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.LoadGhostStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.LoadGhostStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;

class LoadGhostResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoadGhostStatusSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10739;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _LoadGhostStatus:LoadGhostStatus;

	var _LoadGhostStatusSet:Bool;

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

	public function getLoadGhostStatus():LoadGhostStatus
	{
		return _LoadGhostStatus;
	}

	public function setLoadGhostStatus( value:LoadGhostStatus):Void
	{
		_LoadGhostStatus = value;
		_LoadGhostStatusSet = true;
	}

	public function isLoadGhostStatusSet():Bool
	{
		return _LoadGhostStatusSet;
	}

	public function unSetLoadGhostStatus():Void
	{
		_LoadGhostStatusSet = false;
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
		var _f8202:LoadGhostResponse = new LoadGhostResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f8202.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f8202.setRequestId(_RequestId);
		}
		if (_LoadGhostStatusSet == true && Utils.isNull(_LoadGhostStatus) == false) 
		{
			_f8202.setLoadGhostStatus(_LoadGhostStatus);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_f8202.setGame((cast (_Game.clone())));
		}
		return _f8202;
	}

	public function toString():String
	{
		var _g8203:String = "";
		_g8203 += "[" + "LoadGhostResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g8203 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g8203 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoadGhostStatusSet == true && Utils.isNull(_LoadGhostStatus) == false) 
		{
			_g8203 += "_LoadGhostStatus=" + _LoadGhostStatus + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_g8203 += "_Game=" + _Game + "| ";
		}
		_g8203 += "]";
		return _g8203;
	}
}
