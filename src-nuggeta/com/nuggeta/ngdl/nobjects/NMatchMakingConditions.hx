package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.MatchMakingType;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.MatchMakingType;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;

class NMatchMakingConditions implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_MatchMakingTypeSet = false;
	}

	public static var serializerID:Int = -3112;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _MatchMakingType:MatchMakingType;

	var _MatchMakingTypeSet:Bool;

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

	public function getMatchMakingType():MatchMakingType
	{
		return _MatchMakingType;
	}

	public function setMatchMakingType( value:MatchMakingType):Void
	{
		_MatchMakingType = value;
		_MatchMakingTypeSet = true;
	}

	public function isMatchMakingTypeSet():Bool
	{
		return _MatchMakingTypeSet;
	}

	public function unSetMatchMakingType():Void
	{
		_MatchMakingTypeSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _q17106:NMatchMakingConditions = new NMatchMakingConditions();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_q17106.setStoreId(_storeId);
		}
		if (_MatchMakingTypeSet == true && Utils.isNull(_MatchMakingType) == false) 
		{
			_q17106.setMatchMakingType(_MatchMakingType);
		}
		return _q17106;
	}

	public function toString():String
	{
		var _l17107:String = "";
		_l17107 += "[" + "NMatchMakingConditions" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_l17107 += "_storeId=" + _storeId + "| ";
		}
		if (_MatchMakingTypeSet == true && Utils.isNull(_MatchMakingType) == false) 
		{
			_l17107 += "_MatchMakingType=" + _MatchMakingType + "| ";
		}
		_l17107 += "]";
		return _l17107;
	}
}
