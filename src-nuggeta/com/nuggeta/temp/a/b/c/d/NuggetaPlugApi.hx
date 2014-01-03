package com.nuggeta.temp.a.b.c.d;
import com.nuggeta.network.GameMessage;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.NuggetaMessageListener;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.util.NList;
import com.nuggeta.network.Message;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.ngdl.NuggetaMessageListener;
import com.nuggeta.network.GameMessage;

interface NuggetaPlugApi
{

	function pump():NList<Message>;

	function start():Void;

	function stop():Void;

	function addGameMessageListener( listener:GameMessageListener):Void;

	function removeGameMessageListener( listener:GameMessageListener):Void;

	function addNuggetaMessageListener( listener:NuggetaMessageListener):Void;

	function removeNuggetaMessageListener( listener:NuggetaMessageListener):Void;

	function sendMessage( message:Message):String;

	function sendGameMessage( message:GameMessage,  gameId:String):String;
}
