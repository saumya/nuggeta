package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.DisconnectedContext;

class DisconnectedContext implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_Participants = new NList<NPlayer>();
		_ParticipantsSet = false;
	}

	public static var serializerID:Int = -3159;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Participants:NList<NPlayer>;

	var _ParticipantsSet:Bool;

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

	public function getParticipants():NList<NPlayer>
	{
		return _Participants;
	}

	public function setParticipants( value:NList<NPlayer>):Void
	{
		_Participants = value;
		_ParticipantsSet = true;
	}

	public function isParticipantsSet():Bool
	{
		return _ParticipantsSet;
	}

	public function unSetParticipants():Void
	{
		_ParticipantsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j16857:DisconnectedContext = new DisconnectedContext();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16857.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16857.setRequestId(_RequestId);
		}
		if (_ParticipantsSet == true && Utils.isNull(_Participants) == false) 
		{
			var _h16858:NList<NPlayer> = new NList<NPlayer>();
			for (_j16859 in _Participants.tab) {
				if (_j16859 != null) 
				{
					_h16858.add((cast ((cast _j16859)).clone()));
				} else 
				{
					_h16858.add((cast _j16859));
				}
			}
			_j16857.setParticipants(_h16858);
		}
		return _j16857;
	}

	public function toString():String
	{
		var _m16860:String = "";
		_m16860 += "[" + "DisconnectedContext" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m16860 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m16860 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ParticipantsSet == true && Utils.isNull(_Participants) == false) 
		{
			_m16860 += "_Participants=" + _Participants + "| ";
		}
		_m16860 += "]";
		return _m16860;
	}
}
