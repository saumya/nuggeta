package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;

class GetPlayerProfileResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetPlayerProfileStatusSet = false;
		_ProfileSet = false;
	}

	public static var serializerID:Int = -10119;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetPlayerProfileStatus:GetPlayerProfileStatus;

	var _GetPlayerProfileStatusSet:Bool;

	var _Profile:NPlayerProfile;

	var _ProfileSet:Bool;

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

	public function getGetPlayerProfileStatus():GetPlayerProfileStatus
	{
		return _GetPlayerProfileStatus;
	}

	public function setGetPlayerProfileStatus( value:GetPlayerProfileStatus):Void
	{
		_GetPlayerProfileStatus = value;
		_GetPlayerProfileStatusSet = true;
	}

	public function isGetPlayerProfileStatusSet():Bool
	{
		return _GetPlayerProfileStatusSet;
	}

	public function unSetGetPlayerProfileStatus():Void
	{
		_GetPlayerProfileStatusSet = false;
	}

	public function getProfile():NPlayerProfile
	{
		return _Profile;
	}

	public function setProfile( value:NPlayerProfile):Void
	{
		_Profile = value;
		_ProfileSet = true;
	}

	public function isProfileSet():Bool
	{
		return _ProfileSet;
	}

	public function unSetProfile():Void
	{
		_ProfileSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _h16528:GetPlayerProfileResponse = new GetPlayerProfileResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h16528.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h16528.setRequestId(_RequestId);
		}
		if (_GetPlayerProfileStatusSet == true && Utils.isNull(_GetPlayerProfileStatus) == false) 
		{
			_h16528.setGetPlayerProfileStatus(_GetPlayerProfileStatus);
		}
		if (_ProfileSet == true && Utils.isNull(_Profile) == false) 
		{
			_h16528.setProfile((cast (_Profile.clone())));
		}
		return _h16528;
	}

	public function toString():String
	{
		var _p16529:String = "";
		_p16529 += "[" + "GetPlayerProfileResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_p16529 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_p16529 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetPlayerProfileStatusSet == true && Utils.isNull(_GetPlayerProfileStatus) == false) 
		{
			_p16529 += "_GetPlayerProfileStatus=" + _GetPlayerProfileStatus + "| ";
		}
		if (_ProfileSet == true && Utils.isNull(_Profile) == false) 
		{
			_p16529 += "_Profile=" + _Profile + "| ";
		}
		_p16529 += "]";
		return _p16529;
	}
}
