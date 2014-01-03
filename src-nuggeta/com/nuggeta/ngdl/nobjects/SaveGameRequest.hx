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
import com.nuggeta.ngdl.nobjects.SaveGameRequest;

class SaveGameRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10957;

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
		var _c16365:SaveGameRequest = new SaveGameRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_c16365.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_c16365.setRequestId(_RequestId);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_c16365.setGame((cast (_Game.clone())));
		}
		return _c16365;
	}

	public function toString():String
	{
		var _q16366:String = "";
		_q16366 += "[" + "SaveGameRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q16366 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q16366 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_q16366 += "_Game=" + _Game + "| ";
		}
		_q16366 += "]";
		return _q16366;
	}
}
