package com.nuggeta.database;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Serializable;

interface Storable extends Serializable
{

	function setStoreId( storeId:String):Void;

	function getStoreId():String;
}
