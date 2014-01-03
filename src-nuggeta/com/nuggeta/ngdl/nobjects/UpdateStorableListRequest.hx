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
import com.nuggeta.ngdl.nobjects.UpdateStorableListRequest;

class UpdateStorableListRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_Storables = new NList<Storable>();
		_StorablesSet = false;
	}

	public static var serializerID:Int = -10856;

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
		var _l15957:UpdateStorableListRequest = new UpdateStorableListRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l15957.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l15957.setRequestId(_RequestId);
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			var _j15958:NList<Storable> = new NList<Storable>();
			for (_y15959 in _Storables.tab) {
				if (_y15959 != null) 
				{
					_j15958.add((cast ((cast _y15959)).clone()));
				} else 
				{
					_j15958.add((cast _y15959));
				}
			}
			_l15957.setStorables(_j15958);
		}
		return _l15957;
	}

	public function toString():String
	{
		var _f15960:String = "";
		_f15960 += "[" + "UpdateStorableListRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_f15960 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_f15960 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			_f15960 += "_Storables=" + _Storables + "| ";
		}
		_f15960 += "]";
		return _f15960;
	}
}
