package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayerWallet;

class NPlayerWallet implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_NbCoinsSet = false;
	}

	public static var serializerID:Int = -3100;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _NbCoins:Int;

	var _NbCoinsSet:Bool;

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

	public function getNbCoins():Int
	{
		return _NbCoins;
	}

	public function setNbCoins( value:Int):Void
	{
		_NbCoins = value;
		_NbCoinsSet = true;
	}

	public function isNbCoinsSet():Bool
	{
		return _NbCoinsSet;
	}

	public function unSetNbCoins():Void
	{
		_NbCoinsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _m16775:NPlayerWallet = new NPlayerWallet();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_m16775.setStoreId(_storeId);
		}
		if (_NbCoinsSet == true && Utils.isNullInteger(_NbCoins) == false) 
		{
			_m16775.setNbCoins(_NbCoins);
		}
		return _m16775;
	}

	public function toString():String
	{
		var _c16776:String = "";
		_c16776 += "[" + "NPlayerWallet" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_c16776 += "_storeId=" + _storeId + "| ";
		}
		if (_NbCoinsSet == true && Utils.isNullInteger(_NbCoins) == false) 
		{
			_c16776 += "_NbCoins=" + _NbCoins + "| ";
		}
		_c16776 += "]";
		return _c16776;
	}
}
