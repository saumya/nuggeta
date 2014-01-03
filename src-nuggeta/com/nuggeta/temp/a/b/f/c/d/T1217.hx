package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.mimics.net.NSocket;
import com.nuggeta.mimics.net.NSocketImpl;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;
import com.nuggeta.net.NetConnectionDrainHandler;
import com.nuggeta.net.NetConnectionFailHandler;
import com.nuggeta.net.NetConnectionOpenedHandler;
import com.nuggeta.net.NetConnectionReceivedHandler;
import com.nuggeta.network.Message;
import com.nuggeta.network.MessageListener;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.h.i.T1223;
import com.nuggeta.temp.a.b.f.c.d.AbstractNetworkConnection;
import com.nuggeta.mimics.net.NSocket;
import com.nuggeta.temp.a.b.f.c.d.T1214;
import com.nuggeta.network.Message;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.mimics.net.NSocketImpl;
import com.nuggeta.NError;
import com.nuggeta.temp.a.b.h.i.T1223;

class T1217 extends AbstractNetworkConnection
{

	private var socket:NSocket;

	private var network:T1214;

	private var server:String;

	private var port:Int;

	private var wsUrl:String;

	private var connectionReceivedHandler:Dynamic ->Void;

	private var _response:Message;

	public function new( name:String,  serializerFactory:T1222,  messageListener:Message ->Void,  host:String,  hostPort:Int,  url:String)
	{
		super(name, serializerFactory, messageListener);
		log = NLoggerFactory.getLogger("SocketConnection");
		server = host;
		port = hostPort;
		wsUrl = url;
	}


	override public function _m17266():Void
	{
		if (connectionState != ConnectionState.INITIAL) 
		{
			return;
		}
		connectionState = ConnectionState.STARTING;
		try {
			network = new T1214(serializerFactory, messageListener, connectionInvalidVersionDetectedListenerCollection, connectionLostListenerCollection);
			connectionReceivedHandler = function( data:Dynamic){
				if (connectionState == ConnectionState.STARTING || connectionState == ConnectionState.STARTED) 
				{
					if (wsUrl != null) 
					{
						network._m17270((cast data));
					} else 
					{
						network._m18575((cast data));
					}
				}
			};
			var connectionFailHandler:Void ->Void = function(){
				if (connectionState == ConnectionState.STARTING) 
				{
					connectionFailListenerCollection.fireConnectionFail();
				} else 
				{
					log.error("invalid connection status");
				}
			};
			var connectionOpenedHandler:Void ->Void = function(){
				connectionState = ConnectionState.STARTED;
				connectionReadyListenerCollection.fireConnectionReady();
			};
			socket = new NSocketImpl();
			socket.openConnection(name, server, port, wsUrl, connectionOpenedHandler, connectionLostHandler, connectionFailHandler, connectionReceivedHandler);
		} catch ( e:NError) 
		{
			log.errorCause("Can't connect to server  url " + server + ":" + port, e);
			connectionFailListenerCollection.fireConnectionFail();
		}
	}

	override public function _m17272( msg:Message):Void
	{
		if (connectionState != ConnectionState.STARTED) 
		{
			return;
		}
		_m18628(msg);
	}

	private function _m18628( msg:Message):Void
	{
		if (wsUrl != null) 
		{
			var msgStr:String = network._m17275(msg);
			socket.sendString(msgStr, null, connectionSendFailHandler);
		} else 
		{
			var binaryStream:T1223 = network._m18572(msg);
			socket.sendBytes(binaryStream._m18571(), null, connectionSendFailHandler);
			MemoryManagement.free(binaryStream);
		}
	}

	override public function _m17274( msg:Message,  resp:Message):Void
	{
		_response = resp;
		connectionState = ConnectionState.STOPPING;
		_m18628(msg);
		socket.drain(function(){
			try {
				messageListener(_response);
			} catch ( e:NError) 
			{
				log.errorCause("Error occured while processing message : ", e);
			}
		});
	}

	override public function _m17271():Void
	{
		tryStop();
	}


	override function tryStop():Void
	{
		try {
			socket.close();
		} catch ( e:NError) 
		{
		}
	}
}
