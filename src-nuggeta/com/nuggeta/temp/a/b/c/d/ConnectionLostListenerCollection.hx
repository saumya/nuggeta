package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.util.NList;

class ConnectionLostListenerCollection
{

	public function new()
	{
		connectionLostListeners = new NList<Void ->Void>();
	}

	private var connectionLostListeners:NList<Void ->Void>;

	public function fireConnectionLost():Void
	{
		for (_t16312 in 0 ... connectionLostListeners.size()) 
		{
			var _o16313:Void ->Void = connectionLostListeners.get(_t16312);
			_o16313();
		}
	}

	public function getListeners():NList<Void ->Void>
	{
		return connectionLostListeners;
	}

	public function add( listener:Void ->Void):Void
	{
		connectionLostListeners.add(listener);
	}

	public function remove( listener:Void ->Void):Void
	{
		var _r16314:Int = connectionLostListeners.indexOf(listener);
		if (_r16314 >= 0) 
		connectionLostListeners.remove(_r16314);
	}
}
