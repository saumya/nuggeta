package com.nuggeta.mimics.serialization.binary;
import com.nuggeta.mimics.serialization.binary.ByteBuffer;

class ByteBuffer
{

	public function new()
	{
	}

	public function putShortAt( i:Int,  value:Int):Void
	{
	}

	public function flip():Void
	{
	}

	public static function allocate():ByteBuffer
	{
		return null;
	}

	public static function wrap( data:Array<Int>):ByteBuffer
	{
		return null;
	}

	public function skip( n:Int):Void
	{
	}

	public function limit():Int
	{
		return 0;
	}

	public function position():Int
	{
		return 0;
	}

	public function get():Int
	{
		return 0;
	}

	public function getInt():Int
	{
		return 0;
	}

	public function getShort():Int
	{
		return 0;
	}

	public function getDouble():Float
	{
		return 0;
	}

	public function getBytes( length:Int):Array<Int>
	{
		return null;
	}

	public function getLong():Float
	{
		return 0;
	}

	public function getFloat():Float
	{
		return 0;
	}

	public function putShort( shortValue:Int):Void
	{
	}

	public function put( b:Int):Void
	{
	}

	public function putIntAt( sizePosition:Int,  i:Int):Void
	{
	}

	public function putBytes( bytesObj:Array<Int>):Void
	{
	}

	public function putInt( value:Int):Void
	{
	}

	public function putDouble( value:Float):Void
	{
	}

	public function putFloat( value:Float):Void
	{
	}

	public function putLong( value:Float):Void
	{
	}
}
