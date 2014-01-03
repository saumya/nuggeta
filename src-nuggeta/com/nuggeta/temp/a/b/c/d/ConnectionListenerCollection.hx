package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.util.NList;
import com.nuggeta.temp.a.b.c.d.ConnectionListener;

class ConnectionListenerCollection
{

	public function new()
	{
		listeners = new NList<ConnectionListener>();
	}

	private var listeners:NList<ConnectionListener>;

	public function fireConnectionReady():Void
	{
		for (_m15924 in 0 ... listeners.size()) 
		{
			var _g7196:ConnectionListener = listeners.get(_m15924);
			_g7196.onConnectionReady(null);
		}
	}

	public function fireConnectionFail():Void
	{
		for (_e7197 in 0 ... listeners.size()) 
		{
			var _t15925:ConnectionListener = listeners.get(_e7197);
			_t15925.onConnectionFail(null);
		}
	}

	public function fireConnectionLost():Void
	{
		for (_l15926 in 0 ... listeners.size()) 
		{
			var _t7200:ConnectionListener = listeners.get(_l15926);
			_t7200.onConnectionLost(null);
		}
	}

	public function fireInvalidVersionDetected():Void
	{
		for (_m15930 in 0 ... listeners.size()) 
		{
			var _k7202:ConnectionListener = listeners.get(_m15930);
			_k7202.onInvalidVersionDetected(null);
		}
	}

	public function add( _t15927:ConnectionListener):Void
	{
		listeners.add(_t15927);
	}

	public function remove( _b15931:ConnectionListener):Void
	{
		var _s15932:Int = listeners.indexOf(_b15931);
		if (_s15932 >= 0) 
		listeners.remove(_s15932);
	}

	public function getListeners():NList<ConnectionListener>
	{
		return listeners;
	}
}
