package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.util.NList;

class ConnectionFailListenerCollection
{

	public function new()
	{
		connectionFailListeners = new NList<Void ->Void>();
	}

	private var connectionFailListeners:NList<Void ->Void>;

	public function fireConnectionFail():Void
	{
		for (_y12116 in 0 ... connectionFailListeners.size()) 
		{
			var _l12117:Void ->Void = connectionFailListeners.get(_y12116);
			_l12117();
		}
	}

	public function getListeners():NList<Void ->Void>
	{
		return connectionFailListeners;
	}

	public function add( listener:Void ->Void):Void
	{
		connectionFailListeners.add(listener);
	}

	public function remove( listener:Void ->Void):Void
	{
		var _p12118:Int = connectionFailListeners.indexOf(listener);
		if (_p12118 >= 0) 
		connectionFailListeners.remove(_p12118);
	}
}
