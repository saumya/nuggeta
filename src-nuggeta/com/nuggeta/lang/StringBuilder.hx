package com.nuggeta.lang;
import haxe.Int64;
import haxe.Int64;

class StringBuilder
{
	var builder:String;
	
	public function new( str:String)
	{
		builder = new String(str);
	}

	public function substring( _position:Int,  i:Int):String
	{
		return builder.substring(_position,i);
	}

	public function appendString( s:String):Void
	{
		builder += s;
	}

	public function length1():Int
	{
		return builder.length;
	}

	public function replace( i:Int,  j:Int,  str:String):Void
	{
		builder = builder.substring(0, i) + str + builder.substring(j);
	}

	public function insert( _position:Int,  c:String):Void
	{
		builder = builder.substring(0, _position) + c + builder.substring(_position);
	}


	public function toString():String
	{
		return builder;
	}
}
