package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayer;

class AbstractRoom implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_IdSet = false;
		_NameSet = false;
		_Players = new NList<NPlayer>();
		_PlayersSet = false;
	}

	public static var serializerID:Int = -3007;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _Players:NList<NPlayer>;

	var _PlayersSet:Bool;

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

	public function getPlayers():NList<NPlayer>
	{
		return _Players;
	}

	public function setPlayers( value:NList<NPlayer>):Void
	{
		_Players = value;
		_PlayersSet = true;
	}

	public function isPlayersSet():Bool
	{
		return _PlayersSet;
	}

	public function unSetPlayers():Void
	{
		_PlayersSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		return null;
	}

	public function toString():String
	{
		var _u16927:String = "";
		_u16927 += "[" + "AbstractRoom" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_u16927 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_u16927 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_u16927 += "_Name=" + _Name + "| ";
		}
		if (_PlayersSet == true && Utils.isNull(_Players) == false) 
		{
			_u16927 += "_Players=" + _Players + "| ";
		}
		_u16927 += "]";
		return _u16927;
	}
}
