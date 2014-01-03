package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.util.NList;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.NWorldUpdate;

class NWorldUpdate implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_UpdateSet = false;
		_Values = new NList<Message>();
		_ValuesSet = false;
	}

	public static var serializerID:Int = -3042;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Update:Int;

	var _UpdateSet:Bool;

	var _Values:NList<Message>;

	var _ValuesSet:Bool;

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

	public function getUpdate():Int
	{
		return _Update;
	}

	public function setUpdate( value:Int):Void
	{
		_Update = value;
		_UpdateSet = true;
	}

	public function isUpdateSet():Bool
	{
		return _UpdateSet;
	}

	public function unSetUpdate():Void
	{
		_UpdateSet = false;
	}

	public function getValues():NList<Message>
	{
		return _Values;
	}

	public function setValues( value:NList<Message>):Void
	{
		_Values = value;
		_ValuesSet = true;
	}

	public function isValuesSet():Bool
	{
		return _ValuesSet;
	}

	public function unSetValues():Void
	{
		_ValuesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _m8188:NWorldUpdate = new NWorldUpdate();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_m8188.setStoreId(_storeId);
		}
		if (_UpdateSet == true && Utils.isNullInteger(_Update) == false) 
		{
			_m8188.setUpdate(_Update);
		}
		if (_ValuesSet == true && Utils.isNull(_Values) == false) 
		{
			var _h8189:NList<Message> = new NList<Message>();
			for (_i8190 in _Values.tab) {
				if (_i8190 != null) 
				{
					_h8189.add((cast ((cast _i8190)).clone()));
				} else 
				{
					_h8189.add((cast _i8190));
				}
			}
			_m8188.setValues(_h8189);
		}
		return _m8188;
	}

	public function toString():String
	{
		var _b8191:String = "";
		_b8191 += "[" + "NWorldUpdate" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_b8191 += "_storeId=" + _storeId + "| ";
		}
		if (_UpdateSet == true && Utils.isNullInteger(_Update) == false) 
		{
			_b8191 += "_Update=" + _Update + "| ";
		}
		if (_ValuesSet == true && Utils.isNull(_Values) == false) 
		{
			_b8191 += "_Values=" + _Values + "| ";
		}
		_b8191 += "]";
		return _b8191;
	}
}
