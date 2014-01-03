package com.nuggeta.mimics.net;
import flash.net.URLRequest;
import haxe.Int64;
import flash.Lib;

class Net
{

	public function new()
	{
	}

	public static function openURL( url:String):Void
	{
		Lib.getURL(new URLRequest(url) , "_blank");
	}
	

	public static function openWebView( url:String):Void
	{
		Lib.getURL(new URLRequest(url) , "_blank");
	}
	
	public static function closeWebView():Void
	{
	}
	
}
