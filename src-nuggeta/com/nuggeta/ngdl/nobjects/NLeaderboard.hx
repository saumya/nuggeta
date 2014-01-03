package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NLeaderboardEntry;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NLeaderboardEntry;
import com.nuggeta.ngdl.nobjects.NLeaderboard;

class NLeaderboard implements Serializable
{

	public function new()
	{
		_IdSet = false;
		_NameSet = false;
		_leaderboardEntries = new NList<NLeaderboardEntry>();
		_leaderboardEntriesSet = false;
	}

	public static var serializerID:Int = -3145;

	var _Id:String;

	var _IdSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _leaderboardEntries:NList<NLeaderboardEntry>;

	var _leaderboardEntriesSet:Bool;

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

	public function getLeaderboardEntries():NList<NLeaderboardEntry>
	{
		return _leaderboardEntries;
	}

	public function setLeaderboardEntries( value:NList<NLeaderboardEntry>):Void
	{
		_leaderboardEntries = value;
		_leaderboardEntriesSet = true;
	}

	public function isleaderboardEntriesSet():Bool
	{
		return _leaderboardEntriesSet;
	}

	public function unSetleaderboardEntries():Void
	{
		_leaderboardEntriesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _n16399:NLeaderboard = new NLeaderboard();
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_n16399.setId(_Id);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_n16399.setName(_Name);
		}
		if (_leaderboardEntriesSet == true && Utils.isNull(_leaderboardEntries) == false) 
		{
			var _c16400:NList<NLeaderboardEntry> = new NList<NLeaderboardEntry>();
			for (_h16401 in _leaderboardEntries.tab) {
				if (_h16401 != null) 
				{
					_c16400.add((cast ((cast _h16401)).clone()));
				} else 
				{
					_c16400.add((cast _h16401));
				}
			}
			_n16399.setLeaderboardEntries(_c16400);
		}
		return _n16399;
	}

	public function toString():String
	{
		var _r16402:String = "";
		_r16402 += "[" + "NLeaderboard" + " --> ";
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_r16402 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_r16402 += "_Name=" + _Name + "| ";
		}
		if (_leaderboardEntriesSet == true && Utils.isNull(_leaderboardEntries) == false) 
		{
			_r16402 += "_leaderboardEntries=" + _leaderboardEntries + "| ";
		}
		_r16402 += "]";
		return _r16402;
	}
}
