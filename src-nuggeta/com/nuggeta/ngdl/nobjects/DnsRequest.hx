package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.DnsRequest;

class DnsRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GameIdSet = false;
		_GameVersionSet = false;
		_GameDeployedVersionSet = false;
		_PlatformSet = false;
	}

	public static var serializerID:Int = -3019;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GameId:String;

	var _GameIdSet:Bool;

	var _GameVersion:Int;

	var _GameVersionSet:Bool;

	var _GameDeployedVersion:Int;

	var _GameDeployedVersionSet:Bool;

	var _Platform:String;

	var _PlatformSet:Bool;

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

	public function getGameId():String
	{
		return _GameId;
	}

	public function setGameId( value:String):Void
	{
		_GameId = value;
		_GameIdSet = true;
	}

	public function isGameIdSet():Bool
	{
		return _GameIdSet;
	}

	public function unSetGameId():Void
	{
		_GameIdSet = false;
	}

	public function getGameVersion():Int
	{
		return _GameVersion;
	}

	public function setGameVersion( value:Int):Void
	{
		_GameVersion = value;
		_GameVersionSet = true;
	}

	public function isGameVersionSet():Bool
	{
		return _GameVersionSet;
	}

	public function unSetGameVersion():Void
	{
		_GameVersionSet = false;
	}

	public function getGameDeployedVersion():Int
	{
		return _GameDeployedVersion;
	}

	public function setGameDeployedVersion( value:Int):Void
	{
		_GameDeployedVersion = value;
		_GameDeployedVersionSet = true;
	}

	public function isGameDeployedVersionSet():Bool
	{
		return _GameDeployedVersionSet;
	}

	public function unSetGameDeployedVersion():Void
	{
		_GameDeployedVersionSet = false;
	}

	public function getPlatform():String
	{
		return _Platform;
	}

	public function setPlatform( value:String):Void
	{
		_Platform = value;
		_PlatformSet = true;
	}

	public function isPlatformSet():Bool
	{
		return _PlatformSet;
	}

	public function unSetPlatform():Void
	{
		_PlatformSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _i12153:DnsRequest = new DnsRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i12153.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i12153.setRequestId(_RequestId);
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_i12153.setGameId(_GameId);
		}
		if (_GameVersionSet == true && Utils.isNullInteger(_GameVersion) == false) 
		{
			_i12153.setGameVersion(_GameVersion);
		}
		if (_GameDeployedVersionSet == true && Utils.isNullInteger(_GameDeployedVersion) == false) 
		{
			_i12153.setGameDeployedVersion(_GameDeployedVersion);
		}
		if (_PlatformSet == true && Utils.isNull(_Platform) == false) 
		{
			_i12153.setPlatform(_Platform);
		}
		return _i12153;
	}

	public function toString():String
	{
		var _r12154:String = "";
		_r12154 += "[" + "DnsRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r12154 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r12154 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GameIdSet == true && Utils.isNull(_GameId) == false) 
		{
			_r12154 += "_GameId=" + _GameId + "| ";
		}
		if (_GameVersionSet == true && Utils.isNullInteger(_GameVersion) == false) 
		{
			_r12154 += "_GameVersion=" + _GameVersion + "| ";
		}
		if (_GameDeployedVersionSet == true && Utils.isNullInteger(_GameDeployedVersion) == false) 
		{
			_r12154 += "_GameDeployedVersion=" + _GameDeployedVersion + "| ";
		}
		if (_PlatformSet == true && Utils.isNull(_Platform) == false) 
		{
			_r12154 += "_Platform=" + _Platform + "| ";
		}
		_r12154 += "]";
		return _r12154;
	}
}
