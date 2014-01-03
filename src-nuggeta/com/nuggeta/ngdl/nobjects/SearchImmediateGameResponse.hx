package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;

class SearchImmediateGameResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_SearchImmediateGameStatusSet = false;
		_GameSet = false;
	}

	public static var serializerID:Int = -10479;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _SearchImmediateGameStatus:SearchImmediateGameStatus;

	var _SearchImmediateGameStatusSet:Bool;

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

	public function getSearchImmediateGameStatus():SearchImmediateGameStatus
	{
		return _SearchImmediateGameStatus;
	}

	public function setSearchImmediateGameStatus( value:SearchImmediateGameStatus):Void
	{
		_SearchImmediateGameStatus = value;
		_SearchImmediateGameStatusSet = true;
	}

	public function isSearchImmediateGameStatusSet():Bool
	{
		return _SearchImmediateGameStatusSet;
	}

	public function unSetSearchImmediateGameStatus():Void
	{
		_SearchImmediateGameStatusSet = false;
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
		var _m16557:SearchImmediateGameResponse = new SearchImmediateGameResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m16557.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m16557.setRequestId(_RequestId);
		}
		if (_SearchImmediateGameStatusSet == true && Utils.isNull(_SearchImmediateGameStatus) == false) 
		{
			_m16557.setSearchImmediateGameStatus(_SearchImmediateGameStatus);
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_m16557.setGame((cast (_Game.clone())));
		}
		return _m16557;
	}

	public function toString():String
	{
		var _r16558:String = "";
		_r16558 += "[" + "SearchImmediateGameResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16558 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16558 += "_RequestId=" + _RequestId + "| ";
		}
		if (_SearchImmediateGameStatusSet == true && Utils.isNull(_SearchImmediateGameStatus) == false) 
		{
			_r16558 += "_SearchImmediateGameStatus=" + _SearchImmediateGameStatus + "| ";
		}
		if (_GameSet == true && Utils.isNull(_Game) == false) 
		{
			_r16558 += "_Game=" + _Game + "| ";
		}
		_r16558 += "]";
		return _r16558;
	}
}
