package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.database.Storable;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.NuggetaDispatcher;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.ngdl.nobjects.InvitePlayerByIdRequest;
import com.nuggeta.ngdl.nobjects.InvitePlayerByLoginRequest;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByLoginRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByEmailRequest;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.LogoutRequest;
import com.nuggeta.ngdl.nobjects.ChallengeFriendRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsRequest;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.SubmitScoreRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreWithPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.GetLeaderboardRequest;
import com.nuggeta.ngdl.nobjects.BuyItemRequest;
import com.nuggeta.ngdl.nobjects.GetStoreRequest;
import com.nuggeta.ngdl.nobjects.ConsumeItemRequest;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardRequest;
import com.nuggeta.ngdl.nobjects.AchieveRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameRequest;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameByConditionsRequest;
import com.nuggeta.ngdl.nobjects.JoinGameRequest;
import com.nuggeta.ngdl.nobjects.UnjoinGameRequest;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.GetChallengesRequest;
import com.nuggeta.ngdl.nobjects.StartGameRequest;
import com.nuggeta.ngdl.nobjects.StopGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameRequest;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.CreateGameWithCharacteristicsRequest;
import com.nuggeta.ngdl.nobjects.GetGamesRequest;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SaveAsGhostRequest;
import com.nuggeta.ngdl.nobjects.GetGhostsRequest;
import com.nuggeta.ngdl.nobjects.LoadGhostRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerListRequest;
import com.nuggeta.ngdl.nobjects.GetStorablesRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableListRequest;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnRequest;
import com.nuggeta.ngdl.nobjects.SetPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableListRequest;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginWithTokenRequest;
import com.nuggeta.ngdl.nobjects.SaveGameRequest;
import com.nuggeta.ngdl.nobjects.LoadGameRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesRequest;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.HandshakeResponseHandler;
import com.nuggeta.ngdl.nobjects.GameStateChange;
import com.nuggeta.ngdl.GameStateChangeHandler;
import com.nuggeta.ngdl.nobjects.PlayerEnterGame;
import com.nuggeta.ngdl.PlayerEnterGameHandler;
import com.nuggeta.ngdl.nobjects.FriendshipNotification;
import com.nuggeta.ngdl.FriendshipNotificationHandler;
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;
import com.nuggeta.ngdl.PlayerUnjoinGameHandler;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.ConnectionLostHandler;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.ConnectionInterruptedHandler;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.ConnectionResumedHandler;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.ConnectionStopHandler;
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;
import com.nuggeta.ngdl.FriendConnectedNotificationHandler;
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;
import com.nuggeta.ngdl.FriendDisconnectedNotificationHandler;
import com.nuggeta.ngdl.nobjects.NuggetaException;
import com.nuggeta.ngdl.NuggetaExceptionHandler;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.OpenConnectionHandler;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;
import com.nuggeta.ngdl.ChallengeAcceptedHandler;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;
import com.nuggeta.ngdl.ChallengeRefusedHandler;
import com.nuggeta.ngdl.nobjects.NRawMessage;
import com.nuggeta.ngdl.RawMessageHandler;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.SessionExpiredHandler;
import com.nuggeta.ngdl.nobjects.GameMessageError;
import com.nuggeta.ngdl.GameMessageErrorHandler;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;
import com.nuggeta.ngdl.PlayerInvitationNotificationHandler;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;
import com.nuggeta.ngdl.FriendChallengeNotificationHandler;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;
import com.nuggeta.ngdl.MyTurnNotificationHandler;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;
import com.nuggeta.ngdl.PlayerTurnNotificationHandler;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.StartResponseHandler;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.InvitePlayerResponseHandler;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.SignUpResponseHandler;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.ForgotPasswordResponseHandler;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.LoginResponseHandler;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.SavePlayerProfileResponseHandler;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.GetPlayerProfileResponseHandler;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.LogoutResponseHandler;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.ChallengeFriendResponseHandler;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.ChallengeThirdPartyFriendResponseHandler;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.GetFriendsResponseHandler;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.GetThirdPartyFriendsResponseHandler;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.GetPlayerInvitationsResponseHandler;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.AcceptPlayerInvitationResponseHandler;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.IgnorePlayerInvitationResponseHandler;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.SubmitScoreResponseHandler;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.GetLeaderboardResponseHandler;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.BuyItemResponseHandler;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.GetStoreResponseHandler;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.ConsumeItemResponseHandler;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.IncreasePlayerWalletResponseHandler;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.GetPlayerWalletResponseHandler;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.GetAchievementBoardResponseHandler;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.AchieveResponseHandler;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.SearchImmediateGameResponseHandler;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.JoinGameResponseHandler;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.UnjoinGameResponseHandler;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.AcceptFriendChallengeResponseHandler;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.CancelFriendChallengeResponseHandler;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.RefuseFriendChallengeResponseHandler;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.GetChallengesResponseHandler;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.StartGameResponseHandler;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.StopGameResponseHandler;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.CreateGameResponseHandler;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.GetGamesResponseHandler;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.SaveAsGhostResponseHandler;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.GetGhostsResponseHandler;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.LoadGhostResponseHandler;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.SendGameChatResponseHandler;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.ngdl.GetStorablesResponseHandler;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.ngdl.SaveStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.NextPlayerTurnResponseHandler;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.SetPlayerNameResponseHandler;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.UpdateStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.RemoveStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.InviteThirdPartyFriendResponseHandler;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.PublishThirdPartyMessageResponseHandler;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.ThirdPartyLoginResponseHandler;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.SaveGameResponseHandler;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.LoadGameResponseHandler;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.SavePlayerStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.UpdatePlayerStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.RemovePlayerStorableResponseHandler;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.GetPlayerStorablesResponseHandler;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.PauseSessionMonitoringResponseHandler;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.ResumeSessionMonitoringResponseHandler;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
import com.nuggeta.ngdl.PublishFriendThirdPartyMessageResponseHandler;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.Api;
import com.nuggeta.Api;
import com.nuggeta.ngdl.NuggetaDispatcher;
import com.nuggeta.network.Message;
import com.nuggeta.network.Serializable;
import com.nuggeta.ngdl.nobjects.InvitePlayerByIdRequest;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerByLoginRequest;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByLoginRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByEmailRequest;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.LogoutRequest;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendRequest;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.SubmitScoreRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.SubmitScoreWithPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.GetLeaderboardRequest;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.BuyItemRequest;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.GetStoreRequest;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemRequest;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardRequest;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.AchieveRequest;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameByConditionsRequest;
import com.nuggeta.ngdl.nobjects.JoinGameRequest;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameRequest;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesRequest;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.StartGameRequest;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameRequest;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.CreateGameWithCharacteristicsRequest;
import com.nuggeta.ngdl.nobjects.GetGamesRequest;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SaveAsGhostRequest;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsRequest;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostRequest;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerListRequest;
import com.nuggeta.ngdl.nobjects.GetStorablesRequest;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SaveStorableRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.SaveStorableListRequest;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnRequest;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.nobjects.SetPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.nobjects.RemoveStorableListRequest;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginWithTokenRequest;
import com.nuggeta.ngdl.nobjects.SaveGameRequest;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.nobjects.LoadGameRequest;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
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

class T1219 implements Api
{

	var _s12155:NuggetaDispatcher;

	public function new()
	{
		_s12155 = new NuggetaDispatcher();
	}

	public function _sendMessage0( message:Message):String
	{
		return null;
	}

	public function _request0( message:Message,  handler:Dynamic):String
	{
		return null;
	}

	public function _cloneSerializable( serializable:Serializable):Dynamic
	{
		return null;
	}


	public function invitePlayerById( id:String):String
	{
		var _o4290:InvitePlayerByIdRequest = new InvitePlayerByIdRequest();
		_o4290.setId(id);
		var _e4291:String = _sendMessage0(_o4290);
		return _e4291;
	}


	public function invitePlayerByIdRequest( id:String,  invitePlayerResponseHandler:InvitePlayerResponse ->Void):String
	{
		var _k12158:InvitePlayerByIdRequest = new InvitePlayerByIdRequest();
		_k12158.setId(id);
		var _n4293:String = _request0(_k12158, invitePlayerResponseHandler);
		return _n4293;
	}


	public function invitePlayerByLogin( login:String):String
	{
		var _m4294:InvitePlayerByLoginRequest = new InvitePlayerByLoginRequest();
		_m4294.setLogin(login);
		var _n4295:String = _sendMessage0(_m4294);
		return _n4295;
	}


	public function invitePlayerByLoginRequest( login:String,  invitePlayerResponseHandler:InvitePlayerResponse ->Void):String
	{
		var _g12162:InvitePlayerByLoginRequest = new InvitePlayerByLoginRequest();
		_g12162.setLogin(login);
		var _y4297:String = _request0(_g12162, invitePlayerResponseHandler);
		return _y4297;
	}


	public function signUp( login:String,  password:String,  playerProfile:NPlayerProfile):String
	{
		var _b4298:SignUpRequest = new SignUpRequest();
		_b4298.setLogin(login);
		_b4298.setPassword(password);
		_b4298.setPlayerProfile((cast _cloneSerializable(playerProfile)));
		var _u4299:String = _sendMessage0(_b4298);
		return _u4299;
	}


	public function signUpRequest( login:String,  password:String,  playerProfile:NPlayerProfile,  signUpResponseHandler:SignUpResponse ->Void):String
	{
		var _n12166:SignUpRequest = new SignUpRequest();
		_n12166.setLogin(login);
		_n12166.setPassword(password);
		_n12166.setPlayerProfile((cast _cloneSerializable(playerProfile)));
		var _w12157:String = _request0(_n12166, signUpResponseHandler);
		return _w12157;
	}


	public function forgotPasswordByLogin( login:String):String
	{
		var _r4302:ForgotPasswordByLoginRequest = new ForgotPasswordByLoginRequest();
		_r4302.setLogin(login);
		var _n4303:String = _sendMessage0(_r4302);
		return _n4303;
	}


	public function forgotPasswordByLoginRequest( login:String,  forgotPasswordResponseHandler:ForgotPasswordResponse ->Void):String
	{
		var _m12170:ForgotPasswordByLoginRequest = new ForgotPasswordByLoginRequest();
		_m12170.setLogin(login);
		var _u12159:String = _request0(_m12170, forgotPasswordResponseHandler);
		return _u12159;
	}


	public function forgotPasswordByEmail( email:String):String
	{
		var _s4306:ForgotPasswordByEmailRequest = new ForgotPasswordByEmailRequest();
		_s4306.setEmail(email);
		var _o4307:String = _sendMessage0(_s4306);
		return _o4307;
	}


	public function forgotPasswordByEmailRequest( email:String,  forgotPasswordResponseHandler:ForgotPasswordResponse ->Void):String
	{
		var _l12174:ForgotPasswordByEmailRequest = new ForgotPasswordByEmailRequest();
		_l12174.setEmail(email);
		var _c12161:String = _request0(_l12174, forgotPasswordResponseHandler);
		return _c12161;
	}


	public function login( login:String,  password:String):String
	{
		var _q4310:LoginRequest = new LoginRequest();
		_q4310.setLogin(login);
		_q4310.setPassword(password);
		var _k4311:String = _sendMessage0(_q4310);
		return _k4311;
	}


	public function loginRequest( login:String,  password:String,  loginResponseHandler:LoginResponse ->Void):String
	{
		var _b12178:LoginRequest = new LoginRequest();
		_b12178.setLogin(login);
		_b12178.setPassword(password);
		var _b12163:String = _request0(_b12178, loginResponseHandler);
		return _b12163;
	}


	public function savePlayerProfile( profile:NPlayerProfile):String
	{
		var _b4314:SavePlayerProfileRequest = new SavePlayerProfileRequest();
		_b4314.setProfile((cast _cloneSerializable(profile)));
		var _e4315:String = _sendMessage0(_b4314);
		return _e4315;
	}


	public function savePlayerProfileRequest( profile:NPlayerProfile,  savePlayerProfileResponseHandler:SavePlayerProfileResponse ->Void):String
	{
		var _u12182:SavePlayerProfileRequest = new SavePlayerProfileRequest();
		_u12182.setProfile((cast _cloneSerializable(profile)));
		var _p12165:String = _request0(_u12182, savePlayerProfileResponseHandler);
		return _p12165;
	}


	public function getPlayerProfile():String
	{
		var _h4318:GetPlayerProfileRequest = new GetPlayerProfileRequest();
		var _f4319:String = _sendMessage0(_h4318);
		return _f4319;
	}


	public function getPlayerProfileRequest( getPlayerProfileResponseHandler:GetPlayerProfileResponse ->Void):String
	{
		var _c12186:GetPlayerProfileRequest = new GetPlayerProfileRequest();
		var _b12167:String = _request0(_c12186, getPlayerProfileResponseHandler);
		return _b12167;
	}


	public function getPlayerProfileByPlayerId( playerId:String):String
	{
		var _i4322:GetPlayerProfileByPlayerIdRequest = new GetPlayerProfileByPlayerIdRequest();
		_i4322.setPlayerId(playerId);
		var _b4323:String = _sendMessage0(_i4322);
		return _b4323;
	}


	public function getPlayerProfileByPlayerIdRequest( playerId:String,  getPlayerProfileResponseHandler:GetPlayerProfileResponse ->Void):String
	{
		var _i12190:GetPlayerProfileByPlayerIdRequest = new GetPlayerProfileByPlayerIdRequest();
		_i12190.setPlayerId(playerId);
		var _i12169:String = _request0(_i12190, getPlayerProfileResponseHandler);
		return _i12169;
	}


	public function logout():String
	{
		var _q4326:LogoutRequest = new LogoutRequest();
		var _i4327:String = _sendMessage0(_q4326);
		return _i4327;
	}


	public function logoutRequest( logoutResponseHandler:LogoutResponse ->Void):String
	{
		var _p12194:LogoutRequest = new LogoutRequest();
		var _b12171:String = _request0(_p12194, logoutResponseHandler);
		return _b12171;
	}


	public function challengeFriend( playerId:String):String
	{
		var _h4330:ChallengeFriendRequest = new ChallengeFriendRequest();
		_h4330.setPlayerId(playerId);
		var _m4331:String = _sendMessage0(_h4330);
		return _m4331;
	}


	public function challengeFriendRequest( playerId:String,  challengeFriendResponseHandler:ChallengeFriendResponse ->Void):String
	{
		var _j12198:ChallengeFriendRequest = new ChallengeFriendRequest();
		_j12198.setPlayerId(playerId);
		var _u12173:String = _request0(_j12198, challengeFriendResponseHandler);
		return _u12173;
	}


	public function challengeThirdPartyFriend( thirdPartyId:String,  title:String,  challengeMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String
	{
		var _r4334:ChallengeThirdPartyFriendRequest = new ChallengeThirdPartyFriendRequest();
		_r4334.setThirdPartyId(thirdPartyId);
		_r4334.setTitle(title);
		_r4334.setChallengeMessage(challengeMessage);
		_r4334.setPictureUrl(pictureUrl);
		_r4334.setLink(link);
		_r4334.setThirdPartySource(thirdPartySource);
		var _s4335:String = _sendMessage0(_r4334);
		return _s4335;
	}


	public function challengeThirdPartyFriendRequest( thirdPartyId:String,  title:String,  challengeMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  challengeThirdPartyFriendResponseHandler:ChallengeThirdPartyFriendResponse ->Void):String
	{
		var _g12202:ChallengeThirdPartyFriendRequest = new ChallengeThirdPartyFriendRequest();
		_g12202.setThirdPartyId(thirdPartyId);
		_g12202.setTitle(title);
		_g12202.setChallengeMessage(challengeMessage);
		_g12202.setPictureUrl(pictureUrl);
		_g12202.setLink(link);
		_g12202.setThirdPartySource(thirdPartySource);
		var _n12175:String = _request0(_g12202, challengeThirdPartyFriendResponseHandler);
		return _n12175;
	}


	public function getFriends():String
	{
		var _p4338:GetFriendsRequest = new GetFriendsRequest();
		var _w4339:String = _sendMessage0(_p4338);
		return _w4339;
	}


	public function getFriendsRequest( getFriendsResponseHandler:GetFriendsResponse ->Void):String
	{
		var _t12206:GetFriendsRequest = new GetFriendsRequest();
		var _p12177:String = _request0(_t12206, getFriendsResponseHandler);
		return _p12177;
	}


	public function getFriendsByPlayerId( playerId:String):String
	{
		var _v4342:GetFriendsByPlayerIdRequest = new GetFriendsByPlayerIdRequest();
		_v4342.setPlayerId(playerId);
		var _c4343:String = _sendMessage0(_v4342);
		return _c4343;
	}


	public function getFriendsByPlayerIdRequest( playerId:String,  getFriendsResponseHandler:GetFriendsResponse ->Void):String
	{
		var _x12210:GetFriendsByPlayerIdRequest = new GetFriendsByPlayerIdRequest();
		_x12210.setPlayerId(playerId);
		var _e12179:String = _request0(_x12210, getFriendsResponseHandler);
		return _e12179;
	}


	public function getThirdPartyFriends( thirdPartySource:ThirdPartySource):String
	{
		var _g4346:GetThirdPartyFriendsRequest = new GetThirdPartyFriendsRequest();
		_g4346.setThirdPartySource(thirdPartySource);
		var _u4347:String = _sendMessage0(_g4346);
		return _u4347;
	}


	public function getThirdPartyFriendsRequest( thirdPartySource:ThirdPartySource,  getThirdPartyFriendsResponseHandler:GetThirdPartyFriendsResponse ->Void):String
	{
		var _m12214:GetThirdPartyFriendsRequest = new GetThirdPartyFriendsRequest();
		_m12214.setThirdPartySource(thirdPartySource);
		var _k12181:String = _request0(_m12214, getThirdPartyFriendsResponseHandler);
		return _k12181;
	}


	public function getPlayerInvitations():String
	{
		var _w4350:GetPlayerInvitationsRequest = new GetPlayerInvitationsRequest();
		var _i4351:String = _sendMessage0(_w4350);
		return _i4351;
	}


	public function getPlayerInvitationsRequest( getPlayerInvitationsResponseHandler:GetPlayerInvitationsResponse ->Void):String
	{
		var _y12218:GetPlayerInvitationsRequest = new GetPlayerInvitationsRequest();
		var _o12183:String = _request0(_y12218, getPlayerInvitationsResponseHandler);
		return _o12183;
	}


	public function acceptPlayerInvitation( invitationId:String):String
	{
		var _o4354:AcceptPlayerInvitationRequest = new AcceptPlayerInvitationRequest();
		_o4354.setInvitationId(invitationId);
		var _l4355:String = _sendMessage0(_o4354);
		return _l4355;
	}


	public function acceptPlayerInvitationRequest( invitationId:String,  acceptPlayerInvitationResponseHandler:AcceptPlayerInvitationResponse ->Void):String
	{
		var _b12222:AcceptPlayerInvitationRequest = new AcceptPlayerInvitationRequest();
		_b12222.setInvitationId(invitationId);
		var _w12185:String = _request0(_b12222, acceptPlayerInvitationResponseHandler);
		return _w12185;
	}


	public function ignorePlayerInvitation( invitationId:String):String
	{
		var _k4358:IgnorePlayerInvitationRequest = new IgnorePlayerInvitationRequest();
		_k4358.setInvitationId(invitationId);
		var _k4359:String = _sendMessage0(_k4358);
		return _k4359;
	}


	public function ignorePlayerInvitationRequest( invitationId:String,  ignorePlayerInvitationResponseHandler:IgnorePlayerInvitationResponse ->Void):String
	{
		var _s12226:IgnorePlayerInvitationRequest = new IgnorePlayerInvitationRequest();
		_s12226.setInvitationId(invitationId);
		var _x12187:String = _request0(_s12226, ignorePlayerInvitationResponseHandler);
		return _x12187;
	}


	public function submitScore( score:NScore,  leaderboardId:String):String
	{
		var _r4362:SubmitScoreRequest = new SubmitScoreRequest();
		_r4362.setScore((cast _cloneSerializable(score)));
		_r4362.setLeaderboardId(leaderboardId);
		var _r4363:String = _sendMessage0(_r4362);
		return _r4363;
	}


	public function submitScoreRequest( score:NScore,  leaderboardId:String,  submitScoreResponseHandler:SubmitScoreResponse ->Void):String
	{
		var _f12230:SubmitScoreRequest = new SubmitScoreRequest();
		_f12230.setScore((cast _cloneSerializable(score)));
		_f12230.setLeaderboardId(leaderboardId);
		var _w12189:String = _request0(_f12230, submitScoreResponseHandler);
		return _w12189;
	}


	public function submitScoreWithPlayerName( name:String,  score:NScore,  leaderboardId:String):String
	{
		var _t4366:SubmitScoreWithPlayerNameRequest = new SubmitScoreWithPlayerNameRequest();
		_t4366.setName(name);
		_t4366.setScore((cast _cloneSerializable(score)));
		_t4366.setLeaderboardId(leaderboardId);
		var _o4367:String = _sendMessage0(_t4366);
		return _o4367;
	}


	public function submitScoreWithPlayerNameRequest( name:String,  score:NScore,  leaderboardId:String,  submitScoreResponseHandler:SubmitScoreResponse ->Void):String
	{
		var _d12234:SubmitScoreWithPlayerNameRequest = new SubmitScoreWithPlayerNameRequest();
		_d12234.setName(name);
		_d12234.setScore((cast _cloneSerializable(score)));
		_d12234.setLeaderboardId(leaderboardId);
		var _n12191:String = _request0(_d12234, submitScoreResponseHandler);
		return _n12191;
	}


	public function getLeaderboard( leaderboardId:String,  period:LeaderboardPeriod,  start:Int,  limit:Int):String
	{
		var _b4370:GetLeaderboardRequest = new GetLeaderboardRequest();
		_b4370.setLeaderboardId(leaderboardId);
		_b4370.setPeriod(period);
		_b4370.setStart(start);
		_b4370.setLimit(limit);
		var _l4371:String = _sendMessage0(_b4370);
		return _l4371;
	}


	public function getLeaderboardRequest( leaderboardId:String,  period:LeaderboardPeriod,  start:Int,  limit:Int,  getLeaderboardResponseHandler:GetLeaderboardResponse ->Void):String
	{
		var _h12238:GetLeaderboardRequest = new GetLeaderboardRequest();
		_h12238.setLeaderboardId(leaderboardId);
		_h12238.setPeriod(period);
		_h12238.setStart(start);
		_h12238.setLimit(limit);
		var _g12193:String = _request0(_h12238, getLeaderboardResponseHandler);
		return _g12193;
	}


	public function buyItem( itemId:String,  quantity:Int):String
	{
		var _h4374:BuyItemRequest = new BuyItemRequest();
		_h4374.setItemId(itemId);
		_h4374.setQuantity(quantity);
		var _b4375:String = _sendMessage0(_h4374);
		return _b4375;
	}


	public function buyItemRequest( itemId:String,  quantity:Int,  buyItemResponseHandler:BuyItemResponse ->Void):String
	{
		var _c12242:BuyItemRequest = new BuyItemRequest();
		_c12242.setItemId(itemId);
		_c12242.setQuantity(quantity);
		var _v12195:String = _request0(_c12242, buyItemResponseHandler);
		return _v12195;
	}


	public function getStore():String
	{
		var _h4378:GetStoreRequest = new GetStoreRequest();
		var _h4379:String = _sendMessage0(_h4378);
		return _h4379;
	}


	public function getStoreRequest( getStoreResponseHandler:GetStoreResponse ->Void):String
	{
		var _w12246:GetStoreRequest = new GetStoreRequest();
		var _m12197:String = _request0(_w12246, getStoreResponseHandler);
		return _m12197;
	}


	public function consumeItem( itemId:String,  quantity:Int):String
	{
		var _s4382:ConsumeItemRequest = new ConsumeItemRequest();
		_s4382.setItemId(itemId);
		_s4382.setQuantity(quantity);
		var _d4383:String = _sendMessage0(_s4382);
		return _d4383;
	}


	public function consumeItemRequest( itemId:String,  quantity:Int,  consumeItemResponseHandler:ConsumeItemResponse ->Void):String
	{
		var _f12250:ConsumeItemRequest = new ConsumeItemRequest();
		_f12250.setItemId(itemId);
		_f12250.setQuantity(quantity);
		var _r12199:String = _request0(_f12250, consumeItemResponseHandler);
		return _r12199;
	}


	public function increasePlayerWallet( value:Int):String
	{
		var _s4386:IncreasePlayerWalletRequest = new IncreasePlayerWalletRequest();
		_s4386.setValue(value);
		var _f4387:String = _sendMessage0(_s4386);
		return _f4387;
	}


	public function increasePlayerWalletRequest( value:Int,  increasePlayerWalletResponseHandler:IncreasePlayerWalletResponse ->Void):String
	{
		var _b12254:IncreasePlayerWalletRequest = new IncreasePlayerWalletRequest();
		_b12254.setValue(value);
		var _t12201:String = _request0(_b12254, increasePlayerWalletResponseHandler);
		return _t12201;
	}


	public function getPlayerWallet():String
	{
		var _f4390:GetPlayerWalletRequest = new GetPlayerWalletRequest();
		var _v4391:String = _sendMessage0(_f4390);
		return _v4391;
	}


	public function getPlayerWalletRequest( getPlayerWalletResponseHandler:GetPlayerWalletResponse ->Void):String
	{
		var _k12258:GetPlayerWalletRequest = new GetPlayerWalletRequest();
		var _q12203:String = _request0(_k12258, getPlayerWalletResponseHandler);
		return _q12203;
	}


	public function getAchievementBoard():String
	{
		var _j4394:GetAchievementBoardRequest = new GetAchievementBoardRequest();
		var _u4395:String = _sendMessage0(_j4394);
		return _u4395;
	}


	public function getAchievementBoardRequest( getAchievementBoardResponseHandler:GetAchievementBoardResponse ->Void):String
	{
		var _d12262:GetAchievementBoardRequest = new GetAchievementBoardRequest();
		var _q12205:String = _request0(_d12262, getAchievementBoardResponseHandler);
		return _q12205;
	}


	public function achieve( achivementId:String):String
	{
		var _e4398:AchieveRequest = new AchieveRequest();
		_e4398.setAchivementId(achivementId);
		var _a4399:String = _sendMessage0(_e4398);
		return _a4399;
	}


	public function achieveRequest( achivementId:String,  achieveResponseHandler:AchieveResponse ->Void):String
	{
		var _i12266:AchieveRequest = new AchieveRequest();
		_i12266.setAchivementId(achivementId);
		var _y12207:String = _request0(_i12266, achieveResponseHandler);
		return _y12207;
	}


	public function searchImmediateGame():String
	{
		var _b4402:SearchImmediateGameRequest = new SearchImmediateGameRequest();
		var _i4403:String = _sendMessage0(_b4402);
		return _i4403;
	}


	public function searchImmediateGameRequest( searchImmediateGameResponseHandler:SearchImmediateGameResponse ->Void):String
	{
		var _d12270:SearchImmediateGameRequest = new SearchImmediateGameRequest();
		var _e12209:String = _request0(_d12270, searchImmediateGameResponseHandler);
		return _e12209;
	}


	public function searchImmediateGameByConditions( query:NuggetaQuery,  matchMakingConditions:NMatchMakingConditions):String
	{
		var _y4406:SearchImmediateGameByConditionsRequest = new SearchImmediateGameByConditionsRequest();
		_y4406.setQuery((cast _cloneSerializable(query)));
		_y4406.setMatchMakingConditions((cast _cloneSerializable(matchMakingConditions)));
		var _o4407:String = _sendMessage0(_y4406);
		return _o4407;
	}


	public function searchImmediateGameByConditionsRequest( query:NuggetaQuery,  matchMakingConditions:NMatchMakingConditions,  searchImmediateGameResponseHandler:SearchImmediateGameResponse ->Void):String
	{
		var _v12274:SearchImmediateGameByConditionsRequest = new SearchImmediateGameByConditionsRequest();
		_v12274.setQuery((cast _cloneSerializable(query)));
		_v12274.setMatchMakingConditions((cast _cloneSerializable(matchMakingConditions)));
		var _p12211:String = _request0(_v12274, searchImmediateGameResponseHandler);
		return _p12211;
	}


	public function joinGame( gameId:String):String
	{
		var _c4410:JoinGameRequest = new JoinGameRequest();
		_c4410.setGameId(gameId);
		var _q4411:String = _sendMessage0(_c4410);
		return _q4411;
	}


	public function joinGameRequest( gameId:String,  joinGameResponseHandler:JoinGameResponse ->Void):String
	{
		var _n12278:JoinGameRequest = new JoinGameRequest();
		_n12278.setGameId(gameId);
		var _x12213:String = _request0(_n12278, joinGameResponseHandler);
		return _x12213;
	}


	public function unjoinGame( gameId:String):String
	{
		var _s4414:UnjoinGameRequest = new UnjoinGameRequest();
		_s4414.setGameId(gameId);
		var _m4415:String = _sendMessage0(_s4414);
		return _m4415;
	}


	public function unjoinGameRequest( gameId:String,  unjoinGameResponseHandler:UnjoinGameResponse ->Void):String
	{
		var _q12282:UnjoinGameRequest = new UnjoinGameRequest();
		_q12282.setGameId(gameId);
		var _q12215:String = _request0(_q12282, unjoinGameResponseHandler);
		return _q12215;
	}


	public function acceptFriendChallenge( challengeId:String):String
	{
		var _h4418:AcceptFriendChallengeRequest = new AcceptFriendChallengeRequest();
		_h4418.setChallengeId(challengeId);
		var _l4419:String = _sendMessage0(_h4418);
		return _l4419;
	}


	public function acceptFriendChallengeRequest( challengeId:String,  acceptFriendChallengeResponseHandler:AcceptFriendChallengeResponse ->Void):String
	{
		var _x12286:AcceptFriendChallengeRequest = new AcceptFriendChallengeRequest();
		_x12286.setChallengeId(challengeId);
		var _b12217:String = _request0(_x12286, acceptFriendChallengeResponseHandler);
		return _b12217;
	}


	public function cancelFriendChallenge( challengeId:String):String
	{
		var _r4422:CancelFriendChallengeRequest = new CancelFriendChallengeRequest();
		_r4422.setChallengeId(challengeId);
		var _s4423:String = _sendMessage0(_r4422);
		return _s4423;
	}


	public function cancelFriendChallengeRequest( challengeId:String,  cancelFriendChallengeResponseHandler:CancelFriendChallengeResponse ->Void):String
	{
		var _h12290:CancelFriendChallengeRequest = new CancelFriendChallengeRequest();
		_h12290.setChallengeId(challengeId);
		var _c12219:String = _request0(_h12290, cancelFriendChallengeResponseHandler);
		return _c12219;
	}


	public function refuseFriendChallenge( challengeId:String):String
	{
		var _l4426:RefuseFriendChallengeRequest = new RefuseFriendChallengeRequest();
		_l4426.setChallengeId(challengeId);
		var _w4427:String = _sendMessage0(_l4426);
		return _w4427;
	}


	public function refuseFriendChallengeRequest( challengeId:String,  refuseFriendChallengeResponseHandler:RefuseFriendChallengeResponse ->Void):String
	{
		var _y12294:RefuseFriendChallengeRequest = new RefuseFriendChallengeRequest();
		_y12294.setChallengeId(challengeId);
		var _o12221:String = _request0(_y12294, refuseFriendChallengeResponseHandler);
		return _o12221;
	}


	public function getChallenges( dbQuery:NuggetaQuery):String
	{
		var _n4430:GetChallengesRequest = new GetChallengesRequest();
		_n4430.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _n4431:String = _sendMessage0(_n4430);
		return _n4431;
	}


	public function getChallengesRequest( dbQuery:NuggetaQuery,  getChallengesResponseHandler:GetChallengesResponse ->Void):String
	{
		var _r12298:GetChallengesRequest = new GetChallengesRequest();
		_r12298.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _a12223:String = _request0(_r12298, getChallengesResponseHandler);
		return _a12223;
	}


	public function startGame( gameId:String):String
	{
		var _n4434:StartGameRequest = new StartGameRequest();
		_n4434.setGameId(gameId);
		var _p4435:String = _sendMessage0(_n4434);
		return _p4435;
	}


	public function startGameRequest( gameId:String,  startGameResponseHandler:StartGameResponse ->Void):String
	{
		var _e12302:StartGameRequest = new StartGameRequest();
		_e12302.setGameId(gameId);
		var _y12225:String = _request0(_e12302, startGameResponseHandler);
		return _y12225;
	}


	public function stopGame( gameId:String):String
	{
		var _c4438:StopGameRequest = new StopGameRequest();
		_c4438.setGameId(gameId);
		var _h4439:String = _sendMessage0(_c4438);
		return _h4439;
	}


	public function stopGameRequest( gameId:String,  stopGameResponseHandler:StopGameResponse ->Void):String
	{
		var _w12306:StopGameRequest = new StopGameRequest();
		_w12306.setGameId(gameId);
		var _u12227:String = _request0(_w12306, stopGameResponseHandler);
		return _u12227;
	}


	public function createGame():String
	{
		var _f4442:CreateGameRequest = new CreateGameRequest();
		var _o4443:String = _sendMessage0(_f4442);
		return _o4443;
	}


	public function createGameRequest( createGameResponseHandler:CreateGameResponse ->Void):String
	{
		var _k12310:CreateGameRequest = new CreateGameRequest();
		var _l12229:String = _request0(_k12310, createGameResponseHandler);
		return _l12229;
	}


	public function createGameWithCharacteristics( gameCharacteristics:NGameCharacteristics):String
	{
		var _e4446:CreateGameWithCharacteristicsRequest = new CreateGameWithCharacteristicsRequest();
		_e4446.setGameCharacteristics((cast _cloneSerializable(gameCharacteristics)));
		var _f4447:String = _sendMessage0(_e4446);
		return _f4447;
	}


	public function createGameWithCharacteristicsRequest( gameCharacteristics:NGameCharacteristics,  createGameResponseHandler:CreateGameResponse ->Void):String
	{
		var _h12314:CreateGameWithCharacteristicsRequest = new CreateGameWithCharacteristicsRequest();
		_h12314.setGameCharacteristics((cast _cloneSerializable(gameCharacteristics)));
		var _u12231:String = _request0(_h12314, createGameResponseHandler);
		return _u12231;
	}


	public function getGames( dbQuery:NuggetaQuery):String
	{
		var _j4450:GetGamesRequest = new GetGamesRequest();
		_j4450.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _n4451:String = _sendMessage0(_j4450);
		return _n4451;
	}


	public function getGamesRequest( dbQuery:NuggetaQuery,  getGamesResponseHandler:GetGamesResponse ->Void):String
	{
		var _u12318:GetGamesRequest = new GetGamesRequest();
		_u12318.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _t12233:String = _request0(_u12318, getGamesResponseHandler);
		return _t12233;
	}


	public function saveAsGhost( game:NGame):String
	{
		var _h4454:SaveAsGhostRequest = new SaveAsGhostRequest();
		_h4454.setGame((cast _cloneSerializable(game)));
		var _d4455:String = _sendMessage0(_h4454);
		return _d4455;
	}


	public function saveAsGhostRequest( game:NGame,  saveAsGhostResponseHandler:SaveAsGhostResponse ->Void):String
	{
		var _v12322:SaveAsGhostRequest = new SaveAsGhostRequest();
		_v12322.setGame((cast _cloneSerializable(game)));
		var _f12235:String = _request0(_v12322, saveAsGhostResponseHandler);
		return _f12235;
	}


	public function getGhosts( dbQuery:NuggetaQuery):String
	{
		var _g4458:GetGhostsRequest = new GetGhostsRequest();
		_g4458.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _e4459:String = _sendMessage0(_g4458);
		return _e4459;
	}


	public function getGhostsRequest( dbQuery:NuggetaQuery,  getGhostsResponseHandler:GetGhostsResponse ->Void):String
	{
		var _p12326:GetGhostsRequest = new GetGhostsRequest();
		_p12326.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _m12237:String = _request0(_p12326, getGhostsResponseHandler);
		return _m12237;
	}


	public function loadGhost( gameId:String):String
	{
		var _o4462:LoadGhostRequest = new LoadGhostRequest();
		_o4462.setGameId(gameId);
		var _g4463:String = _sendMessage0(_o4462);
		return _g4463;
	}


	public function loadGhostRequest( gameId:String,  loadGhostResponseHandler:LoadGhostResponse ->Void):String
	{
		var _j12330:LoadGhostRequest = new LoadGhostRequest();
		_j12330.setGameId(gameId);
		var _o12239:String = _request0(_j12330, loadGhostResponseHandler);
		return _o12239;
	}


	public function sendGameChat( gameId:String,  message:String):String
	{
		var _h4466:SendGameChatRequest = new SendGameChatRequest();
		_h4466.setGameId(gameId);
		_h4466.setMessage(message);
		var _m4467:String = _sendMessage0(_h4466);
		return _m4467;
	}


	public function sendGameChatRequest( gameId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String
	{
		var _m12334:SendGameChatRequest = new SendGameChatRequest();
		_m12334.setGameId(gameId);
		_m12334.setMessage(message);
		var _a12241:String = _request0(_m12334, sendGameChatResponseHandler);
		return _a12241;
	}


	public function sendGameChatToPlayer( gameId:String,  playerId:String,  message:String):String
	{
		var _g4470:SendGameChatToPlayerRequest = new SendGameChatToPlayerRequest();
		_g4470.setGameId(gameId);
		_g4470.setPlayerId(playerId);
		_g4470.setMessage(message);
		var _t4471:String = _sendMessage0(_g4470);
		return _t4471;
	}


	public function sendGameChatToPlayerRequest( gameId:String,  playerId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String
	{
		var _w12338:SendGameChatToPlayerRequest = new SendGameChatToPlayerRequest();
		_w12338.setGameId(gameId);
		_w12338.setPlayerId(playerId);
		_w12338.setMessage(message);
		var _r12243:String = _request0(_w12338, sendGameChatResponseHandler);
		return _r12243;
	}


	public function sendGameChatToPlayerList( gameId:String,  message:String):String
	{
		var _v4474:SendGameChatToPlayerListRequest = new SendGameChatToPlayerListRequest();
		_v4474.setGameId(gameId);
		_v4474.setMessage(message);
		var _t4475:String = _sendMessage0(_v4474);
		return _t4475;
	}


	public function sendGameChatToPlayerListRequest( gameId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String
	{
		var _b12342:SendGameChatToPlayerListRequest = new SendGameChatToPlayerListRequest();
		_b12342.setGameId(gameId);
		_b12342.setMessage(message);
		var _m12245:String = _request0(_b12342, sendGameChatResponseHandler);
		return _m12245;
	}


	public function getStorables( dbQuery:NuggetaQuery):String
	{
		var _v4478:GetStorablesRequest = new GetStorablesRequest();
		_v4478.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _u4479:String = _sendMessage0(_v4478);
		return _u4479;
	}


	public function getStorablesRequest( dbQuery:NuggetaQuery,  getStorablesResponseHandler:GetStorablesResponse ->Void):String
	{
		var _l12346:GetStorablesRequest = new GetStorablesRequest();
		_l12346.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _x12247:String = _request0(_l12346, getStorablesResponseHandler);
		return _x12247;
	}


	public function saveStorable( storable:Storable):String
	{
		var _e4482:SaveStorableRequest = new SaveStorableRequest();
		_e4482.setStorable((cast _cloneSerializable(storable)));
		var _y4483:String = _sendMessage0(_e4482);
		return _y4483;
	}


	public function saveStorableRequest( storable:Storable,  saveStorableResponseHandler:SaveStorableResponse ->Void):String
	{
		var _g12350:SaveStorableRequest = new SaveStorableRequest();
		_g12350.setStorable((cast _cloneSerializable(storable)));
		var _i12249:String = _request0(_g12350, saveStorableResponseHandler);
		return _i12249;
	}


	public function saveStorableList( storables:NList<Storable>):String
	{
		var _q4486:SaveStorableListRequest = new SaveStorableListRequest();
		var _j4487:NList<Storable> = new NList<Storable>();
		for (_t4488 in 0 ... storables.size()) 
		{
			var _e4489:Storable = storables.get(_t4488);
			_j4487.add((cast _cloneSerializable(_e4489)));
		}
		_q4486.setStorables(_j4487);
		var _j12251:String = _sendMessage0(_q4486);
		return _j12251;
	}


	public function saveStorableListRequest( storables:NList<Storable>,  saveStorableResponseHandler:SaveStorableResponse ->Void):String
	{
		var _h12357:SaveStorableListRequest = new SaveStorableListRequest();
		var _s12358:NList<Storable> = new NList<Storable>();
		for (_j4493 in 0 ... storables.size()) 
		{
			var _v4494:Storable = storables.get(_j4493);
			_s12358.add((cast _cloneSerializable(_v4494)));
		}
		_h12357.setStorables(_s12358);
		var _q12253:String = _request0(_h12357, saveStorableResponseHandler);
		return _q12253;
	}


	public function nextPlayerTurn( gameId:String):String
	{
		var _l4496:NextPlayerTurnRequest = new NextPlayerTurnRequest();
		_l4496.setGameId(gameId);
		var _v4497:String = _sendMessage0(_l4496);
		return _v4497;
	}


	public function nextPlayerTurnRequest( gameId:String,  nextPlayerTurnResponseHandler:NextPlayerTurnResponse ->Void):String
	{
		var _p12364:NextPlayerTurnRequest = new NextPlayerTurnRequest();
		_p12364.setGameId(gameId);
		var _k12255:String = _request0(_p12364, nextPlayerTurnResponseHandler);
		return _k12255;
	}


	public function setPlayerName( name:String):String
	{
		var _f4500:SetPlayerNameRequest = new SetPlayerNameRequest();
		_f4500.setName(name);
		var _n4501:String = _sendMessage0(_f4500);
		return _n4501;
	}


	public function setPlayerNameRequest( name:String,  setPlayerNameResponseHandler:SetPlayerNameResponse ->Void):String
	{
		var _j12368:SetPlayerNameRequest = new SetPlayerNameRequest();
		_j12368.setName(name);
		var _s12257:String = _request0(_j12368, setPlayerNameResponseHandler);
		return _s12257;
	}


	public function updateStorable( storable:Storable):String
	{
		var _h4504:UpdateStorableRequest = new UpdateStorableRequest();
		_h4504.setStorable((cast _cloneSerializable(storable)));
		var _q4505:String = _sendMessage0(_h4504);
		return _q4505;
	}


	public function updateStorableRequest( storable:Storable,  updateStorableResponseHandler:UpdateStorableResponse ->Void):String
	{
		var _c12372:UpdateStorableRequest = new UpdateStorableRequest();
		_c12372.setStorable((cast _cloneSerializable(storable)));
		var _z12259:String = _request0(_c12372, updateStorableResponseHandler);
		return _z12259;
	}


	public function updateStorableList( storables:NList<Storable>):String
	{
		var _j4508:UpdateStorableListRequest = new UpdateStorableListRequest();
		var _b4509:NList<Storable> = new NList<Storable>();
		for (_r4510 in 0 ... storables.size()) 
		{
			var _u4511:Storable = storables.get(_r4510);
			_b4509.add((cast _cloneSerializable(_u4511)));
		}
		_j4508.setStorables(_b4509);
		var _b12261:String = _sendMessage0(_j4508);
		return _b12261;
	}


	public function updateStorableListRequest( storables:NList<Storable>,  updateStorableResponseHandler:UpdateStorableResponse ->Void):String
	{
		var _c12379:UpdateStorableListRequest = new UpdateStorableListRequest();
		var _s12380:NList<Storable> = new NList<Storable>();
		for (_x4515 in 0 ... storables.size()) 
		{
			var _r4516:Storable = storables.get(_x4515);
			_s12380.add((cast _cloneSerializable(_r4516)));
		}
		_c12379.setStorables(_s12380);
		var _b12263:String = _request0(_c12379, updateStorableResponseHandler);
		return _b12263;
	}


	public function removeStorable( storable:Storable):String
	{
		var _q4518:RemoveStorableRequest = new RemoveStorableRequest();
		_q4518.setStorable((cast _cloneSerializable(storable)));
		var _k4519:String = _sendMessage0(_q4518);
		return _k4519;
	}


	public function removeStorableRequest( storable:Storable,  removeStorableResponseHandler:RemoveStorableResponse ->Void):String
	{
		var _k12386:RemoveStorableRequest = new RemoveStorableRequest();
		_k12386.setStorable((cast _cloneSerializable(storable)));
		var _v12265:String = _request0(_k12386, removeStorableResponseHandler);
		return _v12265;
	}


	public function removeStorableList( storables:NList<Storable>):String
	{
		var _r4522:RemoveStorableListRequest = new RemoveStorableListRequest();
		var _o4523:NList<Storable> = new NList<Storable>();
		for (_y4524 in 0 ... storables.size()) 
		{
			var _m4525:Storable = storables.get(_y4524);
			_o4523.add((cast _cloneSerializable(_m4525)));
		}
		_r4522.setStorables(_o4523);
		var _t12267:String = _sendMessage0(_r4522);
		return _t12267;
	}


	public function removeStorableListRequest( storables:NList<Storable>,  removeStorableResponseHandler:RemoveStorableResponse ->Void):String
	{
		var _f12393:RemoveStorableListRequest = new RemoveStorableListRequest();
		var _i12394:NList<Storable> = new NList<Storable>();
		for (_h4529 in 0 ... storables.size()) 
		{
			var _y4530:Storable = storables.get(_h4529);
			_i12394.add((cast _cloneSerializable(_y4530)));
		}
		_f12393.setStorables(_i12394);
		var _a12269:String = _request0(_f12393, removeStorableResponseHandler);
		return _a12269;
	}


	public function inviteThirdPartyFriend( thirdPartyId:String,  title:String,  inviteMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String
	{
		var _p4532:InviteThirdPartyFriendRequest = new InviteThirdPartyFriendRequest();
		_p4532.setThirdPartyId(thirdPartyId);
		_p4532.setTitle(title);
		_p4532.setInviteMessage(inviteMessage);
		_p4532.setPictureUrl(pictureUrl);
		_p4532.setLink(link);
		_p4532.setThirdPartySource(thirdPartySource);
		var _o4533:String = _sendMessage0(_p4532);
		return _o4533;
	}


	public function inviteThirdPartyFriendRequest( thirdPartyId:String,  title:String,  inviteMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  inviteThirdPartyFriendResponseHandler:InviteThirdPartyFriendResponse ->Void):String
	{
		var _c12400:InviteThirdPartyFriendRequest = new InviteThirdPartyFriendRequest();
		_c12400.setThirdPartyId(thirdPartyId);
		_c12400.setTitle(title);
		_c12400.setInviteMessage(inviteMessage);
		_c12400.setPictureUrl(pictureUrl);
		_c12400.setLink(link);
		_c12400.setThirdPartySource(thirdPartySource);
		var _e12271:String = _request0(_c12400, inviteThirdPartyFriendResponseHandler);
		return _e12271;
	}


	public function publishThirdPartyMessage( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String
	{
		var _f4536:PublishThirdPartyMessageRequest = new PublishThirdPartyMessageRequest();
		_f4536.setTitle(title);
		_f4536.setMessage(message);
		_f4536.setPictureUrl(pictureUrl);
		_f4536.setLink(link);
		_f4536.setThirdPartySource(thirdPartySource);
		var _a4537:String = _sendMessage0(_f4536);
		return _a4537;
	}


	public function publishThirdPartyMessageRequest( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  publishThirdPartyMessageResponseHandler:PublishThirdPartyMessageResponse ->Void):String
	{
		var _b12404:PublishThirdPartyMessageRequest = new PublishThirdPartyMessageRequest();
		_b12404.setTitle(title);
		_b12404.setMessage(message);
		_b12404.setPictureUrl(pictureUrl);
		_b12404.setLink(link);
		_b12404.setThirdPartySource(thirdPartySource);
		var _y12273:String = _request0(_b12404, publishThirdPartyMessageResponseHandler);
		return _y12273;
	}


	public function thirdPartyLogin( thirdPartySource:ThirdPartySource):String
	{
		var _e4540:ThirdPartyLoginRequest = new ThirdPartyLoginRequest();
		_e4540.setThirdPartySource(thirdPartySource);
		var _w4541:String = _sendMessage0(_e4540);
		return _w4541;
	}


	public function thirdPartyLoginRequest( thirdPartySource:ThirdPartySource,  thirdPartyLoginResponseHandler:ThirdPartyLoginResponse ->Void):String
	{
		var _r12408:ThirdPartyLoginRequest = new ThirdPartyLoginRequest();
		_r12408.setThirdPartySource(thirdPartySource);
		var _o12275:String = _request0(_r12408, thirdPartyLoginResponseHandler);
		return _o12275;
	}


	public function thirdPartyLoginWithToken( thirdPartySource:ThirdPartySource,  accessToken:String):String
	{
		var _u4544:ThirdPartyLoginWithTokenRequest = new ThirdPartyLoginWithTokenRequest();
		_u4544.setThirdPartySource(thirdPartySource);
		_u4544.setAccessToken(accessToken);
		var _c4545:String = _sendMessage0(_u4544);
		return _c4545;
	}


	public function thirdPartyLoginWithTokenRequest( thirdPartySource:ThirdPartySource,  accessToken:String,  thirdPartyLoginResponseHandler:ThirdPartyLoginResponse ->Void):String
	{
		var _w12412:ThirdPartyLoginWithTokenRequest = new ThirdPartyLoginWithTokenRequest();
		_w12412.setThirdPartySource(thirdPartySource);
		_w12412.setAccessToken(accessToken);
		var _o12277:String = _request0(_w12412, thirdPartyLoginResponseHandler);
		return _o12277;
	}


	public function saveGame( game:NGame):String
	{
		var _s4548:SaveGameRequest = new SaveGameRequest();
		_s4548.setGame((cast _cloneSerializable(game)));
		var _h4549:String = _sendMessage0(_s4548);
		return _h4549;
	}


	public function saveGameRequest( game:NGame,  saveGameResponseHandler:SaveGameResponse ->Void):String
	{
		var _i12416:SaveGameRequest = new SaveGameRequest();
		_i12416.setGame((cast _cloneSerializable(game)));
		var _y12279:String = _request0(_i12416, saveGameResponseHandler);
		return _y12279;
	}


	public function loadGame( gameId:String):String
	{
		var _l4552:LoadGameRequest = new LoadGameRequest();
		_l4552.setGameId(gameId);
		var _i4553:String = _sendMessage0(_l4552);
		return _i4553;
	}


	public function loadGameRequest( gameId:String,  loadGameResponseHandler:LoadGameResponse ->Void):String
	{
		var _g12420:LoadGameRequest = new LoadGameRequest();
		_g12420.setGameId(gameId);
		var _u12281:String = _request0(_g12420, loadGameResponseHandler);
		return _u12281;
	}


	public function savePlayerStorable( storable:Storable):String
	{
		var _b4556:SavePlayerStorableRequest = new SavePlayerStorableRequest();
		_b4556.setStorable((cast _cloneSerializable(storable)));
		var _s4557:String = _sendMessage0(_b4556);
		return _s4557;
	}


	public function savePlayerStorableRequest( storable:Storable,  savePlayerStorableResponseHandler:SavePlayerStorableResponse ->Void):String
	{
		var _f12424:SavePlayerStorableRequest = new SavePlayerStorableRequest();
		_f12424.setStorable((cast _cloneSerializable(storable)));
		var _u12283:String = _request0(_f12424, savePlayerStorableResponseHandler);
		return _u12283;
	}


	public function savePlayerStorableList( storables:NList<Storable>):String
	{
		var _c4560:SavePlayerStorableListRequest = new SavePlayerStorableListRequest();
		var _q4561:NList<Storable> = new NList<Storable>();
		for (_g4562 in 0 ... storables.size()) 
		{
			var _r4563:Storable = storables.get(_g4562);
			_q4561.add((cast _cloneSerializable(_r4563)));
		}
		_c4560.setStorables(_q4561);
		var _s12285:String = _sendMessage0(_c4560);
		return _s12285;
	}


	public function savePlayerStorableListRequest( storables:NList<Storable>,  savePlayerStorableResponseHandler:SavePlayerStorableResponse ->Void):String
	{
		var _f12431:SavePlayerStorableListRequest = new SavePlayerStorableListRequest();
		var _a12432:NList<Storable> = new NList<Storable>();
		for (_j4567 in 0 ... storables.size()) 
		{
			var _d4568:Storable = storables.get(_j4567);
			_a12432.add((cast _cloneSerializable(_d4568)));
		}
		_f12431.setStorables(_a12432);
		var _q12287:String = _request0(_f12431, savePlayerStorableResponseHandler);
		return _q12287;
	}


	public function updatePlayerStorable( storable:Storable):String
	{
		var _t4570:UpdatePlayerStorableRequest = new UpdatePlayerStorableRequest();
		_t4570.setStorable((cast _cloneSerializable(storable)));
		var _x4571:String = _sendMessage0(_t4570);
		return _x4571;
	}


	public function updatePlayerStorableRequest( storable:Storable,  updatePlayerStorableResponseHandler:UpdatePlayerStorableResponse ->Void):String
	{
		var _c12438:UpdatePlayerStorableRequest = new UpdatePlayerStorableRequest();
		_c12438.setStorable((cast _cloneSerializable(storable)));
		var _i12289:String = _request0(_c12438, updatePlayerStorableResponseHandler);
		return _i12289;
	}


	public function updatePlayerStorableList( storables:NList<Storable>):String
	{
		var _c4574:UpdatePlayerStorableListRequest = new UpdatePlayerStorableListRequest();
		var _l4575:NList<Storable> = new NList<Storable>();
		for (_e4576 in 0 ... storables.size()) 
		{
			var _n4577:Storable = storables.get(_e4576);
			_l4575.add((cast _cloneSerializable(_n4577)));
		}
		_c4574.setStorables(_l4575);
		var _l12291:String = _sendMessage0(_c4574);
		return _l12291;
	}


	public function updatePlayerStorableListRequest( storables:NList<Storable>,  updatePlayerStorableResponseHandler:UpdatePlayerStorableResponse ->Void):String
	{
		var _t12445:UpdatePlayerStorableListRequest = new UpdatePlayerStorableListRequest();
		var _d12446:NList<Storable> = new NList<Storable>();
		for (_h4581 in 0 ... storables.size()) 
		{
			var _u4582:Storable = storables.get(_h4581);
			_d12446.add((cast _cloneSerializable(_u4582)));
		}
		_t12445.setStorables(_d12446);
		var _h12293:String = _request0(_t12445, updatePlayerStorableResponseHandler);
		return _h12293;
	}


	public function removePlayerStorable( storable:Storable):String
	{
		var _v4584:RemovePlayerStorableRequest = new RemovePlayerStorableRequest();
		_v4584.setStorable((cast _cloneSerializable(storable)));
		var _a4585:String = _sendMessage0(_v4584);
		return _a4585;
	}


	public function removePlayerStorableRequest( storable:Storable,  removePlayerStorableResponseHandler:RemovePlayerStorableResponse ->Void):String
	{
		var _v12452:RemovePlayerStorableRequest = new RemovePlayerStorableRequest();
		_v12452.setStorable((cast _cloneSerializable(storable)));
		var _l12295:String = _request0(_v12452, removePlayerStorableResponseHandler);
		return _l12295;
	}


	public function removePlayerStorableList( storables:NList<Storable>):String
	{
		var _y4588:RemovePlayerStorableListRequest = new RemovePlayerStorableListRequest();
		var _i4589:NList<Storable> = new NList<Storable>();
		for (_g4590 in 0 ... storables.size()) 
		{
			var _c4591:Storable = storables.get(_g4590);
			_i4589.add((cast _cloneSerializable(_c4591)));
		}
		_y4588.setStorables(_i4589);
		var _p12297:String = _sendMessage0(_y4588);
		return _p12297;
	}


	public function removePlayerStorableListRequest( storables:NList<Storable>,  removePlayerStorableResponseHandler:RemovePlayerStorableResponse ->Void):String
	{
		var _s12459:RemovePlayerStorableListRequest = new RemovePlayerStorableListRequest();
		var _s12460:NList<Storable> = new NList<Storable>();
		for (_t12461 in 0 ... storables.size()) 
		{
			var _u12462:Storable = storables.get(_t12461);
			_s12460.add((cast _cloneSerializable(_u12462)));
		}
		_s12459.setStorables(_s12460);
		var _p12299:String = _request0(_s12459, removePlayerStorableResponseHandler);
		return _p12299;
	}


	public function getPlayerStorables( dbQuery:NuggetaQuery):String
	{
		var _a4598:GetPlayerStorablesRequest = new GetPlayerStorablesRequest();
		_a4598.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _k4599:String = _sendMessage0(_a4598);
		return _k4599;
	}


	public function getPlayerStorablesRequest( dbQuery:NuggetaQuery,  getPlayerStorablesResponseHandler:GetPlayerStorablesResponse ->Void):String
	{
		var _b12466:GetPlayerStorablesRequest = new GetPlayerStorablesRequest();
		_b12466.setDbQuery((cast _cloneSerializable(dbQuery)));
		var _f12301:String = _request0(_b12466, getPlayerStorablesResponseHandler);
		return _f12301;
	}


	public function pauseSessionMonitoring():String
	{
		var _k4602:PauseSessionMonitoringRequest = new PauseSessionMonitoringRequest();
		var _l4603:String = _sendMessage0(_k4602);
		return _l4603;
	}


	public function pauseSessionMonitoringRequest( pauseSessionMonitoringResponseHandler:PauseSessionMonitoringResponse ->Void):String
	{
		var _j12470:PauseSessionMonitoringRequest = new PauseSessionMonitoringRequest();
		var _f12303:String = _request0(_j12470, pauseSessionMonitoringResponseHandler);
		return _f12303;
	}


	public function resumeSessionMonitoring():String
	{
		var _d4606:ResumeSessionMonitoringRequest = new ResumeSessionMonitoringRequest();
		var _q4607:String = _sendMessage0(_d4606);
		return _q4607;
	}


	public function resumeSessionMonitoringRequest( resumeSessionMonitoringResponseHandler:ResumeSessionMonitoringResponse ->Void):String
	{
		var _n12474:ResumeSessionMonitoringRequest = new ResumeSessionMonitoringRequest();
		var _e12305:String = _request0(_n12474, resumeSessionMonitoringResponseHandler);
		return _e12305;
	}


	public function publishFriendThirdPartyMessage( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartyId:String,  thirdPartySource:ThirdPartySource):String
	{
		var _m4610:PublishFriendThirdPartyMessageRequest = new PublishFriendThirdPartyMessageRequest();
		_m4610.setTitle(title);
		_m4610.setMessage(message);
		_m4610.setPictureUrl(pictureUrl);
		_m4610.setLink(link);
		_m4610.setThirdPartyId(thirdPartyId);
		_m4610.setThirdPartySource(thirdPartySource);
		var _p4611:String = _sendMessage0(_m4610);
		return _p4611;
	}


	public function publishFriendThirdPartyMessageRequest( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartyId:String,  thirdPartySource:ThirdPartySource,  publishFriendThirdPartyMessageResponseHandler:PublishFriendThirdPartyMessageResponse ->Void):String
	{
		var _r12478:PublishFriendThirdPartyMessageRequest = new PublishFriendThirdPartyMessageRequest();
		_r12478.setTitle(title);
		_r12478.setMessage(message);
		_r12478.setPictureUrl(pictureUrl);
		_r12478.setLink(link);
		_r12478.setThirdPartyId(thirdPartyId);
		_r12478.setThirdPartySource(thirdPartySource);
		var _f12479:String = _request0(_r12478, publishFriendThirdPartyMessageResponseHandler);
		return _f12479;
	}

	public function _m17950( message:Message,  handler:Dynamic):String
	{
		return null;
	}

	public function _m17900( _x12482:Message,  handler:Dynamic):Void
	{
		if ( Std.is( _x12482, GameStateChange)) 
		{
			var _v12484:GameStateChange ->Void = (cast handler);
			_v12484((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PlayerEnterGame)) 
		{
			var _t12485:PlayerEnterGame ->Void = (cast handler);
			_t12485((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, FriendshipNotification)) 
		{
			var _s12486:FriendshipNotification ->Void = (cast handler);
			_s12486((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PlayerUnjoinGame)) 
		{
			var _b12487:PlayerUnjoinGame ->Void = (cast handler);
			_b12487((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ConnectionLost)) 
		{
			var _t12488:ConnectionLost ->Void = (cast handler);
			_t12488((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ConnectionInterrupted)) 
		{
			var _c12489:ConnectionInterrupted ->Void = (cast handler);
			_c12489((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ConnectionResumed)) 
		{
			var _y12490:ConnectionResumed ->Void = (cast handler);
			_y12490((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ConnectionStop)) 
		{
			var _m12491:ConnectionStop ->Void = (cast handler);
			_m12491((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, FriendConnectedNotification)) 
		{
			var _s12492:FriendConnectedNotification ->Void = (cast handler);
			_s12492((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, FriendDisconnectedNotification)) 
		{
			var _k12493:FriendDisconnectedNotification ->Void = (cast handler);
			_k12493((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, NuggetaException)) 
		{
			var _y12494:NuggetaException ->Void = (cast handler);
			_y12494((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ChallengeAccepted)) 
		{
			var _x12495:ChallengeAccepted ->Void = (cast handler);
			_x12495((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ChallengeRefused)) 
		{
			var _m12496:ChallengeRefused ->Void = (cast handler);
			_m12496((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, NRawMessage)) 
		{
			var _u12497:NRawMessage ->Void = (cast handler);
			_u12497((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SessionExpired)) 
		{
			var _p12498:SessionExpired ->Void = (cast handler);
			_p12498((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GameMessageError)) 
		{
			var _x12499:GameMessageError ->Void = (cast handler);
			_x12499((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PlayerInvitationNotification)) 
		{
			var _m12500:PlayerInvitationNotification ->Void = (cast handler);
			_m12500((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, FriendChallengeNotification)) 
		{
			var _e12501:FriendChallengeNotification ->Void = (cast handler);
			_e12501((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, MyTurnNotification)) 
		{
			var _l12502:MyTurnNotification ->Void = (cast handler);
			_l12502((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PlayerTurnNotification)) 
		{
			var _b12503:PlayerTurnNotification ->Void = (cast handler);
			_b12503((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, StartResponse)) 
		{
			var _d12504:StartResponse ->Void = (cast handler);
			_d12504((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, InvitePlayerResponse)) 
		{
			var _u12505:InvitePlayerResponse ->Void = (cast handler);
			_u12505((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SignUpResponse)) 
		{
			var _x12506:SignUpResponse ->Void = (cast handler);
			_x12506((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ForgotPasswordResponse)) 
		{
			var _m12507:ForgotPasswordResponse ->Void = (cast handler);
			_m12507((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, LoginResponse)) 
		{
			var _p12508:LoginResponse ->Void = (cast handler);
			_p12508((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SavePlayerProfileResponse)) 
		{
			var _l12509:SavePlayerProfileResponse ->Void = (cast handler);
			_l12509((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetPlayerProfileResponse)) 
		{
			var _p12510:GetPlayerProfileResponse ->Void = (cast handler);
			_p12510((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, LogoutResponse)) 
		{
			var _m12511:LogoutResponse ->Void = (cast handler);
			_m12511((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ChallengeFriendResponse)) 
		{
			var _y12512:ChallengeFriendResponse ->Void = (cast handler);
			_y12512((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ChallengeThirdPartyFriendResponse)) 
		{
			var _e12513:ChallengeThirdPartyFriendResponse ->Void = (cast handler);
			_e12513((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetFriendsResponse)) 
		{
			var _u12514:GetFriendsResponse ->Void = (cast handler);
			_u12514((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetThirdPartyFriendsResponse)) 
		{
			var _p12515:GetThirdPartyFriendsResponse ->Void = (cast handler);
			_p12515((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetPlayerInvitationsResponse)) 
		{
			var _n12516:GetPlayerInvitationsResponse ->Void = (cast handler);
			_n12516((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, AcceptPlayerInvitationResponse)) 
		{
			var _e12517:AcceptPlayerInvitationResponse ->Void = (cast handler);
			_e12517((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, IgnorePlayerInvitationResponse)) 
		{
			var _m12518:IgnorePlayerInvitationResponse ->Void = (cast handler);
			_m12518((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SubmitScoreResponse)) 
		{
			var _d12519:SubmitScoreResponse ->Void = (cast handler);
			_d12519((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetLeaderboardResponse)) 
		{
			var _k12520:GetLeaderboardResponse ->Void = (cast handler);
			_k12520((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, BuyItemResponse)) 
		{
			var _w12521:BuyItemResponse ->Void = (cast handler);
			_w12521((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetStoreResponse)) 
		{
			var _e12522:GetStoreResponse ->Void = (cast handler);
			_e12522((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ConsumeItemResponse)) 
		{
			var _r12523:ConsumeItemResponse ->Void = (cast handler);
			_r12523((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, IncreasePlayerWalletResponse)) 
		{
			var _q12524:IncreasePlayerWalletResponse ->Void = (cast handler);
			_q12524((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetPlayerWalletResponse)) 
		{
			var _n12525:GetPlayerWalletResponse ->Void = (cast handler);
			_n12525((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetAchievementBoardResponse)) 
		{
			var _d12526:GetAchievementBoardResponse ->Void = (cast handler);
			_d12526((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, AchieveResponse)) 
		{
			var _g12527:AchieveResponse ->Void = (cast handler);
			_g12527((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SearchImmediateGameResponse)) 
		{
			var _v12528:SearchImmediateGameResponse ->Void = (cast handler);
			_v12528((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, JoinGameResponse)) 
		{
			var _y12529:JoinGameResponse ->Void = (cast handler);
			_y12529((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, UnjoinGameResponse)) 
		{
			var _r12530:UnjoinGameResponse ->Void = (cast handler);
			_r12530((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, AcceptFriendChallengeResponse)) 
		{
			var _p12531:AcceptFriendChallengeResponse ->Void = (cast handler);
			_p12531((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, CancelFriendChallengeResponse)) 
		{
			var _j12532:CancelFriendChallengeResponse ->Void = (cast handler);
			_j12532((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, RefuseFriendChallengeResponse)) 
		{
			var _z12533:RefuseFriendChallengeResponse ->Void = (cast handler);
			_z12533((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetChallengesResponse)) 
		{
			var _b12534:GetChallengesResponse ->Void = (cast handler);
			_b12534((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, StartGameResponse)) 
		{
			var _v12535:StartGameResponse ->Void = (cast handler);
			_v12535((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, StopGameResponse)) 
		{
			var _f12536:StopGameResponse ->Void = (cast handler);
			_f12536((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, CreateGameResponse)) 
		{
			var _w12537:CreateGameResponse ->Void = (cast handler);
			_w12537((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetGamesResponse)) 
		{
			var _k12538:GetGamesResponse ->Void = (cast handler);
			_k12538((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SaveAsGhostResponse)) 
		{
			var _g12539:SaveAsGhostResponse ->Void = (cast handler);
			_g12539((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetGhostsResponse)) 
		{
			var _d12540:GetGhostsResponse ->Void = (cast handler);
			_d12540((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, LoadGhostResponse)) 
		{
			var _g12541:LoadGhostResponse ->Void = (cast handler);
			_g12541((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SendGameChatResponse)) 
		{
			var _u12542:SendGameChatResponse ->Void = (cast handler);
			_u12542((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetStorablesResponse)) 
		{
			var _p12543:GetStorablesResponse ->Void = (cast handler);
			_p12543((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SaveStorableResponse)) 
		{
			var _y12544:SaveStorableResponse ->Void = (cast handler);
			_y12544((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, NextPlayerTurnResponse)) 
		{
			var _r12545:NextPlayerTurnResponse ->Void = (cast handler);
			_r12545((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SetPlayerNameResponse)) 
		{
			var _e12546:SetPlayerNameResponse ->Void = (cast handler);
			_e12546((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, UpdateStorableResponse)) 
		{
			var _e12547:UpdateStorableResponse ->Void = (cast handler);
			_e12547((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, RemoveStorableResponse)) 
		{
			var _y12548:RemoveStorableResponse ->Void = (cast handler);
			_y12548((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, InviteThirdPartyFriendResponse)) 
		{
			var _a12549:InviteThirdPartyFriendResponse ->Void = (cast handler);
			_a12549((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PublishThirdPartyMessageResponse)) 
		{
			var _k12550:PublishThirdPartyMessageResponse ->Void = (cast handler);
			_k12550((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ThirdPartyLoginResponse)) 
		{
			var _a12551:ThirdPartyLoginResponse ->Void = (cast handler);
			_a12551((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SaveGameResponse)) 
		{
			var _o12552:SaveGameResponse ->Void = (cast handler);
			_o12552((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, LoadGameResponse)) 
		{
			var _p12553:LoadGameResponse ->Void = (cast handler);
			_p12553((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, SavePlayerStorableResponse)) 
		{
			var _j12554:SavePlayerStorableResponse ->Void = (cast handler);
			_j12554((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, UpdatePlayerStorableResponse)) 
		{
			var _x12555:UpdatePlayerStorableResponse ->Void = (cast handler);
			_x12555((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, RemovePlayerStorableResponse)) 
		{
			var _l12556:RemovePlayerStorableResponse ->Void = (cast handler);
			_l12556((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, GetPlayerStorablesResponse)) 
		{
			var _k12557:GetPlayerStorablesResponse ->Void = (cast handler);
			_k12557((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PauseSessionMonitoringResponse)) 
		{
			var _z12558:PauseSessionMonitoringResponse ->Void = (cast handler);
			_z12558((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, ResumeSessionMonitoringResponse)) 
		{
			var _u12559:ResumeSessionMonitoringResponse ->Void = (cast handler);
			_u12559((cast _x12482));
			return;
		}
		if ( Std.is( _x12482, PublishFriendThirdPartyMessageResponse)) 
		{
			var _s12560:PublishFriendThirdPartyMessageResponse ->Void = (cast handler);
			_s12560((cast _x12482));
			return;
		}
	}


	public function addGameStateChangeHandler( handler:GameStateChange ->Void):Void
	{
		_s12155.addGameStateChangeHandler(handler);
	}


	public function removeGameStateChangeHandler( handler:GameStateChange ->Void):Void
	{
		_s12155.addGameStateChangeHandler(handler);
	}


	public function addPlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void
	{
		_s12155.addPlayerEnterGameHandler(handler);
	}


	public function removePlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void
	{
		_s12155.addPlayerEnterGameHandler(handler);
	}


	public function addFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void
	{
		_s12155.addFriendshipNotificationHandler(handler);
	}


	public function removeFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void
	{
		_s12155.addFriendshipNotificationHandler(handler);
	}


	public function addPlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void
	{
		_s12155.addPlayerUnjoinGameHandler(handler);
	}


	public function removePlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void
	{
		_s12155.addPlayerUnjoinGameHandler(handler);
	}


	public function addConnectionLostHandler( handler:ConnectionLost ->Void):Void
	{
		_s12155.addConnectionLostHandler(handler);
	}


	public function removeConnectionLostHandler( handler:ConnectionLost ->Void):Void
	{
		_s12155.addConnectionLostHandler(handler);
	}


	public function addConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void
	{
		_s12155.addConnectionInterruptedHandler(handler);
	}


	public function removeConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void
	{
		_s12155.addConnectionInterruptedHandler(handler);
	}


	public function addConnectionResumedHandler( handler:ConnectionResumed ->Void):Void
	{
		_s12155.addConnectionResumedHandler(handler);
	}


	public function removeConnectionResumedHandler( handler:ConnectionResumed ->Void):Void
	{
		_s12155.addConnectionResumedHandler(handler);
	}


	public function addConnectionStopHandler( handler:ConnectionStop ->Void):Void
	{
		_s12155.addConnectionStopHandler(handler);
	}


	public function removeConnectionStopHandler( handler:ConnectionStop ->Void):Void
	{
		_s12155.addConnectionStopHandler(handler);
	}


	public function addFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void
	{
		_s12155.addFriendConnectedNotificationHandler(handler);
	}


	public function removeFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void
	{
		_s12155.addFriendConnectedNotificationHandler(handler);
	}


	public function addFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void
	{
		_s12155.addFriendDisconnectedNotificationHandler(handler);
	}


	public function removeFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void
	{
		_s12155.addFriendDisconnectedNotificationHandler(handler);
	}


	public function addNuggetaExceptionHandler( handler:NuggetaException ->Void):Void
	{
		_s12155.addNuggetaExceptionHandler(handler);
	}


	public function removeNuggetaExceptionHandler( handler:NuggetaException ->Void):Void
	{
		_s12155.addNuggetaExceptionHandler(handler);
	}


	public function addChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void
	{
		_s12155.addChallengeAcceptedHandler(handler);
	}


	public function removeChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void
	{
		_s12155.addChallengeAcceptedHandler(handler);
	}


	public function addChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void
	{
		_s12155.addChallengeRefusedHandler(handler);
	}


	public function removeChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void
	{
		_s12155.addChallengeRefusedHandler(handler);
	}


	public function addRawMessageHandler( handler:NRawMessage ->Void):Void
	{
		_s12155.addRawMessageHandler(handler);
	}


	public function removeRawMessageHandler( handler:NRawMessage ->Void):Void
	{
		_s12155.addRawMessageHandler(handler);
	}


	public function addSessionExpiredHandler( handler:SessionExpired ->Void):Void
	{
		_s12155.addSessionExpiredHandler(handler);
	}


	public function removeSessionExpiredHandler( handler:SessionExpired ->Void):Void
	{
		_s12155.addSessionExpiredHandler(handler);
	}


	public function addGameMessageErrorHandler( handler:GameMessageError ->Void):Void
	{
		_s12155.addGameMessageErrorHandler(handler);
	}


	public function removeGameMessageErrorHandler( handler:GameMessageError ->Void):Void
	{
		_s12155.addGameMessageErrorHandler(handler);
	}


	public function addPlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void
	{
		_s12155.addPlayerInvitationNotificationHandler(handler);
	}


	public function removePlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void
	{
		_s12155.addPlayerInvitationNotificationHandler(handler);
	}


	public function addFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void
	{
		_s12155.addFriendChallengeNotificationHandler(handler);
	}


	public function removeFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void
	{
		_s12155.addFriendChallengeNotificationHandler(handler);
	}


	public function addMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void
	{
		_s12155.addMyTurnNotificationHandler(handler);
	}


	public function removeMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void
	{
		_s12155.addMyTurnNotificationHandler(handler);
	}


	public function addPlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void
	{
		_s12155.addPlayerTurnNotificationHandler(handler);
	}


	public function removePlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void
	{
		_s12155.addPlayerTurnNotificationHandler(handler);
	}


	public function addStartResponseHandler( handler:StartResponse ->Void):Void
	{
		_s12155.addStartResponseHandler(handler);
	}


	public function removeStartResponseHandler( handler:StartResponse ->Void):Void
	{
		_s12155.addStartResponseHandler(handler);
	}


	public function addInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void
	{
		_s12155.addInvitePlayerResponseHandler(handler);
	}


	public function removeInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void
	{
		_s12155.addInvitePlayerResponseHandler(handler);
	}


	public function addSignUpResponseHandler( handler:SignUpResponse ->Void):Void
	{
		_s12155.addSignUpResponseHandler(handler);
	}


	public function removeSignUpResponseHandler( handler:SignUpResponse ->Void):Void
	{
		_s12155.addSignUpResponseHandler(handler);
	}


	public function addForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void
	{
		_s12155.addForgotPasswordResponseHandler(handler);
	}


	public function removeForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void
	{
		_s12155.addForgotPasswordResponseHandler(handler);
	}


	public function addLoginResponseHandler( handler:LoginResponse ->Void):Void
	{
		_s12155.addLoginResponseHandler(handler);
	}


	public function removeLoginResponseHandler( handler:LoginResponse ->Void):Void
	{
		_s12155.addLoginResponseHandler(handler);
	}


	public function addSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void
	{
		_s12155.addSavePlayerProfileResponseHandler(handler);
	}


	public function removeSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void
	{
		_s12155.addSavePlayerProfileResponseHandler(handler);
	}


	public function addGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void
	{
		_s12155.addGetPlayerProfileResponseHandler(handler);
	}


	public function removeGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void
	{
		_s12155.addGetPlayerProfileResponseHandler(handler);
	}


	public function addLogoutResponseHandler( handler:LogoutResponse ->Void):Void
	{
		_s12155.addLogoutResponseHandler(handler);
	}


	public function removeLogoutResponseHandler( handler:LogoutResponse ->Void):Void
	{
		_s12155.addLogoutResponseHandler(handler);
	}


	public function addChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void
	{
		_s12155.addChallengeFriendResponseHandler(handler);
	}


	public function removeChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void
	{
		_s12155.addChallengeFriendResponseHandler(handler);
	}


	public function addChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void
	{
		_s12155.addChallengeThirdPartyFriendResponseHandler(handler);
	}


	public function removeChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void
	{
		_s12155.addChallengeThirdPartyFriendResponseHandler(handler);
	}


	public function addGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void
	{
		_s12155.addGetFriendsResponseHandler(handler);
	}


	public function removeGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void
	{
		_s12155.addGetFriendsResponseHandler(handler);
	}


	public function addGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void
	{
		_s12155.addGetThirdPartyFriendsResponseHandler(handler);
	}


	public function removeGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void
	{
		_s12155.addGetThirdPartyFriendsResponseHandler(handler);
	}


	public function addGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void
	{
		_s12155.addGetPlayerInvitationsResponseHandler(handler);
	}


	public function removeGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void
	{
		_s12155.addGetPlayerInvitationsResponseHandler(handler);
	}


	public function addAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void
	{
		_s12155.addAcceptPlayerInvitationResponseHandler(handler);
	}


	public function removeAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void
	{
		_s12155.addAcceptPlayerInvitationResponseHandler(handler);
	}


	public function addIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void
	{
		_s12155.addIgnorePlayerInvitationResponseHandler(handler);
	}


	public function removeIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void
	{
		_s12155.addIgnorePlayerInvitationResponseHandler(handler);
	}


	public function addSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void
	{
		_s12155.addSubmitScoreResponseHandler(handler);
	}


	public function removeSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void
	{
		_s12155.addSubmitScoreResponseHandler(handler);
	}


	public function addGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void
	{
		_s12155.addGetLeaderboardResponseHandler(handler);
	}


	public function removeGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void
	{
		_s12155.addGetLeaderboardResponseHandler(handler);
	}


	public function addBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void
	{
		_s12155.addBuyItemResponseHandler(handler);
	}


	public function removeBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void
	{
		_s12155.addBuyItemResponseHandler(handler);
	}


	public function addGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void
	{
		_s12155.addGetStoreResponseHandler(handler);
	}


	public function removeGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void
	{
		_s12155.addGetStoreResponseHandler(handler);
	}


	public function addConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void
	{
		_s12155.addConsumeItemResponseHandler(handler);
	}


	public function removeConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void
	{
		_s12155.addConsumeItemResponseHandler(handler);
	}


	public function addIncreasePlayerWalletResponseHandler( handler:IncreasePlayerWalletResponse ->Void):Void
	{
		_s12155.addIncreasePlayerWalletResponseHandler(handler);
	}


	public function removeIncreasePlayerWalletResponseHandler( _v12481:IncreasePlayerWalletResponse ->Void):Void
	{
		_s12155.addIncreasePlayerWalletResponseHandler(_v12481);
	}


	public function addGetPlayerWalletResponseHandler( handler:GetPlayerWalletResponse ->Void):Void
	{
		_s12155.addGetPlayerWalletResponseHandler(handler);
	}


	public function removeGetPlayerWalletResponseHandler( _i12483:GetPlayerWalletResponse ->Void):Void
	{
		_s12155.addGetPlayerWalletResponseHandler(_i12483);
	}


	public function addGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void
	{
		_s12155.addGetAchievementBoardResponseHandler(handler);
	}


	public function removeGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void
	{
		_s12155.addGetAchievementBoardResponseHandler(handler);
	}


	public function addAchieveResponseHandler( handler:AchieveResponse ->Void):Void
	{
		_s12155.addAchieveResponseHandler(handler);
	}


	public function removeAchieveResponseHandler( handler:AchieveResponse ->Void):Void
	{
		_s12155.addAchieveResponseHandler(handler);
	}


	public function addSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void
	{
		_s12155.addSearchImmediateGameResponseHandler(handler);
	}


	public function removeSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void
	{
		_s12155.addSearchImmediateGameResponseHandler(handler);
	}


	public function addJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void
	{
		_s12155.addJoinGameResponseHandler(handler);
	}


	public function removeJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void
	{
		_s12155.addJoinGameResponseHandler(handler);
	}


	public function addUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void
	{
		_s12155.addUnjoinGameResponseHandler(handler);
	}


	public function removeUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void
	{
		_s12155.addUnjoinGameResponseHandler(handler);
	}


	public function addAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void
	{
		_s12155.addAcceptFriendChallengeResponseHandler(handler);
	}


	public function removeAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void
	{
		_s12155.addAcceptFriendChallengeResponseHandler(handler);
	}


	public function addCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void
	{
		_s12155.addCancelFriendChallengeResponseHandler(handler);
	}


	public function removeCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void
	{
		_s12155.addCancelFriendChallengeResponseHandler(handler);
	}


	public function addRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void
	{
		_s12155.addRefuseFriendChallengeResponseHandler(handler);
	}


	public function removeRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void
	{
		_s12155.addRefuseFriendChallengeResponseHandler(handler);
	}


	public function addGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void
	{
		_s12155.addGetChallengesResponseHandler(handler);
	}


	public function removeGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void
	{
		_s12155.addGetChallengesResponseHandler(handler);
	}


	public function addStartGameResponseHandler( handler:StartGameResponse ->Void):Void
	{
		_s12155.addStartGameResponseHandler(handler);
	}


	public function removeStartGameResponseHandler( handler:StartGameResponse ->Void):Void
	{
		_s12155.addStartGameResponseHandler(handler);
	}


	public function addStopGameResponseHandler( handler:StopGameResponse ->Void):Void
	{
		_s12155.addStopGameResponseHandler(handler);
	}


	public function removeStopGameResponseHandler( handler:StopGameResponse ->Void):Void
	{
		_s12155.addStopGameResponseHandler(handler);
	}


	public function addCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void
	{
		_s12155.addCreateGameResponseHandler(handler);
	}


	public function removeCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void
	{
		_s12155.addCreateGameResponseHandler(handler);
	}


	public function addGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void
	{
		_s12155.addGetGamesResponseHandler(handler);
	}


	public function removeGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void
	{
		_s12155.addGetGamesResponseHandler(handler);
	}


	public function addSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void
	{
		_s12155.addSaveAsGhostResponseHandler(handler);
	}


	public function removeSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void
	{
		_s12155.addSaveAsGhostResponseHandler(handler);
	}


	public function addGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void
	{
		_s12155.addGetGhostsResponseHandler(handler);
	}


	public function removeGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void
	{
		_s12155.addGetGhostsResponseHandler(handler);
	}


	public function addLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void
	{
		_s12155.addLoadGhostResponseHandler(handler);
	}


	public function removeLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void
	{
		_s12155.addLoadGhostResponseHandler(handler);
	}


	public function addSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void
	{
		_s12155.addSendGameChatResponseHandler(handler);
	}


	public function removeSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void
	{
		_s12155.addSendGameChatResponseHandler(handler);
	}


	public function addGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void
	{
		_s12155.addGetStorablesResponseHandler(handler);
	}


	public function removeGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void
	{
		_s12155.addGetStorablesResponseHandler(handler);
	}


	public function addSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void
	{
		_s12155.addSaveStorableResponseHandler(handler);
	}


	public function removeSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void
	{
		_s12155.addSaveStorableResponseHandler(handler);
	}


	public function addNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void
	{
		_s12155.addNextPlayerTurnResponseHandler(handler);
	}


	public function removeNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void
	{
		_s12155.addNextPlayerTurnResponseHandler(handler);
	}


	public function addSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void
	{
		_s12155.addSetPlayerNameResponseHandler(handler);
	}


	public function removeSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void
	{
		_s12155.addSetPlayerNameResponseHandler(handler);
	}


	public function addUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void
	{
		_s12155.addUpdateStorableResponseHandler(handler);
	}


	public function removeUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void
	{
		_s12155.addUpdateStorableResponseHandler(handler);
	}


	public function addRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void
	{
		_s12155.addRemoveStorableResponseHandler(handler);
	}


	public function removeRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void
	{
		_s12155.addRemoveStorableResponseHandler(handler);
	}


	public function addInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void
	{
		_s12155.addInviteThirdPartyFriendResponseHandler(handler);
	}


	public function removeInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void
	{
		_s12155.addInviteThirdPartyFriendResponseHandler(handler);
	}


	public function addPublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void
	{
		_s12155.addPublishThirdPartyMessageResponseHandler(handler);
	}


	public function removePublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void
	{
		_s12155.addPublishThirdPartyMessageResponseHandler(handler);
	}


	public function addThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void
	{
		_s12155.addThirdPartyLoginResponseHandler(handler);
	}


	public function removeThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void
	{
		_s12155.addThirdPartyLoginResponseHandler(handler);
	}


	public function addSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void
	{
		_s12155.addSaveGameResponseHandler(handler);
	}


	public function removeSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void
	{
		_s12155.addSaveGameResponseHandler(handler);
	}


	public function addLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void
	{
		_s12155.addLoadGameResponseHandler(handler);
	}


	public function removeLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void
	{
		_s12155.addLoadGameResponseHandler(handler);
	}


	public function addSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void
	{
		_s12155.addSavePlayerStorableResponseHandler(handler);
	}


	public function removeSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void
	{
		_s12155.addSavePlayerStorableResponseHandler(handler);
	}


	public function addUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void
	{
		_s12155.addUpdatePlayerStorableResponseHandler(handler);
	}


	public function removeUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void
	{
		_s12155.addUpdatePlayerStorableResponseHandler(handler);
	}


	public function addRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void
	{
		_s12155.addRemovePlayerStorableResponseHandler(handler);
	}


	public function removeRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void
	{
		_s12155.addRemovePlayerStorableResponseHandler(handler);
	}


	public function addGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void
	{
		_s12155.addGetPlayerStorablesResponseHandler(handler);
	}


	public function removeGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void
	{
		_s12155.addGetPlayerStorablesResponseHandler(handler);
	}


	public function addPauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void
	{
		_s12155.addPauseSessionMonitoringResponseHandler(handler);
	}


	public function removePauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void
	{
		_s12155.addPauseSessionMonitoringResponseHandler(handler);
	}


	public function addResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void
	{
		_s12155.addResumeSessionMonitoringResponseHandler(handler);
	}


	public function removeResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void
	{
		_s12155.addResumeSessionMonitoringResponseHandler(handler);
	}


	public function addPublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void
	{
		_s12155.addPublishFriendThirdPartyMessageResponseHandler(handler);
	}


	public function removePublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void
	{
		_s12155.addPublishFriendThirdPartyMessageResponseHandler(handler);
	}
}
