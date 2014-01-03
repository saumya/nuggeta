package com.nuggeta.mimics.net;
import haxe.Int64;
import haxe.Int64;
import StringTools;

class NUrlEncoder
{

	public function new()
	{
	}

	public static function encode( url:String,  enc:String):String
	{
		return StringTools.urlEncode(url);
	}

	public static function decode( url:String,  enc:String):String
	{
		return StringTools.urlDecode(url);
	}
}
