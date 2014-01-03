package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetFriendsByPlayerIdRequest;

class GetFriendsByPlayerIdRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_PlayerIdSet = false;
	}

	public static var serializerID:Int = -10196;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _PlayerId:String;

	var _PlayerIdSet:Bool;

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

	public function getPlayerId():String
	{
		return _PlayerId;
	}

	public function setPlayerId( value:String):Void
	{
		_PlayerId = value;
		_PlayerIdSet = true;
	}

	public function isPlayerIdSet():Bool
	{
		return _PlayerIdSet;
	}

	public function unSetPlayerId():Void
	{
		_PlayerIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n16271:GetFriendsByPlayerIdRequest = new GetFriendsByPlayerIdRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n16271.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n16271.setRequestId(_RequestId);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_n16271.setPlayerId(_PlayerId);
		}
		return _n16271;
	}

	public function toString():String
	{
		var _a16272:String = "";
		_a16272 += "[" + "GetFriendsByPlayerIdRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_a16272 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_a16272 += "_RequestId=" + _RequestId + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_a16272 += "_PlayerId=" + _PlayerId + "| ";
		}
		_a16272 += "]";
		return _a16272;
	}
}
