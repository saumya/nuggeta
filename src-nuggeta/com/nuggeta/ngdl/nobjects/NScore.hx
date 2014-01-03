package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NScore;

class NScore implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_ValueSet = false;
	}

	public static var serializerID:Int = -3006;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Value:Float;

	var _ValueSet:Bool;

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

	public function getValue():Float
	{
		return _Value;
	}

	public function setValue( value:Float):Void
	{
		_Value = value;
		_ValueSet = true;
	}

	public function isValueSet():Bool
	{
		return _ValueSet;
	}

	public function unSetValue():Void
	{
		_ValueSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _h16017:NScore = new NScore();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_h16017.setStoreId(_storeId);
		}
		if (_ValueSet == true && Utils.isNullDouble(_Value) == false) 
		{
			_h16017.setValue(_Value);
		}
		return _h16017;
	}

	public function toString():String
	{
		var _w16018:String = "";
		_w16018 += "[" + "NScore" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_w16018 += "_storeId=" + _storeId + "| ";
		}
		if (_ValueSet == true && Utils.isNullDouble(_Value) == false) 
		{
			_w16018 += "_Value=" + _Value + "| ";
		}
		_w16018 += "]";
		return _w16018;
	}
}
