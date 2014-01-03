package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.temp.a.b.f.c.d.T1208;
import com.nuggeta.util.NList;

class T1212 extends T1208
{

	private var _l17096:NList<String>;

	public function new( name:String,  gameId:String)
	{
		_l17096 = new NList<String>();
		super(name);
		_l17096.add(gameId);
	}

	public function _m17915( gameId:String):Void
	{
		_l17096.add(gameId);
	}

	public function _m18625( _s17097:String):Void
	{
		_l17096.removeValue(_s17097);
	}

	public function _m17932( _k17099:String):Bool
	{
		for (_w17100 in 0 ... _l17096.size()) 
		{
			var _t17101:String = _l17096.get(_w17100);
			if (_t17101 == _k17099) 
			{
				return true;
			}
		}
		return false;
	}
}
