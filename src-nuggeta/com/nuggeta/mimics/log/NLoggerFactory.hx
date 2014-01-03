package com.nuggeta.mimics.log;

class NLoggerFactory
{

	public static function getLogger( className:String):NLogger
	{
		return new NLoggerImpl(className);
	}
}
