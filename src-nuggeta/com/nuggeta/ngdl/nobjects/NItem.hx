package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NItem;

class NItem implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_IdSet = false;
		_NameSet = false;
		_PriceSet = false;
		_BoughtSet = false;
		_CountSet = false;
	}

	public static var serializerID:Int = -3101;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _Price:Int;

	var _PriceSet:Bool;

	var _Bought:Bool;

	var _BoughtSet:Bool;

	var _Count:Int;

	var _CountSet:Bool;

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

	public function getName():String
	{
		return _Name;
	}

	public function setName( value:String):Void
	{
		_Name = value;
		_NameSet = true;
	}

	public function isNameSet():Bool
	{
		return _NameSet;
	}

	public function unSetName():Void
	{
		_NameSet = false;
	}

	public function getPrice():Int
	{
		return _Price;
	}

	public function setPrice( value:Int):Void
	{
		_Price = value;
		_PriceSet = true;
	}

	public function isPriceSet():Bool
	{
		return _PriceSet;
	}

	public function unSetPrice():Void
	{
		_PriceSet = false;
	}

	public function isBought():Bool
	{
		return _Bought;
	}

	public function setBought( value:Bool):Void
	{
		_Bought = value;
		_BoughtSet = true;
	}

	public function isBoughtSet():Bool
	{
		return _BoughtSet;
	}

	public function unSetBought():Void
	{
		_BoughtSet = false;
	}

	public function getCount():Int
	{
		return _Count;
	}

	public function setCount( value:Int):Void
	{
		_Count = value;
		_CountSet = true;
	}

	public function isCountSet():Bool
	{
		return _CountSet;
	}

	public function unSetCount():Void
	{
		_CountSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _i15894:NItem = new NItem();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_i15894.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_i15894.setId(_Id);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_i15894.setName(_Name);
		}
		if (_PriceSet == true && Utils.isNullInteger(_Price) == false) 
		{
			_i15894.setPrice(_Price);
		}
		if (_BoughtSet == true && Utils.isNullBoolean(_Bought) == false) 
		{
			_i15894.setBought(_Bought);
		}
		if (_CountSet == true && Utils.isNullInteger(_Count) == false) 
		{
			_i15894.setCount(_Count);
		}
		return _i15894;
	}

	public function toString():String
	{
		var _e15895:String = "";
		_e15895 += "[" + "NItem" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_e15895 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_e15895 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_e15895 += "_Name=" + _Name + "| ";
		}
		if (_PriceSet == true && Utils.isNullInteger(_Price) == false) 
		{
			_e15895 += "_Price=" + _Price + "| ";
		}
		if (_BoughtSet == true && Utils.isNullBoolean(_Bought) == false) 
		{
			_e15895 += "_Bought=" + _Bought + "| ";
		}
		if (_CountSet == true && Utils.isNullInteger(_Count) == false) 
		{
			_e15895 += "_Count=" + _Count + "| ";
		}
		_e15895 += "]";
		return _e15895;
	}
}
