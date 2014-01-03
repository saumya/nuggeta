package com.nuggeta.network;

interface Serializable
{

	function getSerializerID():Int;

	function toString():String;

	function clone():Dynamic;
}
