package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.NLeaderboardEntry;

class NLeaderboardEntry implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_DataSet = false;
		_IdSet = false;
		_TimestampSet = false;
		_PlayerSet = false;
		_ScoreSet = false;
	}

	public static var serializerID:Int = -3178;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Data:String;

	var _DataSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Timestamp:Float;

	var _TimestampSet:Bool;

	var _Player:NPlayer;

	var _PlayerSet:Bool;

	var _Score:NScore;

	var _ScoreSet:Bool;

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

	public function getData():String
	{
		return _Data;
	}

	public function setData( value:String):Void
	{
		_Data = value;
		_DataSet = true;
	}

	public function isDataSet():Bool
	{
		return _DataSet;
	}

	public function unSetData():Void
	{
		_DataSet = false;
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

	public function getTimestamp():Float
	{
		return _Timestamp;
	}

	public function setTimestamp( value:Float):Void
	{
		_Timestamp = value;
		_TimestampSet = true;
	}

	public function isTimestampSet():Bool
	{
		return _TimestampSet;
	}

	public function unSetTimestamp():Void
	{
		_TimestampSet = false;
	}

	public function getPlayer():NPlayer
	{
		return _Player;
	}

	public function setPlayer( value:NPlayer):Void
	{
		_Player = value;
		_PlayerSet = true;
	}

	public function isPlayerSet():Bool
	{
		return _PlayerSet;
	}

	public function unSetPlayer():Void
	{
		_PlayerSet = false;
	}

	public function getScore():NScore
	{
		return _Score;
	}

	public function setScore( value:NScore):Void
	{
		_Score = value;
		_ScoreSet = true;
	}

	public function isScoreSet():Bool
	{
		return _ScoreSet;
	}

	public function unSetScore():Void
	{
		_ScoreSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w12034:NLeaderboardEntry = new NLeaderboardEntry();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_w12034.setStoreId(_storeId);
		}
		if (_DataSet == true && Utils.isNull(_Data) == false) 
		{
			_w12034.setData(_Data);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_w12034.setId(_Id);
		}
		if (_TimestampSet == true && Utils.isNullDouble(_Timestamp) == false) 
		{
			_w12034.setTimestamp(_Timestamp);
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_w12034.setPlayer((cast (_Player.clone())));
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_w12034.setScore((cast (_Score.clone())));
		}
		return _w12034;
	}

	public function toString():String
	{
		var _d12035:String = "";
		_d12035 += "[" + "NLeaderboardEntry" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_d12035 += "_storeId=" + _storeId + "| ";
		}
		if (_DataSet == true && Utils.isNull(_Data) == false) 
		{
			_d12035 += "_Data=" + _Data + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_d12035 += "_Id=" + _Id + "| ";
		}
		if (_TimestampSet == true && Utils.isNullDouble(_Timestamp) == false) 
		{
			_d12035 += "_Timestamp=" + _Timestamp + "| ";
		}
		if (_PlayerSet == true && Utils.isNull(_Player) == false) 
		{
			_d12035 += "_Player=" + _Player + "| ";
		}
		if (_ScoreSet == true && Utils.isNull(_Score) == false) 
		{
			_d12035 += "_Score=" + _Score + "| ";
		}
		_d12035 += "]";
		return _d12035;
	}
}
