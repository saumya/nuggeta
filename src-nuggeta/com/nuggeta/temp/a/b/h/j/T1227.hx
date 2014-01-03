package com.nuggeta.temp.a.b.h.j;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.util.NMatrix2;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.NError;
import com.nuggeta.util.NList;
import com.nuggeta.util.NMatrix2;

class T1227
{

	public function new()
	{
	}

	public static function _m18252( _m16027:T1222,  _s16028:T1220):Serializable /*throws NError*/
	{
		var _c16029:Serializable = null;
		try {
			var _g16030:Int = _s16028._m17886();
			if (_g16030 == T1221._m17179) 
			{
				return null;
			}
			_s16028._m17887();
			var _e16031:Int = _s16028._m17888();
			_c16029 = _m16027._m17595(_s16028, _e16031);
		} catch ( e:NError) 
		{
			throw new NError("Can't read Object ", e);
		}
		return _c16029;
	}

	public static function _m18546( _k16032:T1222,  _g16033:T1220):NList<Int> /*throws NError*/
	{
		var _m7286:Int = _g16033._m17886();
		if (_m7286 == T1221._m17179) 
		{
			return null;
		}
		_g16033._m17887();
		var _e7287:Int = _g16033._m17888();
		var _f16036:NList<Int> = new NList<Int>();
		for (_u7289 in 0 ... _e7287) 
		{
			var _k7290:Int = _g16033._m17886();
			if (_k7290 == T1221._m17179) 
			{
				_f16036.add(Utils.NULL_INTEGER);
			} else 
			{
				_f16036.add(_g16033._m17887());
			}
		}
		return _f16036;
	}

	public static function _m18547( factory:T1222,  stream:T1220):NList<Int> /*throws NError*/
	{
		var _c16034:Int = stream._m17886();
		if (_c16034 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _u16035:Int = stream._m17888();
		var _k16043:NList<Int> = new NList<Int>();
		for (_t16037 in 0 ... _u16035) 
		{
			var _s16038:Int = stream._m17886();
			if (_s16038 == T1221._m17179) 
			{
				_k16043.add(Utils.NULL_SHORT);
			} else 
			{
				_k16043.add(stream._m17888());
			}
		}
		return _k16043;
	}

	public static function _m18548( _s16039:T1222,  _g16040:T1220):NList<Float> /*throws NError*/
	{
		var _c7296:Int = _g16040._m17886();
		if (_c7296 == T1221._m17179) 
		{
			return null;
		}
		_g16040._m17887();
		var _b7297:Int = _g16040._m17888();
		var _c16050:NList<Float> = new NList<Float>();
		for (_a7299 in 0 ... _b7297) 
		{
			var _o7300:Int = _g16040._m17886();
			if (_o7300 == T1221._m17179) 
			{
				_c16050.add(Utils.NULL_LONG);
			} else 
			{
				_c16050.add(_g16040._m17941());
			}
		}
		return _c16050;
	}

	public static function _m18549( factory:T1222,  stream:T1220):NList<Float> /*throws NError*/
	{
		var _h16041:Int = stream._m17886();
		if (_h16041 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _r16042:Int = stream._m17888();
		var _a16057:NList<Float> = new NList<Float>();
		for (_n16044 in 0 ... _r16042) 
		{
			var _w16045:Int = stream._m17886();
			if (_w16045 == T1221._m17179) 
			{
				_a16057.add(Utils.NULL_FLOAT);
			} else 
			{
				_a16057.add(stream._m17943());
			}
		}
		return _a16057;
	}

	public static function _m18550( _p16046:T1222,  _l16047:T1220):NList<Float> /*throws NError*/
	{
		var _y7306:Int = _l16047._m17886();
		if (_y7306 == T1221._m17179) 
		{
			return null;
		}
		_l16047._m17887();
		var _j7307:Int = _l16047._m17888();
		var _h16064:NList<Float> = new NList<Float>();
		for (_k7309 in 0 ... _j7307) 
		{
			var _w16052:Int = _l16047._m17886();
			if (_w16052 == T1221._m17179) 
			{
				_h16064.add(Utils.NULL_DOUBLE);
			} else 
			{
				_h16064.add(_l16047._m17940());
			}
		}
		return _h16064;
	}

	public static function _m18545( factory:T1222,  stream:T1220):NList<String> /*throws NError*/
	{
		var _n16048:Int = stream._m17886();
		if (_n16048 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _a16049:Int = stream._m17888();
		var _l16071:NList<String> = new NList<String>();
		for (_n16051 in 0 ... _a16049) 
		{
			_l16071.add(_m18539(stream));
		}
		return _l16071;
	}

	public static function _m18551( factory:T1222,  stream:T1220):NList<Bool> /*throws NError*/
	{
		var _s7315:Int = stream._m17886();
		if (_s7315 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _p16076:Int = stream._m17888();
		var _i16077:NList<Bool> = new NList<Bool>();
		for (_q16078 in 0 ... _p16076) 
		{
			var _k16079:Int = stream._m17886();
			if (_k16079 == T1221._m17179) 
			{
				_i16077.add(Utils.NULL_BOOLEAN);
			} else 
			{
				_i16077.add(stream._m17886() == (cast 1));
			}
		}
		return _i16077;
	}

	public static function _m18552( _i16080:T1222,  _g16054:T1220):NMatrix2
	{
		var _v16055:Int = _g16054._m17886();
		if (_v16055 == T1221._m17179) 
		{
			return null;
		}
		_g16054._m17887();
		var _e16083:Int = _g16054._m17888();
		var _h16084:Int = _g16054._m17888();
		var _s16085:NMatrix2 = new NMatrix2(_e16083, _h16084);
		var _n16086:Int = _e16083 * _h16084;
		for (_b16087 in 0 ... _n16086) 
		{
			_s16085.addItem(_m18252(_i16080, _g16054));
		}
		return _s16085;
	}

	public static function _m18539( stream:T1220):String
	{
		var _t7326:Int = stream._m17886();
		if (_t7326 == T1221._m17179) 
		{
			return null;
		}
		return stream._m17942();
	}

	public static function _m18543( stream:T1220):Date
	{
		var _d7327:Int = stream._m17886();
		if (_d7327 == T1221._m17179) 
		{
			return Utils.NULL_DATE;
		}
		return Date.fromTime(cast stream._m17941());
	}

	public static function _m18542( stream:T1220):Float
	{
		var _q7328:Int = stream._m17886();
		if (_q7328 == T1221._m17179) 
		{
			return Utils.NULL_DOUBLE;
		}
		return stream._m17940();
	}

	public static function _m18537( stream:T1220):Int
	{
		var _a7329:Int = stream._m17886();
		if (_a7329 == T1221._m17179) 
		{
			return Utils.NULL_INTEGER;
		}
		return stream._m17887();
	}

	public static function _m18544( _s16061:T1220):Float
	{
		var _r16062:Int = _s16061._m17886();
		if (_r16062 == T1221._m17179) 
		{
			return Utils.NULL_LONG;
		}
		return _s16061._m17941();
	}

	public static function _m18556( stream:T1220):Int
	{
		var _h7331:Int = stream._m17886();
		if (_h7331 == T1221._m17179) 
		{
			return Utils.NULL_BYTE;
		}
		return stream._m17886();
	}

	public static function _m18557( stream:T1220):Int
	{
		var _q7332:Int = stream._m17886();
		if (_q7332 == T1221._m17179) 
		{
			return Utils.NULL_SHORT;
		}
		return stream._m17888();
	}

	public static function _m18558( stream:T1220):Float
	{
		var _u7333:Int = stream._m17886();
		if (_u7333 == T1221._m17179) 
		{
			return Utils.NULL_FLOAT;
		}
		return stream._m17943();
	}

	public static function _m18541( stream:T1220):Bool
	{
		var _i16069:Int = stream._m17886();
		if (_i16069 == T1221._m17179) 
		{
			return Utils.NULL_BOOLEAN;
		}
		return stream._m17886() == (cast 1);
	}

	public static function _m18559( _x16068:T1220):Int
	{
		return _x16068._m17887();
	}

	public static function _m18560( stream:T1220):Float
	{
		return stream._m17941();
	}

	public static function _m18538( stream:T1220):Int
	{
		return stream._m17888();
	}

	public static function _m18540( _x16109:T1220):Void
	{
		var _k16110:Int = _x16109._m17886();
		if (_k16110 == T1221._m17179) 
		{
			return;
		}
		if (_k16110 == T1221._t17184) 
		{
			_x16109._m17573(4);
			return;
		}
		if (_k16110 == T1221._h17185) 
		{
			_x16109._m17573(2);
			return;
		}
		if (_k16110 == T1221._g17186) 
		{
			_x16109._m17573(8);
			return;
		}
		if (_k16110 == T1221._v17187) 
		{
			_x16109._m17573(4);
			return;
		}
		if (_k16110 == T1221._t17188) 
		{
			_x16109._m17573(8);
			return;
		}
		if (_k16110 == T1221._y17191) 
		{
			_x16109._m17573(1);
			return;
		}
		if (_k16110 == T1221._d17189) 
		{
			var _i16111:Int = _x16109._m17887();
			_x16109._m17573(_i16111);
			return;
		}
		if (_k16110 == T1221._b17180) 
		{
			var _f16112:Int = _x16109._m17887();
			_x16109._m17573(_f16112);
			return;
		}
	}
}
