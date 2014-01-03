package com.nuggeta.temp.a.b.h.j;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.util.NMatrix2;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.util.NMatrix2;

class T1228
{

	public function new()
	{
	}

	public static var _w16151:String = "api-client-java";

	private var _q16152:T1221;

	public static function _m18237( _c16153:T1222,  _w16154:Dynamic,  _f16155:Int,  _v16156:T1220):Bool
	{
		if (_w16154 == null) 
		{
			return false;
		}
		_v16156._m17579(_f16155);
		_m18240(_c16153, _w16154, _v16156);
		return true;
	}

	public static function _m18240( factory:T1222,  _h16158:Dynamic,  stream:T1220):Bool
	{
		if (_h16158 == null) 
		{
			return false;
		}
		stream._m17580(T1221._b17180);
		var _g16160:Int = stream._m17572();
		stream._m17573(4);
		var _x16161:Serializable = (cast _h16158);
		var _b16162:Int = _x16161.getSerializerID();
		stream._m17579(_b16162);
		factory._m17286(_x16161, (cast stream));
		stream._m17582(_g16160, stream._m17572() - _g16160);
		return true;
	}

	public static function _m18245( _h16163:T1222,  _e16164:NList<Int>,  _m16165:Int,  _g16166:T1220):Bool
	{
		if (_e16164 == null) 
		{
			return false;
		}
		_g16166._m17579((cast _m16165));
		_g16166._m17580(T1221._l17181);
		var _i7381:Int = _g16166._m17572();
		_g16166._m17573(4);
		var _w7382:Int = _e16164.size();
		_g16166._m17579((cast _w7382));
		for (_a7383 in 0 ... _w7382) 
		{
			var _r16170:Int = _e16164.get(_a7383);
			if (Utils.isNullInteger(_r16170)) 
			{
				_g16166._m17580(T1221._m17179);
			} else 
			{
				_m18235(_r16170, _g16166);
			}
		}
		_g16166._m17582(_i7381, _g16166._m17572() - _i7381);
		return true;
	}

	public static function _m18246( factory:T1222,  _z16172:NList<Int>,  property:Int,  stream:T1220):Bool
	{
		if (_z16172 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _y16167:Int = stream._m17572();
		stream._m17573(4);
		var _f16168:Int = _z16172.size();
		stream._m17579((cast _f16168));
		for (_i16169 in 0 ... _f16168) 
		{
			var _y16178:Int = _z16172.get(_i16169);
			if (Utils.isNullShort(_y16178)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18561(_y16178, stream);
			}
		}
		stream._m17582(_y16167, stream._m17572() - _y16167);
		return true;
	}

	public static function _m18247( _v16171:T1222,  _i16180:NList<Float>,  _s16173:Int,  _p16174:T1220):Bool
	{
		if (_i16180 == null) 
		{
			return false;
		}
		_p16174._m17579((cast _s16173));
		_p16174._m17580(T1221._l17181);
		var _h7389:Int = _p16174._m17572();
		_p16174._m17573(4);
		var _y7390:Int = _i16180.size();
		_p16174._m17579((cast _y7390));
		for (_p7391 in 0 ... _y7390) 
		{
			var _z16186:Float = _i16180.get(_p7391);
			if (Utils.isNullLong(_z16186)) 
			{
				_p16174._m17580(T1221._m17179);
			} else 
			{
				_m18562(_z16186, _p16174);
			}
		}
		_p16174._m17582(_h7389, _p16174._m17572() - _h7389);
		return true;
	}

	public static function _m18248( factory:T1222,  _o16188:NList<Float>,  property:Int,  stream:T1220):Bool
	{
		if (_o16188 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _l16175:Int = stream._m17572();
		stream._m17573(4);
		var _x16176:Int = _o16188.size();
		stream._m17579((cast _x16176));
		for (_b16177 in 0 ... _x16176) 
		{
			var _e16194:Float = _o16188.get(_b16177);
			if (Utils.isNullFloat(_e16194)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18563(_e16194, stream);
			}
		}
		stream._m17582(_l16175, stream._m17572() - _l16175);
		return true;
	}

	public static function _m18249( _v16179:T1222,  _p16196:NList<Float>,  _l16181:Int,  _i16182:T1220):Bool
	{
		if (_p16196 == null) 
		{
			return false;
		}
		_i16182._m17579((cast _l16181));
		_i16182._m17580(T1221._l17181);
		var _j7397:Int = _i16182._m17572();
		_i16182._m17573(4);
		var _v7398:Int = _p16196.size();
		_i16182._m17579((cast _v7398));
		for (_h7399 in 0 ... _v7398) 
		{
			var _x16202:Float = _p16196.get(_h7399);
			if (Utils.isNullDouble(_x16202)) 
			{
				_i16182._m17580(T1221._m17179);
			} else 
			{
				_m18564(_x16202, _i16182);
			}
		}
		_i16182._m17582(_j7397, _i16182._m17572() - _j7397);
		return true;
	}

	public static function _m18250( factory:T1222,  _e16204:NList<Bool>,  property:Int,  stream:T1220):Bool
	{
		if (_e16204 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _p16183:Int = stream._m17572();
		stream._m17573(4);
		var _h16184:Int = _e16204.size();
		stream._m17579((cast _h16184));
		for (_v16185 in 0 ... _h16184) 
		{
			var _j16210:Bool = _e16204.get(_v16185);
			if (Utils.isNullBoolean(_j16210)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18565(_j16210, stream);
			}
		}
		stream._m17582(_p16183, stream._m17572() - _p16183);
		return true;
	}

	public static function _m18244( _p16211:T1222,  _j16212:NList<String>,  _v16213:Int,  _n16190:T1220):Bool
	{
		if (_j16212 == null) 
		{
			return false;
		}
		_n16190._m17579((cast _v16213));
		_n16190._m17580(T1221._l17181);
		var _x16215:Int = _n16190._m17572();
		_n16190._m17573(4);
		var _f16216:Int = _j16212.size();
		_n16190._m17579((cast _f16216));
		for (_f16217 in 0 ... _f16216) 
		{
			var _j16218:String = _j16212.get(_f16217);
			if (_j16218 == null) 
			{
				_n16190._m17580(T1221._m17179);
			} else 
			{
				_m18566(_j16218, _n16190);
			}
		}
		_n16190._m17582(_x16215, _n16190._m17572() - _x16215);
		return true;
	}

	public static function _m18236( stringValue:String,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNull(stringValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18566(stringValue, stream);
		return true;
	}

	public static function _m18566( _q16222:String,  stream:T1220):Bool
	{
		if (Utils.isNull(_q16222)) 
		{
			return false;
		}
		stream._m17580(T1221._d17189);
		stream._m17944(_q16222);
		return true;
	}

	public static function _m18239( doubleValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullDouble(doubleValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18564(doubleValue, stream);
		return true;
	}

	public static function _m18564( _n16227:Float,  stream:T1220):Bool
	{
		if (Utils.isNullDouble(_n16227)) 
		{
			return false;
		}
		stream._m17580(T1221._t17188);
		stream._m17945(_n16227);
		return true;
	}

	public static function _m18241( intValue:Int,  propertyId:Int,  _v16198:T1220):Bool
	{
		if (Utils.isNullInteger(intValue)) 
		{
			return false;
		}
		_v16198._m17579((cast propertyId));
		_m18235(intValue, _v16198);
		return true;
	}

	public static function _m18235( _b16232:Int,  stream:T1220):Bool
	{
		if (Utils.isNullInteger(_b16232)) 
		{
			return false;
		}
		stream._m17580(T1221._t17184);
		stream._m17946(_b16232);
		return true;
	}

	public static function _m18242( _f16234:Date,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullDate(_f16234)) 
		{
			return false;
		}
		_m18243(_f16234.getTime(), propertyId, stream);
		return true;
	}

	public static function _m18243( longValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullLong(longValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18562(longValue, stream);
		return true;
	}

	public static function _m18562( _m16240:Float,  stream:T1220):Bool
	{
		if (Utils.isNullLong(_m16240)) 
		{
			return false;
		}
		stream._m17580(T1221._g17186);
		stream._m17947(_m16240);
		return true;
	}

	public static function _m18567( _f16242:Int,  _q16206:T1220):Bool
	{
		if (Utils.isNullByte(_f16242)) 
		{
			return false;
		}
		_q16206._m17580(T1221._d17183);
		_q16206._m17580(_f16242);
		return true;
	}

	public static function _m18568( shortValue:Int,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullShort(shortValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18561(shortValue, stream);
		return true;
	}

	public static function _m18561( _g16247:Int,  stream:T1220):Bool
	{
		if (Utils.isNullShort(_g16247)) 
		{
			return false;
		}
		stream._m17580(T1221._h17185);
		stream._m17579(_g16247);
		return true;
	}

	public static function _m18569( floatValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullFloat(floatValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18563(floatValue, stream);
		return true;
	}

	public static function _m18563( _f16252:Float,  stream:T1220):Bool
	{
		if (Utils.isNullFloat(_f16252)) 
		{
			return false;
		}
		stream._m17580(T1221._v17187);
		stream._m17948(_f16252);
		return true;
	}

	public static function _m18238( booleanValue:Bool,  _i16255:Int,  _x16214:T1220):Bool
	{
		if (Utils.isNullBoolean(booleanValue)) 
		{
			return false;
		}
		_x16214._m17579((cast _i16255));
		_m18565(booleanValue, _x16214);
		return true;
	}

	public static function _m18565( _y16257:Bool,  stream:T1220):Bool
	{
		if (Utils.isNullBoolean(_y16257)) 
		{
			return false;
		}
		stream._m17580(T1221._y17191);
		if (_y16257 == true) 
		{
			stream._m17580((cast 1));
		} else 
		if (_y16257 == false) 
		{
			stream._m17580((cast 0));
		}
		return true;
	}

	public static function _m18251( _o16259:T1222,  _p16260:NMatrix2,  _e16261:Int,  _x16262:T1220):Bool
	{
		if (Utils.isNull(_p16260)) 
		{
			return false;
		}
		_x16262._m17579((cast _e16261));
		_x16262._m17580(T1221._k17182);
		var _r16263:Int = _x16262._m17572();
		_x16262._m17573(4);
		var _f16264:Int = _p16260.getRowCount();
		var _s16265:Int = _p16260.getColumnCount();
		_x16262._m17579((cast _f16264));
		_x16262._m17579((cast _s16265));
		for (_n16266 in 0 ... _f16264) 
		{
			for (_f16267 in 0 ... _s16265) 
			{
				var _h16268:Serializable = _p16260.getItem(_n16266, _f16267);
				if (Utils.isNull(_h16268)) 
				{
					_x16262._m17580(T1221._m17179);
				} else 
				{
					_m18240(_o16259, _h16268, _x16262);
				}
			}
		}
		_x16262._m17582(_r16263, _x16262._m17572() - _r16263);
		return true;
	}
}
