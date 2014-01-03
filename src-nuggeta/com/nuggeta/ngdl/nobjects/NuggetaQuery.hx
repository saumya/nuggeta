package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;

class NuggetaQuery implements Serializable
{

	public function new()
	{
		_domainSet = false;
		_startSet = false;
		_limitSet = false;
		_querySet = false;
	}

	public static var serializerID:Int = -3093;

	var _domain:String;

	var _domainSet:Bool;

	var _start:Int;

	var _startSet:Bool;

	var _limit:Int;

	var _limitSet:Bool;

	var _query:String;

	var _querySet:Bool;

	public function getDomain():String
	{
		return _domain;
	}

	public function setDomain( value:String):Void
	{
		_domain = value;
		_domainSet = true;
	}

	public function isdomainSet():Bool
	{
		return _domainSet;
	}

	public function unSetdomain():Void
	{
		_domainSet = false;
	}

	public function getStart():Int
	{
		return _start;
	}

	public function setStart( value:Int):Void
	{
		_start = value;
		_startSet = true;
	}

	public function isstartSet():Bool
	{
		return _startSet;
	}

	public function unSetstart():Void
	{
		_startSet = false;
	}

	public function getLimit():Int
	{
		return _limit;
	}

	public function setLimit( value:Int):Void
	{
		_limit = value;
		_limitSet = true;
	}

	public function islimitSet():Bool
	{
		return _limitSet;
	}

	public function unSetlimit():Void
	{
		_limitSet = false;
	}

	public function getQuery():String
	{
		return _query;
	}

	public function setQuery( value:String):Void
	{
		_query = value;
		_querySet = true;
	}

	public function isquerySet():Bool
	{
		return _querySet;
	}

	public function unSetquery():Void
	{
		_querySet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _i16385:NuggetaQuery = new NuggetaQuery();
		if (_domainSet == true && Utils.isNull(_domain) == false) 
		{
			_i16385.setDomain(_domain);
		}
		if (_startSet == true && Utils.isNullInteger(_start) == false) 
		{
			_i16385.setStart(_start);
		}
		if (_limitSet == true && Utils.isNullInteger(_limit) == false) 
		{
			_i16385.setLimit(_limit);
		}
		if (_querySet == true && Utils.isNull(_query) == false) 
		{
			_i16385.setQuery(_query);
		}
		return _i16385;
	}

	public function toString():String
	{
		var _t16386:String = "";
		_t16386 += "[" + "NuggetaQuery" + " --> ";
		if (_domainSet == true && Utils.isNull(_domain) == false) 
		{
			_t16386 += "_domain=" + _domain + "| ";
		}
		if (_startSet == true && Utils.isNullInteger(_start) == false) 
		{
			_t16386 += "_start=" + _start + "| ";
		}
		if (_limitSet == true && Utils.isNullInteger(_limit) == false) 
		{
			_t16386 += "_limit=" + _limit + "| ";
		}
		if (_querySet == true && Utils.isNull(_query) == false) 
		{
			_t16386 += "_query=" + _query + "| ";
		}
		_t16386 += "]";
		return _t16386;
	}
}
