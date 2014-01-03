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
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendRequest;

class InviteThirdPartyFriendRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_ThirdPartyIdSet = false;
		_TitleSet = false;
		_InviteMessageSet = false;
		_PictureUrlSet = false;
		_LinkSet = false;
		_ThirdPartySourceSet = false;
	}

	public static var serializerID:Int = -10897;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _ThirdPartyId:String;

	var _ThirdPartyIdSet:Bool;

	var _Title:String;

	var _TitleSet:Bool;

	var _InviteMessage:String;

	var _InviteMessageSet:Bool;

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

	public function getInviteMessage():String
	{
		return _InviteMessage;
	}

	public function setInviteMessage( value:String):Void
	{
		_InviteMessage = value;
		_InviteMessageSet = true;
	}

	public function isInviteMessageSet():Bool
	{
		return _InviteMessageSet;
	}

	public function unSetInviteMessage():Void
	{
		_InviteMessageSet = false;
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
		var _w17090:InviteThirdPartyFriendRequest = new InviteThirdPartyFriendRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_w17090.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_w17090.setRequestId(_RequestId);
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_w17090.setThirdPartyId(_ThirdPartyId);
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_w17090.setTitle(_Title);
		}
		if (_InviteMessageSet == true && Utils.isNull(_InviteMessage) == false) 
		{
			_w17090.setInviteMessage(_InviteMessage);
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_w17090.setPictureUrl(_PictureUrl);
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_w17090.setLink(_Link);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_w17090.setThirdPartySource(_ThirdPartySource);
		}
		return _w17090;
	}

	public function toString():String
	{
		var _k17091:String = "";
		_k17091 += "[" + "InviteThirdPartyFriendRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_k17091 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_k17091 += "_RequestId=" + _RequestId + "| ";
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_k17091 += "_ThirdPartyId=" + _ThirdPartyId + "| ";
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_k17091 += "_Title=" + _Title + "| ";
		}
		if (_InviteMessageSet == true && Utils.isNull(_InviteMessage) == false) 
		{
			_k17091 += "_InviteMessage=" + _InviteMessage + "| ";
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_k17091 += "_PictureUrl=" + _PictureUrl + "| ";
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_k17091 += "_Link=" + _Link + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_k17091 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		_k17091 += "]";
		return _k17091;
	}
}
