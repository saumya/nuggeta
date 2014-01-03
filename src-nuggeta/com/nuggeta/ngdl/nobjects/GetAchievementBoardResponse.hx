package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardStatus;
import com.nuggeta.ngdl.nobjects.NAchievementBoard;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardStatus;
import com.nuggeta.ngdl.nobjects.NAchievementBoard;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;

class GetAchievementBoardResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetAchievementBoardStatusSet = false;
		_AchievementBoardSet = false;
	}

	public static var serializerID:Int = -10439;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetAchievementBoardStatus:GetAchievementBoardStatus;

	var _GetAchievementBoardStatusSet:Bool;

	var _AchievementBoard:NAchievementBoard;

	var _AchievementBoardSet:Bool;

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

	public function getGetAchievementBoardStatus():GetAchievementBoardStatus
	{
		return _GetAchievementBoardStatus;
	}

	public function setGetAchievementBoardStatus( value:GetAchievementBoardStatus):Void
	{
		_GetAchievementBoardStatus = value;
		_GetAchievementBoardStatusSet = true;
	}

	public function isGetAchievementBoardStatusSet():Bool
	{
		return _GetAchievementBoardStatusSet;
	}

	public function unSetGetAchievementBoardStatus():Void
	{
		_GetAchievementBoardStatusSet = false;
	}

	public function getAchievementBoard():NAchievementBoard
	{
		return _AchievementBoard;
	}

	public function setAchievementBoard( value:NAchievementBoard):Void
	{
		_AchievementBoard = value;
		_AchievementBoardSet = true;
	}

	public function isAchievementBoardSet():Bool
	{
		return _AchievementBoardSet;
	}

	public function unSetAchievementBoard():Void
	{
		_AchievementBoardSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _f16919:GetAchievementBoardResponse = new GetAchievementBoardResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f16919.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f16919.setRequestId(_RequestId);
		}
		if (_GetAchievementBoardStatusSet == true && Utils.isNull(_GetAchievementBoardStatus) == false) 
		{
			_f16919.setGetAchievementBoardStatus(_GetAchievementBoardStatus);
		}
		if (_AchievementBoardSet == true && Utils.isNull(_AchievementBoard) == false) 
		{
			_f16919.setAchievementBoard((cast (_AchievementBoard.clone())));
		}
		return _f16919;
	}

	public function toString():String
	{
		var _r16920:String = "";
		_r16920 += "[" + "GetAchievementBoardResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r16920 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r16920 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetAchievementBoardStatusSet == true && Utils.isNull(_GetAchievementBoardStatus) == false) 
		{
			_r16920 += "_GetAchievementBoardStatus=" + _GetAchievementBoardStatus + "| ";
		}
		if (_AchievementBoardSet == true && Utils.isNull(_AchievementBoard) == false) 
		{
			_r16920 += "_AchievementBoard=" + _AchievementBoard + "| ";
		}
		_r16920 += "]";
		return _r16920;
	}
}
