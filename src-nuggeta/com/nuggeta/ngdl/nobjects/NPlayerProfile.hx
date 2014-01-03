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
import com.nuggeta.ngdl.nobjects.NPlayerProfile;

class NPlayerProfile implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_AvatarSet = false;
		_PlayerIdSet = false;
		_EmailSet = false;
		_CountrySet = false;
		_Friends = new NList<NPlayer>();
		_FriendsSet = false;
	}

	public static var serializerID:Int = -3127;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Avatar:String;

	var _AvatarSet:Bool;

	var _PlayerId:String;

	var _PlayerIdSet:Bool;

	var _Email:String;

	var _EmailSet:Bool;

	var _Country:String;

	var _CountrySet:Bool;

	var _Friends:NList<NPlayer>;

	var _FriendsSet:Bool;

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

	public function getAvatar():String
	{
		return _Avatar;
	}

	public function setAvatar( value:String):Void
	{
		_Avatar = value;
		_AvatarSet = true;
	}

	public function isAvatarSet():Bool
	{
		return _AvatarSet;
	}

	public function unSetAvatar():Void
	{
		_AvatarSet = false;
	}

	public function getPlayerId():String
	{
		return _PlayerId;
	}

	public function setPlayerId( value:String):Void
	{
		_PlayerId = value;
		_PlayerIdSet = true;
	}

	public function isPlayerIdSet():Bool
	{
		return _PlayerIdSet;
	}

	public function unSetPlayerId():Void
	{
		_PlayerIdSet = false;
	}

	public function getEmail():String
	{
		return _Email;
	}

	public function setEmail( value:String):Void
	{
		_Email = value;
		_EmailSet = true;
	}

	public function isEmailSet():Bool
	{
		return _EmailSet;
	}

	public function unSetEmail():Void
	{
		_EmailSet = false;
	}

	public function getCountry():String
	{
		return _Country;
	}

	public function setCountry( value:String):Void
	{
		_Country = value;
		_CountrySet = true;
	}

	public function isCountrySet():Bool
	{
		return _CountrySet;
	}

	public function unSetCountry():Void
	{
		_CountrySet = false;
	}

	public function getFriends():NList<NPlayer>
	{
		return _Friends;
	}

	public function setFriends( value:NList<NPlayer>):Void
	{
		_Friends = value;
		_FriendsSet = true;
	}

	public function isFriendsSet():Bool
	{
		return _FriendsSet;
	}

	public function unSetFriends():Void
	{
		_FriendsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _w12125:NPlayerProfile = new NPlayerProfile();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_w12125.setStoreId(_storeId);
		}
		if (_AvatarSet == true && Utils.isNull(_Avatar) == false) 
		{
			_w12125.setAvatar(_Avatar);
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_w12125.setPlayerId(_PlayerId);
		}
		if (_EmailSet == true && Utils.isNull(_Email) == false) 
		{
			_w12125.setEmail(_Email);
		}
		if (_CountrySet == true && Utils.isNull(_Country) == false) 
		{
			_w12125.setCountry(_Country);
		}
		if (_FriendsSet == true && Utils.isNull(_Friends) == false) 
		{
			var _q12126:NList<NPlayer> = new NList<NPlayer>();
			for (_k12127 in _Friends.tab) {
				if (_k12127 != null) 
				{
					_q12126.add((cast ((cast _k12127)).clone()));
				} else 
				{
					_q12126.add((cast _k12127));
				}
			}
			_w12125.setFriends(_q12126);
		}
		return _w12125;
	}

	public function toString():String
	{
		var _y12128:String = "";
		_y12128 += "[" + "NPlayerProfile" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_y12128 += "_storeId=" + _storeId + "| ";
		}
		if (_AvatarSet == true && Utils.isNull(_Avatar) == false) 
		{
			_y12128 += "_Avatar=" + _Avatar + "| ";
		}
		if (_PlayerIdSet == true && Utils.isNull(_PlayerId) == false) 
		{
			_y12128 += "_PlayerId=" + _PlayerId + "| ";
		}
		if (_EmailSet == true && Utils.isNull(_Email) == false) 
		{
			_y12128 += "_Email=" + _Email + "| ";
		}
		if (_CountrySet == true && Utils.isNull(_Country) == false) 
		{
			_y12128 += "_Country=" + _Country + "| ";
		}
		if (_FriendsSet == true && Utils.isNull(_Friends) == false) 
		{
			_y12128 += "_Friends=" + _Friends + "| ";
		}
		_y12128 += "]";
		return _y12128;
	}
}
