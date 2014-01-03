package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NWorldUpdate;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NWorldUpdate;
import com.nuggeta.ngdl.nobjects.NGameState;

class NGameState implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_Updates = new NList<NWorldUpdate>();
		_UpdatesSet = false;
	}

	public static var serializerID:Int = -3105;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Updates:NList<NWorldUpdate>;

	var _UpdatesSet:Bool;

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

	public function getUpdates():NList<NWorldUpdate>
	{
		return _Updates;
	}

	public function setUpdates( value:NList<NWorldUpdate>):Void
	{
		_Updates = value;
		_UpdatesSet = true;
	}

	public function isUpdatesSet():Bool
	{
		return _UpdatesSet;
	}

	public function unSetUpdates():Void
	{
		_UpdatesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _d16873:NGameState = new NGameState();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_d16873.setStoreId(_storeId);
		}
		if (_UpdatesSet == true && Utils.isNull(_Updates) == false) 
		{
			var _c16874:NList<NWorldUpdate> = new NList<NWorldUpdate>();
			for (_x16875 in _Updates.tab) {
				if (_x16875 != null) 
				{
					_c16874.add((cast ((cast _x16875)).clone()));
				} else 
				{
					_c16874.add((cast _x16875));
				}
			}
			_d16873.setUpdates(_c16874);
		}
		return _d16873;
	}

	public function toString():String
	{
		var _q16876:String = "";
		_q16876 += "[" + "NGameState" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_q16876 += "_storeId=" + _storeId + "| ";
		}
		if (_UpdatesSet == true && Utils.isNull(_Updates) == false) 
		{
			_q16876 += "_Updates=" + _Updates + "| ";
		}
		_q16876 += "]";
		return _q16876;
	}
}
