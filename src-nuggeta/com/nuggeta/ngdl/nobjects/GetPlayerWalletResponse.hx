package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.NPlayerWallet;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.NPlayerWallet;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;

class GetPlayerWalletResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetPlayerWalletStatusSet = false;
		_WalletSet = false;
	}

	public static var serializerID:Int = -10419;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetPlayerWalletStatus:GetPlayerWalletStatus;

	var _GetPlayerWalletStatusSet:Bool;

	var _Wallet:NPlayerWallet;

	var _WalletSet:Bool;

	public function getMessageId():String
	{
		return _MessageId;
	}

	public function setMessageId( value:String):Void
	{
		_MessageId = value;
		_MessageIdSet = true;
	}

	public function isMessageIdSet():Bool
	{
		return _MessageIdSet;
	}

	public function unSetMessageId():Void
	{
		_MessageIdSet = false;
	}

	public function getRequestId():String
	{
		return _RequestId;
	}

	public function setRequestId( value:String):Void
	{
		_RequestId = value;
		_RequestIdSet = true;
	}

	public function isRequestIdSet():Bool
	{
		return _RequestIdSet;
	}

	public function unSetRequestId():Void
	{
		_RequestIdSet = false;
	}

	public function getGetPlayerWalletStatus():GetPlayerWalletStatus
	{
		return _GetPlayerWalletStatus;
	}

	public function setGetPlayerWalletStatus( value:GetPlayerWalletStatus):Void
	{
		_GetPlayerWalletStatus = value;
		_GetPlayerWalletStatusSet = true;
	}

	public function isGetPlayerWalletStatusSet():Bool
	{
		return _GetPlayerWalletStatusSet;
	}

	public function unSetGetPlayerWalletStatus():Void
	{
		_GetPlayerWalletStatusSet = false;
	}

	public function getWallet():NPlayerWallet
	{
		return _Wallet;
	}

	public function setWallet( value:NPlayerWallet):Void
	{
		_Wallet = value;
		_WalletSet = true;
	}

	public function isWalletSet():Bool
	{
		return _WalletSet;
	}

	public function unSetWallet():Void
	{
		_WalletSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _r17246:GetPlayerWalletResponse = new GetPlayerWalletResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_r17246.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_r17246.setRequestId(_RequestId);
		}
		if (_GetPlayerWalletStatusSet == true && Utils.isNull(_GetPlayerWalletStatus) == false) 
		{
			_r17246.setGetPlayerWalletStatus(_GetPlayerWalletStatus);
		}
		if (_WalletSet == true && Utils.isNull(_Wallet) == false) 
		{
			_r17246.setWallet((cast (_Wallet.clone())));
		}
		return _r17246;
	}

	public function toString():String
	{
		var _j17247:String = "";
		_j17247 += "[" + "GetPlayerWalletResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j17247 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j17247 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetPlayerWalletStatusSet == true && Utils.isNull(_GetPlayerWalletStatus) == false) 
		{
			_j17247 += "_GetPlayerWalletStatus=" + _GetPlayerWalletStatus + "| ";
		}
		if (_WalletSet == true && Utils.isNull(_Wallet) == false) 
		{
			_j17247 += "_Wallet=" + _Wallet + "| ";
		}
		_j17247 += "]";
		return _j17247;
	}
}
