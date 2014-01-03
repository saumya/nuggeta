package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.ChallengeStatus;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.ChallengeStatus;
import com.nuggeta.ngdl.nobjects.NChallenge;

class NChallenge implements Serializable implements Storable
{

	public function new()
	{
		_storeIdSet = false;
		_IdSet = false;
		_RequesterSet = false;
		_TargetSet = false;
		_StatusSet = false;
		_DateSet = false;
	}

	public static var serializerID:Int = -3084;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Id:String;

	var _IdSet:Bool;

	var _Requester:NPlayer;

	var _RequesterSet:Bool;

	var _Target:NPlayer;

	var _TargetSet:Bool;

	var _Status:ChallengeStatus;

	var _StatusSet:Bool;

	var _Date:Date;

	var _DateSet:Bool;

	public function getStoreId():String
	{
		return _storeId;
	}

	public function setStoreId( value:String):Void
	{
		_storeId = value;
		_storeIdSet = true;
	}

	public function isstoreIdSet():Bool
	{
		return _storeIdSet;
	}

	public function unSetstoreId():Void
	{
		_storeIdSet = false;
	}

	public function getId():String
	{
		return _Id;
	}

	public function setId( value:String):Void
	{
		_Id = value;
		_IdSet = true;
	}

	public function isIdSet():Bool
	{
		return _IdSet;
	}

	public function unSetId():Void
	{
		_IdSet = false;
	}

	public function getRequester():NPlayer
	{
		return _Requester;
	}

	public function setRequester( value:NPlayer):Void
	{
		_Requester = value;
		_RequesterSet = true;
	}

	public function isRequesterSet():Bool
	{
		return _RequesterSet;
	}

	public function unSetRequester():Void
	{
		_RequesterSet = false;
	}

	public function getTarget():NPlayer
	{
		return _Target;
	}

	public function setTarget( value:NPlayer):Void
	{
		_Target = value;
		_TargetSet = true;
	}

	public function isTargetSet():Bool
	{
		return _TargetSet;
	}

	public function unSetTarget():Void
	{
		_TargetSet = false;
	}

	public function getStatus():ChallengeStatus
	{
		return _Status;
	}

	public function setStatus( value:ChallengeStatus):Void
	{
		_Status = value;
		_StatusSet = true;
	}

	public function isStatusSet():Bool
	{
		return _StatusSet;
	}

	public function unSetStatus():Void
	{
		_StatusSet = false;
	}

	public function getDate():Date
	{
		return _Date;
	}

	public function setDate( value:Date):Void
	{
		_Date = value;
		_DateSet = true;
	}

	public function isDateSet():Bool
	{
		return _DateSet;
	}

	public function unSetDate():Void
	{
		_DateSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _p17112:NChallenge = new NChallenge();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_p17112.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_p17112.setId(_Id);
		}
		if (_RequesterSet == true && Utils.isNull(_Requester) == false) 
		{
			_p17112.setRequester((cast (_Requester.clone())));
		}
		if (_TargetSet == true && Utils.isNull(_Target) == false) 
		{
			_p17112.setTarget((cast (_Target.clone())));
		}
		if (_StatusSet == true && Utils.isNull(_Status) == false) 
		{
			_p17112.setStatus(_Status);
		}
		if (_DateSet == true && Utils.isNullDate(_Date) == false) 
		{
			_p17112.setDate(Date.fromTime(cast _Date.getTime()));
		}
		return _p17112;
	}

	public function toString():String
	{
		var _z17113:String = "";
		_z17113 += "[" + "NChallenge" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_z17113 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_z17113 += "_Id=" + _Id + "| ";
		}
		if (_RequesterSet == true && Utils.isNull(_Requester) == false) 
		{
			_z17113 += "_Requester=" + _Requester + "| ";
		}
		if (_TargetSet == true && Utils.isNull(_Target) == false) 
		{
			_z17113 += "_Target=" + _Target + "| ";
		}
		if (_StatusSet == true && Utils.isNull(_Status) == false) 
		{
			_z17113 += "_Status=" + _Status + "| ";
		}
		if (_DateSet == true && Utils.isNullDate(_Date) == false) 
		{
			_z17113 += "_Date=" + _Date + "| ";
		}
		_z17113 += "]";
		return _z17113;
	}
}
