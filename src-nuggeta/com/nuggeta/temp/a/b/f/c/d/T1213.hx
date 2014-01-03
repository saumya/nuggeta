package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.mimics.database.NStorage;
import com.nuggeta.mimics.log.NLogger;
import com.nuggeta.mimics.log.NLoggerFactory;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.mimics.net.Net;
import com.nuggeta.mimics.notification.Notifications;
import com.nuggeta.mimics.platform.Platform;
import com.nuggeta.network.GameMessage;
import com.nuggeta.network.Message;
import com.nuggeta.network.MessageListener;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.c.d.ConnectionFailListener;
import com.nuggeta.temp.a.b.c.d.ConnectionInvalidVersionDetectedListener;
import com.nuggeta.temp.a.b.c.d.ConnectionLostListener;
import com.nuggeta.temp.a.b.c.d.ConnectionReadyListener;
import com.nuggeta.temp.a.b.c.d.NuggetaPlugApi;
import com.nuggeta.ngdl.NuggetaMessageListener;
import com.nuggeta.ngdl.nobjects.BuyProductUrl;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.nobjects.DnsRequest;
import com.nuggeta.ngdl.nobjects.DnsResponse;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.Handshake;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.HeartBeatRequest;
import com.nuggeta.ngdl.nobjects.HeartBeatResponse;
import com.nuggeta.ngdl.nobjects.InvalidVersion;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.OpenUrl;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionRequest;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionResponse;
import com.nuggeta.ngdl.nobjects.SwitchToServerInformation;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import id_cta_e.ngdl.GameDispatcher;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.temp.a.b.f.c.d.T1218;
import com.nuggeta.temp.a.b.c.d.NuggetaPlugApi;
import com.nuggeta.mimics.log.NLogger;
import id_cta_e.ngdl.GameDispatcher;
import com.nuggeta.temp.a.b.f.c.d.T1216;
import com.nuggeta.util.NList;
import com.nuggeta.temp.a.b.f.c.d.T1212;
import com.nuggeta.temp.a.b.f.c.d.T1209;
import com.nuggeta.temp.a.b.f.c.d.Pump;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.temp.a.b.f.c.d.T1208;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.DnsResponse;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.DnsRequest;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionResponse;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.HeartBeatRequest;
import com.nuggeta.ngdl.nobjects.HeartBeatResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.Handshake;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.BuyProductUrl;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SwitchToServerInformation;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.OpenUrl;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.ngdl.NuggetaMessageListener;
import com.nuggeta.ngdl.nobjects.InvalidVersion;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionRequest;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.network.GameMessage;
import com.nuggeta.network.Serializable;

class T1213 extends T1218 implements NuggetaPlugApi
{

	private static var _b11933:Int = 100;

	static var _e11934:String = "connectionId";

	var _s11935:NLogger;

	var _b11936:GameDispatcher;

	var _a11937:T1216;

	private var _h11938:NList<T1212>;

	private var _g11939:T1212;

	var _t11940:T1216;

	var _u11941:T1209;

	private var _i11942:Map<String,Dynamic>;

	private var _i11943:Pump;

	private var _x11944:Int;

	private var _b11945:Int;

	private var _f4114:String;

	private var _c11947:String;

	private var _u11948:HandshakeState;

	private var _d11949:String;

	private static var _a11950:String = "a12-plug";

	private static var _a11951:String = "gs-plug";

	var _h11952:Bool;

	private var _g11953:Bool;

	private var _a11954:Bool;

	private var _o11955:String;

	private var _s11956:DnsStatus;

	private var _i11957:StartDetails;

	public function new( _d11946:String)
	{
		_s11935 = NLoggerFactory.getLogger("AbstractNuggetaPlug");
		_b11936 = new GameDispatcher();
		_h11938 = new NList<T1212>();
		_i11942 = new Map<String,Dynamic>();
		_i11943 = new Pump(10000);
		_x11944 = 0;
		_b11945 = 0;
		_u11948 = HandshakeState.INIT;
		_h11952 = false;
		_g11953 = false;
		_a11954 = false;
		super();
		if (_d11946.indexOf("nuggeta") == 0) 
		{
			var _t11958:Array<String> = _d11946.split("://");
			if (_t11958.length == 2) 
			{
				this._f4114 = "5.153.16.122:3010";
				this._d11949 = _t11958[1];
			} else 
			{
				_s11935.error("Malformed URL : " + _d11946);
			}
		} else 
		{
			_g11953 = true;
			_s11956 = DnsStatus.SUCCESS;
			this._f4114 = _d11946;
		}
		_s11935 = NLoggerFactory.getLogger("NuggetaPlug");
		_t11940 = new T1208("DCM");
		_a11937 = new T1208("GSMC");
	}

	private function _m17899( _d11959:Message):Void
	{
		if (_h11952) 
		{
			return;
		}

		var _h11960:String = _d11959.getRequestId();
		if (_h11960 != null) 
		{
			var _o11961:Dynamic = _i11942.get(_h11960);
			if (_o11961 != null) 
			{
				_i11942.remove(_h11960);
				super._m17900(_d11959, _o11961);
				return;
			}
		}
		if ( Std.is( _d11959, DnsResponse)) 
		{
			var _m11962:DnsResponse = (cast _d11959);
			var _h11963:StartDetails = _m11962.getStartDetails();
			_s11956 = _m11962.getDnsStatus();
			_i11957 = (cast _cloneSerializable(_h11963));
			if (_m11962.getDnsStatus() == DnsStatus.SUCCESS) 
			{
				_s11956 = DnsStatus.SUCCESS;
				_t11940._m17901();
				var _k4131:String = _m11962.getIpAddress() + ":" + _m11962.getTcpPort();
				_m17902(_k4131);
			} else 
			if (_m11962.getDnsStatus() == DnsStatus.WARNED) 
			{
				_s11956 = DnsStatus.WARNED;
				_t11940._m17901();
				var _y4132:String = _m11962.getIpAddress() + ":" + _m11962.getTcpPort();
				_m17902(_y4132);
			} else 
			if (_m11962.getDnsStatus() == DnsStatus.REFUSED) 
			{
				var _p4133:StartResponse = new StartResponse();
				_p4133.setStartStatus(StartStatus.REFUSED);
				_p4133.setStartDetails(_h11963);
				if (_h11963 != null && _h11963.isUseDefaultImpl() == false) 
				{
					_m17903(_h11963);
				}
				_m17904(_p4133, true, false, true);
				return;
			} else 
			if (_m11962.getDnsStatus() == DnsStatus.FAILED) 
			{
				var _m11967:DnsRequest = new DnsRequest();
				_m11967.setGameId(_d11949);
				_m11967.setGameVersion(_m17905());
				_m11967.setGameDeployedVersion(_m17906());
				_m11967.setPlatform(Platform.get());
				_t11940._m17907(_m11967);
			} else 
			if (_m11962.getDnsStatus() == DnsStatus.FAILED_TRY_LATER) 
			{
				if (_u11948 == HandshakeState.BALANCE) 
				{
					_h11952 = true;
					var _n11968:ConnectionLost = new ConnectionLost();
					_m17904(_n11968, true, false, true);
				} else 
				{
					var _j11969:StartResponse = new StartResponse();
					_j11969.setStartStatus(StartStatus.FAILED);
					_m17904(_j11969, true, false, true);
				}
			}
		}
	}

	private function _m17902( _v11970:String):Void
	{
		var _r11971:Message ->Void = function( message2:Message){
			_m17908(message2);
		};

		if (!_h11952) 
		{
			_a11937._m17909(_u11941._m17910(_a11951, _r11971, _v11970));
		}
	}

	private function _m17908( _c11972:Message):Void
	{

		if (_h11952 && !( Std.is( _c11972, StopPlugConnectionResponse))) 
		{
			return;
		}
		if ( Std.is( _c11972, SessionExpired)) 
		{
			_h11952 = true;
		}
		if ( Std.is( _c11972, HeartBeatRequest)) 
		{
			var _v11973:HeartBeatResponse = new HeartBeatResponse();
			_sendMessage0(_v11973);
			MemoryManagement.free(_c11972);
			return;
		}
		if ( Std.is( _c11972, ThirdPartyLoginResponse) ||  Std.is( _c11972, InviteThirdPartyFriendResponse) ||  Std.is( _c11972, ChallengeThirdPartyFriendResponse) ||  Std.is( _c11972, PublishThirdPartyMessageResponse) ||  Std.is( _c11972, GetThirdPartyFriendsResponse)) 
		{
			if (_a11954 == true) 
			{
				_a11954 = false;
				Net.closeWebView();
			}
		}
		if ( Std.is( _c11972, StopPlugConnectionResponse)) 
		{
			MemoryManagement.free(_c11972);
			_m17911();
		} else 
		if ( Std.is( _c11972, OpenConnection)) 
		{
			var _o11974:OpenConnection = (cast _c11972);
			var _j11975:String = _o11974.getIpAddress();
			var _d11976:Int = _o11974.getTcpPort();
			var _l11977:String = _j11975 + ":" + _d11976;
			var _m11978:String = "";
			_g11939 = new T1212("gs-plug-slave-", _dupString(_m11978));
			_g11939._m17912(function(){
				var _g11979:Handshake = new Handshake();
				_g11979.setReason(HandshakeState.OPEN_SLAVE_CONNECTION);
				_g11979.setDataPlayerId(_o11955);
				_g11979.setSessionId(_c11947);
				_g11939._m17907(_g11979);
				MemoryManagement.free(_g11979);
			});
			_g11939._m17913(function(){
				_h11938.removeValue(_g11939);
			});
			_g11939._m17914(function(){
				_h11938.removeValue(_g11939);
			});
			var _m11980:Message ->Void = function( message2:Message){

				if ( Std.is( message2, OpenConnection) ||  Std.is( message2, HandshakeResponse) ||  Std.is( message2, BuyProductUrl)) 
				{
					MemoryManagement.free(message2);
					return;
				}
				if ( Std.is( message2, JoinGameResponse)) 
				{
					var _m11981:JoinGameResponse = (cast message2);
					var _d11982:NGame = _m11981.getGame();
					_g11939._m17915(_dupString(_d11982.getId()));
				}
				_m17904(message2, true, true, true);
			};
			_g11939._m17909(_u11941._m17910("gs-plug", _m11980, _l11977));
			_h11938.add(_g11939);
			MemoryManagement.free(_c11972);
			return;
		} else 
		if ( Std.is( _c11972, SwitchToServerInformation)) 
		{
			_a11937._m17901();
			_u11948 = HandshakeState.SWITCH;
			var _a11983:SwitchToServerInformation = (cast _c11972);
			_m17902(_a11983.getAddress());
			MemoryManagement.free(_c11972);
			return;
		} else 
		if ( Std.is( _c11972, HandshakeResponse)) 
		{
			var _x11984:HandshakeResponse = (cast _c11972);
			if (_x11984.getExecutionStatus() == ExecutionStatus.OK) 
			{
				_m17916(_x11984.getSessionId());
				if (_x11984.getReason() == HandshakeState.BALANCE) 
				{
					_u11948 = HandshakeState.INIT;
					var _r11985:ConnectionResumed = new ConnectionResumed();
					_m17904(_r11985, true, false, true);
				} else 
				if (_x11984.getReason() == HandshakeState.SWITCH) 
				{
				} else 
				if (_x11984.getReason() == HandshakeState.INIT) 
				{
					_u11948 = HandshakeState.INIT;
					if (_o11955 == null) 
					{
						_m17917(_x11984.getDataPlayerId());
					}
					var _n4151:StartResponse = new StartResponse();
					if (_s11956 == DnsStatus.SUCCESS) 
					{
						_n4151.setStartStatus(StartStatus.READY);
					} else 
					if (_s11956 == DnsStatus.WARNED) 
					{
						_n4151.setStartStatus(StartStatus.WARNED);
						var _z11987:StartDetails = (cast _cloneSerializable(_i11957));
						_n4151.setStartDetails(_z11987);
						if (_i11957 != null && _i11957.isUseDefaultImpl() == true) 
						{
							_m17918(_z11987);
						}
					}
					_m17904(_n4151, true, false, true);
				}
			} else 
			{
				if (_x11984.getReason() == HandshakeState.BALANCE) 
				{
					_h11952 = true;
					var _q11988:ConnectionLost = new ConnectionLost();
					_m17904(_q11988, true, false, true);
				} else 
				{
					var _y4154:StartResponse = new StartResponse();
					_y4154.setStartStatus(StartStatus.FAILED);
					_m17904(_y4154, true, false, true);
				}
			}
			MemoryManagement.free(_c11972);
			return;
		} else 
		if ( Std.is( _c11972, BuyProductUrl)) 
		{
			_m17919((cast _c11972));
			MemoryManagement.free(_c11972);
		} else 
		if ( Std.is( _c11972, OpenUrl)) 
		{
			_a11954 = true;
			var _f11990:OpenUrl = (cast _c11972);
			Net.openWebView(_f11990.getUrl());
			MemoryManagement.free(_c11972);
		} else 
		{
			var _v4156:String = _c11972.getRequestId();
			if (_v4156 != null) 
			{
				var _f4157:Dynamic = _i11942.get(_v4156);
				if (_f4157 != null) 
				{
					_i11942.remove(_v4156);
					super._m17900(_c11972, _f4157);
					return;
				}
			} else 
			{
				_m17904(_c11972, true, true, true);
			}
		}
	}

	public function _m17904( message:Message,  _m11994:Bool,  _x11995:Bool,  _t11996:Bool):Void
	{

		if (_m11994) 
		{
			_s12155.fireMessage(message);
		}
		if (_x11995) 
		{
			_b11936.fireMessage(message);
		}
		if (_t11996) 
		{
			_i11943.add(message);
		}
	}


	public function addGameMessageListener( listener:GameMessageListener):Void
	{
		_b11936.addGameMessageListener(listener);
	}


	public function removeGameMessageListener( listener:GameMessageListener):Void
	{
		_b11936.removeGameMessageListener(listener);
	}


	public function addNuggetaMessageListener( listener:NuggetaMessageListener):Void
	{
		_s12155.addNuggetaMessageListener(listener);
	}


	public function removeNuggetaMessageListener( listener:NuggetaMessageListener):Void
	{
		_s12155.removeNuggetaMessageListener(listener);
	}

	private function _m17920():Void
	{
		_o11955 = _m17921();
		_h11952 = false;
		if (_g11953) 
		{
			_m17922();
			_m17902(_f4114);
		} else 
		{
			_m17923();
			_m17922();
			_m17924();
		}
	}


	public function start():Void
	{
		_m17920();
	}

	private function _m17925():Void
	{

		if (_h11952) 
		{
			return;
		}
		if (_g11953) 
		{
			_m17902(_f4114);
		} else 
		{
			_m17924();
		}
	}

	private function _m17924():Void
	{

		var _u11997:Message ->Void = function( message:Message){
			_m17899(message);
		};
		_t11940._m17909(_u11941._m17910(_a11950, _u11997, _f4114));
	}

	private function _m17923():Void
	{
		_t11940._m17912(function(){

			var _v11998:DnsRequest = new DnsRequest();
			_v11998.setGameId(_d11949);
			_v11998.setGameVersion(_m17905());
			_v11998.setGameDeployedVersion(_m17906());
			_v11998.setPlatform(Platform.get());
			_t11940._m17907(_v11998);
			MemoryManagement.free(_v11998);
		});
		_t11940._m17913(function(){
			_s11935.error("x12-plug lost");
			_t11940._m17901();
			_m17925();
		});
		_t11940._m17914(function(){
			_s11935.error("x12-plug fail");
			_t11940._m17901();
			if (_u11948 == HandshakeState.BALANCE) 
			{
				_m17925();
			} else 
			{
				var _m4160:StartResponse = new StartResponse();
				_m4160.setStartStatus(StartStatus.FAILED);
				_m17904(_m4160, true, false, true);
			}
		});
		_t11940._m17926(function(){
			_s11935.error("x12-plug invalid version detected");
			var _o4161:InvalidVersion = new InvalidVersion();
			_m17904(_o4161, true, false, true);
		});
	}

	private function _m17922():Void
	{
		_a11937._m17912(function(){

			var _z12001:Handshake = new Handshake();
			_z12001.setReason(_u11948);
			_z12001.setSessionId(_c11947);
			_z12001.setDataPlayerId(_o11955);
			_z12001.setPlatform(Platform.get());
			_sendMessage0(_z12001);
		});
		_a11937._m17914(function(){

			_a11937._m17901();
			if (!_g11953) 
			{
				_m17925();
			} else 
			{
				var _r12002:StartResponse = new StartResponse();
				_r12002.setStartStatus(StartStatus.FAILED);
				_m17904(_r12002, true, false, true);
			}
		});
		_a11937._m17913(function(){
			if (_h11952) 
			{
				return;
			}
			_s11935.error("gs-plug lost");
			_a11937._m17901();
			if (_u11948 != HandshakeState.BALANCE) 
			{
				_u11948 = HandshakeState.BALANCE;
				var _d12003:ConnectionInterrupted = new ConnectionInterrupted();
				_m17904(_d12003, true, false, true);
			} else 
			{
				_s11935.error("Balance failed : onConnectionLost - Retry to balance connection");
			}
			_m17925();
		});
		_a11937._m17926(function(){
			_s11935.error("gs-plug  invalid version detected");
			var _a12004:InvalidVersion = new InvalidVersion();
			_m17904(_a12004, true, false, true);
		});
	}


	public function stop():Void
	{

		_h11952 = true;
		if (_a11937 != null && _a11937._m17927() != null) 
		{
			_a11937._m17928(new StopPlugConnectionRequest(), new StopPlugConnectionResponse());
		} else 
		{
			_m17911();
		}
	}

	function _m17911():Void
	{

		_h11952 = true;
		if (_t11940 != null) 
		{
			_t11940._m17901();
		}
		if (_a11937 != null) 
		{
			_a11937._m17901();
		}
		for (_u4166 in 0 ... _h11938.size()) 
		{
			var _q4167:T1212 = _h11938.get(_u4166);
			_q4167._m17901();
		}
		var _f12007:ConnectionStop = new ConnectionStop();
		_m17904(_f12007, true, false, true);
	}


	public function sendMessage( message:Message):String
	{
		var _g4169:Dynamic = _cloneSerializable(message);
		return _sendMessage0((cast _g4169));
	}


	override public function _sendMessage0( message:Message):String
	{
		var _n4170:String = _m17929();
		message.setMessageId(_n4170);

		_a11937._m17907(message);
		MemoryManagement.free(message);
		return _n4170;
	}

	override public function _request0( message:Message,  handler:Dynamic):String
	{

		_m17930(message, handler);
		return _sendMessage0(message);
	}

	private function _m17930( _h12010:Message,  _u12011:Dynamic):Message
	{
		var _m12012:String = _m17931();
		_h12010.setRequestId(_m12012);
		_i11942.set(_m12012, _u12011);
		return _h12010;
	}

	private function _m17931():String
	{
		return "" + _x11944++;
	}

	private function _m17929():String
	{
		if (_c11947 != null) 
		{
			var _u4172:String = _c11947 + "_" + _b11945++;
			return _u4172;
		} else 
		{
			return "" + _b11945++;
		}
	}


	public function sendGameMessage( gameMessage:GameMessage,  gameId:String):String
	{

		var _s12014:String = _m17929();
		gameMessage.setMessageId(_s12014);
		gameMessage.setGameId(gameId);
		var _s12015:T1212 = null;
		for (_v12016 in 0 ... _h11938.size()) 
		{
			var _d12017:T1212 = _h11938.get(_v12016);
			if (_d12017._m17932(gameId)) 
			{
				_s12015 = _d12017;
			}
		}
		if (_s12015 != null) 
		{
			_s12015._m17907(gameMessage);
		} else 
		{
			_a11937._m17907(gameMessage);
		}
		return _s12014;
	}

	override public function _cloneSerializable( _v12008:Serializable):Dynamic
	{
		return _v12008;
	}


	public function pump():NList<Message>
	{
		return _i11943.pump();
	}

	public function _m17918( warningDetails:StartDetails):Void
	{
		Notifications.toast("A new version is available ! , you should download it");
	}

	public function _m17903( _n12019:StartDetails):Void
	{
		var _r12020:String = "A new version is available ! , you need to download it";
		Notifications.toast(_r12020);
	}

	public function _m17921():String
	{
		return NStorage.getItem(_e11934);
	}

	public function _m17905():Int
	{
		return 1;
	}

	function _m17906():Int
	{
		return 1;
	}

	public function _m17917( _k12021:String):Void
	{
		_o11955 = _dupString(_k12021);
		NStorage.setItem(_e11934, _o11955);
	}

	private function _dupString( str:String):String
	{
		return str;
	}

	public function _m17919( _j12022:BuyProductUrl):Void
	{
	}

	public function _m17916( _z12023:String):Void
	{
		this._c11947 = _dupString(_z12023);
	}
}
