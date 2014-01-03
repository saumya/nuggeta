package com.nuggeta.ngdl;
import com.nuggeta.network.Message;
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

class NuggetaMessageAdapter implements NuggetaMessageListener
{

	public function new()
	{
	}

	public function onHandshakeResponse( message:HandshakeResponse):Void
	{
	}

	public function onGameStateChange( message:GameStateChange):Void
	{
	}

	public function onPlayerEnterGame( message:PlayerEnterGame):Void
	{
	}

	public function onFriendshipNotification( message:FriendshipNotification):Void
	{
	}

	public function onPlayerUnjoinGame( message:PlayerUnjoinGame):Void
	{
	}

	public function onConnectionLost( message:ConnectionLost):Void
	{
	}

	public function onConnectionInterrupted( message:ConnectionInterrupted):Void
	{
	}

	public function onConnectionResumed( message:ConnectionResumed):Void
	{
	}

	public function onConnectionStop( message:ConnectionStop):Void
	{
	}

	public function onFriendConnectedNotification( message:FriendConnectedNotification):Void
	{
	}

	public function onFriendDisconnectedNotification( message:FriendDisconnectedNotification):Void
	{
	}

	public function onNuggetaException( message:NuggetaException):Void
	{
	}

	public function onOpenConnection( message:OpenConnection):Void
	{
	}

	public function onChallengeAccepted( message:ChallengeAccepted):Void
	{
	}

	public function onChallengeRefused( message:ChallengeRefused):Void
	{
	}

	public function onRawMessage( message:NRawMessage):Void
	{
	}

	public function onSessionExpired( message:SessionExpired):Void
	{
	}

	public function onGameMessageError( message:GameMessageError):Void
	{
	}

	public function onPlayerInvitationNotification( message:PlayerInvitationNotification):Void
	{
	}

	public function onFriendChallengeNotification( message:FriendChallengeNotification):Void
	{
	}

	public function onMyTurnNotification( message:MyTurnNotification):Void
	{
	}

	public function onPlayerTurnNotification( message:PlayerTurnNotification):Void
	{
	}

	public function onStartResponse( message:StartResponse):Void
	{
	}

	public function onInvitePlayerResponse( message:InvitePlayerResponse):Void
	{
	}

	public function onSignUpResponse( message:SignUpResponse):Void
	{
	}

	public function onForgotPasswordResponse( message:ForgotPasswordResponse):Void
	{
	}

	public function onLoginResponse( message:LoginResponse):Void
	{
	}

	public function onSavePlayerProfileResponse( message:SavePlayerProfileResponse):Void
	{
	}

	public function onGetPlayerProfileResponse( message:GetPlayerProfileResponse):Void
	{
	}

	public function onLogoutResponse( message:LogoutResponse):Void
	{
	}

	public function onChallengeFriendResponse( message:ChallengeFriendResponse):Void
	{
	}

	public function onChallengeThirdPartyFriendResponse( message:ChallengeThirdPartyFriendResponse):Void
	{
	}

	public function onGetFriendsResponse( message:GetFriendsResponse):Void
	{
	}

	public function onGetThirdPartyFriendsResponse( message:GetThirdPartyFriendsResponse):Void
	{
	}

	public function onGetPlayerInvitationsResponse( message:GetPlayerInvitationsResponse):Void
	{
	}

	public function onAcceptPlayerInvitationResponse( message:AcceptPlayerInvitationResponse):Void
	{
	}

	public function onIgnorePlayerInvitationResponse( message:IgnorePlayerInvitationResponse):Void
	{
	}

	public function onSubmitScoreResponse( message:SubmitScoreResponse):Void
	{
	}

	public function onGetLeaderboardResponse( message:GetLeaderboardResponse):Void
	{
	}

	public function onBuyItemResponse( message:BuyItemResponse):Void
	{
	}

	public function onGetStoreResponse( message:GetStoreResponse):Void
	{
	}

	public function onConsumeItemResponse( message:ConsumeItemResponse):Void
	{
	}

	public function onIncreasePlayerWalletResponse( message:IncreasePlayerWalletResponse):Void
	{
	}

	public function onGetPlayerWalletResponse( message:GetPlayerWalletResponse):Void
	{
	}

	public function onGetAchievementBoardResponse( message:GetAchievementBoardResponse):Void
	{
	}

	public function onAchieveResponse( message:AchieveResponse):Void
	{
	}

	public function onSearchImmediateGameResponse( message:SearchImmediateGameResponse):Void
	{
	}

	public function onJoinGameResponse( message:JoinGameResponse):Void
	{
	}

	public function onUnjoinGameResponse( message:UnjoinGameResponse):Void
	{
	}

	public function onAcceptFriendChallengeResponse( message:AcceptFriendChallengeResponse):Void
	{
	}

	public function onCancelFriendChallengeResponse( message:CancelFriendChallengeResponse):Void
	{
	}

	public function onRefuseFriendChallengeResponse( message:RefuseFriendChallengeResponse):Void
	{
	}

	public function onGetChallengesResponse( message:GetChallengesResponse):Void
	{
	}

	public function onStartGameResponse( message:StartGameResponse):Void
	{
	}

	public function onStopGameResponse( message:StopGameResponse):Void
	{
	}

	public function onCreateGameResponse( message:CreateGameResponse):Void
	{
	}

	public function onGetGamesResponse( message:GetGamesResponse):Void
	{
	}

	public function onSaveAsGhostResponse( message:SaveAsGhostResponse):Void
	{
	}

	public function onGetGhostsResponse( message:GetGhostsResponse):Void
	{
	}

	public function onLoadGhostResponse( message:LoadGhostResponse):Void
	{
	}

	public function onSendGameChatResponse( message:SendGameChatResponse):Void
	{
	}

	public function onGetStorablesResponse( message:GetStorablesResponse):Void
	{
	}

	public function onSaveStorableResponse( message:SaveStorableResponse):Void
	{
	}

	public function onNextPlayerTurnResponse( message:NextPlayerTurnResponse):Void
	{
	}

	public function onSetPlayerNameResponse( message:SetPlayerNameResponse):Void
	{
	}

	public function onUpdateStorableResponse( message:UpdateStorableResponse):Void
	{
	}

	public function onRemoveStorableResponse( message:RemoveStorableResponse):Void
	{
	}

	public function onInviteThirdPartyFriendResponse( message:InviteThirdPartyFriendResponse):Void
	{
	}

	public function onPublishThirdPartyMessageResponse( message:PublishThirdPartyMessageResponse):Void
	{
	}

	public function onThirdPartyLoginResponse( message:ThirdPartyLoginResponse):Void
	{
	}

	public function onSaveGameResponse( message:SaveGameResponse):Void
	{
	}

	public function onLoadGameResponse( message:LoadGameResponse):Void
	{
	}

	public function onSavePlayerStorableResponse( message:SavePlayerStorableResponse):Void
	{
	}

	public function onUpdatePlayerStorableResponse( message:UpdatePlayerStorableResponse):Void
	{
	}

	public function onRemovePlayerStorableResponse( message:RemovePlayerStorableResponse):Void
	{
	}

	public function onGetPlayerStorablesResponse( message:GetPlayerStorablesResponse):Void
	{
	}

	public function onPauseSessionMonitoringResponse( message:PauseSessionMonitoringResponse):Void
	{
	}

	public function onResumeSessionMonitoringResponse( message:ResumeSessionMonitoringResponse):Void
	{
	}

	public function onPublishFriendThirdPartyMessageResponse( message:PublishFriendThirdPartyMessageResponse):Void
	{
	}
}
