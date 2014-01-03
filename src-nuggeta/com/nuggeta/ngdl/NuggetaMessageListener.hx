package com.nuggeta.ngdl;
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

interface NuggetaMessageListener
{

	function onHandshakeResponse( message:HandshakeResponse):Void;

	function onGameStateChange( message:GameStateChange):Void;

	function onPlayerEnterGame( message:PlayerEnterGame):Void;

	function onFriendshipNotification( message:FriendshipNotification):Void;

	function onPlayerUnjoinGame( message:PlayerUnjoinGame):Void;

	function onConnectionLost( message:ConnectionLost):Void;

	function onConnectionInterrupted( message:ConnectionInterrupted):Void;

	function onConnectionResumed( message:ConnectionResumed):Void;

	function onConnectionStop( message:ConnectionStop):Void;

	function onFriendConnectedNotification( message:FriendConnectedNotification):Void;

	function onFriendDisconnectedNotification( message:FriendDisconnectedNotification):Void;

	function onNuggetaException( message:NuggetaException):Void;

	function onOpenConnection( message:OpenConnection):Void;

	function onChallengeAccepted( message:ChallengeAccepted):Void;

	function onChallengeRefused( message:ChallengeRefused):Void;

	function onRawMessage( message:NRawMessage):Void;

	function onSessionExpired( message:SessionExpired):Void;

	function onGameMessageError( message:GameMessageError):Void;

	function onPlayerInvitationNotification( message:PlayerInvitationNotification):Void;

	function onFriendChallengeNotification( message:FriendChallengeNotification):Void;

	function onMyTurnNotification( message:MyTurnNotification):Void;

	function onPlayerTurnNotification( message:PlayerTurnNotification):Void;

	function onStartResponse( message:StartResponse):Void;

	function onInvitePlayerResponse( message:InvitePlayerResponse):Void;

	function onSignUpResponse( message:SignUpResponse):Void;

	function onForgotPasswordResponse( message:ForgotPasswordResponse):Void;

	function onLoginResponse( message:LoginResponse):Void;

	function onSavePlayerProfileResponse( message:SavePlayerProfileResponse):Void;

	function onGetPlayerProfileResponse( message:GetPlayerProfileResponse):Void;

	function onLogoutResponse( message:LogoutResponse):Void;

	function onChallengeFriendResponse( message:ChallengeFriendResponse):Void;

	function onChallengeThirdPartyFriendResponse( message:ChallengeThirdPartyFriendResponse):Void;

	function onGetFriendsResponse( message:GetFriendsResponse):Void;

	function onGetThirdPartyFriendsResponse( message:GetThirdPartyFriendsResponse):Void;

	function onGetPlayerInvitationsResponse( message:GetPlayerInvitationsResponse):Void;

	function onAcceptPlayerInvitationResponse( message:AcceptPlayerInvitationResponse):Void;

	function onIgnorePlayerInvitationResponse( message:IgnorePlayerInvitationResponse):Void;

	function onSubmitScoreResponse( message:SubmitScoreResponse):Void;

	function onGetLeaderboardResponse( message:GetLeaderboardResponse):Void;

	function onBuyItemResponse( message:BuyItemResponse):Void;

	function onGetStoreResponse( message:GetStoreResponse):Void;

	function onConsumeItemResponse( message:ConsumeItemResponse):Void;

	function onIncreasePlayerWalletResponse( message:IncreasePlayerWalletResponse):Void;

	function onGetPlayerWalletResponse( message:GetPlayerWalletResponse):Void;

	function onGetAchievementBoardResponse( message:GetAchievementBoardResponse):Void;

	function onAchieveResponse( message:AchieveResponse):Void;

	function onSearchImmediateGameResponse( message:SearchImmediateGameResponse):Void;

	function onJoinGameResponse( message:JoinGameResponse):Void;

	function onUnjoinGameResponse( message:UnjoinGameResponse):Void;

	function onAcceptFriendChallengeResponse( message:AcceptFriendChallengeResponse):Void;

	function onCancelFriendChallengeResponse( message:CancelFriendChallengeResponse):Void;

	function onRefuseFriendChallengeResponse( message:RefuseFriendChallengeResponse):Void;

	function onGetChallengesResponse( message:GetChallengesResponse):Void;

	function onStartGameResponse( message:StartGameResponse):Void;

	function onStopGameResponse( message:StopGameResponse):Void;

	function onCreateGameResponse( message:CreateGameResponse):Void;

	function onGetGamesResponse( message:GetGamesResponse):Void;

	function onSaveAsGhostResponse( message:SaveAsGhostResponse):Void;

	function onGetGhostsResponse( message:GetGhostsResponse):Void;

	function onLoadGhostResponse( message:LoadGhostResponse):Void;

	function onSendGameChatResponse( message:SendGameChatResponse):Void;

	function onGetStorablesResponse( message:GetStorablesResponse):Void;

	function onSaveStorableResponse( message:SaveStorableResponse):Void;

	function onNextPlayerTurnResponse( message:NextPlayerTurnResponse):Void;

	function onSetPlayerNameResponse( message:SetPlayerNameResponse):Void;

	function onUpdateStorableResponse( message:UpdateStorableResponse):Void;

	function onRemoveStorableResponse( message:RemoveStorableResponse):Void;

	function onInviteThirdPartyFriendResponse( message:InviteThirdPartyFriendResponse):Void;

	function onPublishThirdPartyMessageResponse( message:PublishThirdPartyMessageResponse):Void;

	function onThirdPartyLoginResponse( message:ThirdPartyLoginResponse):Void;

	function onSaveGameResponse( message:SaveGameResponse):Void;

	function onLoadGameResponse( message:LoadGameResponse):Void;

	function onSavePlayerStorableResponse( message:SavePlayerStorableResponse):Void;

	function onUpdatePlayerStorableResponse( message:UpdatePlayerStorableResponse):Void;

	function onRemovePlayerStorableResponse( message:RemovePlayerStorableResponse):Void;

	function onGetPlayerStorablesResponse( message:GetPlayerStorablesResponse):Void;

	function onPauseSessionMonitoringResponse( message:PauseSessionMonitoringResponse):Void;

	function onResumeSessionMonitoringResponse( message:ResumeSessionMonitoringResponse):Void;

	function onPublishFriendThirdPartyMessageResponse( message:PublishFriendThirdPartyMessageResponse):Void;
}
