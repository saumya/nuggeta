package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NCoinPackage;

class NCoinPackage implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_CoinPackageIdSet = false;
		_VirtualValueSet = false;
		_ProductIdSet = false;
	}

	public static var serializerID:Int = -3107;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _CoinPackageId:String;

	var _CoinPackageIdSet:Bool;

	var _VirtualValue:Float;

	var _VirtualValueSet:Bool;

	var _ProductId:String;

	var _ProductIdSet:Bool;

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

	public function getCoinPackageId():String
	{
		return _CoinPackageId;
	}

	public function setCoinPackageId( value:String):Void
	{
		_CoinPackageId = value;
		_CoinPackageIdSet = true;
	}

	public function isCoinPackageIdSet():Bool
	{
		return _CoinPackageIdSet;
	}

	public function unSetCoinPackageId():Void
	{
		_CoinPackageIdSet = false;
	}

	public function getVirtualValue():Float
	{
		return _VirtualValue;
	}

	public function setVirtualValue( value:Float):Void
	{
		_VirtualValue = value;
		_VirtualValueSet = true;
	}

	public function isVirtualValueSet():Bool
	{
		return _VirtualValueSet;
	}

	public function unSetVirtualValue():Void
	{
		_VirtualValueSet = false;
	}

	public function getProductId():String
	{
		return _ProductId;
	}

	public function setProductId( value:String):Void
	{
		_ProductId = value;
		_ProductIdSet = true;
	}

	public function isProductIdSet():Bool
	{
		return _ProductIdSet;
	}

	public function unSetProductId():Void
	{
		_ProductIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _x12044:NCoinPackage = new NCoinPackage();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_x12044.setStoreId(_storeId);
		}
		if (_CoinPackageIdSet == true && Utils.isNull(_CoinPackageId) == false) 
		{
			_x12044.setCoinPackageId(_CoinPackageId);
		}
		if (_VirtualValueSet == true && Utils.isNullLong(_VirtualValue) == false) 
		{
			_x12044.setVirtualValue(_VirtualValue);
		}
		if (_ProductIdSet == true && Utils.isNull(_ProductId) == false) 
		{
			_x12044.setProductId(_ProductId);
		}
		return _x12044;
	}

	public function toString():String
	{
		var _f12045:String = "";
		_f12045 += "[" + "NCoinPackage" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_f12045 += "_storeId=" + _storeId + "| ";
		}
		if (_CoinPackageIdSet == true && Utils.isNull(_CoinPackageId) == false) 
		{
			_f12045 += "_CoinPackageId=" + _CoinPackageId + "| ";
		}
		if (_VirtualValueSet == true && Utils.isNullLong(_VirtualValue) == false) 
		{
			_f12045 += "_VirtualValue=" + _VirtualValue + "| ";
		}
		if (_ProductIdSet == true && Utils.isNull(_ProductId) == false) 
		{
			_f12045 += "_ProductId=" + _ProductId + "| ";
		}
		_f12045 += "]";
		return _f12045;
	}
}
