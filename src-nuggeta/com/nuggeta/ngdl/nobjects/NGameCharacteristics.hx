package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;

class NGameCharacteristics implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_MinPlayer = 0;
		_MinPlayerSet = true;
		_MaxPlayer = 0;
		_MaxPlayerSet = true;
		_AutoStop = true;
		_AutoStopSet = true;
		_AutoStart = true;
		_AutoStartSet = true;
	}

	public static var serializerID:Int = -3010;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _MinPlayer:Int;

	var _MinPlayerSet:Bool;

	var _MaxPlayer:Int;

	var _MaxPlayerSet:Bool;

	var _AutoStop:Bool;

	var _AutoStopSet:Bool;

	var _AutoStart:Bool;

	var _AutoStartSet:Bool;

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

	public function getMinPlayer():Int
	{
		return _MinPlayer;
	}

	public function setMinPlayer( value:Int):Void
	{
		_MinPlayer = value;
		_MinPlayerSet = true;
	}

	public function isMinPlayerSet():Bool
	{
		return _MinPlayerSet;
	}

	public function unSetMinPlayer():Void
	{
		_MinPlayerSet = false;
	}

	public function getMaxPlayer():Int
	{
		return _MaxPlayer;
	}

	public function setMaxPlayer( value:Int):Void
	{
		_MaxPlayer = value;
		_MaxPlayerSet = true;
	}

	public function isMaxPlayerSet():Bool
	{
		return _MaxPlayerSet;
	}

	public function unSetMaxPlayer():Void
	{
		_MaxPlayerSet = false;
	}

	public function isAutoStop():Bool
	{
		return _AutoStop;
	}

	public function setAutoStop( value:Bool):Void
	{
		_AutoStop = value;
		_AutoStopSet = true;
	}

	public function isAutoStopSet():Bool
	{
		return _AutoStopSet;
	}

	public function unSetAutoStop():Void
	{
		_AutoStopSet = false;
	}

	public function isAutoStart():Bool
	{
		return _AutoStart;
	}

	public function setAutoStart( value:Bool):Void
	{
		_AutoStart = value;
		_AutoStartSet = true;
	}

	public function isAutoStartSet():Bool
	{
		return _AutoStartSet;
	}

	public function unSetAutoStart():Void
	{
		_AutoStartSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _g12108:NGameCharacteristics = new NGameCharacteristics();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_g12108.setStoreId(_storeId);
		}
		if (_MinPlayerSet == true && Utils.isNullInteger(_MinPlayer) == false) 
		{
			_g12108.setMinPlayer(_MinPlayer);
		}
		if (_MaxPlayerSet == true && Utils.isNullInteger(_MaxPlayer) == false) 
		{
			_g12108.setMaxPlayer(_MaxPlayer);
		}
		if (_AutoStopSet == true && Utils.isNullBoolean(_AutoStop) == false) 
		{
			_g12108.setAutoStop(_AutoStop);
		}
		if (_AutoStartSet == true && Utils.isNullBoolean(_AutoStart) == false) 
		{
			_g12108.setAutoStart(_AutoStart);
		}
		return _g12108;
	}

	public function toString():String
	{
		var _w12109:String = "";
		_w12109 += "[" + "NGameCharacteristics" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_w12109 += "_storeId=" + _storeId + "| ";
		}
		if (_MinPlayerSet == true && Utils.isNullInteger(_MinPlayer) == false) 
		{
			_w12109 += "_MinPlayer=" + _MinPlayer + "| ";
		}
		if (_MaxPlayerSet == true && Utils.isNullInteger(_MaxPlayer) == false) 
		{
			_w12109 += "_MaxPlayer=" + _MaxPlayer + "| ";
		}
		if (_AutoStopSet == true && Utils.isNullBoolean(_AutoStop) == false) 
		{
			_w12109 += "_AutoStop=" + _AutoStop + "| ";
		}
		if (_AutoStartSet == true && Utils.isNullBoolean(_AutoStart) == false) 
		{
			_w12109 += "_AutoStart=" + _AutoStart + "| ";
		}
		_w12109 += "]";
		return _w12109;
	}
}
