package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.lang.NSystem;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.mimics.net.NHttpRequest;
import com.nuggeta.mimics.net.NHttpRequestImpl;
import com.nuggeta.net.NetConnectionReceivedHandler;
import com.nuggeta.net.NetConnectionSendFailHandler;
import com.nuggeta.network.Message;
import com.nuggeta.network.MessageListener;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.c.d.AbstractNetworkConnection;
import com.nuggeta.temp.a.b.f.c.d.T1214;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.network.Message;
import com.nuggeta.mimics.net.NHttpRequest;
import com.nuggeta.mimics.net.NHttpRequestImpl;
import com.nuggeta.NError;

class T1215 extends AbstractNetworkConnection
{

	private var _e1248:String;

	private var _r8205:String;

	var _c8206:Bool;

	private static var _v8207:String = "x";

	private var _b8208:T1214;

	public function new( name:String,  serializerFactory:T1222,  messageListener:Message ->Void,  _r8204:String)
	{
		super(name, serializerFactory, messageListener);
		log = NLoggerFactory.getLogger("HttpConnection");
		this._e1248 = _r8204;
	}


	override public function _m17266():Void
	{
		if (connectionState != ConnectionState.INITIAL) 
		{
			return;
		}
		connectionState = ConnectionState.STARTING;
		_b8208 = new T1214(serializerFactory, messageListener, connectionInvalidVersionDetectedListenerCollection, connectionLostListenerCollection);
		var _z8209:NHttpRequest = new NHttpRequestImpl();
		var _d8210:Dynamic ->Void = function( _l8211:Dynamic){
			if (connectionState == ConnectionState.STARTING) 
			{
				_r8205 = (cast _l8211);

				connectionState = ConnectionState.STARTED;
				connectionReadyListenerCollection.fireConnectionReady();
				_m17268();
			} else 
			{
				log.error("invalid connection status");
			}
		};
		var _v8212:Void ->Void = function(){
			if (connectionState == ConnectionState.STARTING) 
			{
				connectionFailListenerCollection.fireConnectionFail();
			} else 
			{
				log.error("invalid connection status");
			}
		};
		var _l8213:Float = NSystem.currentTimeMillis();
		_z8209.get(name, _e1248 + "?init=init&p=" + _v8207 + "&id=" + _l8213, _d8210, _v8212);
	}

	private function _m17268():Void
	{
		if (connectionState != ConnectionState.STARTED) 
		{
			return;
		}
		var _m8214:NHttpRequest = new NHttpRequestImpl();
		var _a8215:Dynamic ->Void = function( _g8216:Dynamic){
			try {
				if (connectionState != ConnectionState.STARTED) 
				{
					return;
				}
				var _r8217:String = (cast _g8216);
				if (_r8217 != null && _r8217.length > 0) 
				{
					if (_r8217 == "INVALID_SESSION_ID") 
					{
						connectionLostListenerCollection.fireConnectionLost();
						return;
					}
				}
				_b8208._m17270(_r8217);
				_m17268();
			} catch ( exception:NError) 
			{
				if (!_c8206) 
				{
					_c8206 = true;
					log.debugCause("can't poll: ", exception);
					connectionLostListenerCollection.fireConnectionLost();
				} else 
				{

				}
			}
		};
		var _g1260:Void ->Void = function(){
			if (connectionState == ConnectionState.STARTED) 
			{
				connectionLostListenerCollection.fireConnectionLost();
			}
		};
		var _v1261:Float = NSystem.currentTimeMillis();
		_m8214.get(name, _e1248 + "?session_id=" + _r8205 + "&id=" + _v1261 + "&p=" + _v8207 + "&send=p", _a8215, _g1260);
	}


	override public function _m17271():Void
	{
		if (connectionState != ConnectionState.STARTED) 
		{
			connectionState = ConnectionState.STOPPED;
			tryStop();
		} else 
		if (connectionState != ConnectionState.STARTING) 
		{
			connectionState = ConnectionState.STOPPED;
			tryStop();
		} else 
		{
			log.error("invalid status " + connectionState);
		}
	}


	override function tryStop():Void
	{
	}


	override public function _m17272( msg:Message):Void
	{
		if (connectionState != ConnectionState.STARTED) 
		{
			return;
		}
		_m17273(msg);
	}


	override public function _m17274( _k8221:Message,  _o8222:Message):Void
	{
		connectionState = ConnectionState.STOPPING;
		_m17273(_k8221);
		try {
			messageListener(_o8222);
		} catch ( e:NError) 
		{
			log.errorCause("Error occured while processing message : ", e);
		}
	}

	private function _m17273( _c8223:Message):Void
	{
		var _l8224:NHttpRequest = new NHttpRequestImpl();
		var _x8225:Dynamic ->Void = function( _g8226:Dynamic){
		};
		var _u8227:Void ->Void = function(){
			if (connectionState == ConnectionState.STARTED) 
			{
				connectionLostListenerCollection.fireConnectionLost();
			}
		};
		var _l8228:String = _b8208._m17275(_c8223);
		var _t8229:Float = NSystem.currentTimeMillis();
		_l8224.post(name, _e1248 + "?session_id=" + _r8205 + "&id=" + _t8229 + "&p=" + _v8207 + "&send=send", _l8228, _x8225, _u8227);
	}
}
