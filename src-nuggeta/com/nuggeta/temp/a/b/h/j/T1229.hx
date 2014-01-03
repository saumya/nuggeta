package com.nuggeta.temp.a.b.h.j;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.lang.StringBuilder;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.lang.StringBuilder;

class T1229 implements T1220
{

	private var _r12064:StringBuilder;

	private var _i12065:Int;

	private var _w12066:Int;

	public function new( data:String)
	{
		_i12065 = 0;
		_w12066 = 0;
		_w12066 = data.length;
		this._r12064 = new StringBuilder(data);
	}

	public function _m17933( _o12067:Int):String
	{
		var _e12068:String = _r12064.substring(_i12065, _i12065 + _o12067);
		this._i12065 = _i12065 + _o12067;
		return _e12068;
	}

	public function _m17934( _l12069:String):Void
	{
		_r12064.appendString(_l12069);
		_i12065 = _r12064.length1();
	}


	public function toString():String
	{
		return _r12064.toString();
	}


	public function _m17572():Int
	{
		return _i12065;
	}


	public function _m17935():Int
	{
		return _r12064.length1();
	}


	public function _m17573( _r12070:Int):Void
	{
	}


	public function _m17576( position:Int,  _s12072:Int):Void
	{
		_m17936(position, "" + _s12072);
	}

	function _m17936( _k12073:Int,  strValue:String):Void
	{
		var _f12075:StringBuilder = new StringBuilder("");
		_f12075.appendString(_r12064.substring(0, _k12073));
		var _s12076:Int = strValue.length;
		var _e12077:String = "" + _s12076;
		var _m12078:Int = _e12077.length;
		_f12075.appendString("" + _m12078);
		_f12075.appendString(_e12077);
		_f12075.appendString(strValue);
		_f12075.appendString(_r12064.substring(_k12073, _r12064.length1()));
		_r12064 = _f12075;
		_i12065 = _f12075.length1();
		_w12066 = _f12075.length1();
	}

	public function _m17937( _o12079:String):Void
	{
		_m17938(_o12079.length);
		_m17934(_o12079);
	}


	public function _m17888():Int
	{
		return Std.parseInt(_m17939());
	}


	public function _m17940():Float
	{
		return Std.parseFloat(_m17939());
	}


	public function _m17887():Int
	{
		return Std.parseInt(_m17939());
	}


	public function _m17941():Float
	{
		return Std.parseFloat(_m17939());
	}


	public function _m17942():String
	{
		return _m17939();
	}


	public function _m17886():Int
	{
		return Std.parseInt(_m17939());
	}


	public function _m17943():Float
	{
		return Std.parseFloat(_m17939());
	}


	public function _m17579( _b12080:Int):Void
	{
		_m17937("" + _b12080);
	}


	public function _m17944( _l12081:String):Void
	{
		_m17937(_l12081);
	}


	public function _m17580( _o12082:Int):Void
	{
		_m17937("" + _o12082);
	}


	public function _m17582( _l12083:Int,  intValue:Int):Void
	{
		_m17936(_l12083, "" + intValue);
	}


	public function _m17945( _c12085:Float):Void
	{
		_m17937("" + _c12085);
	}


	public function _m17946( _s12086:Int):Void
	{
		_m17937("" + _s12086);
	}


	public function _m17947( _m12087:Float):Void
	{
		_m17937("" + _m12087);
	}


	public function _m17948( _a12088:Float):Void
	{
		_m17937("" + _a12088);
	}

	function _m17938( length:Int):Void
	{
		var _m12090:String = "" + length;
		var _t4227:Int = _m12090.length;
		_r12064.appendString("" + _t4227);
		_r12064.appendString(_m12090);
	}

	public function _m17949( _m12092:String,  _i12093:Int):String
	{
		var _d4228:Int = _m12092.length;
		for (_d12095 in _d4228 ... _i12093) 
		{
			_m12092 = "0" + _m12092;
		}
		return _m12092;
	}

	public function _m17939():String
	{
		var _l12096:Int = Std.parseInt(_m17933(1));
		var _r12097:Int = Std.parseInt(_m17933(_l12096));
		return _m17933(_r12097);
	}
}
