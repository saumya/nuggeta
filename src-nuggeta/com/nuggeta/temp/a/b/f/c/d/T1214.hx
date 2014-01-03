package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;
import com.nuggeta.network.Message;
import com.nuggeta.network.MessageListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.h.i.T1224;
import com.nuggeta.temp.a.b.h.i.T1225;
import com.nuggeta.temp.a.b.h.i.T1223;
import com.nuggeta.temp.a.b.h.j.T1227;
import com.nuggeta.temp.a.b.h.j.T1228;
import com.nuggeta.temp.a.b.h.j.T1229;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.util.NList;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.h.i.T1223;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;
import com.nuggeta.temp.a.b.h.j.T1229;
import com.nuggeta.NError;

class T1214
{

	private var _j16329:NLogger;

	private var _j7463:T1222;

	private var _o16331:NList<Int>;

	private var _v16332:Int;

	private var _i7466:Message ->Void;

	private var _l16334:Int;

	private var _o7468:ConnectionInvalidVersionDetectedListenerCollection;

	private var _q7469:ConnectionLostListenerCollection;

	public function new( _n16330:T1222,  _c16333:Message ->Void,  _i16335:ConnectionInvalidVersionDetectedListenerCollection,  _c16336:ConnectionLostListenerCollection)
	{
		_j16329 = NLoggerFactory.getLogger("Network");
		_o16331 = new NList<Int>();
		_v16332 = -1;
		_l16334 = 10;
		this._j7463 = _n16330;
		this._i7466 = _c16333;
		this._o7468 = _i16335;
		this._q7469 = _c16336;
	}

	public function _m18572( msg:Message):T1223
	{
		var _d16338:ByteBuffer = ByteBuffer.allocate();
		var _r16339:T1223 = new T1223(_d16338);
		_r16339._m17573(4);
		T1225._m17581(_j7463, msg, _r16339);
		var _p7472:Int = _r16339._m17572() - 4;
		_r16339._m17582(0, _p7472);
		_d16338.flip();
		return _r16339;
	}

	public function _m17275( _e16341:Message):String
	{
		var _j16342:T1229 = new T1229("");
		T1228._m18240(_j7463, _e16341, _j16342);
		var _u16343:String = _j16342.toString();
		var _p16344:Int = _u16343.length;
		var _d16345:String = _m18573(_p16344 + "", _l16334);
		var _b16346:String = _d16345 + _u16343;
		return _b16346;
	}

	public function _m18574( _p16347:Array<Int>):Void
	{
		for (_c16348 in 0 ... _p16347.length) 
		{
			_m18575(_p16347[_c16348]);
		}
	}

	public function _m18575( _w16349:Int):Void
	{
		_o16331.add((cast _w16349));
		if (_v16332 == -1) 
		{
			if (_o16331.size() == 4) 
			{
				var _x16350:ByteBuffer = ByteBuffer.allocate();
				for (_n7480 in 0 ... 4) 
				{
					_x16350.put(_o16331.get(_n7480));
				}
				_x16350.flip();
				_o16331.clear();
				_v16332 = _x16350.getInt();
				MemoryManagement.free(_x16350);
			}
		} else 
		{
			if (_o16331.size() == _v16332) 
			{
				var _n16352:ByteBuffer = ByteBuffer.allocate();
				for (_t16353 in 0 ... _v16332) 
				{
					_n16352.put(_o16331.get(_t16353));
				}
				_n16352.flip();
				var _d7483:Message = null;
				try {
					var _x16355:T1223 = new T1223(_n16352);
					_d7483 = (cast T1224.readObject(_j7463, _x16355));
					MemoryManagement.free(_x16355);
					_o16331.clear();
					_v16332 = -1;
					try {
						_i7466(_d7483);
					} catch ( e:NError) 
					{
						_j16329.errorCause("Error occured while processing message : " + _d7483, e);
					}
				} catch ( e:NError) 
				{
					_j16329.errorCause("Can't read command ", e);
					_o7468.fireInvalidVersionDetected();
				}
			}
		}
	}

	private static function _m18573( _u16356:String,  _s16357:Int):String
	{
		var _b7485:Int = _u16356.length;
		for (_h16359 in _b7485 ... _s16357) 
		{
			_u16356 = "0" + _u16356;
		}
		return _u16356;
	}

	public function _m17270( _x16360:String):Void
	{
		var _q16361:T1229 = null;
		while (_x16360.length > 0) 
		{
			var _w16362:String = _x16360.substring(0, _l16334);
			var _v16363:Int = Std.parseInt(_w16362);
			_x16360 = _x16360.substring(_l16334);
			_q16361 = new T1229(_x16360.substring(0, _v16363));
			var _r16364:Message = null;
			try {
				_r16364 = (cast T1227._m18252(_j7463, _q16361));
				_x16360 = _x16360.substring(_v16363);
				try {
					_i7466(_r16364);
				} catch ( e:NError) 
				{
					_j16329.errorCause("Error occured while processing message : ", e);
				}
			} catch ( e:NError) 
			{
				_j16329.errorCause("Can't read command ", e);
				_o7468.fireInvalidVersionDetected();
				return;
			}
		}
	}
}
