package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.PublicServer;

class PublicServer implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_IdSet = false;
		_LocationSet = false;
		_PingSet = false;
	}

	public static var serializerID:Int = -3136;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Location:String;

	var _LocationSet:Bool;

	var _Ping:Float;

	var _PingSet:Bool;

	public function getStoreId():String
	{
		return _storeId;
	}

	public function setStoreId( value:String):Void
	{
		_storeId = value;
		_storeIdSet = true;
	}

	public function isstoreIdSet():Bool
	{
		return _storeIdSet;
	}

	public function unSetstoreId():Void
	{
		_storeIdSet = false;
	}

	public function getId():String
	{
		return _Id;
	}

	public function setId( value:String):Void
	{
		_Id = value;
		_IdSet = true;
	}

	public function isIdSet():Bool
	{
		return _IdSet;
	}

	public function unSetId():Void
	{
		_IdSet = false;
	}

	public function getLocation():String
	{
		return _Location;
	}

	public function setLocation( value:String):Void
	{
		_Location = value;
		_LocationSet = true;
	}

	public function isLocationSet():Bool
	{
		return _LocationSet;
	}

	public function unSetLocation():Void
	{
		_LocationSet = false;
	}

	public function getPing():Float
	{
		return _Ping;
	}

	public function setPing( value:Float):Void
	{
		_Ping = value;
		_PingSet = true;
	}

	public function isPingSet():Bool
	{
		return _PingSet;
	}

	public function unSetPing():Void
	{
		_PingSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w15906:PublicServer = new PublicServer();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_w15906.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_w15906.setId(_Id);
		}
		if (_LocationSet == true && Utils.isNull(_Location) == false) 
		{
			_w15906.setLocation(_Location);
		}
		if (_PingSet == true && Utils.isNullLong(_Ping) == false) 
		{
			_w15906.setPing(_Ping);
		}
		return _w15906;
	}

	public function toString():String
	{
		var _y15907:String = "";
		_y15907 += "[" + "PublicServer" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_y15907 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_y15907 += "_Id=" + _Id + "| ";
		}
		if (_LocationSet == true && Utils.isNull(_Location) == false) 
		{
			_y15907 += "_Location=" + _Location + "| ";
		}
		if (_PingSet == true && Utils.isNullLong(_Ping) == false) 
		{
			_y15907 += "_Ping=" + _Ping + "| ";
		}
		_y15907 += "]";
		return _y15907;
	}
}
