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
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageRequest;

class PublishFriendThirdPartyMessageRequest implements Message
{

	public function new()
	{
		_MessageIdSet = false;
		_RequestIdSet = false;
		_TitleSet = false;
		_MessageSet = false;
		_PictureUrlSet = false;
		_LinkSet = false;
		_ThirdPartyIdSet = false;
		_ThirdPartySourceSet = false;
	}

	public static var serializerID:Int = -11117;

	var _MessageId:String;

	var _MessageIdSet:Bool;

	var _RequestId:String;

	var _RequestIdSet:Bool;

	var _Title:String;

	var _TitleSet:Bool;

	var _Message:String;

	var _MessageSet:Bool;

	var _PictureUrl:String;

	var _PictureUrlSet:Bool;

	var _Link:String;

	var _LinkSet:Bool;

	var _ThirdPartyId:String;

	var _ThirdPartyIdSet:Bool;

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

	public function getMessage():String
	{
		return _Message;
	}

	public function setMessage( value:String):Void
	{
		_Message = value;
		_MessageSet = true;
	}

	public function isMessageSet():Bool
	{
		return _MessageSet;
	}

	public function unSetMessage():Void
	{
		_MessageSet = false;
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
		var _m15961:PublishFriendThirdPartyMessageRequest = new PublishFriendThirdPartyMessageRequest();
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_m15961.setMessageId(_MessageId);
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_m15961.setRequestId(_RequestId);
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_m15961.setTitle(_Title);
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_m15961.setMessage(_Message);
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_m15961.setPictureUrl(_PictureUrl);
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_m15961.setLink(_Link);
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_m15961.setThirdPartyId(_ThirdPartyId);
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_m15961.setThirdPartySource(_ThirdPartySource);
		}
		return _m15961;
	}

	public function toString():String
	{
		var _o15962:String = "";
		_o15962 += "[" + "PublishFriendThirdPartyMessageRequest" + " --> ";
		if (_MessageIdSet == true && Utils.isNull(_MessageId) == false) 
		{
			_o15962 += "_MessageId=" + _MessageId + "| ";
		}
		if (_RequestIdSet == true && Utils.isNull(_RequestId) == false) 
		{
			_o15962 += "_RequestId=" + _RequestId + "| ";
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_o15962 += "_Title=" + _Title + "| ";
		}
		if (_MessageSet == true && Utils.isNull(_Message) == false) 
		{
			_o15962 += "_Message=" + _Message + "| ";
		}
		if (_PictureUrlSet == true && Utils.isNull(_PictureUrl) == false) 
		{
			_o15962 += "_PictureUrl=" + _PictureUrl + "| ";
		}
		if (_LinkSet == true && Utils.isNull(_Link) == false) 
		{
			_o15962 += "_Link=" + _Link + "| ";
		}
		if (_ThirdPartyIdSet == true && Utils.isNull(_ThirdPartyId) == false) 
		{
			_o15962 += "_ThirdPartyId=" + _ThirdPartyId + "| ";
		}
		if (_ThirdPartySourceSet == true && Utils.isNull(_ThirdPartySource) == false) 
		{
			_o15962 += "_ThirdPartySource=" + _ThirdPartySource + "| ";
		}
		_o15962 += "]";
		return _o15962;
	}
}
