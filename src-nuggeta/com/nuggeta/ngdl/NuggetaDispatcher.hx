package com.nuggeta.ngdl;
import com.nuggeta.network.Dispatcher;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.NuggetaMessageListener;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.GameStateChange;
import com.nuggeta.ngdl.nobjects.PlayerEnterGame;
import com.nuggeta.ngdl.nobjects.FriendshipNotification;
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;
import com.nuggeta.ngdl.nobjects.NuggetaException;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;
import com.nuggeta.ngdl.nobjects.NRawMessage;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.GameMessageError;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
import com.nuggeta.network.Dispatcher;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.NuggetaMessageListener;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.GameStateChange;
import com.nuggeta.ngdl.nobjects.PlayerEnterGame;
import com.nuggeta.ngdl.nobjects.FriendshipNotification;
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;
import com.nuggeta.ngdl.nobjects.NuggetaException;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;
import com.nuggeta.ngdl.nobjects.NRawMessage;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.GameMessageError;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
import com.nuggeta.network.Message;

class NuggetaDispatcher implements Dispatcher
{

	public function new()
	{
		globalListeners = new NList<NuggetaMessageListener>();
		HandshakeResponseHandlers = new NList<HandshakeResponse ->Void>();
		GameStateChangeHandlers = new NList<GameStateChange ->Void>();
		PlayerEnterGameHandlers = new NList<PlayerEnterGame ->Void>();
		FriendshipNotificationHandlers = new NList<FriendshipNotification ->Void>();
		PlayerUnjoinGameHandlers = new NList<PlayerUnjoinGame ->Void>();
		ConnectionLostHandlers = new NList<ConnectionLost ->Void>();
		ConnectionInterruptedHandlers = new NList<ConnectionInterrupted ->Void>();
		ConnectionResumedHandlers = new NList<ConnectionResumed ->Void>();
		ConnectionStopHandlers = new NList<ConnectionStop ->Void>();
		FriendConnectedNotificationHandlers = new NList<FriendConnectedNotification ->Void>();
		FriendDisconnectedNotificationHandlers = new NList<FriendDisconnectedNotification ->Void>();
		NuggetaExceptionHandlers = new NList<NuggetaException ->Void>();
		OpenConnectionHandlers = new NList<OpenConnection ->Void>();
		ChallengeAcceptedHandlers = new NList<ChallengeAccepted ->Void>();
		ChallengeRefusedHandlers = new NList<ChallengeRefused ->Void>();
		RawMessageHandlers = new NList<NRawMessage ->Void>();
		SessionExpiredHandlers = new NList<SessionExpired ->Void>();
		GameMessageErrorHandlers = new NList<GameMessageError ->Void>();
		PlayerInvitationNotificationHandlers = new NList<PlayerInvitationNotification ->Void>();
		FriendChallengeNotificationHandlers = new NList<FriendChallengeNotification ->Void>();
		MyTurnNotificationHandlers = new NList<MyTurnNotification ->Void>();
		PlayerTurnNotificationHandlers = new NList<PlayerTurnNotification ->Void>();
		StartResponseHandlers = new NList<StartResponse ->Void>();
		InvitePlayerResponseHandlers = new NList<InvitePlayerResponse ->Void>();
		SignUpResponseHandlers = new NList<SignUpResponse ->Void>();
		ForgotPasswordResponseHandlers = new NList<ForgotPasswordResponse ->Void>();
		LoginResponseHandlers = new NList<LoginResponse ->Void>();
		SavePlayerProfileResponseHandlers = new NList<SavePlayerProfileResponse ->Void>();
		GetPlayerProfileResponseHandlers = new NList<GetPlayerProfileResponse ->Void>();
		LogoutResponseHandlers = new NList<LogoutResponse ->Void>();
		ChallengeFriendResponseHandlers = new NList<ChallengeFriendResponse ->Void>();
		ChallengeThirdPartyFriendResponseHandlers = new NList<ChallengeThirdPartyFriendResponse ->Void>();
		GetFriendsResponseHandlers = new NList<GetFriendsResponse ->Void>();
		GetThirdPartyFriendsResponseHandlers = new NList<GetThirdPartyFriendsResponse ->Void>();
		GetPlayerInvitationsResponseHandlers = new NList<GetPlayerInvitationsResponse ->Void>();
		AcceptPlayerInvitationResponseHandlers = new NList<AcceptPlayerInvitationResponse ->Void>();
		IgnorePlayerInvitationResponseHandlers = new NList<IgnorePlayerInvitationResponse ->Void>();
		SubmitScoreResponseHandlers = new NList<SubmitScoreResponse ->Void>();
		GetLeaderboardResponseHandlers = new NList<GetLeaderboardResponse ->Void>();
		BuyItemResponseHandlers = new NList<BuyItemResponse ->Void>();
		GetStoreResponseHandlers = new NList<GetStoreResponse ->Void>();
		ConsumeItemResponseHandlers = new NList<ConsumeItemResponse ->Void>();
		IncreasePlayerWalletResponseHandlers = new NList<IncreasePlayerWalletResponse ->Void>();
		GetPlayerWalletResponseHandlers = new NList<GetPlayerWalletResponse ->Void>();
		GetAchievementBoardResponseHandlers = new NList<GetAchievementBoardResponse ->Void>();
		AchieveResponseHandlers = new NList<AchieveResponse ->Void>();
		SearchImmediateGameResponseHandlers = new NList<SearchImmediateGameResponse ->Void>();
		JoinGameResponseHandlers = new NList<JoinGameResponse ->Void>();
		UnjoinGameResponseHandlers = new NList<UnjoinGameResponse ->Void>();
		AcceptFriendChallengeResponseHandlers = new NList<AcceptFriendChallengeResponse ->Void>();
		CancelFriendChallengeResponseHandlers = new NList<CancelFriendChallengeResponse ->Void>();
		RefuseFriendChallengeResponseHandlers = new NList<RefuseFriendChallengeResponse ->Void>();
		GetChallengesResponseHandlers = new NList<GetChallengesResponse ->Void>();
		StartGameResponseHandlers = new NList<StartGameResponse ->Void>();
		StopGameResponseHandlers = new NList<StopGameResponse ->Void>();
		CreateGameResponseHandlers = new NList<CreateGameResponse ->Void>();
		GetGamesResponseHandlers = new NList<GetGamesResponse ->Void>();
		SaveAsGhostResponseHandlers = new NList<SaveAsGhostResponse ->Void>();
		GetGhostsResponseHandlers = new NList<GetGhostsResponse ->Void>();
		LoadGhostResponseHandlers = new NList<LoadGhostResponse ->Void>();
		SendGameChatResponseHandlers = new NList<SendGameChatResponse ->Void>();
		GetStorablesResponseHandlers = new NList<GetStorablesResponse ->Void>();
		SaveStorableResponseHandlers = new NList<SaveStorableResponse ->Void>();
		NextPlayerTurnResponseHandlers = new NList<NextPlayerTurnResponse ->Void>();
		SetPlayerNameResponseHandlers = new NList<SetPlayerNameResponse ->Void>();
		UpdateStorableResponseHandlers = new NList<UpdateStorableResponse ->Void>();
		RemoveStorableResponseHandlers = new NList<RemoveStorableResponse ->Void>();
		InviteThirdPartyFriendResponseHandlers = new NList<InviteThirdPartyFriendResponse ->Void>();
		PublishThirdPartyMessageResponseHandlers = new NList<PublishThirdPartyMessageResponse ->Void>();
		ThirdPartyLoginResponseHandlers = new NList<ThirdPartyLoginResponse ->Void>();
		SaveGameResponseHandlers = new NList<SaveGameResponse ->Void>();
		LoadGameResponseHandlers = new NList<LoadGameResponse ->Void>();
		SavePlayerStorableResponseHandlers = new NList<SavePlayerStorableResponse ->Void>();
		UpdatePlayerStorableResponseHandlers = new NList<UpdatePlayerStorableResponse ->Void>();
		RemovePlayerStorableResponseHandlers = new NList<RemovePlayerStorableResponse ->Void>();
		GetPlayerStorablesResponseHandlers = new NList<GetPlayerStorablesResponse ->Void>();
		PauseSessionMonitoringResponseHandlers = new NList<PauseSessionMonitoringResponse ->Void>();
		ResumeSessionMonitoringResponseHandlers = new NList<ResumeSessionMonitoringResponse ->Void>();
		PublishFriendThirdPartyMessageResponseHandlers = new NList<PublishFriendThirdPartyMessageResponse ->Void>();
	}

	private var globalListeners:NList<NuggetaMessageListener>;

	private var HandshakeResponseHandlers:NList<HandshakeResponse ->Void>;

	private var GameStateChangeHandlers:NList<GameStateChange ->Void>;

	private var PlayerEnterGameHandlers:NList<PlayerEnterGame ->Void>;

	private var FriendshipNotificationHandlers:NList<FriendshipNotification ->Void>;

	private var PlayerUnjoinGameHandlers:NList<PlayerUnjoinGame ->Void>;

	private var ConnectionLostHandlers:NList<ConnectionLost ->Void>;

	private var ConnectionInterruptedHandlers:NList<ConnectionInterrupted ->Void>;

	private var ConnectionResumedHandlers:NList<ConnectionResumed ->Void>;

	private var ConnectionStopHandlers:NList<ConnectionStop ->Void>;

	private var FriendConnectedNotificationHandlers:NList<FriendConnectedNotification ->Void>;

	private var FriendDisconnectedNotificationHandlers:NList<FriendDisconnectedNotification ->Void>;

	private var NuggetaExceptionHandlers:NList<NuggetaException ->Void>;

	private var OpenConnectionHandlers:NList<OpenConnection ->Void>;

	private var ChallengeAcceptedHandlers:NList<ChallengeAccepted ->Void>;

	private var ChallengeRefusedHandlers:NList<ChallengeRefused ->Void>;

	private var RawMessageHandlers:NList<NRawMessage ->Void>;

	private var SessionExpiredHandlers:NList<SessionExpired ->Void>;

	private var GameMessageErrorHandlers:NList<GameMessageError ->Void>;

	private var PlayerInvitationNotificationHandlers:NList<PlayerInvitationNotification ->Void>;

	private var FriendChallengeNotificationHandlers:NList<FriendChallengeNotification ->Void>;

	private var MyTurnNotificationHandlers:NList<MyTurnNotification ->Void>;

	private var PlayerTurnNotificationHandlers:NList<PlayerTurnNotification ->Void>;

	private var StartResponseHandlers:NList<StartResponse ->Void>;

	private var InvitePlayerResponseHandlers:NList<InvitePlayerResponse ->Void>;

	private var SignUpResponseHandlers:NList<SignUpResponse ->Void>;

	private var ForgotPasswordResponseHandlers:NList<ForgotPasswordResponse ->Void>;

	private var LoginResponseHandlers:NList<LoginResponse ->Void>;

	private var SavePlayerProfileResponseHandlers:NList<SavePlayerProfileResponse ->Void>;

	private var GetPlayerProfileResponseHandlers:NList<GetPlayerProfileResponse ->Void>;

	private var LogoutResponseHandlers:NList<LogoutResponse ->Void>;

	private var ChallengeFriendResponseHandlers:NList<ChallengeFriendResponse ->Void>;

	private var ChallengeThirdPartyFriendResponseHandlers:NList<ChallengeThirdPartyFriendResponse ->Void>;

	private var GetFriendsResponseHandlers:NList<GetFriendsResponse ->Void>;

	private var GetThirdPartyFriendsResponseHandlers:NList<GetThirdPartyFriendsResponse ->Void>;

	private var GetPlayerInvitationsResponseHandlers:NList<GetPlayerInvitationsResponse ->Void>;

	private var AcceptPlayerInvitationResponseHandlers:NList<AcceptPlayerInvitationResponse ->Void>;

	private var IgnorePlayerInvitationResponseHandlers:NList<IgnorePlayerInvitationResponse ->Void>;

	private var SubmitScoreResponseHandlers:NList<SubmitScoreResponse ->Void>;

	private var GetLeaderboardResponseHandlers:NList<GetLeaderboardResponse ->Void>;

	private var BuyItemResponseHandlers:NList<BuyItemResponse ->Void>;

	private var GetStoreResponseHandlers:NList<GetStoreResponse ->Void>;

	private var ConsumeItemResponseHandlers:NList<ConsumeItemResponse ->Void>;

	private var IncreasePlayerWalletResponseHandlers:NList<IncreasePlayerWalletResponse ->Void>;

	private var GetPlayerWalletResponseHandlers:NList<GetPlayerWalletResponse ->Void>;

	private var GetAchievementBoardResponseHandlers:NList<GetAchievementBoardResponse ->Void>;

	private var AchieveResponseHandlers:NList<AchieveResponse ->Void>;

	private var SearchImmediateGameResponseHandlers:NList<SearchImmediateGameResponse ->Void>;

	private var JoinGameResponseHandlers:NList<JoinGameResponse ->Void>;

	private var UnjoinGameResponseHandlers:NList<UnjoinGameResponse ->Void>;

	private var AcceptFriendChallengeResponseHandlers:NList<AcceptFriendChallengeResponse ->Void>;

	private var CancelFriendChallengeResponseHandlers:NList<CancelFriendChallengeResponse ->Void>;

	private var RefuseFriendChallengeResponseHandlers:NList<RefuseFriendChallengeResponse ->Void>;

	private var GetChallengesResponseHandlers:NList<GetChallengesResponse ->Void>;

	private var StartGameResponseHandlers:NList<StartGameResponse ->Void>;

	private var StopGameResponseHandlers:NList<StopGameResponse ->Void>;

	private var CreateGameResponseHandlers:NList<CreateGameResponse ->Void>;

	private var GetGamesResponseHandlers:NList<GetGamesResponse ->Void>;

	private var SaveAsGhostResponseHandlers:NList<SaveAsGhostResponse ->Void>;

	private var GetGhostsResponseHandlers:NList<GetGhostsResponse ->Void>;

	private var LoadGhostResponseHandlers:NList<LoadGhostResponse ->Void>;

	private var SendGameChatResponseHandlers:NList<SendGameChatResponse ->Void>;

	private var GetStorablesResponseHandlers:NList<GetStorablesResponse ->Void>;

	private var SaveStorableResponseHandlers:NList<SaveStorableResponse ->Void>;

	private var NextPlayerTurnResponseHandlers:NList<NextPlayerTurnResponse ->Void>;

	private var SetPlayerNameResponseHandlers:NList<SetPlayerNameResponse ->Void>;

	private var UpdateStorableResponseHandlers:NList<UpdateStorableResponse ->Void>;

	private var RemoveStorableResponseHandlers:NList<RemoveStorableResponse ->Void>;

	private var InviteThirdPartyFriendResponseHandlers:NList<InviteThirdPartyFriendResponse ->Void>;

	private var PublishThirdPartyMessageResponseHandlers:NList<PublishThirdPartyMessageResponse ->Void>;

	private var ThirdPartyLoginResponseHandlers:NList<ThirdPartyLoginResponse ->Void>;

	private var SaveGameResponseHandlers:NList<SaveGameResponse ->Void>;

	private var LoadGameResponseHandlers:NList<LoadGameResponse ->Void>;

	private var SavePlayerStorableResponseHandlers:NList<SavePlayerStorableResponse ->Void>;

	private var UpdatePlayerStorableResponseHandlers:NList<UpdatePlayerStorableResponse ->Void>;

	private var RemovePlayerStorableResponseHandlers:NList<RemovePlayerStorableResponse ->Void>;

	private var GetPlayerStorablesResponseHandlers:NList<GetPlayerStorablesResponse ->Void>;

	private var PauseSessionMonitoringResponseHandlers:NList<PauseSessionMonitoringResponse ->Void>;

	private var ResumeSessionMonitoringResponseHandlers:NList<ResumeSessionMonitoringResponse ->Void>;

	private var PublishFriendThirdPartyMessageResponseHandlers:NList<PublishFriendThirdPartyMessageResponse ->Void>;

	public function fireMessage( message:Message):Void
	{
		if (message.getSerializerID() == HandshakeResponse.serializerID) 
		{
			for (_k3771 in 0 ... globalListeners.size()) 
			{
				var _y3772:NuggetaMessageListener = globalListeners.get(_k3771);
				_y3772.onHandshakeResponse((cast message));
				continue;
			}
			for (_l11603 in 0 ... HandshakeResponseHandlers.size()) 
			{
				var _f11606:HandshakeResponse ->Void = HandshakeResponseHandlers.get(_l11603);
				_f11606((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GameStateChange.serializerID) 
		{
			for (_e3775 in 0 ... globalListeners.size()) 
			{
				var _q11604:NuggetaMessageListener = globalListeners.get(_e3775);
				_q11604.onGameStateChange((cast message));
				continue;
			}
			for (_k11605 in 0 ... GameStateChangeHandlers.size()) 
			{
				var _m11610:GameStateChange ->Void = GameStateChangeHandlers.get(_k11605);
				_m11610((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PlayerEnterGame.serializerID) 
		{
			for (_w3779 in 0 ... globalListeners.size()) 
			{
				var _l3780:NuggetaMessageListener = globalListeners.get(_w3779);
				_l3780.onPlayerEnterGame((cast message));
				continue;
			}
			for (_v11607 in 0 ... PlayerEnterGameHandlers.size()) 
			{
				var _w11614:PlayerEnterGame ->Void = PlayerEnterGameHandlers.get(_v11607);
				_w11614((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == FriendshipNotification.serializerID) 
		{
			for (_s3783 in 0 ... globalListeners.size()) 
			{
				var _d11608:NuggetaMessageListener = globalListeners.get(_s3783);
				_d11608.onFriendshipNotification((cast message));
				continue;
			}
			for (_p11609 in 0 ... FriendshipNotificationHandlers.size()) 
			{
				var _n11618:FriendshipNotification ->Void = FriendshipNotificationHandlers.get(_p11609);
				_n11618((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PlayerUnjoinGame.serializerID) 
		{
			for (_y3787 in 0 ... globalListeners.size()) 
			{
				var _r3788:NuggetaMessageListener = globalListeners.get(_y3787);
				_r3788.onPlayerUnjoinGame((cast message));
				continue;
			}
			for (_h11611 in 0 ... PlayerUnjoinGameHandlers.size()) 
			{
				var _u11622:PlayerUnjoinGame ->Void = PlayerUnjoinGameHandlers.get(_h11611);
				_u11622((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ConnectionLost.serializerID) 
		{
			for (_x3791 in 0 ... globalListeners.size()) 
			{
				var _u11612:NuggetaMessageListener = globalListeners.get(_x3791);
				_u11612.onConnectionLost((cast message));
				continue;
			}
			for (_l11613 in 0 ... ConnectionLostHandlers.size()) 
			{
				var _w11626:ConnectionLost ->Void = ConnectionLostHandlers.get(_l11613);
				_w11626((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ConnectionInterrupted.serializerID) 
		{
			for (_u3795 in 0 ... globalListeners.size()) 
			{
				var _t3796:NuggetaMessageListener = globalListeners.get(_u3795);
				_t3796.onConnectionInterrupted((cast message));
				continue;
			}
			for (_e11615 in 0 ... ConnectionInterruptedHandlers.size()) 
			{
				var _b11630:ConnectionInterrupted ->Void = ConnectionInterruptedHandlers.get(_e11615);
				_b11630((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ConnectionResumed.serializerID) 
		{
			for (_o3799 in 0 ... globalListeners.size()) 
			{
				var _v11616:NuggetaMessageListener = globalListeners.get(_o3799);
				_v11616.onConnectionResumed((cast message));
				continue;
			}
			for (_c11617 in 0 ... ConnectionResumedHandlers.size()) 
			{
				var _z11634:ConnectionResumed ->Void = ConnectionResumedHandlers.get(_c11617);
				_z11634((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ConnectionStop.serializerID) 
		{
			for (_d3803 in 0 ... globalListeners.size()) 
			{
				var _w3804:NuggetaMessageListener = globalListeners.get(_d3803);
				_w3804.onConnectionStop((cast message));
				continue;
			}
			for (_p11619 in 0 ... ConnectionStopHandlers.size()) 
			{
				var _j11638:ConnectionStop ->Void = ConnectionStopHandlers.get(_p11619);
				_j11638((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == FriendConnectedNotification.serializerID) 
		{
			for (_y3807 in 0 ... globalListeners.size()) 
			{
				var _q11620:NuggetaMessageListener = globalListeners.get(_y3807);
				_q11620.onFriendConnectedNotification((cast message));
				continue;
			}
			for (_h11621 in 0 ... FriendConnectedNotificationHandlers.size()) 
			{
				var _m11642:FriendConnectedNotification ->Void = FriendConnectedNotificationHandlers.get(_h11621);
				_m11642((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == FriendDisconnectedNotification.serializerID) 
		{
			for (_s3811 in 0 ... globalListeners.size()) 
			{
				var _s3812:NuggetaMessageListener = globalListeners.get(_s3811);
				_s3812.onFriendDisconnectedNotification((cast message));
				continue;
			}
			for (_d11623 in 0 ... FriendDisconnectedNotificationHandlers.size()) 
			{
				var _c11646:FriendDisconnectedNotification ->Void = FriendDisconnectedNotificationHandlers.get(_d11623);
				_c11646((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == NuggetaException.serializerID) 
		{
			for (_b3815 in 0 ... globalListeners.size()) 
			{
				var _h11624:NuggetaMessageListener = globalListeners.get(_b3815);
				_h11624.onNuggetaException((cast message));
				continue;
			}
			for (_z11625 in 0 ... NuggetaExceptionHandlers.size()) 
			{
				var _l11650:NuggetaException ->Void = NuggetaExceptionHandlers.get(_z11625);
				_l11650((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == OpenConnection.serializerID) 
		{
			for (_q3819 in 0 ... globalListeners.size()) 
			{
				var _p3820:NuggetaMessageListener = globalListeners.get(_q3819);
				_p3820.onOpenConnection((cast message));
				continue;
			}
			for (_s11627 in 0 ... OpenConnectionHandlers.size()) 
			{
				var _x11654:OpenConnection ->Void = OpenConnectionHandlers.get(_s11627);
				_x11654((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ChallengeAccepted.serializerID) 
		{
			for (_t3823 in 0 ... globalListeners.size()) 
			{
				var _x11628:NuggetaMessageListener = globalListeners.get(_t3823);
				_x11628.onChallengeAccepted((cast message));
				continue;
			}
			for (_y11629 in 0 ... ChallengeAcceptedHandlers.size()) 
			{
				var _k11658:ChallengeAccepted ->Void = ChallengeAcceptedHandlers.get(_y11629);
				_k11658((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ChallengeRefused.serializerID) 
		{
			for (_r3827 in 0 ... globalListeners.size()) 
			{
				var _d3828:NuggetaMessageListener = globalListeners.get(_r3827);
				_d3828.onChallengeRefused((cast message));
				continue;
			}
			for (_h11631 in 0 ... ChallengeRefusedHandlers.size()) 
			{
				var _y11662:ChallengeRefused ->Void = ChallengeRefusedHandlers.get(_h11631);
				_y11662((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == NRawMessage.serializerID) 
		{
			for (_b3831 in 0 ... globalListeners.size()) 
			{
				var _t11632:NuggetaMessageListener = globalListeners.get(_b3831);
				_t11632.onRawMessage((cast message));
				continue;
			}
			for (_k11633 in 0 ... RawMessageHandlers.size()) 
			{
				var _h11666:NRawMessage ->Void = RawMessageHandlers.get(_k11633);
				_h11666((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SessionExpired.serializerID) 
		{
			for (_d3835 in 0 ... globalListeners.size()) 
			{
				var _t3836:NuggetaMessageListener = globalListeners.get(_d3835);
				_t3836.onSessionExpired((cast message));
				continue;
			}
			for (_i11635 in 0 ... SessionExpiredHandlers.size()) 
			{
				var _a11670:SessionExpired ->Void = SessionExpiredHandlers.get(_i11635);
				_a11670((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GameMessageError.serializerID) 
		{
			for (_l3839 in 0 ... globalListeners.size()) 
			{
				var _g11636:NuggetaMessageListener = globalListeners.get(_l3839);
				_g11636.onGameMessageError((cast message));
				continue;
			}
			for (_l11637 in 0 ... GameMessageErrorHandlers.size()) 
			{
				var _t11674:GameMessageError ->Void = GameMessageErrorHandlers.get(_l11637);
				_t11674((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PlayerInvitationNotification.serializerID) 
		{
			for (_e3843 in 0 ... globalListeners.size()) 
			{
				var _w3844:NuggetaMessageListener = globalListeners.get(_e3843);
				_w3844.onPlayerInvitationNotification((cast message));
				continue;
			}
			for (_u11639 in 0 ... PlayerInvitationNotificationHandlers.size()) 
			{
				var _k11678:PlayerInvitationNotification ->Void = PlayerInvitationNotificationHandlers.get(_u11639);
				_k11678((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == FriendChallengeNotification.serializerID) 
		{
			for (_c3847 in 0 ... globalListeners.size()) 
			{
				var _k11640:NuggetaMessageListener = globalListeners.get(_c3847);
				_k11640.onFriendChallengeNotification((cast message));
				continue;
			}
			for (_k11641 in 0 ... FriendChallengeNotificationHandlers.size()) 
			{
				var _n11682:FriendChallengeNotification ->Void = FriendChallengeNotificationHandlers.get(_k11641);
				_n11682((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == MyTurnNotification.serializerID) 
		{
			for (_w3851 in 0 ... globalListeners.size()) 
			{
				var _j3852:NuggetaMessageListener = globalListeners.get(_w3851);
				_j3852.onMyTurnNotification((cast message));
				continue;
			}
			for (_w11643 in 0 ... MyTurnNotificationHandlers.size()) 
			{
				var _u11686:MyTurnNotification ->Void = MyTurnNotificationHandlers.get(_w11643);
				_u11686((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PlayerTurnNotification.serializerID) 
		{
			for (_h3855 in 0 ... globalListeners.size()) 
			{
				var _h11644:NuggetaMessageListener = globalListeners.get(_h3855);
				_h11644.onPlayerTurnNotification((cast message));
				continue;
			}
			for (_m11645 in 0 ... PlayerTurnNotificationHandlers.size()) 
			{
				var _u11690:PlayerTurnNotification ->Void = PlayerTurnNotificationHandlers.get(_m11645);
				_u11690((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == StartResponse.serializerID) 
		{
			for (_d3859 in 0 ... globalListeners.size()) 
			{
				var _t3860:NuggetaMessageListener = globalListeners.get(_d3859);
				_t3860.onStartResponse((cast message));
				continue;
			}
			for (_c11647 in 0 ... StartResponseHandlers.size()) 
			{
				var _c11694:StartResponse ->Void = StartResponseHandlers.get(_c11647);
				_c11694((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == InvitePlayerResponse.serializerID) 
		{
			for (_e3863 in 0 ... globalListeners.size()) 
			{
				var _k11648:NuggetaMessageListener = globalListeners.get(_e3863);
				_k11648.onInvitePlayerResponse((cast message));
				continue;
			}
			for (_z11649 in 0 ... InvitePlayerResponseHandlers.size()) 
			{
				var _m11698:InvitePlayerResponse ->Void = InvitePlayerResponseHandlers.get(_z11649);
				_m11698((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SignUpResponse.serializerID) 
		{
			for (_l3867 in 0 ... globalListeners.size()) 
			{
				var _y3868:NuggetaMessageListener = globalListeners.get(_l3867);
				_y3868.onSignUpResponse((cast message));
				continue;
			}
			for (_a11651 in 0 ... SignUpResponseHandlers.size()) 
			{
				var _p11702:SignUpResponse ->Void = SignUpResponseHandlers.get(_a11651);
				_p11702((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ForgotPasswordResponse.serializerID) 
		{
			for (_l3871 in 0 ... globalListeners.size()) 
			{
				var _m11652:NuggetaMessageListener = globalListeners.get(_l3871);
				_m11652.onForgotPasswordResponse((cast message));
				continue;
			}
			for (_p11653 in 0 ... ForgotPasswordResponseHandlers.size()) 
			{
				var _b11706:ForgotPasswordResponse ->Void = ForgotPasswordResponseHandlers.get(_p11653);
				_b11706((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == LoginResponse.serializerID) 
		{
			for (_g3875 in 0 ... globalListeners.size()) 
			{
				var _g3876:NuggetaMessageListener = globalListeners.get(_g3875);
				_g3876.onLoginResponse((cast message));
				continue;
			}
			for (_a11655 in 0 ... LoginResponseHandlers.size()) 
			{
				var _k11710:LoginResponse ->Void = LoginResponseHandlers.get(_a11655);
				_k11710((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SavePlayerProfileResponse.serializerID) 
		{
			for (_u3879 in 0 ... globalListeners.size()) 
			{
				var _n11656:NuggetaMessageListener = globalListeners.get(_u3879);
				_n11656.onSavePlayerProfileResponse((cast message));
				continue;
			}
			for (_i11657 in 0 ... SavePlayerProfileResponseHandlers.size()) 
			{
				var _j11714:SavePlayerProfileResponse ->Void = SavePlayerProfileResponseHandlers.get(_i11657);
				_j11714((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetPlayerProfileResponse.serializerID) 
		{
			for (_l3883 in 0 ... globalListeners.size()) 
			{
				var _y3884:NuggetaMessageListener = globalListeners.get(_l3883);
				_y3884.onGetPlayerProfileResponse((cast message));
				continue;
			}
			for (_l11659 in 0 ... GetPlayerProfileResponseHandlers.size()) 
			{
				var _y11718:GetPlayerProfileResponse ->Void = GetPlayerProfileResponseHandlers.get(_l11659);
				_y11718((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == LogoutResponse.serializerID) 
		{
			for (_x3887 in 0 ... globalListeners.size()) 
			{
				var _y11660:NuggetaMessageListener = globalListeners.get(_x3887);
				_y11660.onLogoutResponse((cast message));
				continue;
			}
			for (_t11661 in 0 ... LogoutResponseHandlers.size()) 
			{
				var _s11722:LogoutResponse ->Void = LogoutResponseHandlers.get(_t11661);
				_s11722((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ChallengeFriendResponse.serializerID) 
		{
			for (_j3891 in 0 ... globalListeners.size()) 
			{
				var _x3892:NuggetaMessageListener = globalListeners.get(_j3891);
				_x3892.onChallengeFriendResponse((cast message));
				continue;
			}
			for (_x11663 in 0 ... ChallengeFriendResponseHandlers.size()) 
			{
				var _n11726:ChallengeFriendResponse ->Void = ChallengeFriendResponseHandlers.get(_x11663);
				_n11726((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ChallengeThirdPartyFriendResponse.serializerID) 
		{
			for (_u3895 in 0 ... globalListeners.size()) 
			{
				var _d11664:NuggetaMessageListener = globalListeners.get(_u3895);
				_d11664.onChallengeThirdPartyFriendResponse((cast message));
				continue;
			}
			for (_y11665 in 0 ... ChallengeThirdPartyFriendResponseHandlers.size()) 
			{
				var _u11730:ChallengeThirdPartyFriendResponse ->Void = ChallengeThirdPartyFriendResponseHandlers.get(_y11665);
				_u11730((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetFriendsResponse.serializerID) 
		{
			for (_y3899 in 0 ... globalListeners.size()) 
			{
				var _f3900:NuggetaMessageListener = globalListeners.get(_y3899);
				_f3900.onGetFriendsResponse((cast message));
				continue;
			}
			for (_t11667 in 0 ... GetFriendsResponseHandlers.size()) 
			{
				var _r11734:GetFriendsResponse ->Void = GetFriendsResponseHandlers.get(_t11667);
				_r11734((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetThirdPartyFriendsResponse.serializerID) 
		{
			for (_p3903 in 0 ... globalListeners.size()) 
			{
				var _j11668:NuggetaMessageListener = globalListeners.get(_p3903);
				_j11668.onGetThirdPartyFriendsResponse((cast message));
				continue;
			}
			for (_r11669 in 0 ... GetThirdPartyFriendsResponseHandlers.size()) 
			{
				var _j11738:GetThirdPartyFriendsResponse ->Void = GetThirdPartyFriendsResponseHandlers.get(_r11669);
				_j11738((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetPlayerInvitationsResponse.serializerID) 
		{
			for (_h3907 in 0 ... globalListeners.size()) 
			{
				var _v3908:NuggetaMessageListener = globalListeners.get(_h3907);
				_v3908.onGetPlayerInvitationsResponse((cast message));
				continue;
			}
			for (_h11671 in 0 ... GetPlayerInvitationsResponseHandlers.size()) 
			{
				var _y11742:GetPlayerInvitationsResponse ->Void = GetPlayerInvitationsResponseHandlers.get(_h11671);
				_y11742((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == AcceptPlayerInvitationResponse.serializerID) 
		{
			for (_u3911 in 0 ... globalListeners.size()) 
			{
				var _q11672:NuggetaMessageListener = globalListeners.get(_u3911);
				_q11672.onAcceptPlayerInvitationResponse((cast message));
				continue;
			}
			for (_h11673 in 0 ... AcceptPlayerInvitationResponseHandlers.size()) 
			{
				var _s11746:AcceptPlayerInvitationResponse ->Void = AcceptPlayerInvitationResponseHandlers.get(_h11673);
				_s11746((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == IgnorePlayerInvitationResponse.serializerID) 
		{
			for (_s3915 in 0 ... globalListeners.size()) 
			{
				var _j3916:NuggetaMessageListener = globalListeners.get(_s3915);
				_j3916.onIgnorePlayerInvitationResponse((cast message));
				continue;
			}
			for (_s11675 in 0 ... IgnorePlayerInvitationResponseHandlers.size()) 
			{
				var _c11750:IgnorePlayerInvitationResponse ->Void = IgnorePlayerInvitationResponseHandlers.get(_s11675);
				_c11750((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SubmitScoreResponse.serializerID) 
		{
			for (_e3919 in 0 ... globalListeners.size()) 
			{
				var _w11676:NuggetaMessageListener = globalListeners.get(_e3919);
				_w11676.onSubmitScoreResponse((cast message));
				continue;
			}
			for (_f11677 in 0 ... SubmitScoreResponseHandlers.size()) 
			{
				var _y11754:SubmitScoreResponse ->Void = SubmitScoreResponseHandlers.get(_f11677);
				_y11754((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetLeaderboardResponse.serializerID) 
		{
			for (_u3923 in 0 ... globalListeners.size()) 
			{
				var _p3924:NuggetaMessageListener = globalListeners.get(_u3923);
				_p3924.onGetLeaderboardResponse((cast message));
				continue;
			}
			for (_y11679 in 0 ... GetLeaderboardResponseHandlers.size()) 
			{
				var _d11758:GetLeaderboardResponse ->Void = GetLeaderboardResponseHandlers.get(_y11679);
				_d11758((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == BuyItemResponse.serializerID) 
		{
			for (_x3927 in 0 ... globalListeners.size()) 
			{
				var _x11680:NuggetaMessageListener = globalListeners.get(_x3927);
				_x11680.onBuyItemResponse((cast message));
				continue;
			}
			for (_r11681 in 0 ... BuyItemResponseHandlers.size()) 
			{
				var _r11762:BuyItemResponse ->Void = BuyItemResponseHandlers.get(_r11681);
				_r11762((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetStoreResponse.serializerID) 
		{
			for (_i3931 in 0 ... globalListeners.size()) 
			{
				var _s3932:NuggetaMessageListener = globalListeners.get(_i3931);
				_s3932.onGetStoreResponse((cast message));
				continue;
			}
			for (_e11683 in 0 ... GetStoreResponseHandlers.size()) 
			{
				var _h11766:GetStoreResponse ->Void = GetStoreResponseHandlers.get(_e11683);
				_h11766((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ConsumeItemResponse.serializerID) 
		{
			for (_w3935 in 0 ... globalListeners.size()) 
			{
				var _a11684:NuggetaMessageListener = globalListeners.get(_w3935);
				_a11684.onConsumeItemResponse((cast message));
				continue;
			}
			for (_i11685 in 0 ... ConsumeItemResponseHandlers.size()) 
			{
				var _v11770:ConsumeItemResponse ->Void = ConsumeItemResponseHandlers.get(_i11685);
				_v11770((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == IncreasePlayerWalletResponse.serializerID) 
		{
			for (_b3939 in 0 ... globalListeners.size()) 
			{
				var _j3940:NuggetaMessageListener = globalListeners.get(_b3939);
				_j3940.onIncreasePlayerWalletResponse((cast message));
				continue;
			}
			for (_x11687 in 0 ... IncreasePlayerWalletResponseHandlers.size()) 
			{
				var _u11774:IncreasePlayerWalletResponse ->Void = IncreasePlayerWalletResponseHandlers.get(_x11687);
				_u11774((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetPlayerWalletResponse.serializerID) 
		{
			for (_f3943 in 0 ... globalListeners.size()) 
			{
				var _t11688:NuggetaMessageListener = globalListeners.get(_f3943);
				_t11688.onGetPlayerWalletResponse((cast message));
				continue;
			}
			for (_m11689 in 0 ... GetPlayerWalletResponseHandlers.size()) 
			{
				var _o11778:GetPlayerWalletResponse ->Void = GetPlayerWalletResponseHandlers.get(_m11689);
				_o11778((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetAchievementBoardResponse.serializerID) 
		{
			for (_l3947 in 0 ... globalListeners.size()) 
			{
				var _p3948:NuggetaMessageListener = globalListeners.get(_l3947);
				_p3948.onGetAchievementBoardResponse((cast message));
				continue;
			}
			for (_h11691 in 0 ... GetAchievementBoardResponseHandlers.size()) 
			{
				var _n11782:GetAchievementBoardResponse ->Void = GetAchievementBoardResponseHandlers.get(_h11691);
				_n11782((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == AchieveResponse.serializerID) 
		{
			for (_o3951 in 0 ... globalListeners.size()) 
			{
				var _v11692:NuggetaMessageListener = globalListeners.get(_o3951);
				_v11692.onAchieveResponse((cast message));
				continue;
			}
			for (_y11693 in 0 ... AchieveResponseHandlers.size()) 
			{
				var _h11786:AchieveResponse ->Void = AchieveResponseHandlers.get(_y11693);
				_h11786((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SearchImmediateGameResponse.serializerID) 
		{
			for (_y3955 in 0 ... globalListeners.size()) 
			{
				var _g3956:NuggetaMessageListener = globalListeners.get(_y3955);
				_g3956.onSearchImmediateGameResponse((cast message));
				continue;
			}
			for (_y11695 in 0 ... SearchImmediateGameResponseHandlers.size()) 
			{
				var _j11790:SearchImmediateGameResponse ->Void = SearchImmediateGameResponseHandlers.get(_y11695);
				_j11790((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == JoinGameResponse.serializerID) 
		{
			for (_w3959 in 0 ... globalListeners.size()) 
			{
				var _z11696:NuggetaMessageListener = globalListeners.get(_w3959);
				_z11696.onJoinGameResponse((cast message));
				continue;
			}
			for (_m11697 in 0 ... JoinGameResponseHandlers.size()) 
			{
				var _d11794:JoinGameResponse ->Void = JoinGameResponseHandlers.get(_m11697);
				_d11794((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == UnjoinGameResponse.serializerID) 
		{
			for (_e3963 in 0 ... globalListeners.size()) 
			{
				var _b3964:NuggetaMessageListener = globalListeners.get(_e3963);
				_b3964.onUnjoinGameResponse((cast message));
				continue;
			}
			for (_j11699 in 0 ... UnjoinGameResponseHandlers.size()) 
			{
				var _t11798:UnjoinGameResponse ->Void = UnjoinGameResponseHandlers.get(_j11699);
				_t11798((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == AcceptFriendChallengeResponse.serializerID) 
		{
			for (_r3967 in 0 ... globalListeners.size()) 
			{
				var _l11700:NuggetaMessageListener = globalListeners.get(_r3967);
				_l11700.onAcceptFriendChallengeResponse((cast message));
				continue;
			}
			for (_k11701 in 0 ... AcceptFriendChallengeResponseHandlers.size()) 
			{
				var _w11802:AcceptFriendChallengeResponse ->Void = AcceptFriendChallengeResponseHandlers.get(_k11701);
				_w11802((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == CancelFriendChallengeResponse.serializerID) 
		{
			for (_h3971 in 0 ... globalListeners.size()) 
			{
				var _j3972:NuggetaMessageListener = globalListeners.get(_h3971);
				_j3972.onCancelFriendChallengeResponse((cast message));
				continue;
			}
			for (_j11703 in 0 ... CancelFriendChallengeResponseHandlers.size()) 
			{
				var _x11806:CancelFriendChallengeResponse ->Void = CancelFriendChallengeResponseHandlers.get(_j11703);
				_x11806((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == RefuseFriendChallengeResponse.serializerID) 
		{
			for (_u3975 in 0 ... globalListeners.size()) 
			{
				var _p11704:NuggetaMessageListener = globalListeners.get(_u3975);
				_p11704.onRefuseFriendChallengeResponse((cast message));
				continue;
			}
			for (_e11705 in 0 ... RefuseFriendChallengeResponseHandlers.size()) 
			{
				var _o11810:RefuseFriendChallengeResponse ->Void = RefuseFriendChallengeResponseHandlers.get(_e11705);
				_o11810((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetChallengesResponse.serializerID) 
		{
			for (_h3979 in 0 ... globalListeners.size()) 
			{
				var _p3980:NuggetaMessageListener = globalListeners.get(_h3979);
				_p3980.onGetChallengesResponse((cast message));
				continue;
			}
			for (_t11707 in 0 ... GetChallengesResponseHandlers.size()) 
			{
				var _h11814:GetChallengesResponse ->Void = GetChallengesResponseHandlers.get(_t11707);
				_h11814((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == StartGameResponse.serializerID) 
		{
			for (_o3983 in 0 ... globalListeners.size()) 
			{
				var _b11708:NuggetaMessageListener = globalListeners.get(_o3983);
				_b11708.onStartGameResponse((cast message));
				continue;
			}
			for (_t11709 in 0 ... StartGameResponseHandlers.size()) 
			{
				var _u11818:StartGameResponse ->Void = StartGameResponseHandlers.get(_t11709);
				_u11818((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == StopGameResponse.serializerID) 
		{
			for (_o3987 in 0 ... globalListeners.size()) 
			{
				var _n3988:NuggetaMessageListener = globalListeners.get(_o3987);
				_n3988.onStopGameResponse((cast message));
				continue;
			}
			for (_k11711 in 0 ... StopGameResponseHandlers.size()) 
			{
				var _j11822:StopGameResponse ->Void = StopGameResponseHandlers.get(_k11711);
				_j11822((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == CreateGameResponse.serializerID) 
		{
			for (_j3991 in 0 ... globalListeners.size()) 
			{
				var _o11712:NuggetaMessageListener = globalListeners.get(_j3991);
				_o11712.onCreateGameResponse((cast message));
				continue;
			}
			for (_s11713 in 0 ... CreateGameResponseHandlers.size()) 
			{
				var _d11826:CreateGameResponse ->Void = CreateGameResponseHandlers.get(_s11713);
				_d11826((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetGamesResponse.serializerID) 
		{
			for (_q3995 in 0 ... globalListeners.size()) 
			{
				var _f3996:NuggetaMessageListener = globalListeners.get(_q3995);
				_f3996.onGetGamesResponse((cast message));
				continue;
			}
			for (_i11715 in 0 ... GetGamesResponseHandlers.size()) 
			{
				var _m11830:GetGamesResponse ->Void = GetGamesResponseHandlers.get(_i11715);
				_m11830((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SaveAsGhostResponse.serializerID) 
		{
			for (_v3999 in 0 ... globalListeners.size()) 
			{
				var _b11716:NuggetaMessageListener = globalListeners.get(_v3999);
				_b11716.onSaveAsGhostResponse((cast message));
				continue;
			}
			for (_u11717 in 0 ... SaveAsGhostResponseHandlers.size()) 
			{
				var _m11834:SaveAsGhostResponse ->Void = SaveAsGhostResponseHandlers.get(_u11717);
				_m11834((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetGhostsResponse.serializerID) 
		{
			for (_p4003 in 0 ... globalListeners.size()) 
			{
				var _x4004:NuggetaMessageListener = globalListeners.get(_p4003);
				_x4004.onGetGhostsResponse((cast message));
				continue;
			}
			for (_h11719 in 0 ... GetGhostsResponseHandlers.size()) 
			{
				var _h11838:GetGhostsResponse ->Void = GetGhostsResponseHandlers.get(_h11719);
				_h11838((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == LoadGhostResponse.serializerID) 
		{
			for (_s4007 in 0 ... globalListeners.size()) 
			{
				var _u11720:NuggetaMessageListener = globalListeners.get(_s4007);
				_u11720.onLoadGhostResponse((cast message));
				continue;
			}
			for (_v11721 in 0 ... LoadGhostResponseHandlers.size()) 
			{
				var _o11842:LoadGhostResponse ->Void = LoadGhostResponseHandlers.get(_v11721);
				_o11842((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SendGameChatResponse.serializerID) 
		{
			for (_i4011 in 0 ... globalListeners.size()) 
			{
				var _s4012:NuggetaMessageListener = globalListeners.get(_i4011);
				_s4012.onSendGameChatResponse((cast message));
				continue;
			}
			for (_n11723 in 0 ... SendGameChatResponseHandlers.size()) 
			{
				var _s11846:SendGameChatResponse ->Void = SendGameChatResponseHandlers.get(_n11723);
				_s11846((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetStorablesResponse.serializerID) 
		{
			for (_b4015 in 0 ... globalListeners.size()) 
			{
				var _z11724:NuggetaMessageListener = globalListeners.get(_b4015);
				_z11724.onGetStorablesResponse((cast message));
				continue;
			}
			for (_u11725 in 0 ... GetStorablesResponseHandlers.size()) 
			{
				var _h11850:GetStorablesResponse ->Void = GetStorablesResponseHandlers.get(_u11725);
				_h11850((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SaveStorableResponse.serializerID) 
		{
			for (_d4019 in 0 ... globalListeners.size()) 
			{
				var _n4020:NuggetaMessageListener = globalListeners.get(_d4019);
				_n4020.onSaveStorableResponse((cast message));
				continue;
			}
			for (_q11727 in 0 ... SaveStorableResponseHandlers.size()) 
			{
				var _o11854:SaveStorableResponse ->Void = SaveStorableResponseHandlers.get(_q11727);
				_o11854((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == NextPlayerTurnResponse.serializerID) 
		{
			for (_n4023 in 0 ... globalListeners.size()) 
			{
				var _o11728:NuggetaMessageListener = globalListeners.get(_n4023);
				_o11728.onNextPlayerTurnResponse((cast message));
				continue;
			}
			for (_e11729 in 0 ... NextPlayerTurnResponseHandlers.size()) 
			{
				var _s11858:NextPlayerTurnResponse ->Void = NextPlayerTurnResponseHandlers.get(_e11729);
				_s11858((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SetPlayerNameResponse.serializerID) 
		{
			for (_f4027 in 0 ... globalListeners.size()) 
			{
				var _c4028:NuggetaMessageListener = globalListeners.get(_f4027);
				_c4028.onSetPlayerNameResponse((cast message));
				continue;
			}
			for (_k11731 in 0 ... SetPlayerNameResponseHandlers.size()) 
			{
				var _h11862:SetPlayerNameResponse ->Void = SetPlayerNameResponseHandlers.get(_k11731);
				_h11862((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == UpdateStorableResponse.serializerID) 
		{
			for (_d4031 in 0 ... globalListeners.size()) 
			{
				var _a11732:NuggetaMessageListener = globalListeners.get(_d4031);
				_a11732.onUpdateStorableResponse((cast message));
				continue;
			}
			for (_u11733 in 0 ... UpdateStorableResponseHandlers.size()) 
			{
				var _w11866:UpdateStorableResponse ->Void = UpdateStorableResponseHandlers.get(_u11733);
				_w11866((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == RemoveStorableResponse.serializerID) 
		{
			for (_p4035 in 0 ... globalListeners.size()) 
			{
				var _h4036:NuggetaMessageListener = globalListeners.get(_p4035);
				_h4036.onRemoveStorableResponse((cast message));
				continue;
			}
			for (_s11735 in 0 ... RemoveStorableResponseHandlers.size()) 
			{
				var _b11870:RemoveStorableResponse ->Void = RemoveStorableResponseHandlers.get(_s11735);
				_b11870((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == InviteThirdPartyFriendResponse.serializerID) 
		{
			for (_y4039 in 0 ... globalListeners.size()) 
			{
				var _k11736:NuggetaMessageListener = globalListeners.get(_y4039);
				_k11736.onInviteThirdPartyFriendResponse((cast message));
				continue;
			}
			for (_a11737 in 0 ... InviteThirdPartyFriendResponseHandlers.size()) 
			{
				var _y11874:InviteThirdPartyFriendResponse ->Void = InviteThirdPartyFriendResponseHandlers.get(_a11737);
				_y11874((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PublishThirdPartyMessageResponse.serializerID) 
		{
			for (_d4043 in 0 ... globalListeners.size()) 
			{
				var _d4044:NuggetaMessageListener = globalListeners.get(_d4043);
				_d4044.onPublishThirdPartyMessageResponse((cast message));
				continue;
			}
			for (_o11739 in 0 ... PublishThirdPartyMessageResponseHandlers.size()) 
			{
				var _n11878:PublishThirdPartyMessageResponse ->Void = PublishThirdPartyMessageResponseHandlers.get(_o11739);
				_n11878((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ThirdPartyLoginResponse.serializerID) 
		{
			for (_n4047 in 0 ... globalListeners.size()) 
			{
				var _g11740:NuggetaMessageListener = globalListeners.get(_n4047);
				_g11740.onThirdPartyLoginResponse((cast message));
				continue;
			}
			for (_b11741 in 0 ... ThirdPartyLoginResponseHandlers.size()) 
			{
				var _f11882:ThirdPartyLoginResponse ->Void = ThirdPartyLoginResponseHandlers.get(_b11741);
				_f11882((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SaveGameResponse.serializerID) 
		{
			for (_n4051 in 0 ... globalListeners.size()) 
			{
				var _d4052:NuggetaMessageListener = globalListeners.get(_n4051);
				_d4052.onSaveGameResponse((cast message));
				continue;
			}
			for (_h11743 in 0 ... SaveGameResponseHandlers.size()) 
			{
				var _a11886:SaveGameResponse ->Void = SaveGameResponseHandlers.get(_h11743);
				_a11886((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == LoadGameResponse.serializerID) 
		{
			for (_h4055 in 0 ... globalListeners.size()) 
			{
				var _y11744:NuggetaMessageListener = globalListeners.get(_h4055);
				_y11744.onLoadGameResponse((cast message));
				continue;
			}
			for (_f11745 in 0 ... LoadGameResponseHandlers.size()) 
			{
				var _v11890:LoadGameResponse ->Void = LoadGameResponseHandlers.get(_f11745);
				_v11890((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == SavePlayerStorableResponse.serializerID) 
		{
			for (_o4059 in 0 ... globalListeners.size()) 
			{
				var _l4060:NuggetaMessageListener = globalListeners.get(_o4059);
				_l4060.onSavePlayerStorableResponse((cast message));
				continue;
			}
			for (_g11747 in 0 ... SavePlayerStorableResponseHandlers.size()) 
			{
				var _w11894:SavePlayerStorableResponse ->Void = SavePlayerStorableResponseHandlers.get(_g11747);
				_w11894((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == UpdatePlayerStorableResponse.serializerID) 
		{
			for (_v4063 in 0 ... globalListeners.size()) 
			{
				var _p11748:NuggetaMessageListener = globalListeners.get(_v4063);
				_p11748.onUpdatePlayerStorableResponse((cast message));
				continue;
			}
			for (_i11749 in 0 ... UpdatePlayerStorableResponseHandlers.size()) 
			{
				var _j11898:UpdatePlayerStorableResponse ->Void = UpdatePlayerStorableResponseHandlers.get(_i11749);
				_j11898((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == RemovePlayerStorableResponse.serializerID) 
		{
			for (_x4067 in 0 ... globalListeners.size()) 
			{
				var _u4068:NuggetaMessageListener = globalListeners.get(_x4067);
				_u4068.onRemovePlayerStorableResponse((cast message));
				continue;
			}
			for (_e11751 in 0 ... RemovePlayerStorableResponseHandlers.size()) 
			{
				var _o11902:RemovePlayerStorableResponse ->Void = RemovePlayerStorableResponseHandlers.get(_e11751);
				_o11902((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == GetPlayerStorablesResponse.serializerID) 
		{
			for (_m4071 in 0 ... globalListeners.size()) 
			{
				var _t11752:NuggetaMessageListener = globalListeners.get(_m4071);
				_t11752.onGetPlayerStorablesResponse((cast message));
				continue;
			}
			for (_q11753 in 0 ... GetPlayerStorablesResponseHandlers.size()) 
			{
				var _i11906:GetPlayerStorablesResponse ->Void = GetPlayerStorablesResponseHandlers.get(_q11753);
				_i11906((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PauseSessionMonitoringResponse.serializerID) 
		{
			for (_q4075 in 0 ... globalListeners.size()) 
			{
				var _q4076:NuggetaMessageListener = globalListeners.get(_q4075);
				_q4076.onPauseSessionMonitoringResponse((cast message));
				continue;
			}
			for (_b11755 in 0 ... PauseSessionMonitoringResponseHandlers.size()) 
			{
				var _n11910:PauseSessionMonitoringResponse ->Void = PauseSessionMonitoringResponseHandlers.get(_b11755);
				_n11910((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == ResumeSessionMonitoringResponse.serializerID) 
		{
			for (_h4079 in 0 ... globalListeners.size()) 
			{
				var _o11756:NuggetaMessageListener = globalListeners.get(_h4079);
				_o11756.onResumeSessionMonitoringResponse((cast message));
				continue;
			}
			for (_y11757 in 0 ... ResumeSessionMonitoringResponseHandlers.size()) 
			{
				var _g11914:ResumeSessionMonitoringResponse ->Void = ResumeSessionMonitoringResponseHandlers.get(_y11757);
				_g11914((cast message));
				continue;
			}
			return;
		}
		if (message.getSerializerID() == PublishFriendThirdPartyMessageResponse.serializerID) 
		{
			for (_z4083 in 0 ... globalListeners.size()) 
			{
				var _p4084:NuggetaMessageListener = globalListeners.get(_z4083);
				_p4084.onPublishFriendThirdPartyMessageResponse((cast message));
				continue;
			}
			for (_l11917 in 0 ... PublishFriendThirdPartyMessageResponseHandlers.size()) 
			{
				var _p11918:PublishFriendThirdPartyMessageResponse ->Void = PublishFriendThirdPartyMessageResponseHandlers.get(_l11917);
				_p11918((cast message));
				continue;
			}
			return;
		}
	}

	public function addNuggetaMessageListener( listener:NuggetaMessageListener):Void
	{
		globalListeners.add(listener);
	}

	public function removeNuggetaMessageListener( _v11916:NuggetaMessageListener):Void
	{
		globalListeners.removeValue(_v11916);
	}

	public function addHandshakeResponseHandler( handler:HandshakeResponse ->Void):Void
	{
		HandshakeResponseHandlers.add(handler);
	}

	public function removeHandshakeResponseHandler( handler:HandshakeResponse ->Void):Void
	{
		HandshakeResponseHandlers.removeValue(handler);
	}

	public function addGameStateChangeHandler( handler:GameStateChange ->Void):Void
	{
		GameStateChangeHandlers.add(handler);
	}

	public function removeGameStateChangeHandler( handler:GameStateChange ->Void):Void
	{
		GameStateChangeHandlers.removeValue(handler);
	}

	public function addPlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void
	{
		PlayerEnterGameHandlers.add(handler);
	}

	public function removePlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void
	{
		PlayerEnterGameHandlers.removeValue(handler);
	}

	public function addFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void
	{
		FriendshipNotificationHandlers.add(handler);
	}

	public function removeFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void
	{
		FriendshipNotificationHandlers.removeValue(handler);
	}

	public function addPlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void
	{
		PlayerUnjoinGameHandlers.add(handler);
	}

	public function removePlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void
	{
		PlayerUnjoinGameHandlers.removeValue(handler);
	}

	public function addConnectionLostHandler( handler:ConnectionLost ->Void):Void
	{
		ConnectionLostHandlers.add(handler);
	}

	public function removeConnectionLostHandler( handler:ConnectionLost ->Void):Void
	{
		ConnectionLostHandlers.removeValue(handler);
	}

	public function addConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void
	{
		ConnectionInterruptedHandlers.add(handler);
	}

	public function removeConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void
	{
		ConnectionInterruptedHandlers.removeValue(handler);
	}

	public function addConnectionResumedHandler( handler:ConnectionResumed ->Void):Void
	{
		ConnectionResumedHandlers.add(handler);
	}

	public function removeConnectionResumedHandler( handler:ConnectionResumed ->Void):Void
	{
		ConnectionResumedHandlers.removeValue(handler);
	}

	public function addConnectionStopHandler( handler:ConnectionStop ->Void):Void
	{
		ConnectionStopHandlers.add(handler);
	}

	public function removeConnectionStopHandler( handler:ConnectionStop ->Void):Void
	{
		ConnectionStopHandlers.removeValue(handler);
	}

	public function addFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void
	{
		FriendConnectedNotificationHandlers.add(handler);
	}

	public function removeFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void
	{
		FriendConnectedNotificationHandlers.removeValue(handler);
	}

	public function addFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void
	{
		FriendDisconnectedNotificationHandlers.add(handler);
	}

	public function removeFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void
	{
		FriendDisconnectedNotificationHandlers.removeValue(handler);
	}

	public function addNuggetaExceptionHandler( handler:NuggetaException ->Void):Void
	{
		NuggetaExceptionHandlers.add(handler);
	}

	public function removeNuggetaExceptionHandler( handler:NuggetaException ->Void):Void
	{
		NuggetaExceptionHandlers.removeValue(handler);
	}

	public function addOpenConnectionHandler( handler:OpenConnection ->Void):Void
	{
		OpenConnectionHandlers.add(handler);
	}

	public function removeOpenConnectionHandler( handler:OpenConnection ->Void):Void
	{
		OpenConnectionHandlers.removeValue(handler);
	}

	public function addChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void
	{
		ChallengeAcceptedHandlers.add(handler);
	}

	public function removeChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void
	{
		ChallengeAcceptedHandlers.removeValue(handler);
	}

	public function addChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void
	{
		ChallengeRefusedHandlers.add(handler);
	}

	public function removeChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void
	{
		ChallengeRefusedHandlers.removeValue(handler);
	}

	public function addRawMessageHandler( handler:NRawMessage ->Void):Void
	{
		RawMessageHandlers.add(handler);
	}

	public function removeRawMessageHandler( handler:NRawMessage ->Void):Void
	{
		RawMessageHandlers.removeValue(handler);
	}

	public function addSessionExpiredHandler( handler:SessionExpired ->Void):Void
	{
		SessionExpiredHandlers.add(handler);
	}

	public function removeSessionExpiredHandler( handler:SessionExpired ->Void):Void
	{
		SessionExpiredHandlers.removeValue(handler);
	}

	public function addGameMessageErrorHandler( handler:GameMessageError ->Void):Void
	{
		GameMessageErrorHandlers.add(handler);
	}

	public function removeGameMessageErrorHandler( handler:GameMessageError ->Void):Void
	{
		GameMessageErrorHandlers.removeValue(handler);
	}

	public function addPlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void
	{
		PlayerInvitationNotificationHandlers.add(handler);
	}

	public function removePlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void
	{
		PlayerInvitationNotificationHandlers.removeValue(handler);
	}

	public function addFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void
	{
		FriendChallengeNotificationHandlers.add(handler);
	}

	public function removeFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void
	{
		FriendChallengeNotificationHandlers.removeValue(handler);
	}

	public function addMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void
	{
		MyTurnNotificationHandlers.add(handler);
	}

	public function removeMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void
	{
		MyTurnNotificationHandlers.removeValue(handler);
	}

	public function addPlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void
	{
		PlayerTurnNotificationHandlers.add(handler);
	}

	public function removePlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void
	{
		PlayerTurnNotificationHandlers.removeValue(handler);
	}

	public function addStartResponseHandler( handler:StartResponse ->Void):Void
	{
		StartResponseHandlers.add(handler);
	}

	public function removeStartResponseHandler( handler:StartResponse ->Void):Void
	{
		StartResponseHandlers.removeValue(handler);
	}

	public function addInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void
	{
		InvitePlayerResponseHandlers.add(handler);
	}

	public function removeInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void
	{
		InvitePlayerResponseHandlers.removeValue(handler);
	}

	public function addSignUpResponseHandler( handler:SignUpResponse ->Void):Void
	{
		SignUpResponseHandlers.add(handler);
	}

	public function removeSignUpResponseHandler( handler:SignUpResponse ->Void):Void
	{
		SignUpResponseHandlers.removeValue(handler);
	}

	public function addForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void
	{
		ForgotPasswordResponseHandlers.add(handler);
	}

	public function removeForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void
	{
		ForgotPasswordResponseHandlers.removeValue(handler);
	}

	public function addLoginResponseHandler( handler:LoginResponse ->Void):Void
	{
		LoginResponseHandlers.add(handler);
	}

	public function removeLoginResponseHandler( handler:LoginResponse ->Void):Void
	{
		LoginResponseHandlers.removeValue(handler);
	}

	public function addSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void
	{
		SavePlayerProfileResponseHandlers.add(handler);
	}

	public function removeSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void
	{
		SavePlayerProfileResponseHandlers.removeValue(handler);
	}

	public function addGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void
	{
		GetPlayerProfileResponseHandlers.add(handler);
	}

	public function removeGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void
	{
		GetPlayerProfileResponseHandlers.removeValue(handler);
	}

	public function addLogoutResponseHandler( handler:LogoutResponse ->Void):Void
	{
		LogoutResponseHandlers.add(handler);
	}

	public function removeLogoutResponseHandler( handler:LogoutResponse ->Void):Void
	{
		LogoutResponseHandlers.removeValue(handler);
	}

	public function addChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void
	{
		ChallengeFriendResponseHandlers.add(handler);
	}

	public function removeChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void
	{
		ChallengeFriendResponseHandlers.removeValue(handler);
	}

	public function addChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void
	{
		ChallengeThirdPartyFriendResponseHandlers.add(handler);
	}

	public function removeChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void
	{
		ChallengeThirdPartyFriendResponseHandlers.removeValue(handler);
	}

	public function addGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void
	{
		GetFriendsResponseHandlers.add(handler);
	}

	public function removeGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void
	{
		GetFriendsResponseHandlers.removeValue(handler);
	}

	public function addGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void
	{
		GetThirdPartyFriendsResponseHandlers.add(handler);
	}

	public function removeGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void
	{
		GetThirdPartyFriendsResponseHandlers.removeValue(handler);
	}

	public function addGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void
	{
		GetPlayerInvitationsResponseHandlers.add(handler);
	}

	public function removeGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void
	{
		GetPlayerInvitationsResponseHandlers.removeValue(handler);
	}

	public function addAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void
	{
		AcceptPlayerInvitationResponseHandlers.add(handler);
	}

	public function removeAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void
	{
		AcceptPlayerInvitationResponseHandlers.removeValue(handler);
	}

	public function addIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void
	{
		IgnorePlayerInvitationResponseHandlers.add(handler);
	}

	public function removeIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void
	{
		IgnorePlayerInvitationResponseHandlers.removeValue(handler);
	}

	public function addSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void
	{
		SubmitScoreResponseHandlers.add(handler);
	}

	public function removeSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void
	{
		SubmitScoreResponseHandlers.removeValue(handler);
	}

	public function addGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void
	{
		GetLeaderboardResponseHandlers.add(handler);
	}

	public function removeGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void
	{
		GetLeaderboardResponseHandlers.removeValue(handler);
	}

	public function addBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void
	{
		BuyItemResponseHandlers.add(handler);
	}

	public function removeBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void
	{
		BuyItemResponseHandlers.removeValue(handler);
	}

	public function addGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void
	{
		GetStoreResponseHandlers.add(handler);
	}

	public function removeGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void
	{
		GetStoreResponseHandlers.removeValue(handler);
	}

	public function addConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void
	{
		ConsumeItemResponseHandlers.add(handler);
	}

	public function removeConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void
	{
		ConsumeItemResponseHandlers.removeValue(handler);
	}

	public function addIncreasePlayerWalletResponseHandler( handler:IncreasePlayerWalletResponse ->Void):Void
	{
		IncreasePlayerWalletResponseHandlers.add(handler);
	}

	public function removeIncreasePlayerWalletResponseHandler( handler:IncreasePlayerWalletResponse ->Void):Void
	{
		IncreasePlayerWalletResponseHandlers.removeValue(handler);
	}

	public function addGetPlayerWalletResponseHandler( handler:GetPlayerWalletResponse ->Void):Void
	{
		GetPlayerWalletResponseHandlers.add(handler);
	}

	public function removeGetPlayerWalletResponseHandler( handler:GetPlayerWalletResponse ->Void):Void
	{
		GetPlayerWalletResponseHandlers.removeValue(handler);
	}

	public function addGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void
	{
		GetAchievementBoardResponseHandlers.add(handler);
	}

	public function removeGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void
	{
		GetAchievementBoardResponseHandlers.removeValue(handler);
	}

	public function addAchieveResponseHandler( handler:AchieveResponse ->Void):Void
	{
		AchieveResponseHandlers.add(handler);
	}

	public function removeAchieveResponseHandler( handler:AchieveResponse ->Void):Void
	{
		AchieveResponseHandlers.removeValue(handler);
	}

	public function addSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void
	{
		SearchImmediateGameResponseHandlers.add(handler);
	}

	public function removeSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void
	{
		SearchImmediateGameResponseHandlers.removeValue(handler);
	}

	public function addJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void
	{
		JoinGameResponseHandlers.add(handler);
	}

	public function removeJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void
	{
		JoinGameResponseHandlers.removeValue(handler);
	}

	public function addUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void
	{
		UnjoinGameResponseHandlers.add(handler);
	}

	public function removeUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void
	{
		UnjoinGameResponseHandlers.removeValue(handler);
	}

	public function addAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void
	{
		AcceptFriendChallengeResponseHandlers.add(handler);
	}

	public function removeAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void
	{
		AcceptFriendChallengeResponseHandlers.removeValue(handler);
	}

	public function addCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void
	{
		CancelFriendChallengeResponseHandlers.add(handler);
	}

	public function removeCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void
	{
		CancelFriendChallengeResponseHandlers.removeValue(handler);
	}

	public function addRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void
	{
		RefuseFriendChallengeResponseHandlers.add(handler);
	}

	public function removeRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void
	{
		RefuseFriendChallengeResponseHandlers.removeValue(handler);
	}

	public function addGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void
	{
		GetChallengesResponseHandlers.add(handler);
	}

	public function removeGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void
	{
		GetChallengesResponseHandlers.removeValue(handler);
	}

	public function addStartGameResponseHandler( handler:StartGameResponse ->Void):Void
	{
		StartGameResponseHandlers.add(handler);
	}

	public function removeStartGameResponseHandler( handler:StartGameResponse ->Void):Void
	{
		StartGameResponseHandlers.removeValue(handler);
	}

	public function addStopGameResponseHandler( handler:StopGameResponse ->Void):Void
	{
		StopGameResponseHandlers.add(handler);
	}

	public function removeStopGameResponseHandler( handler:StopGameResponse ->Void):Void
	{
		StopGameResponseHandlers.removeValue(handler);
	}

	public function addCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void
	{
		CreateGameResponseHandlers.add(handler);
	}

	public function removeCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void
	{
		CreateGameResponseHandlers.removeValue(handler);
	}

	public function addGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void
	{
		GetGamesResponseHandlers.add(handler);
	}

	public function removeGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void
	{
		GetGamesResponseHandlers.removeValue(handler);
	}

	public function addSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void
	{
		SaveAsGhostResponseHandlers.add(handler);
	}

	public function removeSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void
	{
		SaveAsGhostResponseHandlers.removeValue(handler);
	}

	public function addGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void
	{
		GetGhostsResponseHandlers.add(handler);
	}

	public function removeGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void
	{
		GetGhostsResponseHandlers.removeValue(handler);
	}

	public function addLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void
	{
		LoadGhostResponseHandlers.add(handler);
	}

	public function removeLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void
	{
		LoadGhostResponseHandlers.removeValue(handler);
	}

	public function addSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void
	{
		SendGameChatResponseHandlers.add(handler);
	}

	public function removeSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void
	{
		SendGameChatResponseHandlers.removeValue(handler);
	}

	public function addGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void
	{
		GetStorablesResponseHandlers.add(handler);
	}

	public function removeGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void
	{
		GetStorablesResponseHandlers.removeValue(handler);
	}

	public function addSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void
	{
		SaveStorableResponseHandlers.add(handler);
	}

	public function removeSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void
	{
		SaveStorableResponseHandlers.removeValue(handler);
	}

	public function addNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void
	{
		NextPlayerTurnResponseHandlers.add(handler);
	}

	public function removeNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void
	{
		NextPlayerTurnResponseHandlers.removeValue(handler);
	}

	public function addSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void
	{
		SetPlayerNameResponseHandlers.add(handler);
	}

	public function removeSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void
	{
		SetPlayerNameResponseHandlers.removeValue(handler);
	}

	public function addUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void
	{
		UpdateStorableResponseHandlers.add(handler);
	}

	public function removeUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void
	{
		UpdateStorableResponseHandlers.removeValue(handler);
	}

	public function addRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void
	{
		RemoveStorableResponseHandlers.add(handler);
	}

	public function removeRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void
	{
		RemoveStorableResponseHandlers.removeValue(handler);
	}

	public function addInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void
	{
		InviteThirdPartyFriendResponseHandlers.add(handler);
	}

	public function removeInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void
	{
		InviteThirdPartyFriendResponseHandlers.removeValue(handler);
	}

	public function addPublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void
	{
		PublishThirdPartyMessageResponseHandlers.add(handler);
	}

	public function removePublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void
	{
		PublishThirdPartyMessageResponseHandlers.removeValue(handler);
	}

	public function addThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void
	{
		ThirdPartyLoginResponseHandlers.add(handler);
	}

	public function removeThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void
	{
		ThirdPartyLoginResponseHandlers.removeValue(handler);
	}

	public function addSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void
	{
		SaveGameResponseHandlers.add(handler);
	}

	public function removeSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void
	{
		SaveGameResponseHandlers.removeValue(handler);
	}

	public function addLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void
	{
		LoadGameResponseHandlers.add(handler);
	}

	public function removeLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void
	{
		LoadGameResponseHandlers.removeValue(handler);
	}

	public function addSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void
	{
		SavePlayerStorableResponseHandlers.add(handler);
	}

	public function removeSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void
	{
		SavePlayerStorableResponseHandlers.removeValue(handler);
	}

	public function addUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void
	{
		UpdatePlayerStorableResponseHandlers.add(handler);
	}

	public function removeUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void
	{
		UpdatePlayerStorableResponseHandlers.removeValue(handler);
	}

	public function addRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void
	{
		RemovePlayerStorableResponseHandlers.add(handler);
	}

	public function removeRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void
	{
		RemovePlayerStorableResponseHandlers.removeValue(handler);
	}

	public function addGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void
	{
		GetPlayerStorablesResponseHandlers.add(handler);
	}

	public function removeGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void
	{
		GetPlayerStorablesResponseHandlers.removeValue(handler);
	}

	public function addPauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void
	{
		PauseSessionMonitoringResponseHandlers.add(handler);
	}

	public function removePauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void
	{
		PauseSessionMonitoringResponseHandlers.removeValue(handler);
	}

	public function addResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void
	{
		ResumeSessionMonitoringResponseHandlers.add(handler);
	}

	public function removeResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void
	{
		ResumeSessionMonitoringResponseHandlers.removeValue(handler);
	}

	public function addPublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void
	{
		PublishFriendThirdPartyMessageResponseHandlers.add(handler);
	}

	public function removePublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void
	{
		PublishFriendThirdPartyMessageResponseHandlers.removeValue(handler);
	}

	public function clear():Void
	{
		globalListeners.clear();
		HandshakeResponseHandlers.clear();
		GameStateChangeHandlers.clear();
		PlayerEnterGameHandlers.clear();
		FriendshipNotificationHandlers.clear();
		PlayerUnjoinGameHandlers.clear();
		ConnectionLostHandlers.clear();
		ConnectionInterruptedHandlers.clear();
		ConnectionResumedHandlers.clear();
		ConnectionStopHandlers.clear();
		FriendConnectedNotificationHandlers.clear();
		FriendDisconnectedNotificationHandlers.clear();
		NuggetaExceptionHandlers.clear();
		OpenConnectionHandlers.clear();
		ChallengeAcceptedHandlers.clear();
		ChallengeRefusedHandlers.clear();
		RawMessageHandlers.clear();
		SessionExpiredHandlers.clear();
		GameMessageErrorHandlers.clear();
		PlayerInvitationNotificationHandlers.clear();
		FriendChallengeNotificationHandlers.clear();
		MyTurnNotificationHandlers.clear();
		PlayerTurnNotificationHandlers.clear();
		StartResponseHandlers.clear();
		InvitePlayerResponseHandlers.clear();
		SignUpResponseHandlers.clear();
		ForgotPasswordResponseHandlers.clear();
		LoginResponseHandlers.clear();
		SavePlayerProfileResponseHandlers.clear();
		GetPlayerProfileResponseHandlers.clear();
		LogoutResponseHandlers.clear();
		ChallengeFriendResponseHandlers.clear();
		ChallengeThirdPartyFriendResponseHandlers.clear();
		GetFriendsResponseHandlers.clear();
		GetThirdPartyFriendsResponseHandlers.clear();
		GetPlayerInvitationsResponseHandlers.clear();
		AcceptPlayerInvitationResponseHandlers.clear();
		IgnorePlayerInvitationResponseHandlers.clear();
		SubmitScoreResponseHandlers.clear();
		GetLeaderboardResponseHandlers.clear();
		BuyItemResponseHandlers.clear();
		GetStoreResponseHandlers.clear();
		ConsumeItemResponseHandlers.clear();
		IncreasePlayerWalletResponseHandlers.clear();
		GetPlayerWalletResponseHandlers.clear();
		GetAchievementBoardResponseHandlers.clear();
		AchieveResponseHandlers.clear();
		SearchImmediateGameResponseHandlers.clear();
		JoinGameResponseHandlers.clear();
		UnjoinGameResponseHandlers.clear();
		AcceptFriendChallengeResponseHandlers.clear();
		CancelFriendChallengeResponseHandlers.clear();
		RefuseFriendChallengeResponseHandlers.clear();
		GetChallengesResponseHandlers.clear();
		StartGameResponseHandlers.clear();
		StopGameResponseHandlers.clear();
		CreateGameResponseHandlers.clear();
		GetGamesResponseHandlers.clear();
		SaveAsGhostResponseHandlers.clear();
		GetGhostsResponseHandlers.clear();
		LoadGhostResponseHandlers.clear();
		SendGameChatResponseHandlers.clear();
		GetStorablesResponseHandlers.clear();
		SaveStorableResponseHandlers.clear();
		NextPlayerTurnResponseHandlers.clear();
		SetPlayerNameResponseHandlers.clear();
		UpdateStorableResponseHandlers.clear();
		RemoveStorableResponseHandlers.clear();
		InviteThirdPartyFriendResponseHandlers.clear();
		PublishThirdPartyMessageResponseHandlers.clear();
		ThirdPartyLoginResponseHandlers.clear();
		SaveGameResponseHandlers.clear();
		LoadGameResponseHandlers.clear();
		SavePlayerStorableResponseHandlers.clear();
		UpdatePlayerStorableResponseHandlers.clear();
		RemovePlayerStorableResponseHandlers.clear();
		GetPlayerStorablesResponseHandlers.clear();
		PauseSessionMonitoringResponseHandlers.clear();
		ResumeSessionMonitoringResponseHandlers.clear();
		PublishFriendThirdPartyMessageResponseHandlers.clear();
	}
}
