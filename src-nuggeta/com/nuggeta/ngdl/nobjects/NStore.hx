package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.ngdl.nobjects.NStore;

class NStore implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_Items = new NList<NItem>();
		_ItemsSet = false;
	}

	public static var serializerID:Int = -3142;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Items:NList<NItem>;

	var _ItemsSet:Bool;

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

	public function getItems():NList<NItem>
	{
		return _Items;
	}

	public function setItems( value:NList<NItem>):Void
	{
		_Items = value;
		_ItemsSet = true;
	}

	public function isItemsSet():Bool
	{
		return _ItemsSet;
	}

	public function unSetItems():Void
	{
		_ItemsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n12121:NStore = new NStore();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_n12121.setStoreId(_storeId);
		}
		if (_ItemsSet == true && Utils.isNull(_Items) == false) 
		{
			var _x12122:NList<NItem> = new NList<NItem>();
			for (_t12123 in _Items.tab) {
				if (_t12123 != null) 
				{
					_x12122.add((cast ((cast _t12123)).clone()));
				} else 
				{
					_x12122.add((cast _t12123));
				}
			}
			_n12121.setItems(_x12122);
		}
		return _n12121;
	}

	public function toString():String
	{
		var _g12124:String = "";
		_g12124 += "[" + "NStore" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_g12124 += "_storeId=" + _storeId + "| ";
		}
		if (_ItemsSet == true && Utils.isNull(_Items) == false) 
		{
			_g12124 += "_Items=" + _Items + "| ";
		}
		_g12124 += "]";
		return _g12124;
	}
}
