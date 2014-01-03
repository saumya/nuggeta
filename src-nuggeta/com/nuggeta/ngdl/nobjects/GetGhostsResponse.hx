package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetGhostsStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.GetGhostsStatus;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;

class GetGhostsResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetGhostsStatusSet = false;
		_Ghosts = new NList<NGame>();
		_GhostsSet = false;
	}

	public static var serializerID:Int = -10719;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetGhostsStatus:GetGhostsStatus;

	var _GetGhostsStatusSet:Bool;

	var _Ghosts:NList<NGame>;

	var _GhostsSet:Bool;

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

	public function getGetGhostsStatus():GetGhostsStatus
	{
		return _GetGhostsStatus;
	}

	public function setGetGhostsStatus( value:GetGhostsStatus):Void
	{
		_GetGhostsStatus = value;
		_GetGhostsStatusSet = true;
	}

	public function isGetGhostsStatusSet():Bool
	{
		return _GetGhostsStatusSet;
	}

	public function unSetGetGhostsStatus():Void
	{
		_GetGhostsStatusSet = false;
	}

	public function getGhosts():NList<NGame>
	{
		return _Ghosts;
	}

	public function setGhosts( value:NList<NGame>):Void
	{
		_Ghosts = value;
		_GhostsSet = true;
	}

	public function isGhostsSet():Bool
	{
		return _GhostsSet;
	}

	public function unSetGhosts():Void
	{
		_GhostsSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _q15941:GetGhostsResponse = new GetGhostsResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q15941.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q15941.setRequestId(_RequestId);
		}
		if (_GetGhostsStatusSet == true && Utils.isNull(_GetGhostsStatus) == false) 
		{
			_q15941.setGetGhostsStatus(_GetGhostsStatus);
		}
		if (_GhostsSet == true && Utils.isNull(_Ghosts) == false) 
		{
			var _v15942:NList<NGame> = new NList<NGame>();
			for (_w15943 in _Ghosts.tab) {
				if (_w15943 != null) 
				{
					_v15942.add((cast ((cast _w15943)).clone()));
				} else 
				{
					_v15942.add((cast _w15943));
				}
			}
			_q15941.setGhosts(_v15942);
		}
		return _q15941;
	}

	public function toString():String
	{
		var _q15944:String = "";
		_q15944 += "[" + "GetGhostsResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_q15944 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_q15944 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetGhostsStatusSet == true && Utils.isNull(_GetGhostsStatus) == false) 
		{
			_q15944 += "_GetGhostsStatus=" + _GetGhostsStatus + "| ";
		}
		if (_GhostsSet == true && Utils.isNull(_Ghosts) == false) 
		{
			_q15944 += "_Ghosts=" + _Ghosts + "| ";
		}
		_q15944 += "]";
		return _q15944;
	}
}
