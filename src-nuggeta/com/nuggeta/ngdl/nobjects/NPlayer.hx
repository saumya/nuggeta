package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.NPlayer;

class NPlayer implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_IDSet = false;
		_AccessTokenSet = false;
		_NameSet = false;
		_Connected = false;
		_ConnectedSet = true;
		_LoginSourceSet = false;
		_ThirdPartyIdSet = false;
	}

	public static var serializerID:Int = -3003;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _ID:String;

	var _IDSet:Bool;

	var _AccessToken:String;

	var _AccessTokenSet:Bool;

	var _Name:String;

	var _NameSet:Bool;

	var _Connected:Bool;

	var _ConnectedSet:Bool;

	var _LoginSource:ThirdPartySource;

	var _LoginSourceSet:Bool;

	var _ThirdPartyId:String;

	var _ThirdPartyIdSet:Bool;

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

	public function getID():String
	{
		return _ID;
	}

	public function setID( value:String):Void
	{
		_ID = value;
		_IDSet = true;
	}

	public function isIDSet():Bool
	{
		return _IDSet;
	}

	public function unSetID():Void
	{
		_IDSet = false;
	}

	public function getAccessToken():String
	{
		return _AccessToken;
	}

	public function setAccessToken( value:String):Void
	{
		_AccessToken = value;
		_AccessTokenSet = true;
	}

	public function isAccessTokenSet():Bool
	{
		return _AccessTokenSet;
	}

	public function unSetAccessToken():Void
	{
		_AccessTokenSet = false;
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

	public function isConnected():Bool
	{
		return _Connected;
	}

	public function setConnected( value:Bool):Void
	{
		_Connected = value;
		_ConnectedSet = true;
	}

	public function isConnectedSet():Bool
	{
		return _ConnectedSet;
	}

	public function unSetConnected():Void
	{
		_ConnectedSet = false;
	}

	public function getLoginSource():ThirdPartySource
	{
		return _LoginSource;
	}

	public function setLoginSource( value:ThirdPartySource):Void
	{
		_LoginSource = value;
		_LoginSourceSet = true;
	}

	public function isLoginSourceSet():Bool
	{
		return _LoginSourceSet;
	}

	public function unSetLoginSource():Void
	{
		_LoginSourceSet = false;
	}

	public function getThirdPartyId():String
	{
		return _ThirdPartyId;
	}

	public function setThirdPartyId( value:String):Void
	{
		_ThirdPartyId = value;
		_ThirdPartyIdSet = true;
	}

	public function isThirdPartyIdSet():Bool
	{
		return _ThirdPartyIdSet;
	}

	public function unSetThirdPartyId():Void
	{
		_ThirdPartyIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b17239:NPlayer = new NPlayer();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_b17239.setStoreId(_storeId);
		}
		if (_IDSet == true && Utils.isNull(_ID) == false) 
		{
			_b17239.setID(_ID);
		}
		if (_AccessTokenSet == true && Utils.isNull(_AccessToken) == false) 
		{
			_b17239.setAccessToken(_AccessToken);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_b17239.setName(_Name);
		}
		if (_ConnectedSet == true && Utils.isNullBoolean(_Connected) == false) 
		{
			_b17239.setConnected(_Connected);
		}
		if (_LoginSourceSet == true && Utils.isNull(_LoginSource) == false) 
		{
			_b17239.setLoginSource(_LoginSource);
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_b17239.setThirdPartyId(_ThirdPartyId);
		}
		return _b17239;
	}

	public function toString():String
	{
		var _a17240:String = "";
		_a17240 += "[" + "NPlayer" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_a17240 += "_storeId=" + _storeId + "| ";
		}
		if (_IDSet == true && Utils.isNull(_ID) == false) 
		{
			_a17240 += "_ID=" + _ID + "| ";
		}
		if (_AccessTokenSet == true && Utils.isNull(_AccessToken) == false) 
		{
			_a17240 += "_AccessToken=" + _AccessToken + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_a17240 += "_Name=" + _Name + "| ";
		}
		if (_ConnectedSet == true && Utils.isNullBoolean(_Connected) == false) 
		{
			_a17240 += "_Connected=" + _Connected + "| ";
		}
		if (_LoginSourceSet == true && Utils.isNull(_LoginSource) == false) 
		{
			_a17240 += "_LoginSource=" + _LoginSource + "| ";
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_a17240 += "_ThirdPartyId=" + _ThirdPartyId + "| ";
		}
		_a17240 += "]";
		return _a17240;
	}
}
