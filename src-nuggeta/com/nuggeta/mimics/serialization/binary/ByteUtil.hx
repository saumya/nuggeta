package com.nuggeta.mimics.serialization.binary;
import flash.utils.ByteArray;
import haxe.Int64;
import haxe.Int64;
import haxe.Utf8;

class ByteUtil
{

	public function new()
	{
	}

	public static function getBytes( str:String):Array<Int>
	{
	  var out = [], p = 0;
	  for (i in 0 ... str.length) {
	    var c = str.charCodeAt(i);
	    if (c < 128) {
	      out[p++] = c;
	    } else if (c < 2048) {
	      out[p++] = (c >> 6) | 192;
	      out[p++] = (c & 63) | 128;
	    } else {
	      out[p++] = (c >> 12) | 224;
	      out[p++] = ((c >> 6) & 63) | 128;
	      out[p++] = (c & 63) | 128;
	    }
	  }
	  return out;
	}

	public static function getString( bytes:Array<Int>):String
	{
		var pos = 0;
		var byteArray : ByteArray = new flash.utils.ByteArray();
		while (pos < bytes.length) {			 
			  byteArray.writeByte( bytes[pos++]);
		}
		  
		//var bytes:haxe.io.Bytes  = haxe.io.Bytes.ofData(byteArray);
		  
		return byteArray.toString();
	}
}
