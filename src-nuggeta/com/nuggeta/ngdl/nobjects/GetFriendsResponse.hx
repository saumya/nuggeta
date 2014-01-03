package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetFriendsStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.GetFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;

class GetFriendsResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetFriendsStatusSet = false;
		_Friends = new NList<NPlayer>();
		_FriendsSet = false;
	}

	public static var serializerID:Int = -10199;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetFriendsStatus:GetFriendsStatus;

	var _GetFriendsStatusSet:Bool;

	var _Friends:NList<NPlayer>;

	var _FriendsSet:Bool;

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

	public function getGetFriendsStatus():GetFriendsStatus
	{
		return _GetFriendsStatus;
	}

	public function setGetFriendsStatus( value:GetFriendsStatus):Void
	{
		_GetFriendsStatus = value;
		_GetFriendsStatusSet = true;
	}

	public function isGetFriendsStatusSet():Bool
	{
		return _GetFriendsStatusSet;
	}

	public function unSetGetFriendsStatus():Void
	{
		_GetFriendsStatusSet = false;
	}

	public function getFriends():NList<NPlayer>
	{
		return _Friends;
	}

	public function setFriends( value:NList<NPlayer>):Void
	{
		_Friends = value;
		_FriendsSet = true;
	}

	public function isFriendsSet():Bool
	{
		return _FriendsSet;
	}

	public function unSetFriends():Void
	{
		_FriendsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j17139:GetFriendsResponse = new GetFriendsResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j17139.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j17139.setRequestId(_RequestId);
		}
		if (_GetFriendsStatusSet == true && Utils.isNull(_GetFriendsStatus) == false) 
		{
			_j17139.setGetFriendsStatus(_GetFriendsStatus);
		}
		if (_FriendsSet == true && Utils.isNull(_Friends) == false) 
		{
			var _s17140:NList<NPlayer> = new NList<NPlayer>();
			for (_n17141 in _Friends.tab) {
				if (_n17141 != null) 
				{
					_s17140.add((cast ((cast _n17141)).clone()));
				} else 
				{
					_s17140.add((cast _n17141));
				}
			}
			_j17139.setFriends(_s17140);
		}
		return _j17139;
	}

	public function toString():String
	{
		var _k17142:String = "";
		_k17142 += "[" + "GetFriendsResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k17142 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k17142 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetFriendsStatusSet == true && Utils.isNull(_GetFriendsStatus) == false) 
		{
			_k17142 += "_GetFriendsStatus=" + _GetFriendsStatus + "| ";
		}
		if (_FriendsSet == true && Utils.isNull(_Friends) == false) 
		{
			_k17142 += "_Friends=" + _Friends + "| ";
		}
		_k17142 += "]";
		return _k17142;
	}
}
