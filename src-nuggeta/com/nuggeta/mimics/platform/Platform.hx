package com.nuggeta.mimics.platform;
import haxe.Int64;
import haxe.Int64;

class Platform
{

	public function new()
	{
	}

	public static function isHTMLPlatform():Bool
	{
		return false;
	}
	
	public static function get():String
	{
		return "HaXe";
	}
}
