package com.nuggeta.temp.a.b.h.i;
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

class T1224
{

	public function new()
	{
	}

	public static function readObject( factory:T1222,  stream:T1220):Serializable /*throws NError*/
	{
		var _u16673:Serializable = null;
		try {
			var _m16674:Int = stream._m17886();
			if (_m16674 == T1221._m17179) 
			{
				return null;
			}
			stream._m17887();
			var _y16675:Int = stream._m17888();
			_u16673 = factory._m17595(stream, _y16675);
		} catch ( e:NError) 
		{
			throw new NError("Can't read Object", e);
		}
		return _u16673;
	}

	public static function _m17892( _p16676:T1222,  _d16677:T1220):NList<Int> /*throws NError*/
	{
		var _u7738:Int = _d16677._m17886();
		if (_u7738 == T1221._m17179) 
		{
			return null;
		}
		_d16677._m17887();
		var _x7739:Int = _d16677._m17888();
		var _r16680:NList<Int> = new NList<Int>();
		for (_i7741 in 0 ... _x7739) 
		{
			var _i7742:Int = _d16677._m17886();
			if (_i7742 == T1221._m17179) 
			{
				_r16680.add(Utils.NULL_INTEGER);
			} else 
			{
				_r16680.add(_d16677._m17887());
			}
		}
		return _r16680;
	}

	public static function _m17893( factory:T1222,  stream:T1220):NList<Int> /*throws NError*/
	{
		var _b16678:Int = stream._m17886();
		if (_b16678 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _r16679:Int = stream._m17888();
		var _h16687:NList<Int> = new NList<Int>();
		for (_o16681 in 0 ... _r16679) 
		{
			var _z16682:Int = stream._m17886();
			if (_z16682 == T1221._m17179) 
			{
				_h16687.add(Utils.NULL_SHORT);
			} else 
			{
				_h16687.add(stream._m17888());
			}
		}
		return _h16687;
	}

	public static function _m17894( _p16683:T1222,  _j16684:T1220):NList<Float> /*throws NError*/
	{
		var _u7748:Int = _j16684._m17886();
		if (_u7748 == T1221._m17179) 
		{
			return null;
		}
		_j16684._m17887();
		var _p7749:Int = _j16684._m17888();
		var _y16694:NList<Float> = new NList<Float>();
		for (_i7751 in 0 ... _p7749) 
		{
			var _i7752:Int = _j16684._m17886();
			if (_i7752 == T1221._m17179) 
			{
				_y16694.add(Utils.NULL_LONG);
			} else 
			{
				_y16694.add(_j16684._m17941());
			}
		}
		return _y16694;
	}

	public static function _m17895( factory:T1222,  stream:T1220):NList<Float> /*throws NError*/
	{
		var _h16685:Int = stream._m17886();
		if (_h16685 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _r16686:Int = stream._m17888();
		var _a16701:NList<Float> = new NList<Float>();
		for (_v16688 in 0 ... _r16686) 
		{
			var _w16689:Int = stream._m17886();
			if (_w16689 == T1221._m17179) 
			{
				_a16701.add(Utils.NULL_FLOAT);
			} else 
			{
				_a16701.add(stream._m17943());
			}
		}
		return _a16701;
	}

	public static function _m17896( _i16690:T1222,  _p16691:T1220):NList<Float> /*throws NError*/
	{
		var _p7758:Int = _p16691._m17886();
		if (_p7758 == T1221._m17179) 
		{
			return null;
		}
		_p16691._m17887();
		var _h7759:Int = _p16691._m17888();
		var _c16708:NList<Float> = new NList<Float>();
		for (_c7761 in 0 ... _h7759) 
		{
			var _l16696:Int = _p16691._m17886();
			if (_l16696 == T1221._m17179) 
			{
				_c16708.add(Utils.NULL_DOUBLE);
			} else 
			{
				_c16708.add(_p16691._m17940());
			}
		}
		return _c16708;
	}

	public static function _m17891( factory:T1222,  stream:T1220):NList<String> /*throws NError*/
	{
		var _c16692:Int = stream._m17886();
		if (_c16692 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _u16693:Int = stream._m17888();
		var _n16715:NList<String> = new NList<String>();
		for (_n16695 in 0 ... _u16693) 
		{
			_n16715.add(_m17882(stream));
		}
		return _n16715;
	}

	public static function _m17897( factory:T1222,  stream:T1220):NList<Bool> /*throws NError*/
	{
		var _f7767:Int = stream._m17886();
		if (_f7767 == T1221._m17179) 
		{
			return null;
		}
		stream._m17887();
		var _f16720:Int = stream._m17888();
		var _r16721:NList<Bool> = new NList<Bool>();
		for (_x16722 in 0 ... _f16720) 
		{
			var _l16723:Int = stream._m17886();
			if (_l16723 == T1221._m17179) 
			{
				_r16721.add(Utils.NULL_BOOLEAN);
			} else 
			{
				_r16721.add(stream._m17886() == (cast 1));
			}
		}
		return _r16721;
	}

	public static function _m17898( _j16724:T1222,  _t16698:T1220):NMatrix2
	{
		var _w16699:Int = _t16698._m17886();
		if (_w16699 == T1221._m17179) 
		{
			return null;
		}
		_t16698._m17887();
		var _w16727:Int = _t16698._m17888();
		var _o16728:Int = _t16698._m17888();
		var _c16729:NMatrix2 = new NMatrix2(_w16727, _o16728);
		var _n16730:Int = _w16727 * _o16728;
		for (_t16731 in 0 ... _n16730) 
		{
			_c16729.addItem(readObject(_j16724, _t16698));
		}
		return _c16729;
	}

	public static function _m17882( stream:T1220):String
	{
		var _x7778:Int = stream._m17886();
		if (_x7778 == T1221._m17179) 
		{
			return null;
		}
		return stream._m17942();
	}

	public static function _m17889( stream:T1220):Date
	{
		var _j7779:Int = stream._m17886();
		if (_j7779 == T1221._m17179) 
		{
			return Utils.NULL_DATE;
		}
		return Date.fromTime(cast stream._m17941());
	}

	public static function _m17885( stream:T1220):Float
	{
		var _f7780:Int = stream._m17886();
		if (_f7780 == T1221._m17179) 
		{
			return Utils.NULL_DOUBLE;
		}
		return stream._m17940();
	}

	public static function _m17880( stream:T1220):Int
	{
		var _z7781:Int = stream._m17886();
		if (_z7781 == T1221._m17179) 
		{
			return Utils.NULL_INTEGER;
		}
		return stream._m17887();
	}

	public static function _m17890( _e16705:T1220):Float
	{
		var _d16706:Int = _e16705._m17886();
		if (_d16706 == T1221._m17179) 
		{
			return Utils.NULL_LONG;
		}
		return _e16705._m17941();
	}

	public static function _m18609( stream:T1220):Int
	{
		var _u7783:Int = stream._m17886();
		if (_u7783 == T1221._m17179) 
		{
			return Utils.NULL_BYTE;
		}
		return stream._m17886();
	}

	public static function _m18610( stream:T1220):Int
	{
		var _l7784:Int = stream._m17886();
		if (_l7784 == T1221._m17179) 
		{
			return Utils.NULL_SHORT;
		}
		return stream._m17888();
	}

	public static function _m18611( stream:T1220):Float
	{
		var _g7785:Int = stream._m17886();
		if (_g7785 == T1221._m17179) 
		{
			return Utils.NULL_FLOAT;
		}
		return stream._m17943();
	}

	public static function _m17884( stream:T1220):Bool
	{
		var _t16713:Int = stream._m17886();
		if (_t16713 == T1221._m17179) 
		{
			return Utils.NULL_BOOLEAN;
		}
		return stream._m17886() == (cast 1);
	}

	public static function _m18612( _w16712:T1220):Int
	{
		return _w16712._m17887();
	}

	public static function _m18613( stream:T1220):Float
	{
		return stream._m17941();
	}

	public static function _m17881( stream:T1220):Int
	{
		return stream._m17888();
	}

	public static function _m17883( _l16753:T1220):Void
	{
		var _h16754:Int = _l16753._m17886();
		if (_h16754 == T1221._m17179) 
		{
			return;
		}
		if (_h16754 == T1221._t17184) 
		{
			_l16753._m17573(4);
			return;
		}
		if (_h16754 == T1221._h17185) 
		{
			_l16753._m17573(2);
			return;
		}
		if (_h16754 == T1221._g17186) 
		{
			_l16753._m17573(8);
			return;
		}
		if (_h16754 == T1221._v17187) 
		{
			_l16753._m17573(4);
			return;
		}
		if (_h16754 == T1221._t17188) 
		{
			_l16753._m17573(8);
			return;
		}
		if (_h16754 == T1221._y17191) 
		{
			_l16753._m17573(1);
			return;
		}
		if (_h16754 == T1221._d17189) 
		{
			var _v16755:Int = _l16753._m17887();
			_l16753._m17573(_v16755);
			return;
		}
		if (_h16754 == T1221._b17180) 
		{
			var _o16756:Int = _l16753._m17887();
			_l16753._m17573(_o16756);
			return;
		}
	}
}
