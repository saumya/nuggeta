package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.LoadGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.LoadGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;

class LoadGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_LoadGameStatusSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10979;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _LoadGameStatus:LoadGameStatus;

	var _LoadGameStatusSet:Bool;

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

	public function getLoadGameStatus():LoadGameStatus
	{
		return _LoadGameStatus;
	}

	public function setLoadGameStatus( value:LoadGameStatus):Void
	{
		_LoadGameStatus = value;
		_LoadGameStatusSet = true;
	}

	public function isLoadGameStatusSet():Bool
	{
		return _LoadGameStatusSet;
	}

	public function unSetLoadGameStatus():Void
	{
		_LoadGameStatusSet = false;
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
		var _g17167:LoadGameResponse = new LoadGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g17167.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g17167.setRequestId(_RequestId);
		}
		if (_LoadGameStatusSet == true && Utils.isNull(_LoadGameStatus) == false) 
		{
			_g17167.setLoadGameStatus(_LoadGameStatus);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_g17167.setGame((cast (_Game.clone())));
		}
		return _g17167;
	}

	public function toString():String
	{
		var _j17168:String = "";
		_j17168 += "[" + "LoadGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j17168 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j17168 += "_RequestId=" + _RequestId + "| ";
		}
		if (_LoadGameStatusSet == true && Utils.isNull(_LoadGameStatus) == false) 
		{
			_j17168 += "_LoadGameStatus=" + _LoadGameStatus + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_j17168 += "_Game=" + _Game + "| ";
		}
		_j17168 += "]";
		return _j17168;
	}
}
