package com.nuggeta.ngdl.nobjects;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.database.Storable;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.StartDetails;

class StartDetails implements Serializable
{

	public function new()
	{
		_storeIdSet = false;
		_DataSet = false;
		_UseDefaultImplSet = false;
		_CurrentVersionSet = false;
		_NextVersionSet = false;
		_TitleSet = false;
		_TextSet = false;
		_UrlSet = false;
	}

	public static var serializerID:Int = -3179;

	var _storeId:String;

	var _storeIdSet:Bool;

	var _Data:String;

	var _DataSet:Bool;

	var _UseDefaultImpl:Bool;

	var _UseDefaultImplSet:Bool;

	var _CurrentVersion:Int;

	var _CurrentVersionSet:Bool;

	var _NextVersion:Int;

	var _NextVersionSet:Bool;

	var _Title:String;

	var _TitleSet:Bool;

	var _Text:String;

	var _TextSet:Bool;

	var _Url:String;

	var _UrlSet:Bool;

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

	public function getData():String
	{
		return _Data;
	}

	public function setData( value:String):Void
	{
		_Data = value;
		_DataSet = true;
	}

	public function isDataSet():Bool
	{
		return _DataSet;
	}

	public function unSetData():Void
	{
		_DataSet = false;
	}

	public function isUseDefaultImpl():Bool
	{
		return _UseDefaultImpl;
	}

	public function setUseDefaultImpl( value:Bool):Void
	{
		_UseDefaultImpl = value;
		_UseDefaultImplSet = true;
	}

	public function isUseDefaultImplSet():Bool
	{
		return _UseDefaultImplSet;
	}

	public function unSetUseDefaultImpl():Void
	{
		_UseDefaultImplSet = false;
	}

	public function getCurrentVersion():Int
	{
		return _CurrentVersion;
	}

	public function setCurrentVersion( value:Int):Void
	{
		_CurrentVersion = value;
		_CurrentVersionSet = true;
	}

	public function isCurrentVersionSet():Bool
	{
		return _CurrentVersionSet;
	}

	public function unSetCurrentVersion():Void
	{
		_CurrentVersionSet = false;
	}

	public function getNextVersion():Int
	{
		return _NextVersion;
	}

	public function setNextVersion( value:Int):Void
	{
		_NextVersion = value;
		_NextVersionSet = true;
	}

	public function isNextVersionSet():Bool
	{
		return _NextVersionSet;
	}

	public function unSetNextVersion():Void
	{
		_NextVersionSet = false;
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

	public function getText():String
	{
		return _Text;
	}

	public function setText( value:String):Void
	{
		_Text = value;
		_TextSet = true;
	}

	public function isTextSet():Bool
	{
		return _TextSet;
	}

	public function unSetText():Void
	{
		_TextSet = false;
	}

	public function getUrl():String
	{
		return _Url;
	}

	public function setUrl( value:String):Void
	{
		_Url = value;
		_UrlSet = true;
	}

	public function isUrlSet():Bool
	{
		return _UrlSet;
	}

	public function unSetUrl():Void
	{
		_UrlSet = false;
	}


	public function getSerializerID():Int
	{
		return serializerID;
	}

	public function clone():Dynamic
	{
		var _o17210:StartDetails = new StartDetails();
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_o17210.setStoreId(_storeId);
		}
		if (_DataSet == true && Utils.isNull(_Data) == false) 
		{
			_o17210.setData(_Data);
		}
		if (_UseDefaultImplSet == true && Utils.isNullBoolean(_UseDefaultImpl) == false) 
		{
			_o17210.setUseDefaultImpl(_UseDefaultImpl);
		}
		if (_CurrentVersionSet == true && Utils.isNullInteger(_CurrentVersion) == false) 
		{
			_o17210.setCurrentVersion(_CurrentVersion);
		}
		if (_NextVersionSet == true && Utils.isNullInteger(_NextVersion) == false) 
		{
			_o17210.setNextVersion(_NextVersion);
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_o17210.setTitle(_Title);
		}
		if (_TextSet == true && Utils.isNull(_Text) == false) 
		{
			_o17210.setText(_Text);
		}
		if (_UrlSet == true && Utils.isNull(_Url) == false) 
		{
			_o17210.setUrl(_Url);
		}
		return _o17210;
	}

	public function toString():String
	{
		var _y17211:String = "";
		_y17211 += "[" + "StartDetails" + " --> ";
		if (_storeIdSet == true && Utils.isNull(_storeId) == false) 
		{
			_y17211 += "_storeId=" + _storeId + "| ";
		}
		if (_DataSet == true && Utils.isNull(_Data) == false) 
		{
			_y17211 += "_Data=" + _Data + "| ";
		}
		if (_UseDefaultImplSet == true && Utils.isNullBoolean(_UseDefaultImpl) == false) 
		{
			_y17211 += "_UseDefaultImpl=" + _UseDefaultImpl + "| ";
		}
		if (_CurrentVersionSet == true && Utils.isNullInteger(_CurrentVersion) == false) 
		{
			_y17211 += "_CurrentVersion=" + _CurrentVersion + "| ";
		}
		if (_NextVersionSet == true && Utils.isNullInteger(_NextVersion) == false) 
		{
			_y17211 += "_NextVersion=" + _NextVersion + "| ";
		}
		if (_TitleSet == true && Utils.isNull(_Title) == false) 
		{
			_y17211 += "_Title=" + _Title + "| ";
		}
		if (_TextSet == true && Utils.isNull(_Text) == false) 
		{
			_y17211 += "_Text=" + _Text + "| ";
		}
		if (_UrlSet == true && Utils.isNull(_Url) == false) 
		{
			_y17211 += "_Url=" + _Url + "| ";
		}
		_y17211 += "]";
		return _y17211;
	}
}
