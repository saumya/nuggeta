package com.nuggeta.network;
import com.nuggeta.network.Message;

interface GameMessage extends Message
{

	function setGameId( gameId:String):Void;

	function getGameId():String;

	function setSenderId( senderId:String):Void;

	function getSenderId():String;
}
