package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NAchievement;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NAchievement;
import com.nuggeta.ngdl.nobjects.NAchievementBoard;

class NAchievementBoard implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_achievements = new NList<NAchievement>();
		_achievementsSet = false;
	}

	public static var serializerID:Int = -3143;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _achievements:NList<NAchievement>;

	var _achievementsSet:Bool;

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

	public function getAchievements():NList<NAchievement>
	{
		return _achievements;
	}

	public function setAchievements( value:NList<NAchievement>):Void
	{
		_achievements = value;
		_achievementsSet = true;
	}

	public function isachievementsSet():Bool
	{
		return _achievementsSet;
	}

	public function unSetachievements():Void
	{
		_achievementsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _a15937:NAchievementBoard = new NAchievementBoard();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_a15937.setStoreId(_storeId);
		}
		if (_achievementsSet == true && Utils.isNull(_achievements) == false) 
		{
			var _c15938:NList<NAchievement> = new NList<NAchievement>();
			for (_z15939 in _achievements.tab) {
				if (_z15939 != null) 
				{
					_c15938.add((cast ((cast _z15939)).clone()));
				} else 
				{
					_c15938.add((cast _z15939));
				}
			}
			_a15937.setAchievements(_c15938);
		}
		return _a15937;
	}

	public function toString():String
	{
		var _h15940:String = "";
		_h15940 += "[" + "NAchievementBoard" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_h15940 += "_storeId=" + _storeId + "| ";
		}
		if (_achievementsSet == true && Utils.isNull(_achievements) == false) 
		{
			_h15940 += "_achievements=" + _achievements + "| ";
		}
		_h15940 += "]";
		return _h15940;
	}
}
