package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListener;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListener;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListener;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.temp.a.b.f.c.d.T1211;
import com.nuggeta.util.NList;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.network.Message;

class T1207 implements T1211
{

	public function new()
	{
		_v8234 = new NList<T1211>();
		_r8235 = null;
		_m8236 = new ConnectionReadyListenerCollection();
		_u8237 = new ConnectionLostListenerCollection();
		_l8238 = new ConnectionFailListenerCollection();
		_l8239 = new ConnectionInvalidVersionDetectedListenerCollection();
		_t8240 = NLoggerFactory.getLogger("FoldingNetworkConnection");
	}

	private var _v8234:NList<T1211>;

	private var _r8235:T1211;

	private var _m8236:ConnectionReadyListenerCollection;

	private var _u8237:ConnectionLostListenerCollection;

	private var _l8238:ConnectionFailListenerCollection;

	private var _l8239:ConnectionInvalidVersionDetectedListenerCollection;

	private var _t8240:NLogger;

	private var _h8241:Void ->Void;

	private var _n8242:Void ->Void;

	private var _j8243:Void ->Void;

	private var _w8244:Void ->Void;


	public function _m17266():Void
	{
		_m17276();
	}

	private function _m17276():Void
	{
		var _s8245:Int = _v8234.size();

		if (_s8245 != 0) 
		{
			if (_r8235 != null) 
			{
				_r8235._m17277(_h8241);
				_r8235._m17278(_j8243);
				_r8235._m17279(_n8242);
				_r8235._m17280(_w8244);
			}
			_r8235 = _v8234.get(0);
			_v8234.remove(0);
			_h8241 = function(){
				_r8235._m17277(_h8241);
				_m8236.fireConnectionReady();
			};
			_r8235._m17281(_h8241);
			_n8242 = function(){
				_r8235._m17279(_n8242);
				_u8237.fireConnectionLost();
				return;
			};
			_r8235._m17282(_n8242);
			_j8243 = function(){
				_r8235._m17278(_j8243);
				_m17276();
				return;
			};
			_r8235._m17283(_j8243);
			_w8244 = function(){
				_r8235._m17280(_w8244);
				_l8239.fireInvalidVersionDetected();
			};
			_r8235._m17284(_w8244);

			_r8235._m17266();
		} else 
		{

			_l8238.fireConnectionFail();
		}
	}


	public function _m17271():Void
	{
		if (_r8235 != null) 
		{
			_r8235._m17271();
		} else 
		{

		}
	}


	public function _m17272( _s8246:Message):Void
	{
		_r8235._m17272(_s8246);
	}

	public function _m17285( _v8247:T1211):Void
	{
		_v8234.add(_v8247);
	}


	public function _m17281( connectionReadyListener:Void ->Void):Void
	{
		_m8236.add(connectionReadyListener);
	}


	public function _m17282( connectionLostListener:Void ->Void):Void
	{
		_u8237.add(connectionLostListener);
	}


	public function _m17283( connectionFailListener:Void ->Void):Void
	{
		_l8238.add(connectionFailListener);
	}


	public function _m17284( connectionInvalidVersionDetectedListener:Void ->Void):Void
	{
		_l8239.add(connectionInvalidVersionDetectedListener);
	}


	public function _m17280( _h8252:Void ->Void):Void
	{
		_l8239.remove(_h8252);
	}


	public function _m17277( _s8253:Void ->Void):Void
	{
		_m8236.remove(_s8253);
	}


	public function _m17279( _q8254:Void ->Void):Void
	{
		_u8237.remove(_q8254);
	}


	public function _m17278( _d8255:Void ->Void):Void
	{
		_l8238.remove(_d8255);
	}


	public function _m17274( _e8256:Message,  _e8257:Message):Void
	{
		_r8235._m17274(_e8256, _e8257);
	}
}
