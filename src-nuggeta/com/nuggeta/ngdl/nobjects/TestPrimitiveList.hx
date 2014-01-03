package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.util.NMatrix2;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.util.NList;
import com.nuggeta.util.NMatrix2;
import com.nuggeta.ngdl.nobjects.TestPrimitiveList;

class TestPrimitiveList implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_StringList = new NList<String>();
		_StringListSet = false;
		_IntegerList = new NList<Int>();
		_IntegerListSet = false;
		_ShortList = new NList<Int>();
		_ShortListSet = false;
		_LongList = new NList<Float>();
		_LongListSet = false;
		_FloatList = new NList<Float>();
		_FloatListSet = false;
		_DoubleList = new NList<Float>();
		_DoubleListSet = false;
		_BooleanList = new NList<Bool>();
		_BooleanListSet = false;
		_PlayerMatrix2Set = false;
	}

	public static var serializerID:Int = -3156;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _StringList:NList<String>;

	var _StringListSet:Bool;

	var _IntegerList:NList<Int>;

	var _IntegerListSet:Bool;

	var _ShortList:NList<Int>;

	var _ShortListSet:Bool;

	var _LongList:NList<Float>;

	var _LongListSet:Bool;

	var _FloatList:NList<Float>;

	var _FloatListSet:Bool;

	var _DoubleList:NList<Float>;

	var _DoubleListSet:Bool;

	var _BooleanList:NList<Bool>;

	var _BooleanListSet:Bool;

	var _PlayerMatrix2:NMatrix2;

	var _PlayerMatrix2Set:Bool;

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

	public function getStringList():NList<String>
	{
		return _StringList;
	}

	public function setStringList( value:NList<String>):Void
	{
		_StringList = value;
		_StringListSet = true;
	}

	public function isStringListSet():Bool
	{
		return _StringListSet;
	}

	public function unSetStringList():Void
	{
		_StringListSet = false;
	}

	public function getIntegerList():NList<Int>
	{
		return _IntegerList;
	}

	public function setIntegerList( value:NList<Int>):Void
	{
		_IntegerList = value;
		_IntegerListSet = true;
	}

	public function isIntegerListSet():Bool
	{
		return _IntegerListSet;
	}

	public function unSetIntegerList():Void
	{
		_IntegerListSet = false;
	}

	public function getShortList():NList<Int>
	{
		return _ShortList;
	}

	public function setShortList( value:NList<Int>):Void
	{
		_ShortList = value;
		_ShortListSet = true;
	}

	public function isShortListSet():Bool
	{
		return _ShortListSet;
	}

	public function unSetShortList():Void
	{
		_ShortListSet = false;
	}

	public function getLongList():NList<Float>
	{
		return _LongList;
	}

	public function setLongList( value:NList<Float>):Void
	{
		_LongList = value;
		_LongListSet = true;
	}

	public function isLongListSet():Bool
	{
		return _LongListSet;
	}

	public function unSetLongList():Void
	{
		_LongListSet = false;
	}

	public function getFloatList():NList<Float>
	{
		return _FloatList;
	}

	public function setFloatList( value:NList<Float>):Void
	{
		_FloatList = value;
		_FloatListSet = true;
	}

	public function isFloatListSet():Bool
	{
		return _FloatListSet;
	}

	public function unSetFloatList():Void
	{
		_FloatListSet = false;
	}

	public function getDoubleList():NList<Float>
	{
		return _DoubleList;
	}

	public function setDoubleList( value:NList<Float>):Void
	{
		_DoubleList = value;
		_DoubleListSet = true;
	}

	public function isDoubleListSet():Bool
	{
		return _DoubleListSet;
	}

	public function unSetDoubleList():Void
	{
		_DoubleListSet = false;
	}

	public function getBooleanList():NList<Bool>
	{
		return _BooleanList;
	}

	public function setBooleanList( value:NList<Bool>):Void
	{
		_BooleanList = value;
		_BooleanListSet = true;
	}

	public function isBooleanListSet():Bool
	{
		return _BooleanListSet;
	}

	public function unSetBooleanList():Void
	{
		_BooleanListSet = false;
	}

	public function getPlayerMatrix2():NMatrix2
	{
		return _PlayerMatrix2;
	}

	public function setPlayerMatrix2( value:NMatrix2):Void
	{
		_PlayerMatrix2 = value;
		_PlayerMatrix2Set = true;
	}

	public function isPlayerMatrix2Set():Bool
	{
		return _PlayerMatrix2Set;
	}

	public function unSetPlayerMatrix2():Void
	{
		_PlayerMatrix2Set = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _b16785:TestPrimitiveList = new TestPrimitiveList();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_b16785.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_b16785.setRequestId(_RequestId);
		}
		if (_StringListSet == true && Utils.isNull(_StringList) == false) 
		{
			var _k16786:NList<String> = new NList<String>();
			for (_c7820 in 0 ... _StringList.size()) 
			{
				_k16786.add(_StringList.get(_c7820));
			}
			_b16785.setStringList(_k16786);
		}
		if (_IntegerListSet == true && Utils.isNull(_IntegerList) == false) 
		{
			var _d16788:NList<Int> = new NList<Int>();
			for (_d7822 in 0 ... _IntegerList.size()) 
			{
				_d16788.add(_IntegerList.get(_d7822));
			}
			_b16785.setIntegerList(_d16788);
		}
		if (_ShortListSet == true && Utils.isNull(_ShortList) == false) 
		{
			var _p16790:NList<Int> = new NList<Int>();
			for (_w7824 in 0 ... _ShortList.size()) 
			{
				_p16790.add(_ShortList.get(_w7824));
			}
			_b16785.setShortList(_p16790);
		}
		if (_LongListSet == true && Utils.isNull(_LongList) == false) 
		{
			var _f16792:NList<Float> = new NList<Float>();
			for (_t7826 in 0 ... _LongList.size()) 
			{
				_f16792.add(_LongList.get(_t7826));
			}
			_b16785.setLongList(_f16792);
		}
		if (_FloatListSet == true && Utils.isNull(_FloatList) == false) 
		{
			var _n16794:NList<Float> = new NList<Float>();
			for (_h7828 in 0 ... _FloatList.size()) 
			{
				_n16794.add(_FloatList.get(_h7828));
			}
			_b16785.setFloatList(_n16794);
		}
		if (_DoubleListSet == true && Utils.isNull(_DoubleList) == false) 
		{
			var _g16796:NList<Float> = new NList<Float>();
			for (_t7830 in 0 ... _DoubleList.size()) 
			{
				_g16796.add(_DoubleList.get(_t7830));
			}
			_b16785.setDoubleList(_g16796);
		}
		if (_BooleanListSet == true && Utils.isNull(_BooleanList) == false) 
		{
			var _h16798:NList<Bool> = new NList<Bool>();
			for (_c16799 in 0 ... _BooleanList.size()) 
			{
				_h16798.add(_BooleanList.get(_c16799));
			}
			_b16785.setBooleanList(_h16798);
		}
		if (_PlayerMatrix2Set == true && Utils.isNull(_PlayerMatrix2) == false) 
		{
			_b16785.setPlayerMatrix2((cast (_PlayerMatrix2.clone())));
		}
		return _b16785;
	}

	public function toString():String
	{
		var _l16800:String = "";
		_l16800 += "[" + "TestPrimitiveList" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_l16800 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_l16800 += "_RequestId=" + _RequestId + "| ";
		}
		if (_StringListSet == true && Utils.isNull(_StringList) == false) 
		{
			_l16800 += "_StringList=" + _StringList + "| ";
		}
		if (_IntegerListSet == true && Utils.isNull(_IntegerList) == false) 
		{
			_l16800 += "_IntegerList=" + _IntegerList + "| ";
		}
		if (_ShortListSet == true && Utils.isNull(_ShortList) == false) 
		{
			_l16800 += "_ShortList=" + _ShortList + "| ";
		}
		if (_LongListSet == true && Utils.isNull(_LongList) == false) 
		{
			_l16800 += "_LongList=" + _LongList + "| ";
		}
		if (_FloatListSet == true && Utils.isNull(_FloatList) == false) 
		{
			_l16800 += "_FloatList=" + _FloatList + "| ";
		}
		if (_DoubleListSet == true && Utils.isNull(_DoubleList) == false) 
		{
			_l16800 += "_DoubleList=" + _DoubleList + "| ";
		}
		if (_BooleanListSet == true && Utils.isNull(_BooleanList) == false) 
		{
			_l16800 += "_BooleanList=" + _BooleanList + "| ";
		}
		if (_PlayerMatrix2Set == true && Utils.isNull(_PlayerMatrix2) == false) 
		{
			_l16800 += "_PlayerMatrix2=" + _PlayerMatrix2 + "| ";
		}
		_l16800 += "]";
		return _l16800;
	}
}
