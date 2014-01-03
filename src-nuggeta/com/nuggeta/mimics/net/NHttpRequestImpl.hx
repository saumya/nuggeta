package com.nuggeta.mimics.net;

import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.errors.Error;
import flash.net.URLRequestMethod;
import flash.net.URLLoaderDataFormat;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.HTTPStatusEvent;


import com.nuggeta.net.NetConnectionReceivedHandler;
import com.nuggeta.net.NetConnectionSendFailHandler;
import com.nuggeta.mimics.net.NHttpRequest;
import com.nuggeta.NError;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;

class NHttpRequestImpl implements NHttpRequest
{
	private var connectionReceivedHandler:Dynamic ->Void;
	private var asyncSendFailResult:Void ->Void;
	private var log:NLogger;

	private var urlLoader:URLLoader;
	private var urlRequest:URLRequest;

	private var id:String;
	
	public function new()
	{
		log = NLoggerFactory.getLogger("NHttpRequestImpl");
	}

	public function get(id:String, url:String, connectionReceivedHandler:Dynamic ->Void, asyncSendFailResult:Void ->Void):Void
	{
		this.id = id;
		initURLRequest(url, connectionReceivedHandler, asyncSendFailResult);

		try {
			urlLoader.load(urlRequest);
		} catch (e:Dynamic) {
			log.error("[" + id + "] connection failed" + e);
			asyncSendFailResult();
		}
	}
	
	public function post( id:String,  url:String,  data:String,  connectionReceivedHandler:Dynamic ->Void,  asyncSendFailResult:Void ->Void):Void
	{
		this.id = id;
		initURLRequest(url, connectionReceivedHandler, asyncSendFailResult);
		urlRequest.method = URLRequestMethod.POST;
		urlRequest.contentType = "plain/text";
		urlRequest.data = data;
		try{
			urlLoader.load(urlRequest);
		}catch (e:Dynamic) {
			log.error("[" + id + "] connection failed" + e);
			asyncSendFailResult();
		}
	}

	
	private function urlErrorHandler(e:IOErrorEvent):Void {
		log.error("Start Error " + e.toString());
		asyncSendFailResult();
    }

    private function urlCompleteHandler(data:Event):Void {
		connectionReceivedHandler(urlLoader.data);
    }

	private function urlStatusHandler(event:HTTPStatusEvent) {
		if (event.status != 200) {
			asyncSendFailResult();
		}
	}

	private function initURLRequest(url:String, connectionReceivedHandler:Dynamic ->Void,  asyncSendFailResult:Void ->Void) {
		this.connectionReceivedHandler = connectionReceivedHandler;
		this.asyncSendFailResult = asyncSendFailResult;
		urlRequest = new URLRequest(url);
		urlLoader = new URLLoader();
		urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
		urlLoader.addEventListener(IOErrorEvent.IO_ERROR, urlErrorHandler);
		urlLoader.addEventListener(Event.COMPLETE, urlCompleteHandler);
		urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS, urlStatusHandler);
	}
}
