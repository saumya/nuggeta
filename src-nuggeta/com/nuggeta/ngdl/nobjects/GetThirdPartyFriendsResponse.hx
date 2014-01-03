package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsStatus;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;

class GetThirdPartyFriendsResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetThirdPartyFriendsStatusSet = false;
		_ThirdPartyFriends = new NList<NPlayer>();
		_ThirdPartyFriendsSet = false;
	}

	public static var serializerID:Int = -10219;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetThirdPartyFriendsStatus:GetThirdPartyFriendsStatus;

	var _GetThirdPartyFriendsStatusSet:Bool;

	var _ThirdPartyFriends:NList<NPlayer>;

	var _ThirdPartyFriendsSet:Bool;

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

	public function getGetThirdPartyFriendsStatus():GetThirdPartyFriendsStatus
	{
		return _GetThirdPartyFriendsStatus;
	}

	public function setGetThirdPartyFriendsStatus( value:GetThirdPartyFriendsStatus):Void
	{
		_GetThirdPartyFriendsStatus = value;
		_GetThirdPartyFriendsStatusSet = true;
	}

	public function isGetThirdPartyFriendsStatusSet():Bool
	{
		return _GetThirdPartyFriendsStatusSet;
	}

	public function unSetGetThirdPartyFriendsStatus():Void
	{
		_GetThirdPartyFriendsStatusSet = false;
	}

	public function getThirdPartyFriends():NList<NPlayer>
	{
		return _ThirdPartyFriends;
	}

	public function setThirdPartyFriends( value:NList<NPlayer>):Void
	{
		_ThirdPartyFriends = value;
		_ThirdPartyFriendsSet = true;
	}

	public function isThirdPartyFriendsSet():Bool
	{
		return _ThirdPartyFriendsSet;
	}

	public function unSetThirdPartyFriends():Void
	{
		_ThirdPartyFriendsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b16637:GetThirdPartyFriendsResponse = new GetThirdPartyFriendsResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b16637.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b16637.setRequestId(_RequestId);
		}
		if (_GetThirdPartyFriendsStatusSet == true && Utils.isNull(_GetThirdPartyFriendsStatus) == false) 
		{
			_b16637.setGetThirdPartyFriendsStatus(_GetThirdPartyFriendsStatus);
		}
		if (_ThirdPartyFriendsSet == true && Utils.isNull(_ThirdPartyFriends) == false) 
		{
			var _d16638:NList<NPlayer> = new NList<NPlayer>();
			for (_m16639 in _ThirdPartyFriends.tab) {
				if (_m16639 != null) 
				{
					_d16638.add((cast ((cast _m16639)).clone()));
				} else 
				{
					_d16638.add((cast _m16639));
				}
			}
			_b16637.setThirdPartyFriends(_d16638);
		}
		return _b16637;
	}

	public function toString():String
	{
		var _u16640:String = "";
		_u16640 += "[" + "GetThirdPartyFriendsResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_u16640 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_u16640 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetThirdPartyFriendsStatusSet == true && Utils.isNull(_GetThirdPartyFriendsStatus) == false) 
		{
			_u16640 += "_GetThirdPartyFriendsStatus=" + _GetThirdPartyFriendsStatus + "| ";
		}
		if (_ThirdPartyFriendsSet == true && Utils.isNull(_ThirdPartyFriends) == false) 
		{
			_u16640 += "_ThirdPartyFriends=" + _ThirdPartyFriends + "| ";
		}
		_u16640 += "]";
		return _u16640;
	}
}
