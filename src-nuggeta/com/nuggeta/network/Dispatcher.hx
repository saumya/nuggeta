package com.nuggeta.network;
import com.nuggeta.network.Message;

interface Dispatcher
{

	function fireMessage( message:Message):Void;
}
