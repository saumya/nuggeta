package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;

class ChallengeAccepted implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ChallengeIdSet = false;
		_gameIdSet = false;
	}

	public static var serializerID:Int = -3115;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ChallengeId:String;

	var _ChallengeIdSet:Bool;

	var _gameId:String;

	var _gameIdSet:Bool;

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

	public function getChallengeId():String
	{
		return _ChallengeId;
	}

	public function setChallengeId( value:String):Void
	{
		_ChallengeId = value;
		_ChallengeIdSet = true;
	}

	public function isChallengeIdSet():Bool
	{
		return _ChallengeIdSet;
	}

	public function unSetChallengeId():Void
	{
		_ChallengeIdSet = false;
	}

	public function getGameId():String
	{
		return _gameId;
	}

	public function setGameId( value:String):Void
	{
		_gameId = value;
		_gameIdSet = true;
	}

	public function isgameIdSet():Bool
	{
		return _gameIdSet;
	}

	public function unSetgameId():Void
	{
		_gameIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _e16627:ChallengeAccepted = new ChallengeAccepted();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_e16627.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_e16627.setRequestId(_RequestId);
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_e16627.setChallengeId(_ChallengeId);
		}
		if (_gameIdSet == true && Utils.isNull(_gameId) == false) 
		{
			_e16627.setGameId(_gameId);
		}
		return _e16627;
	}

	public function toString():String
	{
		var _j16628:String = "";
		_j16628 += "[" + "ChallengeAccepted" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16628 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16628 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ChallengeIdSet == true && Utils.isNull(_ChallengeId) == false) 
		{
			_j16628 += "_ChallengeId=" + _ChallengeId + "| ";
		}
		if (_gameIdSet == true && Utils.isNull(_gameId) == false) 
		{
			_j16628 += "_gameId=" + _gameId + "| ";
		}
		_j16628 += "]";
		return _j16628;
	}
}
