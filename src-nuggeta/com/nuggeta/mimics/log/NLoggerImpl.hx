package com.nuggeta.mimics.log ;
import com.nuggeta.NError;
/**
 * ...
 * @author Nuggeta
 */
 class NLoggerImpl implements NLogger
{
	
	private var className:String;
	
	public function new(className:String) 
	{
		this.className = className;
	}
	
	public function errorCause( msg:String,  e:NError):Void {
		trace("[" + className  + "] [ERROR]:" + msg + "| error-> " + e.getMessage());
	}

	public function error( msg:String):Void {
		trace("[" + className  + "] [ERROR]:" + msg );
	}

	public function info( msg:String):Void {
		trace("[" + className  + "] [INFO]:" + msg );
	}

	public function infoCause( msg:String,  e:NError):Void {
		trace("[" + className  + "] [INFO]:" + msg + "| error-> " + e.getMessage());
	}

	public function debug( msg:String):Void {
		if(isDebug()){
			trace("[" + className  + "] [DEBUG]:" + msg );
		}
	}

	public function debugCause( msg:String,  e:NError):Void {
		if(isDebug()){
			trace("[" + className  + "] [DEBUG]:" + msg + "| error-> " + e.getMessage());
		}
	}

	public function warn( msg:String):Void {
		trace("[" + className  + "] [WARM]:" + msg );
	}

	public function warnCause( msg:String,  e:NError):Void {
		trace("[" + className  + "] [WARM]:" + msg + "| error-> " + e.getMessage());
	}

	public function isDebug():Bool {
		return false;
	}
	
}
