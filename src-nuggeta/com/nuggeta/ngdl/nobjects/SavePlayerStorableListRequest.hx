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
import com.nuggeta.ngdl.nobjects.SavePlayerStorableListRequest;

class SavePlayerStorableListRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_Storables = new NList<Storable>();
		_StorablesSet = false;
	}

	public static var serializerID:Int = -10996;

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
		var _j17135:SavePlayerStorableListRequest = new SavePlayerStorableListRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j17135.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j17135.setRequestId(_RequestId);
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			var _h17136:NList<Storable> = new NList<Storable>();
			for (_f17137 in _Storables.tab) {
				if (_f17137 != null) 
				{
					_h17136.add((cast ((cast _f17137)).clone()));
				} else 
				{
					_h17136.add((cast _f17137));
				}
			}
			_j17135.setStorables(_h17136);
		}
		return _j17135;
	}

	public function toString():String
	{
		var _h17138:String = "";
		_h17138 += "[" + "SavePlayerStorableListRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_h17138 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_h17138 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StorablesSet == true && Utils.isNull(_Storables) == false) 
		{
			_h17138 += "_Storables=" + _Storables + "| ";
		}
		_h17138 += "]";
		return _h17138;
	}
}
