package com.nuggeta.mimics.utils;

class Utils
{

	public function new()
	{
	}

	public static var NULL_INTEGER:Int = 0;

	public static var NULL_SHORT:Int = 0;

	public static var NULL_LONG:Float = 0;

	public static var NULL_FLOAT:Float = 0;

	public static var NULL_DOUBLE:Float = 0;

	public static var NULL_BOOLEAN:Bool = false;

	public static var NULL_BYTE:Int = 0;
	public static var NULL_DATE:Date = null;

	public static function isNull( o:Dynamic):Bool
	{
		return o == null;
	}

	public static function isNullInteger( i:Int):Bool
	{
		return false;
	}

	public static function isNullShort( s:Int):Bool
	{
		return false;
	}

	public static function isNullLong( lng:Float):Bool
	{
		return false;
	}

	public static function isNullFloat( f:Float):Bool
	{
		return false;
	}

	public static function isNullDouble( d:Float):Bool
	{
		return false;
	}

	public static function isNullBoolean( b:Bool):Bool
	{
		return false;
	}

	public static function isNullByte( by:Int):Bool
	{
		return false;
	}
	public static function isNullDate( dt:Date):Bool
	{
		return dt == null;
	}

}
