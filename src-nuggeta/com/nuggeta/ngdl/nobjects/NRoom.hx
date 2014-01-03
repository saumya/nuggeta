package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.AbstractRoom;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.ngdl.nobjects.AbstractRoom;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.NRoom;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayer;

class NRoom extends AbstractRoom implements Serializable
{

	public function new()
	{
		super();
	}

	public static var serializerID:Int = -3008;


	override public function getSerializerID():Int
	{
		return serializerID;
	}

	override public function clone():Dynamic
	{
		var _x16137:NRoom = new NRoom();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_x16137.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_x16137.setId(_Id);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_x16137.setName(_Name);
		}
		if (_PlayersSet == true && Utils.isNull(_Players) == false) 
		{
			var _j16138:NList<NPlayer> = new NList<NPlayer>();
			for (_x16139 in _Players.tab) {
				if (_x16139 != null) 
				{
					_j16138.add((cast ((cast _x16139)).clone()));
				} else 
				{
					_j16138.add((cast _x16139));
				}
			}
			_x16137.setPlayers(_j16138);
		}
		return _x16137;
	}

	override public function toString():String
	{
		var _d16140:String = "";
		_d16140 += "[" + "NRoom" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_d16140 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_d16140 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_d16140 += "_Name=" + _Name + "| ";
		}
		if (_PlayersSet == true && Utils.isNull(_Players) == false) 
		{
			_d16140 += "_Players=" + _Players + "| ";
		}
		_d16140 += "]";
		return _d16140;
	}
}
