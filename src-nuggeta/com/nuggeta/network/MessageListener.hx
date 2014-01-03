package com.nuggeta.network;
import com.nuggeta.network.Message;

interface MessageListener
{

	function onMessage( message:Message):Void;
}
