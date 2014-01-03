package com.nuggeta.temp.a.b.h.i;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.util.NMatrix2;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.util.NMatrix2;

class T1225
{

	public function new()
	{
	}

	public static var _r16938:String = "api-client-java";

	public static function _m17575( _y16939:T1222,  _f16940:Dynamic,  _w16941:Int,  _s16942:T1220):Bool
	{
		if (_f16940 == null) 
		{
			return false;
		}
		_s16942._m17579(_w16941);
		_m17581(_y16939, _f16940, _s16942);
		return true;
	}

	public static function _m17581( factory:T1222,  _x16944:Dynamic,  stream:T1220):Bool
	{
		if (_x16944 == null) 
		{
			return false;
		}
		stream._m17580(T1221._b17180);
		var _v16946:Int = stream._m17572();
		stream._m17573(4);
		var _y16947:Serializable = (cast _x16944);
		var _o16948:Int = _y16947.getSerializerID();
		stream._m17579(_o16948);
		factory._m17286(_y16947, (cast stream));
		stream._m17582(_v16946, stream._m17572() - _v16946);
		return true;
	}

	public static function _m17587( _f16949:T1222,  _v16950:NList<Int>,  _r16951:Int,  _i16952:T1220):Bool
	{
		if (_v16950 == null) 
		{
			return false;
		}
		_i16952._m17579((cast _r16951));
		_i16952._m17580(T1221._l17181);
		var _e7973:Int = _i16952._m17572();
		_i16952._m17573(4);
		var _e7974:Int = _v16950.size();
		_i16952._m17579((cast _e7974));
		for (_d7975 in 0 ... _e7974) 
		{
			var _x16956:Int = _v16950.get(_d7975);
			if (Utils.isNullInteger(_x16956)) 
			{
				_i16952._m17580(T1221._m17179);
			} else 
			{
				_m17571(_x16956, _i16952);
			}
		}
		_i16952._m17582(_e7973, _i16952._m17572() - _e7973);
		return true;
	}

	public static function _m17588( factory:T1222,  _p16958:NList<Int>,  property:Int,  stream:T1220):Bool
	{
		if (_p16958 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _g16953:Int = stream._m17572();
		stream._m17573(4);
		var _c16954:Int = _p16958.size();
		stream._m17579((cast _c16954));
		for (_y16955 in 0 ... _c16954) 
		{
			var _u16964:Int = _p16958.get(_y16955);
			if (Utils.isNullShort(_u16964)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18615(_u16964, stream);
			}
		}
		stream._m17582(_g16953, stream._m17572() - _g16953);
		return true;
	}

	public static function _m17589( _w16957:T1222,  _r16966:NList<Float>,  _n16959:Int,  _x16960:T1220):Bool
	{
		if (_r16966 == null) 
		{
			return false;
		}
		_x16960._m17579((cast _n16959));
		_x16960._m17580(T1221._l17181);
		var _o7981:Int = _x16960._m17572();
		_x16960._m17573(4);
		var _h7982:Int = _r16966.size();
		_x16960._m17579((cast _h7982));
		for (_v7983 in 0 ... _h7982) 
		{
			var _c16972:Float = _r16966.get(_v7983);
			if (Utils.isNullLong(_c16972)) 
			{
				_x16960._m17580(T1221._m17179);
			} else 
			{
				_m18616(_c16972, _x16960);
			}
		}
		_x16960._m17582(_o7981, _x16960._m17572() - _o7981);
		return true;
	}

	public static function _m17590( factory:T1222,  _q16974:NList<Float>,  property:Int,  stream:T1220):Bool
	{
		if (_q16974 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _s16961:Int = stream._m17572();
		stream._m17573(4);
		var _u16962:Int = _q16974.size();
		stream._m17579((cast _u16962));
		for (_x16963 in 0 ... _u16962) 
		{
			var _r16980:Float = _q16974.get(_x16963);
			if (Utils.isNullFloat(_r16980)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18617(_r16980, stream);
			}
		}
		stream._m17582(_s16961, stream._m17572() - _s16961);
		return true;
	}

	public static function _m17591( _g16965:T1222,  _v16982:NList<Float>,  _o16967:Int,  _o16968:T1220):Bool
	{
		if (_v16982 == null) 
		{
			return false;
		}
		_o16968._m17579((cast _o16967));
		_o16968._m17580(T1221._l17181);
		var _c7989:Int = _o16968._m17572();
		_o16968._m17573(4);
		var _g7990:Int = _v16982.size();
		_o16968._m17579((cast _g7990));
		for (_s7991 in 0 ... _g7990) 
		{
			var _g16988:Float = _v16982.get(_s7991);
			if (Utils.isNullDouble(_g16988)) 
			{
				_o16968._m17580(T1221._m17179);
			} else 
			{
				_m18618(_g16988, _o16968);
			}
		}
		_o16968._m17582(_c7989, _o16968._m17572() - _c7989);
		return true;
	}

	public static function _m17592( factory:T1222,  _j16990:NList<Bool>,  property:Int,  stream:T1220):Bool
	{
		if (_j16990 == null) 
		{
			return false;
		}
		stream._m17579((cast property));
		stream._m17580(T1221._l17181);
		var _q16969:Int = stream._m17572();
		stream._m17573(4);
		var _y16970:Int = _j16990.size();
		stream._m17579((cast _y16970));
		for (_p16971 in 0 ... _y16970) 
		{
			var _x16996:Bool = _j16990.get(_p16971);
			if (Utils.isNullBoolean(_x16996)) 
			{
				stream._m17580(T1221._m17179);
			} else 
			{
				_m18619(_x16996, stream);
			}
		}
		stream._m17582(_q16969, stream._m17572() - _q16969);
		return true;
	}

	public static function _m17586( _i16997:T1222,  _i16998:NList<String>,  _b16999:Int,  _e16976:T1220):Bool
	{
		if (_i16998 == null) 
		{
			return false;
		}
		_e16976._m17579((cast _b16999));
		_e16976._m17580(T1221._l17181);
		var _b17001:Int = _e16976._m17572();
		_e16976._m17573(4);
		var _v17002:Int = _i16998.size();
		_e16976._m17579((cast _v17002));
		for (_f17003 in 0 ... _v17002) 
		{
			var _a17004:String = _i16998.get(_f17003);
			if (_a17004 == null) 
			{
				_e16976._m17580(T1221._m17179);
			} else 
			{
				_m18620(_a17004, _e16976);
			}
		}
		_e16976._m17582(_b17001, _e16976._m17572() - _b17001);
		return true;
	}

	public static function _m17574( stringValue:String,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNull(stringValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18620(stringValue, stream);
		return true;
	}

	public static function _m18620( _u17008:String,  stream:T1220):Bool
	{
		if (Utils.isNull(_u17008)) 
		{
			return false;
		}
		stream._m17580(T1221._d17189);
		stream._m17944(_u17008);
		return true;
	}

	public static function _m17578( doubleValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullDouble(doubleValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18618(doubleValue, stream);
		return true;
	}

	public static function _m18618( _f17013:Float,  stream:T1220):Bool
	{
		if (Utils.isNullDouble(_f17013)) 
		{
			return false;
		}
		stream._m17580(T1221._t17188);
		stream._m17945(_f17013);
		return true;
	}

	public static function _m17583( intValue:Int,  propertyId:Int,  _r16984:T1220):Bool
	{
		if (Utils.isNullInteger(intValue)) 
		{
			return false;
		}
		_r16984._m17579((cast propertyId));
		_m17571(intValue, _r16984);
		return true;
	}

	public static function _m17571( _a17018:Int,  stream:T1220):Bool
	{
		if (Utils.isNullInteger(_a17018)) 
		{
			return false;
		}
		stream._m17580(T1221._t17184);
		stream._m17946(_a17018);
		return true;
	}

	public static function _m17584( _n17020:Date,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullDate(_n17020)) 
		{
			return false;
		}
		_m17585(_n17020.getTime(), propertyId, stream);
		return true;
	}

	public static function _m17585( longValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullLong(longValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18616(longValue, stream);
		return true;
	}

	public static function _m18616( _y17026:Float,  stream:T1220):Bool
	{
		if (Utils.isNullLong(_y17026)) 
		{
			return false;
		}
		stream._m17580(T1221._g17186);
		stream._m17947(_y17026);
		return true;
	}

	public static function _m18621( _o17028:Int,  _k16992:T1220):Bool
	{
		if (Utils.isNullByte(_o17028)) 
		{
			return false;
		}
		_k16992._m17580(T1221._d17183);
		_k16992._m17580(_o17028);
		return true;
	}

	public static function _m18622( shortValue:Int,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullShort(shortValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18615(shortValue, stream);
		return true;
	}

	public static function _m18615( _m17033:Int,  stream:T1220):Bool
	{
		if (Utils.isNullShort(_m17033)) 
		{
			return false;
		}
		stream._m17580(T1221._h17185);
		stream._m17579(_m17033);
		return true;
	}

	public static function _m18623( floatValue:Float,  propertyId:Int,  stream:T1220):Bool
	{
		if (Utils.isNullFloat(floatValue)) 
		{
			return false;
		}
		stream._m17579((cast propertyId));
		_m18617(floatValue, stream);
		return true;
	}

	public static function _m18617( _s17038:Float,  stream:T1220):Bool
	{
		if (Utils.isNullFloat(_s17038)) 
		{
			return false;
		}
		stream._m17580(T1221._v17187);
		stream._m17948(_s17038);
		return true;
	}

	public static function _m17577( booleanValue:Bool,  _j17041:Int,  _c17000:T1220):Bool
	{
		if (Utils.isNullBoolean(booleanValue)) 
		{
			return false;
		}
		_c17000._m17579((cast _j17041));
		_m18619(booleanValue, _c17000);
		return true;
	}

	public static function _m18619( _d17043:Bool,  stream:T1220):Bool
	{
		if (Utils.isNullBoolean(_d17043)) 
		{
			return false;
		}
		stream._m17580(T1221._y17191);
		if (_d17043 == true) 
		{
			stream._m17580((cast 1));
		} else 
		if (_d17043 == false) 
		{
			stream._m17580((cast 0));
		}
		return true;
	}

	public static function _m17593( _h17045:T1222,  _c17046:NMatrix2,  _s17047:Int,  _z17048:T1220):Bool
	{
		if (Utils.isNull(_c17046)) 
		{
			return false;
		}
		_z17048._m17579((cast _s17047));
		_z17048._m17580(T1221._k17182);
		var _p17049:Int = _z17048._m17572();
		_z17048._m17573(4);
		var _v17050:Int = _c17046.getRowCount();
		var _r17051:Int = _c17046.getColumnCount();
		_z17048._m17579((cast _v17050));
		_z17048._m17579((cast _r17051));
		for (_s17052 in 0 ... _v17050) 
		{
			for (_f17053 in 0 ... _r17051) 
			{
				var _y17054:Serializable = _c17046.getItem(_s17052, _f17053);
				if (Utils.isNull(_y17054)) 
				{
					_z17048._m17580(T1221._m17179);
				} else 
				{
					_m17581(_h17045, _y17054, _z17048);
				}
			}
		}
		_z17048._m17582(_p17049, _z17048._m17572() - _p17049);
		return true;
	}
}
