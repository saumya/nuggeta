package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetGamesStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.GetGamesStatus;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;

class GetGamesResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetGamesStatusSet = false;
		_Games = new NList<NGame>();
		_GamesSet = false;
	}

	public static var serializerID:Int = -10679;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetGamesStatus:GetGamesStatus;

	var _GetGamesStatusSet:Bool;

	var _Games:NList<NGame>;

	var _GamesSet:Bool;

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

	public function getGetGamesStatus():GetGamesStatus
	{
		return _GetGamesStatus;
	}

	public function setGetGamesStatus( value:GetGamesStatus):Void
	{
		_GetGamesStatus = value;
		_GetGamesStatusSet = true;
	}

	public function isGetGamesStatusSet():Bool
	{
		return _GetGamesStatusSet;
	}

	public function unSetGetGamesStatus():Void
	{
		_GetGamesStatusSet = false;
	}

	public function getGames():NList<NGame>
	{
		return _Games;
	}

	public function setGames( value:NList<NGame>):Void
	{
		_Games = value;
		_GamesSet = true;
	}

	public function isGamesSet():Bool
	{
		return _GamesSet;
	}

	public function unSetGames():Void
	{
		_GamesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _g16395:GetGamesResponse = new GetGamesResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16395.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16395.setRequestId(_RequestId);
		}
		if (_GetGamesStatusSet == true && Utils.isNull(_GetGamesStatus) == false) 
		{
			_g16395.setGetGamesStatus(_GetGamesStatus);
		}
		if (_GamesSet == true && Utils.isNull(_Games) == false) 
		{
			var _l16396:NList<NGame> = new NList<NGame>();
			for (_r16397 in _Games.tab) {
				if (_r16397 != null) 
				{
					_l16396.add((cast ((cast _r16397)).clone()));
				} else 
				{
					_l16396.add((cast _r16397));
				}
			}
			_g16395.setGames(_l16396);
		}
		return _g16395;
	}

	public function toString():String
	{
		var _u16398:String = "";
		_u16398 += "[" + "GetGamesResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_u16398 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_u16398 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetGamesStatusSet == true && Utils.isNull(_GetGamesStatus) == false) 
		{
			_u16398 += "_GetGamesStatus=" + _GetGamesStatus + "| ";
		}
		if (_GamesSet == true && Utils.isNull(_Games) == false) 
		{
			_u16398 += "_Games=" + _Games + "| ";
		}
		_u16398 += "]";
		return _u16398;
	}
}
