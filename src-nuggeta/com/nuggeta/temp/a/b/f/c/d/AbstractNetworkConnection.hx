package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.net.NetConnectionLostHandler;
import com.nuggeta.net.NetConnectionSendFailHandler;
import com.nuggeta.network.Message;
import com.nuggeta.network.MessageListener;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListener;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListener;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListener;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.c.d.T1211;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListenerCollection;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListenerCollection;

class AbstractNetworkConnection implements T1211
{

	var log:NLogger;

	var serializerFactory:T1222;

	var messageListener:Message ->Void;

	var connectionSendFailHandler:Void ->Void;

	var connectionLostHandler:Void ->Void;

	var name:String;

	var connectionState:Int;

	var connectionReadyListenerCollection:ConnectionReadyListenerCollection;

	var connectionFailListenerCollection:ConnectionFailListenerCollection;

	var connectionLostListenerCollection:ConnectionLostListenerCollection;

	var connectionInvalidVersionDetectedListenerCollection:ConnectionInvalidVersionDetectedListenerCollection;

	public function new( name:String,  serializerFactory:T1222,  messageListener:Message ->Void)
	{
		log = NLoggerFactory.getLogger("AbstractNetworkConnection");
		connectionReadyListenerCollection = new ConnectionReadyListenerCollection();
		connectionFailListenerCollection = new ConnectionFailListenerCollection();
		connectionLostListenerCollection = new ConnectionLostListenerCollection();
		connectionInvalidVersionDetectedListenerCollection = new ConnectionInvalidVersionDetectedListenerCollection();
		connectionState = ConnectionState.INITIAL;
		this.serializerFactory = serializerFactory;
		this.messageListener = messageListener;
		this.name = name;
		connectionLostHandler = function(){
			if (connectionState == ConnectionState.STARTED) 
			{
				connectionLostListenerCollection.fireConnectionLost();
			}
			if (connectionState == ConnectionState.STOPPING) 
			{
				tryStop();
			}
		};
		connectionSendFailHandler = function(){
			if (connectionState == ConnectionState.STARTED) 
			{
				connectionLostListenerCollection.fireConnectionLost();
			}
			if (connectionState == ConnectionState.STOPPING) 
			{
				tryStop();
			}
		};
	}

	function tryStop():Void
	{
	}


	public function _m17281( connectionReadyListener:Void ->Void):Void
	{
		connectionReadyListenerCollection.add(connectionReadyListener);
	}


	public function _m17277( _t17062:Void ->Void):Void
	{
		connectionReadyListenerCollection.remove(_t17062);
	}


	public function _m17282( connectionLostListener:Void ->Void):Void
	{
		connectionLostListenerCollection.add(connectionLostListener);
	}


	public function _m17279( _r17064:Void ->Void):Void
	{
		connectionLostListenerCollection.remove(_r17064);
	}


	public function _m17283( connectionFailListener:Void ->Void):Void
	{
		connectionFailListenerCollection.add(connectionFailListener);
	}


	public function _m17278( _t17066:Void ->Void):Void
	{
		connectionFailListenerCollection.remove(_t17066);
	}


	public function _m17284( connectionInvalidVersionDetectedListener:Void ->Void):Void
	{
		connectionInvalidVersionDetectedListenerCollection.add(connectionInvalidVersionDetectedListener);
	}


	public function _m17280( _c17068:Void ->Void):Void
	{
		connectionInvalidVersionDetectedListenerCollection.remove(_c17068);
	}


	public function _m17266():Void
	{
	}


	public function _m17271():Void
	{
	}


	public function _m17272( _y17069:Message):Void
	{
	}


	public function _m17274( _x17070:Message,  _y17071:Message):Void
	{
	}
}
