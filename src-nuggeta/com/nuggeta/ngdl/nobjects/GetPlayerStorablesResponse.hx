package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;

class GetPlayerStorablesResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetPlayerStorablesStatusSet = false;
		_Storables = new NList<Storable>();
		_StorablesSet = false;
	}

	public static var serializerID:Int = -11059;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetPlayerStorablesStatus:GetPlayerStorablesStatus;

	var _GetPlayerStorablesStatusSet:Bool;

	var _Storables:NList<Storable>;

	var _StorablesSet:Bool;

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

	public function getGetPlayerStorablesStatus():GetPlayerStorablesStatus
	{
		return _GetPlayerStorablesStatus;
	}

	public function setGetPlayerStorablesStatus( value:GetPlayerStorablesStatus):Void
	{
		_GetPlayerStorablesStatus = value;
		_GetPlayerStorablesStatusSet = true;
	}

	public function isGetPlayerStorablesStatusSet():Bool
	{
		return _GetPlayerStorablesStatusSet;
	}

	public function unSetGetPlayerStorablesStatus():Void
	{
		_GetPlayerStorablesStatusSet = false;
	}

	public function getStorables():NList<Storable>
	{
		return _Storables;
	}

	public function setStorables( value:NList<Storable>):Void
	{
		_Storables = value;
		_StorablesSet = true;
	}

	public function isStorablesSet():Bool
	{
		return _StorablesSet;
	}

	public function unSetStorables():Void
	{
		_StorablesSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _t16629:GetPlayerStorablesResponse = new GetPlayerStorablesResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t16629.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t16629.setRequestId(_RequestId);
		}
		if (_GetPlayerStorablesStatusSet == true && Utils.isNull(_GetPlayerStorablesStatus) == false) 
		{
			_t16629.setGetPlayerStorablesStatus(_GetPlayerStorablesStatus);
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			var _p16630:NList<Storable> = new NList<Storable>();
			for (_d16631 in _Storables.tab) {
				if (_d16631 != null) 
				{
					_p16630.add((cast ((cast _d16631)).clone()));
				} else 
				{
					_p16630.add((cast _d16631));
				}
			}
			_t16629.setStorables(_p16630);
		}
		return _t16629;
	}

	public function toString():String
	{
		var _x16632:String = "";
		_x16632 += "[" + "GetPlayerStorablesResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_x16632 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_x16632 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetPlayerStorablesStatusSet == true && Utils.isNull(_GetPlayerStorablesStatus) == false) 
		{
			_x16632 += "_GetPlayerStorablesStatus=" + _GetPlayerStorablesStatus + "| ";
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			_x16632 += "_Storables=" + _Storables + "| ";
		}
		_x16632 += "]";
		return _x16632;
	}
}
