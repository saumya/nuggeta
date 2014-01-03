package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.network.MessageListener;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.k.l.m.T1230;
import com.nuggeta.temp.k.l.m.T1231;
import com.nuggeta.temp.a.b.f.c.d.T1209;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.temp.a.b.f.c.d.T1211;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.f.c.d.T1207;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.k.l.m.T1230;
import com.nuggeta.temp.k.l.m.T1231;
import com.nuggeta.temp.a.b.f.c.d.T1217;
import com.nuggeta.temp.a.b.f.c.d.T1215;

class T1210 implements T1209
{

	var _k15987:NLogger;

	private var _c7247:String;

	private var _n7248:String;

	public function new( _m15988:String,  _r15989:String)
	{
		_k15987 = NLoggerFactory.getLogger("ConnectionFactoryImpl");
		this._c7247 = _m15988;
		this._n7248 = _r15989;
	}


	public function _m17910( _o15990:String,  _u15991:Message ->Void,  _h15992:String):T1211
	{
		var _n15993:Array<String> = _h15992.split(":");
		var _c15994:String = _n15993[0];
		var _v15995:Int = Std.parseInt(_n15993[1]);
		var _x15996:Int = _v15995 + 1;
		var _b15997:T1207 = new T1207();
		var _p15998:Array<String> = _c7247.split("/");
		var _q15999:Array<String> = _n7248.split("/");
		for (_t16000 in 0 ... _p15998.length) 
		{
			var _e16001:String = _p15998[_t16000];
			var _h16002:String = _q15999[_t16000];
			var _t16003:T1222 = null;
			if (_h16002 == "bin") 
			{
				_t16003 = new T1230();
			} else 
			{
				_t16003 = new T1231();
			}
			if (_e16001 == "sock") 
			{
				_b15997._m17285(new T1217(_o15990, _t16003, _u15991, _c15994, _v15995, null));
			} else 
			if (_e16001 == "wsock") 
			{
				var _n16004:String = "ws://" + _c15994 + ":" + _x15996 + "/nuggeta/";
				_b15997._m17285(new T1217(_o15990, _t16003, _u15991, null, 0, _n16004));
			} else 
			if (_e16001 == "http") 
			{
				_b15997._m17285(new T1215(_o15990, _t16003, _u15991, "http://" + _c15994 + ":" + _x15996 + "/httpstream/"));
			} else 
			{
				_k15987.error("Unsupported network " + _e16001);
			}
		}
		return _b15997;
	}
}
