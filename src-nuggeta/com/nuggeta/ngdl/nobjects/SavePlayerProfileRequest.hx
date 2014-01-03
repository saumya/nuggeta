package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileRequest;

class SavePlayerProfileRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ProfileSet = false;
	}

	public static var serializerID:Int = -10097;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

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
		var _d8192:SavePlayerProfileRequest = new SavePlayerProfileRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_d8192.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_d8192.setRequestId(_RequestId);
		}
		if (_ProfileSet == true && Utils.isNull(_Profile) == false) 
		{
			_d8192.setProfile((cast (_Profile.clone())));
		}
		return _d8192;
	}

	public function toString():String
	{
		var _b8193:String = "";
		_b8193 += "[" + "SavePlayerProfileRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b8193 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b8193 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ProfileSet == true && Utils.isNull(_Profile) == false) 
		{
			_b8193 += "_Profile=" + _Profile + "| ";
		}
		_b8193 += "]";
		return _b8193;
	}
}
