package com.nuggeta.mimics.database;
import haxe.Int64;
import haxe.Int64;
import flash.net.SharedObject;
import flash.net.SharedObjectFlushStatus;
class NStorage
{

	public function new()
	{
	}

	public static function getItem( key:String):String
	{
		var so = flash.net.SharedObject.getLocal(key);
		return so.data.message;
	}

	public static function setItem( key:String,  value:String):Void
	{
		var so = flash.net.SharedObject.getLocal(key);
		so.data.message = value;
		// Prepare to save.. with some checks
		#if (cpp || html)
			// Android didn't wanted SharedObjectFlushStatus not to be a String
			var flushStatus:SharedObjectFlushStatus = null;
		#else
			// Flash wanted it very much to be a String
			var flushStatus:String = null;
		#end

		try {
			flushStatus = so.flush() ; 
		} catch ( e:Dynamic ) {
			trace("couldn't store... ");
		}

		if ( flushStatus != null ) {
			switch( flushStatus ) {
				case SharedObjectFlushStatus.PENDING:
					trace('requesting permission to save');
			}
		}
	}
}
