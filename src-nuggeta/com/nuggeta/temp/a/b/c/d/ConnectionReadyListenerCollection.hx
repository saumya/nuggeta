package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.util.NList;

class ConnectionReadyListenerCollection
{

	public function new()
	{
		connectionReadyListeners = new NList<Void ->Void>();
	}

	private var connectionReadyListeners:NList<Void ->Void>;

	public function fireConnectionReady():Void
	{
		for (_m16879 in 0 ... connectionReadyListeners.size()) 
		{
			var _f16880:Void ->Void = connectionReadyListeners.get(_m16879);
			_f16880();
		}
	}

	public function getListeners():NList<Void ->Void>
	{
		return connectionReadyListeners;
	}

	public function add( listener:Void ->Void):Void
	{
		connectionReadyListeners.add(listener);
	}

	public function remove( listener:Void ->Void):Void
	{
		var _u16881:Int = connectionReadyListeners.indexOf(listener);
		if (_u16881 >= 0) 
		connectionReadyListeners.remove(_u16881);
	}
}
