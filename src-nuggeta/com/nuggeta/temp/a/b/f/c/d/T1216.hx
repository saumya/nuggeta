package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListener;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListener;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListener;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.temp.a.b.f.c.d.T1211;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.network.Message;

class T1216
{

	var _v16563:NLogger;

	var _e16564:T1211;

	var _w16565:ConnectionReadyListenerCollection;

	var _j16566:ConnectionLostListenerCollection;

	var _t16567:ConnectionFailListenerCollection;

	var _k16568:ConnectionInvalidVersionDetectedListenerCollection;

	var _r7659:String;

	private var _o16570:Bool;

	public function new( _l16569:String)
	{
		_w16565 = new ConnectionReadyListenerCollection();
		_j16566 = new ConnectionLostListenerCollection();
		_t16567 = new ConnectionFailListenerCollection();
		_k16568 = new ConnectionInvalidVersionDetectedListenerCollection();
		_r7659 = "";
		_o16570 = false;
		this._r7659 = _l16569;
	}

	public function _m17909( _y16571:T1211):Void
	{

		this._e16564 = _y16571;
		this._o16570 = false;
	}

	public function _m17907( _p16572:Message):Void
	{
		if (_e16564 == null) 
		{
			_v16563.error("**************************** No connection available to sendMessage , did you wait for StartResponse before sending any message ? ");
			return;
		}
		_e16564._m17272(_p16572);
	}

	public function _m17912( listener:Void ->Void):Void
	{
		_w16565.add(listener);
	}

	public function _m18603( listener:Void ->Void):Void
	{
		_w16565.remove(listener);
	}

	public function _m17913( listener:Void ->Void):Void
	{
		_j16566.add(listener);
	}

	public function _m18604( listener:Void ->Void):Void
	{
		_j16566.remove(listener);
	}

	public function _m17914( _y16573:Void ->Void):Void
	{
		_t16567.add(_y16573);
	}

	public function _m18605( listener:Void ->Void):Void
	{
		_t16567.remove(listener);
	}

	public function _m17926( _w16574:Void ->Void):Void
	{
		_k16568.add(_w16574);
	}

	public function _m18606( _p16580:Void ->Void):Void
	{
		_k16568.remove(_p16580);
	}

	public function _m17901():Void
	{
		_o16570 = true;
		if (_e16564 != null) 
		{
			_e16564._m17271();
		}
	}

	public function _m18607():Bool
	{
		return _o16570;
	}

	public function _m17927():T1211
	{
		return _e16564;
	}

	public function _m17928( _d16581:Message,  _s16582:Message):Void
	{
		if (_e16564 != null) 
		{
			_e16564._m17274(_d16581, _s16582);
		}
	}
}
