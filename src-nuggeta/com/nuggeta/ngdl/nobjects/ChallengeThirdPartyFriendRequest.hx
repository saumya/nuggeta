package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendRequest;

class ChallengeThirdPartyFriendRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ThirdPartyIdSet = false;
		_TitleSet = false;
		_ChallengeMessageSet = false;
		_PictureUrlSet = false;
		_LinkSet = false;
		_ThirdPartySourceSet = false;
	}

	public static var serializerID:Int = -10177;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ThirdPartyId:String;

	var _ThirdPartyIdSet:Bool;

	var _Title:String;

	var _TitleSet:Bool;

	var _ChallengeMessage:String;

	var _ChallengeMessageSet:Bool;

	var _PictureUrl:String;

	var _PictureUrlSet:Bool;

	var _Link:String;

	var _LinkSet:Bool;

	var _ThirdPartySource:ThirdPartySource;

	var _ThirdPartySourceSet:Bool;

	public function getMessageId():String
	{
		return _MessageId;
	}

	public function setMessageId( value:String):Void
	{
		_MessageId = value;
		_MessageIdSet = true;
	}

	public function isMessageIdSet():Bool
	{
		return _MessageIdSet;
	}

	public function unSetMessageId():Void
	{
		_MessageIdSet = false;
	}

	public function getRequestId():String
	{
		return _RequestId;
	}

	public function setRequestId( value:String):Void
	{
		_RequestId = value;
		_RequestIdSet = true;
	}

	public function isRequestIdSet():Bool
	{
		return _RequestIdSet;
	}

	public function unSetRequestId():Void
	{
		_RequestIdSet = false;
	}

	public function getThirdPartyId():String
	{
		return _ThirdPartyId;
	}

	public function setThirdPartyId( value:String):Void
	{
		_ThirdPartyId = value;
		_ThirdPartyIdSet = true;
	}

	public function isThirdPartyIdSet():Bool
	{
		return _ThirdPartyIdSet;
	}

	public function unSetThirdPartyId():Void
	{
		_ThirdPartyIdSet = false;
	}

	public function getTitle():String
	{
		return _Title;
	}

	public function setTitle( value:String):Void
	{
		_Title = value;
		_TitleSet = true;
	}

	public function isTitleSet():Bool
	{
		return _TitleSet;
	}

	public function unSetTitle():Void
	{
		_TitleSet = false;
	}

	public function getChallengeMessage():String
	{
		return _ChallengeMessage;
	}

	public function setChallengeMessage( value:String):Void
	{
		_ChallengeMessage = value;
		_ChallengeMessageSet = true;
	}

	public function isChallengeMessageSet():Bool
	{
		return _ChallengeMessageSet;
	}

	public function unSetChallengeMessage():Void
	{
		_ChallengeMessageSet = false;
	}

	public function getPictureUrl():String
	{
		return _PictureUrl;
	}

	public function setPictureUrl( value:String):Void
	{
		_PictureUrl = value;
		_PictureUrlSet = true;
	}

	public function isPictureUrlSet():Bool
	{
		return _PictureUrlSet;
	}

	public function unSetPictureUrl():Void
	{
		_PictureUrlSet = false;
	}

	public function getLink():String
	{
		return _Link;
	}

	public function setLink( value:String):Void
	{
		_Link = value;
		_LinkSet = true;
	}

	public function isLinkSet():Bool
	{
		return _LinkSet;
	}

	public function unSetLink():Void
	{
		_LinkSet = false;
	}

	public function getThirdPartySource():ThirdPartySource
	{
		return _ThirdPartySource;
	}

	public function setThirdPartySource( value:ThirdPartySource):Void
	{
		_ThirdPartySource = value;
		_ThirdPartySourceSet = true;
	}

	public function isThirdPartySourceSet():Bool
	{
		return _ThirdPartySourceSet;
	}

	public function unSetThirdPartySource():Void
	{
		_ThirdPartySourceSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _j16671:ChallengeThirdPartyFriendRequest = new ChallengeThirdPartyFriendRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_j16671.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_j16671.setRequestId(_RequestId);
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_j16671.setThirdPartyId(_ThirdPartyId);
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_j16671.setTitle(_Title);
		}
		if (_ChallengeMessageSet == true && Utils.isNull(_ChallengeMessage) == false) 
		{
			_j16671.setChallengeMessage(_ChallengeMessage);
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_j16671.setPictureUrl(_PictureUrl);
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_j16671.setLink(_Link);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_j16671.setThirdPartySource(_ThirdPartySource);
		}
		return _j16671;
	}

	public function toString():String
	{
		var _g16672:String = "";
		_g16672 += "[" + "ChallengeThirdPartyFriendRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_g16672 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_g16672 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_g16672 += "_ThirdPartyId=" + _ThirdPartyId + "| ";
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_g16672 += "_Title=" + _Title + "| ";
		}
		if (_ChallengeMessageSet == true && Utils.isNull(_ChallengeMessage) == false) 
		{
			_g16672 += "_ChallengeMessage=" + _ChallengeMessage + "| ";
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_g16672 += "_PictureUrl=" + _PictureUrl + "| ";
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_g16672 += "_Link=" + _Link + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_g16672 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		_g16672 += "]";
		return _g16672;
	}
}
