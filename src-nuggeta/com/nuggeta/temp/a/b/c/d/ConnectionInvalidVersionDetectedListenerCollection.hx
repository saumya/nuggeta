package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.util.NList;

class ConnectionInvalidVersionDetectedListenerCollection
{

	public function new()
	{
		connectionInvalidVersionDetectedListeners = new NList<Void ->Void>();
	}

	private var connectionInvalidVersionDetectedListeners:NList<Void ->Void>;

	public function fireInvalidVersionDetected():Void
	{
		for (_n16912 in 0 ... connectionInvalidVersionDetectedListeners.size()) 
		{
			var _x16913:Void ->Void = connectionInvalidVersionDetectedListeners.get(_n16912);
			_x16913();
		}
	}

	public function getListeners():NList<Void ->Void>
	{
		return connectionInvalidVersionDetectedListeners;
	}

	public function add( listener:Void ->Void):Void
	{
		connectionInvalidVersionDetectedListeners.add(listener);
	}

	public function remove( listener:Void ->Void):Void
	{
		var _h16914:Int = connectionInvalidVersionDetectedListeners.indexOf(listener);
		if (_h16914 >= 0) 
		connectionInvalidVersionDetectedListeners.remove(_h16914);
	}
}
