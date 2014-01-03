package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NAchievement;

class NAchievement implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_IdSet = false;
		_NameSet = false;
		_AchievedSet = false;
	}

	public static var serializerID:Int = -3103;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _Achieved:Bool;

	var _AchievedSet:Bool;

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

	public function isAchieved():Bool
	{
		return _Achieved;
	}

	public function setAchieved( value:Bool):Void
	{
		_Achieved = value;
		_AchievedSet = true;
	}

	public function isAchievedSet():Bool
	{
		return _AchievedSet;
	}

	public function unSetAchieved():Void
	{
		_AchievedSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _l17208:NAchievement = new NAchievement();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_l17208.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_l17208.setId(_Id);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_l17208.setName(_Name);
		}
		if (_AchievedSet == true && Utils.isNullBoolean(_Achieved) == false) 
		{
			_l17208.setAchieved(_Achieved);
		}
		return _l17208;
	}

	public function toString():String
	{
		var _e17209:String = "";
		_e17209 += "[" + "NAchievement" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_e17209 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_e17209 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_e17209 += "_Name=" + _Name + "| ";
		}
		if (_AchievedSet == true && Utils.isNullBoolean(_Achieved) == false) 
		{
			_e17209 += "_Achieved=" + _Achieved + "| ";
		}
		_e17209 += "]";
		return _e17209;
	}
}
