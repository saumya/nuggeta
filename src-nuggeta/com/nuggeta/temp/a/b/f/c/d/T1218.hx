package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.ads.AdApi;
import com.nuggeta.ads.AdContext;
import com.nuggeta.ads.BannerAd;
import com.nuggeta.ads.InterstitialAd;
import com.nuggeta.mimics.ads.AdApiImpl;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.LoginResponseHandler;
import com.nuggeta.ngdl.SignUpResponseHandler;
import com.nuggeta.ngdl.nobjects.AdDisplayedNotification;
import com.nuggeta.ngdl.nobjects.ClientApplication;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.temp.a.b.f.c.d.T1219;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.ads.AdApi;
import com.nuggeta.mimics.ads.AdApiImpl;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.network.Message;
import com.nuggeta.ads.BannerAd;
import com.nuggeta.ads.AdContext;
import com.nuggeta.ngdl.nobjects.AdDisplayedNotification;
import com.nuggeta.ads.InterstitialAd;
import com.nuggeta.ngdl.nobjects.NPlayer;

class T1218 extends T1219
{

	static var _v15884:NLogger = NLoggerFactory.getLogger("ApiImpl");

	var _m15885:AdApi;

	public function new()
	{
		super();
		_m15885 = new AdApiImpl();
	}


	override public function login( login:String,  password:String):String
	{
		var _u7159:LoginRequest = new LoginRequest();
		_u7159.setLogin(login);
		_u7159.setPassword(password);
		_u7159.setClientApplication(ClientApplication.PC);
		return _sendMessage0(_u7159);
	}


	override public function loginRequest( login:String,  password:String,  loginResponseHandler:LoginResponse ->Void):String
	{
		var _z15887:LoginRequest = new LoginRequest();
		_z15887.setLogin(login);
		_z15887.setPassword(password);
		return _request0(_z15887, loginResponseHandler);
	}


	override public function signUp( login:String,  password:String,  playerProfile:NPlayerProfile):String
	{
		var _q7161:SignUpRequest = new SignUpRequest();
		_q7161.setLogin(login);
		_q7161.setPassword(password);
		_q7161.setPlayerProfile((cast _cloneSerializable(playerProfile)));
		return _sendMessage0(_q7161);
	}


	override public function signUpRequest( login:String,  password:String,  playerProfile:NPlayerProfile,  signUpResponseHandler:SignUpResponse ->Void):String
	{
		var _b15889:SignUpRequest = new SignUpRequest();
		_b15889.setLogin(login);
		_b15889.setPassword(password);
		_b15889.setPlayerProfile((cast _cloneSerializable(playerProfile)));
		return _request0(_b15889, signUpResponseHandler);
	}


	override public function _m17950( _w15890:Message,  _e15891:Dynamic):String
	{
		return null;
	}

	public function displayBannerAd( adContext:AdContext):BannerAd
	{
		var _n15892:BannerAd = _m15885.displayBannerAd(adContext);
		if (_n15892 != null) 
		{
			_sendMessage0(new AdDisplayedNotification());
		}
		return _n15892;
	}

	public function _m18554():InterstitialAd
	{
		var _q15893:InterstitialAd = _m15885.displayInterstitialAd();
		if (_q15893 != null) 
		{
			_sendMessage0(new AdDisplayedNotification());
		}
		return _q15893;
	}

	public function getAvatar( player:NPlayer):String
	{
		if (player.getThirdPartyId() != null) 
		{
			if (player.getLoginSource() == ThirdPartySource.FACEBOOK) 
			{
				return "http://graph.facebook.com/" + player.getThirdPartyId() + "/picture";
			} else 
			if (player.getLoginSource() == ThirdPartySource.GOOGLEPLUS) 
			{
				return "https://profiles.google.com/s2/photos/profile/" + player.getThirdPartyId() + "?sz=50";
			} else 
			return null;
		} else 
		{
			return null;
		}
	}
}
