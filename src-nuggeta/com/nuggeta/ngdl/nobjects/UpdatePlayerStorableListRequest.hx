package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableListRequest;

class UpdatePlayerStorableListRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_Storables = new NList<Storable>();
		_StorablesSet = false;
	}

	public static var serializerID:Int = -11016;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

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
		var _i11921:UpdatePlayerStorableListRequest = new UpdatePlayerStorableListRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_i11921.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_i11921.setRequestId(_RequestId);
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			var _p11922:NList<Storable> = new NList<Storable>();
			for (_q11923 in _Storables.tab) {
				if (_q11923 != null) 
				{
					_p11922.add((cast ((cast _q11923)).clone()));
				} else 
				{
					_p11922.add((cast _q11923));
				}
			}
			_i11921.setStorables(_p11922);
		}
		return _i11921;
	}

	public function toString():String
	{
		var _l11924:String = "";
		_l11924 += "[" + "UpdatePlayerStorableListRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l11924 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l11924 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			_l11924 += "_Storables=" + _Storables + "| ";
		}
		_l11924 += "]";
		return _l11924;
	}
}
