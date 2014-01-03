package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListener;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListener;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListener;
import com.nuggeta.temp.a.b.f.c.d.T1216;
import com.nuggeta.temp.a.b.f.c.d.T1211;

class T1208 extends T1216
{

	public function new( name:String)
	{
		super(name);
		_v16563 = NLoggerFactory.getLogger("ConnectionManager");
	}


	override public function _m17909( _h16882:T1211):Void
	{
		super._m17909(_h16882);
		_m18614(_e16564);
		_e16564._m17266();
	}

	private function _m18614( _x16883:T1211):Void
	{
		_x16883._m17281(function(){

			_w16565.fireConnectionReady();
		});
		_x16883._m17282(function(){

			_j16566.fireConnectionLost();
		});
		_x16883._m17283(function(){

			_t16567.fireConnectionFail();
		});
		_x16883._m17284(function(){

			_k16568.fireInvalidVersionDetected();
		});
	}


	override public function _m17901():Void
	{
		super._m17901();
	}
}
