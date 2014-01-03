package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.CreateGameWithCharacteristicsRequest;

class CreateGameWithCharacteristicsRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameCharacteristicsSet = false;
	}

	public static var serializerID:Int = -10656;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameCharacteristics:NGameCharacteristics;

	var _GameCharacteristicsSet:Bool;

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

	public function getGameCharacteristics():NGameCharacteristics
	{
		return _GameCharacteristics;
	}

	public function setGameCharacteristics( value:NGameCharacteristics):Void
	{
		_GameCharacteristics = value;
		_GameCharacteristicsSet = true;
	}

	public function isGameCharacteristicsSet():Bool
	{
		return _GameCharacteristicsSet;
	}

	public function unSetGameCharacteristics():Void
	{
		_GameCharacteristicsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _y16647:CreateGameWithCharacteristicsRequest = new CreateGameWithCharacteristicsRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y16647.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y16647.setRequestId(_RequestId);
		}
		if (_GameCharacteristicsSet == true && Utils.isNull(_GameCharacteristics) == false) 
		{
			_y16647.setGameCharacteristics((cast (_GameCharacteristics.clone())));
		}
		return _y16647;
	}

	public function toString():String
	{
		var _y16648:String = "";
		_y16648 += "[" + "CreateGameWithCharacteristicsRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_y16648 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_y16648 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameCharacteristicsSet == true && Utils.isNull(_GameCharacteristics) == false) 
		{
			_y16648 += "_GameCharacteristics=" + _GameCharacteristics + "| ";
		}
		_y16648 += "]";
		return _y16648;
	}
}
