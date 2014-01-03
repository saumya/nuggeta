package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetStorablesStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetStorablesStatus;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;

class GetStorablesResponse implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_GetStorablesStatusSet = false;
		_Storables = new NList<Storable>();
		_StorablesSet = false;
	}

	public static var serializerID:Int = -10779;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _GetStorablesStatus:GetStorablesStatus;

	var _GetStorablesStatusSet:Bool;

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

	public function getGetStorablesStatus():GetStorablesStatus
	{
		return _GetStorablesStatus;
	}

	public function setGetStorablesStatus( value:GetStorablesStatus):Void
	{
		_GetStorablesStatus = value;
		_GetStorablesStatusSet = true;
	}

	public function isGetStorablesStatusSet():Bool
	{
		return _GetStorablesStatusSet;
	}

	public function unSetGetStorablesStatus():Void
	{
		_GetStorablesStatusSet = false;
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
		var _n12102:GetStorablesResponse = new GetStorablesResponse();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_n12102.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_n12102.setRequestId(_RequestId);
		}
		if (_GetStorablesStatusSet == true && Utils.isNull(_GetStorablesStatus) == false) 
		{
			_n12102.setGetStorablesStatus(_GetStorablesStatus);
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			var _q12103:NList<Storable> = new NList<Storable>();
			for (_q12104 in _Storables.tab) {
				if (_q12104 != null) 
				{
					_q12103.add((cast ((cast _q12104)).clone()));
				} else 
				{
					_q12103.add((cast _q12104));
				}
			}
			_n12102.setStorables(_q12103);
		}
		return _n12102;
	}

	public function toString():String
	{
		var _t12105:String = "";
		_t12105 += "[" + "GetStorablesResponse" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_t12105 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_t12105 += "_RequestId=" + _RequestId + "| ";
		}
		if (_GetStorablesStatusSet == true && Utils.isNull(_GetStorablesStatus) == false) 
		{
			_t12105 += "_GetStorablesStatus=" + _GetStorablesStatus + "| ";
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			_t12105 += "_Storables=" + _Storables + "| ";
		}
		_t12105 += "]";
		return _t12105;
	}
}
