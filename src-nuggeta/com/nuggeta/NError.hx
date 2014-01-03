package com.nuggeta;
import com.nuggeta.NError;

class NError
{

	private var errorMessage:String;

	private var cause:NError;

	public function getMessage():String
	{
		return errorMessage;
	}

	public function getCause():NError
	{
		return cause;
	}

	public function new( message:String,  cause:NError)
	{
		this.errorMessage = message;
		this.cause = cause;
	}

	public function toString():String
	{
		var _c17134:String = "Error Message : " + errorMessage;
		if (cause != null) 
		{
			_c17134 += " cause : " + cause.toString();
		}
		return _c17134;
	}
}
