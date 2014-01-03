package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.AbstractRoom;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.NGameState;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.TurnBasedContext;
import com.nuggeta.ngdl.nobjects.DisconnectedContext;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.ngdl.nobjects.AbstractRoom;
import com.nuggeta.network.Serializable;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.NGameState;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.TurnBasedContext;
import com.nuggeta.ngdl.nobjects.DisconnectedContext;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.util.NList;

class NGame extends AbstractRoom implements Serializable implements Storable
{

	public function new()
	{
		_GameRunningStateSet = false;
		_GameCharacteristicsSet = false;
		_GameStateSet = false;
		_MatchMakingConditionsSet = false;
		_TurnBasedContextSet = false;
		_DisconnectedContextSet = false;
		_OwnerSet = false;
		super();
	}

	public static var serializerID:Int = -3009;

	var _GameRunningState:GameRunningState;

	var _GameRunningStateSet:Bool;

	var _GameCharacteristics:NGameCharacteristics;

	var _GameCharacteristicsSet:Bool;

	var _GameState:NGameState;

	var _GameStateSet:Bool;

	var _MatchMakingConditions:NMatchMakingConditions;

	var _MatchMakingConditionsSet:Bool;

	var _TurnBasedContext:TurnBasedContext;

	var _TurnBasedContextSet:Bool;

	var _DisconnectedContext:DisconnectedContext;

	var _DisconnectedContextSet:Bool;

	var _Owner:NPlayer;

	var _OwnerSet:Bool;

	public function getGameRunningState():GameRunningState
	{
		return _GameRunningState;
	}

	public function setGameRunningState( value:GameRunningState):Void
	{
		_GameRunningState = value;
		_GameRunningStateSet = true;
	}

	public function isGameRunningStateSet():Bool
	{
		return _GameRunningStateSet;
	}

	public function unSetGameRunningState():Void
	{
		_GameRunningStateSet = false;
	}

	public function getGameCharacteristics():NGameCharacteristics
	{
		return _GameCharacteristics;
	}

	public function setGameCharacteristics( value:NGameCharacteristics):Void
	{
		_GameCharacteristics = value;
		_GameCharacteristicsSet = true;
	}

	public function isGameCharacteristicsSet():Bool
	{
		return _GameCharacteristicsSet;
	}

	public function unSetGameCharacteristics():Void
	{
		_GameCharacteristicsSet = false;
	}

	public function getGameState():NGameState
	{
		return _GameState;
	}

	public function setGameState( value:NGameState):Void
	{
		_GameState = value;
		_GameStateSet = true;
	}

	public function isGameStateSet():Bool
	{
		return _GameStateSet;
	}

	public function unSetGameState():Void
	{
		_GameStateSet = false;
	}

	public function getMatchMakingConditions():NMatchMakingConditions
	{
		return _MatchMakingConditions;
	}

	public function setMatchMakingConditions( value:NMatchMakingConditions):Void
	{
		_MatchMakingConditions = value;
		_MatchMakingConditionsSet = true;
	}

	public function isMatchMakingConditionsSet():Bool
	{
		return _MatchMakingConditionsSet;
	}

	public function unSetMatchMakingConditions():Void
	{
		_MatchMakingConditionsSet = false;
	}

	public function getTurnBasedContext():TurnBasedContext
	{
		return _TurnBasedContext;
	}

	public function setTurnBasedContext( value:TurnBasedContext):Void
	{
		_TurnBasedContext = value;
		_TurnBasedContextSet = true;
	}

	public function isTurnBasedContextSet():Bool
	{
		return _TurnBasedContextSet;
	}

	public function unSetTurnBasedContext():Void
	{
		_TurnBasedContextSet = false;
	}

	public function getDisconnectedContext():DisconnectedContext
	{
		return _DisconnectedContext;
	}

	public function setDisconnectedContext( value:DisconnectedContext):Void
	{
		_DisconnectedContext = value;
		_DisconnectedContextSet = true;
	}

	public function isDisconnectedContextSet():Bool
	{
		return _DisconnectedContextSet;
	}

	public function unSetDisconnectedContext():Void
	{
		_DisconnectedContextSet = false;
	}

	public function getOwner():NPlayer
	{
		return _Owner;
	}

	public function setOwner( value:NPlayer):Void
	{
		_Owner = value;
		_OwnerSet = true;
	}

	public function isOwnerSet():Bool
	{
		return _OwnerSet;
	}

	public function unSetOwner():Void
	{
		_OwnerSet = false;
	}


	override public function getSerializerID():Int
	{
		return serializerID;
	}

	override public function clone():Dynamic
	{
		var _k16771:NGame = new NGame();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_k16771.setStoreId(_storeId);
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_k16771.setId(_Id);
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_k16771.setName(_Name);
		}
		if (_PlayersSet == true && Utils.isNull(_Players) == false) 
		{
			var _q16772:NList<NPlayer> = new NList<NPlayer>();
			for (_y16773 in _Players.tab) {
				if (_y16773 != null) 
				{
					_q16772.add((cast ((cast _y16773)).clone()));
				} else 
				{
					_q16772.add((cast _y16773));
				}
			}
			_k16771.setPlayers(_q16772);
		}
		if (_GameRunningStateSet == true && Utils.isNull(_GameRunningState) == false) 
		{
			_k16771.setGameRunningState(_GameRunningState);
		}
		if (_GameCharacteristicsSet == true && Utils.isNull(_GameCharacteristics) == false) 
		{
			_k16771.setGameCharacteristics((cast (_GameCharacteristics.clone())));
		}
		if (_GameStateSet == true && Utils.isNull(_GameState) == false) 
		{
			_k16771.setGameState((cast (_GameState.clone())));
		}
		if (_MatchMakingConditionsSet == true && Utils.isNull(_MatchMakingConditions) == false) 
		{
			_k16771.setMatchMakingConditions((cast (_MatchMakingConditions.clone())));
		}
		if (_TurnBasedContextSet == true && Utils.isNull(_TurnBasedContext) == false) 
		{
			_k16771.setTurnBasedContext((cast (_TurnBasedContext.clone())));
		}
		if (_DisconnectedContextSet == true && Utils.isNull(_DisconnectedContext) == false) 
		{
			_k16771.setDisconnectedContext((cast (_DisconnectedContext.clone())));
		}
		if (_OwnerSet == true && Utils.isNull(_Owner) == false) 
		{
			_k16771.setOwner((cast (_Owner.clone())));
		}
		return _k16771;
	}

	override public function toString():String
	{
		var _r16774:String = "";
		_r16774 += "[" + "NGame" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_r16774 += "_storeId=" + _storeId + "| ";
		}
		if (_IdSet == true && Utils.isNull(_Id) == false) 
		{
			_r16774 += "_Id=" + _Id + "| ";
		}
		if (_NameSet == true && Utils.isNull(_Name) == false) 
		{
			_r16774 += "_Name=" + _Name + "| ";
		}
		if (_PlayersSet == true && Utils.isNull(_Players) == false) 
		{
			_r16774 += "_Players=" + _Players + "| ";
		}
		if (_GameRunningStateSet == true && Utils.isNull(_GameRunningState) == false) 
		{
			_r16774 += "_GameRunningState=" + _GameRunningState + "| ";
		}
		if (_GameCharacteristicsSet == true && Utils.isNull(_GameCharacteristics) == false) 
		{
			_r16774 += "_GameCharacteristics=" + _GameCharacteristics + "| ";
		}
		if (_GameStateSet == true && Utils.isNull(_GameState) == false) 
		{
			_r16774 += "_GameState=" + _GameState + "| ";
		}
		if (_MatchMakingConditionsSet == true && Utils.isNull(_MatchMakingConditions) == false) 
		{
			_r16774 += "_MatchMakingConditions=" + _MatchMakingConditions + "| ";
		}
		if (_TurnBasedContextSet == true && Utils.isNull(_TurnBasedContext) == false) 
		{
			_r16774 += "_TurnBasedContext=" + _TurnBasedContext + "| ";
		}
		if (_DisconnectedContextSet == true && Utils.isNull(_DisconnectedContext) == false) 
		{
			_r16774 += "_DisconnectedContext=" + _DisconnectedContext + "| ";
		}
		if (_OwnerSet == true && Utils.isNull(_Owner) == false) 
		{
			_r16774 += "_Owner=" + _Owner + "| ";
		}
		_r16774 += "]";
		return _r16774;
	}
}
