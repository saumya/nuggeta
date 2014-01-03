package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.PlayerInvitationStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.PlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;

class NPlayerInvitation implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_EmitterSet = false;
		_ReceiverIdSet = false;
		_CustomMessageSet = false;
		_PlayerInvitationStatusSet = false;
		_PlayerInvitationIdSet = false;
	}

	public static var serializerID:Int = -3005;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Emitter:NPlayer;

	var _EmitterSet:Bool;

	var _ReceiverId:String;

	var _ReceiverIdSet:Bool;

	var _CustomMessage:String;

	var _CustomMessageSet:Bool;

	var _PlayerInvitationStatus:PlayerInvitationStatus;

	var _PlayerInvitationStatusSet:Bool;

	var _PlayerInvitationId:String;

	var _PlayerInvitationIdSet:Bool;

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

	public function getEmitter():NPlayer
	{
		return _Emitter;
	}

	public function setEmitter( value:NPlayer):Void
	{
		_Emitter = value;
		_EmitterSet = true;
	}

	public function isEmitterSet():Bool
	{
		return _EmitterSet;
	}

	public function unSetEmitter():Void
	{
		_EmitterSet = false;
	}

	public function getReceiverId():String
	{
		return _ReceiverId;
	}

	public function setReceiverId( value:String):Void
	{
		_ReceiverId = value;
		_ReceiverIdSet = true;
	}

	public function isReceiverIdSet():Bool
	{
		return _ReceiverIdSet;
	}

	public function unSetReceiverId():Void
	{
		_ReceiverIdSet = false;
	}

	public function getCustomMessage():String
	{
		return _CustomMessage;
	}

	public function setCustomMessage( value:String):Void
	{
		_CustomMessage = value;
		_CustomMessageSet = true;
	}

	public function isCustomMessageSet():Bool
	{
		return _CustomMessageSet;
	}

	public function unSetCustomMessage():Void
	{
		_CustomMessageSet = false;
	}

	public function getPlayerInvitationStatus():PlayerInvitationStatus
	{
		return _PlayerInvitationStatus;
	}

	public function setPlayerInvitationStatus( value:PlayerInvitationStatus):Void
	{
		_PlayerInvitationStatus = value;
		_PlayerInvitationStatusSet = true;
	}

	public function isPlayerInvitationStatusSet():Bool
	{
		return _PlayerInvitationStatusSet;
	}

	public function unSetPlayerInvitationStatus():Void
	{
		_PlayerInvitationStatusSet = false;
	}

	public function getPlayerInvitationId():String
	{
		return _PlayerInvitationId;
	}

	public function setPlayerInvitationId( value:String):Void
	{
		_PlayerInvitationId = value;
		_PlayerInvitationIdSet = true;
	}

	public function isPlayerInvitationIdSet():Bool
	{
		return _PlayerInvitationIdSet;
	}

	public function unSetPlayerInvitationId():Void
	{
		_PlayerInvitationIdSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _v16861:NPlayerInvitation = new NPlayerInvitation();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_v16861.setStoreId(_storeId);
		}
		if (_EmitterSet == true && Utils.isNull(_Emitter) == false) 
		{
			_v16861.setEmitter((cast (_Emitter.clone())));
		}
		if (_ReceiverIdSet == true && Utils.isNull(_ReceiverId) == false) 
		{
			_v16861.setReceiverId(_ReceiverId);
		}
		if (_CustomMessageSet == true && Utils.isNull(_CustomMessage) == false) 
		{
			_v16861.setCustomMessage(_CustomMessage);
		}
		if (_PlayerInvitationStatusSet == true && Utils.isNull(_PlayerInvitationStatus) == false) 
		{
			_v16861.setPlayerInvitationStatus(_PlayerInvitationStatus);
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_v16861.setPlayerInvitationId(_PlayerInvitationId);
		}
		return _v16861;
	}

	public function toString():String
	{
		var _p16862:String = "";
		_p16862 += "[" + "NPlayerInvitation" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_p16862 += "_storeId=" + _storeId + "| ";
		}
		if (_EmitterSet == true && Utils.isNull(_Emitter) == false) 
		{
			_p16862 += "_Emitter=" + _Emitter + "| ";
		}
		if (_ReceiverIdSet == true && Utils.isNull(_ReceiverId) == false) 
		{
			_p16862 += "_ReceiverId=" + _ReceiverId + "| ";
		}
		if (_CustomMessageSet == true && Utils.isNull(_CustomMessage) == false) 
		{
			_p16862 += "_CustomMessage=" + _CustomMessage + "| ";
		}
		if (_PlayerInvitationStatusSet == true && Utils.isNull(_PlayerInvitationStatus) == false) 
		{
			_p16862 += "_PlayerInvitationStatus=" + _PlayerInvitationStatus + "| ";
		}
		if (_PlayerInvitationIdSet == true && Utils.isNull(_PlayerInvitationId) == false) 
		{
			_p16862 += "_PlayerInvitationId=" + _PlayerInvitationId + "| ";
		}
		_p16862 += "]";
		return _p16862;
	}
}
