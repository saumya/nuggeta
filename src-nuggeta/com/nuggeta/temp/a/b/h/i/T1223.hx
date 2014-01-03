package com.nuggeta.temp.a.b.h.i;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;
import com.nuggeta.mimics.serialization.binary.ByteUtil;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;

class T1223 implements T1220
{

	private var _a7427:ByteBuffer;

	public function new( _s16281:ByteBuffer)
	{
		this._a7427 = _s16281;
	}


	public function _m17576( _w16282:Int,  _w16283:Int):Void
	{
		_a7427.putShortAt(_w16282, _w16283);
	}


	public function _m17573( _w16284:Int):Void
	{
		_a7427.skip(_w16284);
	}


	public function _m17935():Int
	{
		return _a7427.limit();
	}


	public function _m17572():Int
	{
		return _a7427.position();
	}


	public function _m17888():Int
	{
		return _a7427.getShort();
	}

	public function _m18570( length:Int):Array<Int>
	{
		return _a7427.getBytes(length);
	}

	public function _m17940():Float
	{
		return _a7427.getDouble();
	}


	public function _m17942():String
	{
		var _j16285:Int = _m17888();
		var _l16287:Array<Int> = _m18570(_j16285);
		var _b16288:String = ByteUtil.getString(_l16287);
		MemoryManagement.free(_l16287);
		return _b16288;
	}

	public function _m17887():Int
	{
		return _a7427.getInt();
	}

	public function _m17941():Float
	{
		return _a7427.getLong();
	}

	public function _m17886():Int
	{
		return _a7427.get();
	}

	public function _m17943():Float
	{
		return _a7427.getFloat();
	}

	public function _m17579( _b16289:Int):Void
	{
		_a7427.putShort(_b16289);
	}

	public function _m17580( _l16290:Int):Void
	{
		_a7427.put(_l16290);
	}

	public function _m17582( _j16291:Int,  _a16292:Int):Void
	{
		_a7427.putIntAt(_j16291, _a16292);
	}


	public function _m17944( _a16293:String):Void
	{
		var _v16294:Array<Int> = ByteUtil.getBytes(_a16293);
		var _m16295:Int = _v16294.length;
		_m17579((cast _m16295));
		_a7427.putBytes(_v16294);
		MemoryManagement.free(_v16294);
	}

	public function _m17945( value:Float):Void
	{
		_a7427.putDouble(value);
	}

	public function _m17946( value:Int):Void
	{
		_a7427.putInt(value);
	}

	public function _m17947( value:Float):Void
	{
		_a7427.putLong(value);
	}

	public function _m17948( _j16299:Float):Void
	{
		_a7427.putFloat(_j16299);
	}

	public function _m18571():ByteBuffer
	{
		return _a7427;
	}
}
