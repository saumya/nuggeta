package com.nuggeta.temp.k.l.m;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.database.Storable;
import com.nuggeta.NError;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.temp.a.b.h.j.T1227;
import com.nuggeta.temp.a.b.h.j.T1228;
import com.nuggeta.temp.a.b.h.j.T1229;
import com.nuggeta.mimics.memory.MemoryManagement;
import com.nuggeta.ngdl.nobjects.Handshake;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.InvalidVersion;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.GameStateChange;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.NRoom;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.PlayerEnterGame;
import com.nuggeta.ngdl.nobjects.AdminPublicMessage;
import com.nuggeta.ngdl.nobjects.FriendshipNotification;
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;
import com.nuggeta.ngdl.nobjects.DnsRequest;
import com.nuggeta.ngdl.nobjects.DnsResponse;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.NWorldUpdate;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionRequest;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionResponse;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;
import com.nuggeta.ngdl.nobjects.NPlayerWallet;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.ngdl.nobjects.NAchievement;
import com.nuggeta.ngdl.nobjects.NGameState;
import com.nuggeta.ngdl.nobjects.NuggetaException;
import com.nuggeta.ngdl.nobjects.NCoinPackage;
import com.nuggeta.ngdl.nobjects.BuyProductUrl;
import com.nuggeta.ngdl.nobjects.BuyProductNotification;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;
import com.nuggeta.ngdl.nobjects.PlayerMessage;
import com.nuggeta.ngdl.nobjects.NRawMessage;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.GameMessageError;
import com.nuggeta.ngdl.nobjects.AdDisplayedNotification;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;
import com.nuggeta.ngdl.nobjects.GameChatNotification;
import com.nuggeta.ngdl.nobjects.PublicServer;
import com.nuggeta.ngdl.nobjects.SwitchToServerInformation;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;
import com.nuggeta.ngdl.nobjects.NStore;
import com.nuggeta.ngdl.nobjects.NAchievementBoard;
import com.nuggeta.ngdl.nobjects.NLeaderboard;
import com.nuggeta.ngdl.nobjects.TestPrimitiveList;
import com.nuggeta.ngdl.nobjects.OpenUrl;
import com.nuggeta.ngdl.nobjects.TurnBasedContext;
import com.nuggeta.ngdl.nobjects.DisconnectedContext;
import com.nuggeta.ngdl.nobjects.OpenUrlData;
import com.nuggeta.ngdl.nobjects.HeartBeatRequest;
import com.nuggeta.ngdl.nobjects.HeartBeatResponse;
import com.nuggeta.ngdl.nobjects.NLeaderboardEntry;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.ngdl.nobjects.StartRequest;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerByIdRequest;
import com.nuggeta.ngdl.nobjects.InvitePlayerByLoginRequest;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByLoginRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByEmailRequest;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.LogoutRequest;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendRequest;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsRequest;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.SubmitScoreRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreWithPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.GetLeaderboardRequest;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.BuyItemRequest;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.GetStoreRequest;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemRequest;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardRequest;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.AchieveRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameByConditionsRequest;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.JoinGameRequest;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameRequest;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesRequest;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StartGameRequest;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameWithCharacteristicsRequest;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.GetGamesRequest;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.SaveAsGhostRequest;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsRequest;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerListRequest;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.ngdl.nobjects.GetStorablesRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.ngdl.nobjects.SaveStorableRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableListRequest;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnRequest;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.nobjects.SetPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.nobjects.RemoveStorableRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableListRequest;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginWithTokenRequest;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.nobjects.SaveGameRequest;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.nobjects.LoadGameRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesRequest;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.MatchMakingType;
import com.nuggeta.ngdl.nobjects.LeaderboardOrder;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.DeveloperGameType;
import com.nuggeta.ngdl.nobjects.GameLoadingType;
import com.nuggeta.ngdl.nobjects.DeveloperGameMode;
import com.nuggeta.ngdl.nobjects.ErrorCode;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeStatus;
import com.nuggeta.ngdl.nobjects.PlayerDisconnectionReason;
import com.nuggeta.ngdl.nobjects.LogLevel;
import com.nuggeta.ngdl.nobjects.EntityType;
import com.nuggeta.ngdl.nobjects.Gender;
import com.nuggeta.ngdl.nobjects.RedirectStrategyType;
import com.nuggeta.ngdl.nobjects.JobStatus;
import com.nuggeta.ngdl.nobjects.Environment;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.PlayerState;
import com.nuggeta.ngdl.nobjects.ClientApplication;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.ngdl.nobjects.Period;
import com.nuggeta.ngdl.nobjects.PlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;
import com.nuggeta.ngdl.nobjects.NebulaPlayerStatus;
import com.nuggeta.ngdl.nobjects.GameServerStatus;
import com.nuggeta.ngdl.nobjects.DeveloperStatus;
import com.nuggeta.ngdl.nobjects.DeveloperGamePlan;
import com.nuggeta.ngdl.nobjects.LocationZone;
import com.nuggeta.ngdl.nobjects.ThirdPartyMethodType;
import com.nuggeta.ngdl.nobjects.ForumTopicStatus;
import com.nuggeta.ngdl.nobjects.DeveloperGameVersionStatus;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.ngdl.nobjects.EmailCampaignState;
import com.nuggeta.ngdl.nobjects.InvitePlayerStatus;
import com.nuggeta.ngdl.nobjects.SignUpStatus;
import com.nuggeta.ngdl.nobjects.ForgotPasswordStatus;
import com.nuggeta.ngdl.nobjects.LoginStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.LogoutStatus;
import com.nuggeta.ngdl.nobjects.ChallengeFriendStatus;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.GetFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsStatus;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.SubmitScoreStatus;
import com.nuggeta.ngdl.nobjects.GetLeaderboardStatus;
import com.nuggeta.ngdl.nobjects.BuyItemStatus;
import com.nuggeta.ngdl.nobjects.GetStoreStatus;
import com.nuggeta.ngdl.nobjects.ConsumeItemStatus;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardStatus;
import com.nuggeta.ngdl.nobjects.AchieveStatus;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameStatus;
import com.nuggeta.ngdl.nobjects.JoinGameStatus;
import com.nuggeta.ngdl.nobjects.UnjoinGameStatus;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.GetChallengesStatus;
import com.nuggeta.ngdl.nobjects.StartGameStatus;
import com.nuggeta.ngdl.nobjects.StopGameStatus;
import com.nuggeta.ngdl.nobjects.CreateGameStatus;
import com.nuggeta.ngdl.nobjects.GetGamesStatus;
import com.nuggeta.ngdl.nobjects.SaveAsGhostStatus;
import com.nuggeta.ngdl.nobjects.GetGhostsStatus;
import com.nuggeta.ngdl.nobjects.LoadGhostStatus;
import com.nuggeta.ngdl.nobjects.SendGameChatStatus;
import com.nuggeta.ngdl.nobjects.GetStorablesStatus;
import com.nuggeta.ngdl.nobjects.SaveStorableStatus;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnStatus;
import com.nuggeta.ngdl.nobjects.SetPlayerNameStatus;
import com.nuggeta.ngdl.nobjects.UpdateStorableStatus;
import com.nuggeta.ngdl.nobjects.RemoveStorableStatus;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageStatus;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginStatus;
import com.nuggeta.ngdl.nobjects.SaveGameStatus;
import com.nuggeta.ngdl.nobjects.LoadGameStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesStatus;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageStatus;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.network.Serializable;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.h.j.T1229;
import com.nuggeta.ngdl.nobjects.DnsStatus;
import com.nuggeta.ngdl.nobjects.MatchMakingType;
import com.nuggeta.ngdl.nobjects.LeaderboardOrder;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.DeveloperGameType;
import com.nuggeta.ngdl.nobjects.GameLoadingType;
import com.nuggeta.ngdl.nobjects.DeveloperGameMode;
import com.nuggeta.ngdl.nobjects.ErrorCode;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeStatus;
import com.nuggeta.ngdl.nobjects.PlayerDisconnectionReason;
import com.nuggeta.ngdl.nobjects.LogLevel;
import com.nuggeta.ngdl.nobjects.EntityType;
import com.nuggeta.ngdl.nobjects.Gender;
import com.nuggeta.ngdl.nobjects.RedirectStrategyType;
import com.nuggeta.ngdl.nobjects.JobStatus;
import com.nuggeta.ngdl.nobjects.Environment;
import com.nuggeta.ngdl.nobjects.HandshakeState;
import com.nuggeta.ngdl.nobjects.PlayerState;
import com.nuggeta.ngdl.nobjects.ClientApplication;
import com.nuggeta.ngdl.nobjects.GameRunningState;
import com.nuggeta.ngdl.nobjects.Period;
import com.nuggeta.ngdl.nobjects.PlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.ExecutionStatus;
import com.nuggeta.ngdl.nobjects.NebulaPlayerStatus;
import com.nuggeta.ngdl.nobjects.GameServerStatus;
import com.nuggeta.ngdl.nobjects.DeveloperStatus;
import com.nuggeta.ngdl.nobjects.DeveloperGamePlan;
import com.nuggeta.ngdl.nobjects.LocationZone;
import com.nuggeta.ngdl.nobjects.ThirdPartyMethodType;
import com.nuggeta.ngdl.nobjects.ForumTopicStatus;
import com.nuggeta.ngdl.nobjects.DeveloperGameVersionStatus;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.ngdl.nobjects.EmailCampaignState;
import com.nuggeta.ngdl.nobjects.InvitePlayerStatus;
import com.nuggeta.ngdl.nobjects.SignUpStatus;
import com.nuggeta.ngdl.nobjects.ForgotPasswordStatus;
import com.nuggeta.ngdl.nobjects.LoginStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileStatus;
import com.nuggeta.ngdl.nobjects.LogoutStatus;
import com.nuggeta.ngdl.nobjects.ChallengeFriendStatus;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.GetFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsStatus;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationStatus;
import com.nuggeta.ngdl.nobjects.SubmitScoreStatus;
import com.nuggeta.ngdl.nobjects.GetLeaderboardStatus;
import com.nuggeta.ngdl.nobjects.BuyItemStatus;
import com.nuggeta.ngdl.nobjects.GetStoreStatus;
import com.nuggeta.ngdl.nobjects.ConsumeItemStatus;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletStatus;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardStatus;
import com.nuggeta.ngdl.nobjects.AchieveStatus;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameStatus;
import com.nuggeta.ngdl.nobjects.JoinGameStatus;
import com.nuggeta.ngdl.nobjects.UnjoinGameStatus;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeStatus;
import com.nuggeta.ngdl.nobjects.GetChallengesStatus;
import com.nuggeta.ngdl.nobjects.StartGameStatus;
import com.nuggeta.ngdl.nobjects.StopGameStatus;
import com.nuggeta.ngdl.nobjects.CreateGameStatus;
import com.nuggeta.ngdl.nobjects.GetGamesStatus;
import com.nuggeta.ngdl.nobjects.SaveAsGhostStatus;
import com.nuggeta.ngdl.nobjects.GetGhostsStatus;
import com.nuggeta.ngdl.nobjects.LoadGhostStatus;
import com.nuggeta.ngdl.nobjects.SendGameChatStatus;
import com.nuggeta.ngdl.nobjects.GetStorablesStatus;
import com.nuggeta.ngdl.nobjects.SaveStorableStatus;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnStatus;
import com.nuggeta.ngdl.nobjects.SetPlayerNameStatus;
import com.nuggeta.ngdl.nobjects.UpdateStorableStatus;
import com.nuggeta.ngdl.nobjects.RemoveStorableStatus;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendStatus;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageStatus;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginStatus;
import com.nuggeta.ngdl.nobjects.SaveGameStatus;
import com.nuggeta.ngdl.nobjects.LoadGameStatus;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableStatus;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesStatus;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringStatus;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageStatus;
import com.nuggeta.ngdl.nobjects.Handshake;
import com.nuggeta.ngdl.nobjects.HandshakeResponse;
import com.nuggeta.ngdl.nobjects.InvalidVersion;
import com.nuggeta.ngdl.nobjects.NPlayer;
import com.nuggeta.ngdl.nobjects.GameStateChange;
import com.nuggeta.ngdl.nobjects.NPlayerInvitation;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.NRoom;
import com.nuggeta.util.NList;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.PlayerEnterGame;
import com.nuggeta.ngdl.nobjects.AdminPublicMessage;
import com.nuggeta.ngdl.nobjects.FriendshipNotification;
import com.nuggeta.ngdl.nobjects.PlayerUnjoinGame;
import com.nuggeta.ngdl.nobjects.DnsRequest;
import com.nuggeta.ngdl.nobjects.DnsResponse;
import com.nuggeta.ngdl.nobjects.ConnectionLost;
import com.nuggeta.ngdl.nobjects.NWorldUpdate;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionRequest;
import com.nuggeta.ngdl.nobjects.StopPlugConnectionResponse;
import com.nuggeta.ngdl.nobjects.NChallenge;
import com.nuggeta.ngdl.nobjects.ConnectionInterrupted;
import com.nuggeta.ngdl.nobjects.ConnectionResumed;
import com.nuggeta.ngdl.nobjects.ConnectionStop;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.FriendConnectedNotification;
import com.nuggeta.ngdl.nobjects.FriendDisconnectedNotification;
import com.nuggeta.ngdl.nobjects.NPlayerWallet;
import com.nuggeta.ngdl.nobjects.NItem;
import com.nuggeta.ngdl.nobjects.NAchievement;
import com.nuggeta.ngdl.nobjects.NGameState;
import com.nuggeta.ngdl.nobjects.NuggetaException;
import com.nuggeta.ngdl.nobjects.NCoinPackage;
import com.nuggeta.ngdl.nobjects.BuyProductUrl;
import com.nuggeta.ngdl.nobjects.BuyProductNotification;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.OpenConnection;
import com.nuggeta.ngdl.nobjects.ChallengeAccepted;
import com.nuggeta.ngdl.nobjects.ChallengeRefused;
import com.nuggeta.ngdl.nobjects.PlayerMessage;
import com.nuggeta.ngdl.nobjects.NRawMessage;
import com.nuggeta.ngdl.nobjects.SessionExpired;
import com.nuggeta.ngdl.nobjects.GameMessageError;
import com.nuggeta.ngdl.nobjects.AdDisplayedNotification;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.PlayerInvitationNotification;
import com.nuggeta.ngdl.nobjects.FriendChallengeNotification;
import com.nuggeta.ngdl.nobjects.GameChatNotification;
import com.nuggeta.ngdl.nobjects.PublicServer;
import com.nuggeta.ngdl.nobjects.SwitchToServerInformation;
import com.nuggeta.ngdl.nobjects.MyTurnNotification;
import com.nuggeta.ngdl.nobjects.PlayerTurnNotification;
import com.nuggeta.ngdl.nobjects.NStore;
import com.nuggeta.ngdl.nobjects.NAchievementBoard;
import com.nuggeta.ngdl.nobjects.NLeaderboard;
import com.nuggeta.ngdl.nobjects.NLeaderboardEntry;
import com.nuggeta.ngdl.nobjects.TestPrimitiveList;
import com.nuggeta.ngdl.nobjects.OpenUrl;
import com.nuggeta.ngdl.nobjects.TurnBasedContext;
import com.nuggeta.ngdl.nobjects.DisconnectedContext;
import com.nuggeta.ngdl.nobjects.OpenUrlData;
import com.nuggeta.ngdl.nobjects.HeartBeatRequest;
import com.nuggeta.ngdl.nobjects.HeartBeatResponse;
import com.nuggeta.ngdl.nobjects.StartDetails;
import com.nuggeta.ngdl.nobjects.StartRequest;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.InvitePlayerByIdRequest;
import com.nuggeta.ngdl.nobjects.InvitePlayerByLoginRequest;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.SignUpRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByLoginRequest;
import com.nuggeta.ngdl.nobjects.ForgotPasswordByEmailRequest;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.LoginRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.LogoutRequest;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendRequest;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetFriendsByPlayerIdRequest;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsRequest;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.SubmitScoreRequest;
import com.nuggeta.ngdl.nobjects.SubmitScoreWithPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.GetLeaderboardRequest;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.BuyItemRequest;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.GetStoreRequest;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemRequest;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletRequest;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardRequest;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.AchieveRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameRequest;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameByConditionsRequest;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.JoinGameRequest;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameRequest;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeRequest;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesRequest;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StartGameRequest;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameRequest;
import com.nuggeta.ngdl.nobjects.CreateGameWithCharacteristicsRequest;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.GetGamesRequest;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.SaveAsGhostRequest;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsRequest;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerRequest;
import com.nuggeta.ngdl.nobjects.SendGameChatToPlayerListRequest;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.GetStorablesRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.ngdl.nobjects.SaveStorableRequest;
import com.nuggeta.ngdl.nobjects.SaveStorableListRequest;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnResponse;
import com.nuggeta.ngdl.nobjects.NextPlayerTurnRequest;
import com.nuggeta.ngdl.nobjects.SetPlayerNameResponse;
import com.nuggeta.ngdl.nobjects.SetPlayerNameRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdateStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdateStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableResponse;
import com.nuggeta.ngdl.nobjects.RemoveStorableRequest;
import com.nuggeta.ngdl.nobjects.RemoveStorableListRequest;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.InviteThirdPartyFriendRequest;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.PublishThirdPartyMessageRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginRequest;
import com.nuggeta.ngdl.nobjects.ThirdPartyLoginWithTokenRequest;
import com.nuggeta.ngdl.nobjects.SaveGameResponse;
import com.nuggeta.ngdl.nobjects.SaveGameRequest;
import com.nuggeta.ngdl.nobjects.LoadGameResponse;
import com.nuggeta.ngdl.nobjects.LoadGameRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.SavePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.UpdatePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableResponse;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableRequest;
import com.nuggeta.ngdl.nobjects.RemovePlayerStorableListRequest;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerStorablesRequest;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.PauseSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringResponse;
import com.nuggeta.ngdl.nobjects.ResumeSessionMonitoringRequest;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageResponse;
import com.nuggeta.ngdl.nobjects.PublishFriendThirdPartyMessageRequest;
import com.nuggeta.NError;

class T1231 implements T1222
{

	public function new()
	{
	}

	public function _m17286( _w12571:Serializable,  _e12572:T1220):Void
	{
		var _b12573:T1229 = (cast _e12572);
		if (_w12571.getSerializerID() == -1) 
		{
			_m17951(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -2) 
		{
			_m17952(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3) 
		{
			_m17953(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -4) 
		{
			_m17954(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -5) 
		{
			_m17955(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -6) 
		{
			_m17956(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -7) 
		{
			_m17957(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -8) 
		{
			_m17958(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -9) 
		{
			_m17959(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10) 
		{
			_m17960(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11) 
		{
			_m17961(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -12) 
		{
			_m17962(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -13) 
		{
			_m17963(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -14) 
		{
			_m17964(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -15) 
		{
			_m17965(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -16) 
		{
			_m17966(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -17) 
		{
			_m17967(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -18) 
		{
			_m17968(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -19) 
		{
			_m17969(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -20) 
		{
			_m17970(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -21) 
		{
			_m17971(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -22) 
		{
			_m17972(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -23) 
		{
			_m17973(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -24) 
		{
			_m17974(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -26) 
		{
			_m17975(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -27) 
		{
			_m17976(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -28) 
		{
			_m17977(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -29) 
		{
			_m17978(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -30) 
		{
			_m17979(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -31) 
		{
			_m17980(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -32) 
		{
			_m17981(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -33) 
		{
			_m17982(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -34) 
		{
			_m17983(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -35) 
		{
			_m17984(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10018) 
		{
			_m17985(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10038) 
		{
			_m17986(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10058) 
		{
			_m17987(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10078) 
		{
			_m17988(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10098) 
		{
			_m17989(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10118) 
		{
			_m17990(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10138) 
		{
			_m17991(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10158) 
		{
			_m17992(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10178) 
		{
			_m17993(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10198) 
		{
			_m17994(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10218) 
		{
			_m17995(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10238) 
		{
			_m17996(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10258) 
		{
			_m17997(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10278) 
		{
			_m17998(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10298) 
		{
			_m17999(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10318) 
		{
			_m18000(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10338) 
		{
			_m18001(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10358) 
		{
			_m18002(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10378) 
		{
			_m18003(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10398) 
		{
			_m18004(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10418) 
		{
			_m18005(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10438) 
		{
			_m18006(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10458) 
		{
			_m18007(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10478) 
		{
			_m18008(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10498) 
		{
			_m18009(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10518) 
		{
			_m18010(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10538) 
		{
			_m18011(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10558) 
		{
			_m18012(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10578) 
		{
			_m18013(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10598) 
		{
			_m18014(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10618) 
		{
			_m18015(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10638) 
		{
			_m18016(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10658) 
		{
			_m18017(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10678) 
		{
			_m18018(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10698) 
		{
			_m18019(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10718) 
		{
			_m18020(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10738) 
		{
			_m18021(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10758) 
		{
			_m18022(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10778) 
		{
			_m18023(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10798) 
		{
			_m18024(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10818) 
		{
			_m18025(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10838) 
		{
			_m18026(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10858) 
		{
			_m18027(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10878) 
		{
			_m18028(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10898) 
		{
			_m18029(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10918) 
		{
			_m18030(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10938) 
		{
			_m18031(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10958) 
		{
			_m18032(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10978) 
		{
			_m18033(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10998) 
		{
			_m18034(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11018) 
		{
			_m18035(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11038) 
		{
			_m18036(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11058) 
		{
			_m18037(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11078) 
		{
			_m18038(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11098) 
		{
			_m18039(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11118) 
		{
			_m18040(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3000) 
		{
			_m18041(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3001) 
		{
			_m18042(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3002) 
		{
			_m18043(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3003) 
		{
			_m18044(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3004) 
		{
			_m18045(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3005) 
		{
			_m18046(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3006) 
		{
			_m18047(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3008) 
		{
			_m18048(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3009) 
		{
			_m18049(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3010) 
		{
			_m18050(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3011) 
		{
			_m18051(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3012) 
		{
			_m18052(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3013) 
		{
			_m18053(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3017) 
		{
			_m18054(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3019) 
		{
			_m18055(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3020) 
		{
			_m18056(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3021) 
		{
			_m18057(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3042) 
		{
			_m18058(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3077) 
		{
			_m18059(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3078) 
		{
			_m18060(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3084) 
		{
			_m18061(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3088) 
		{
			_m18062(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3089) 
		{
			_m18063(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3090) 
		{
			_m18064(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3093) 
		{
			_m18065(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3098) 
		{
			_m18066(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3099) 
		{
			_m18067(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3100) 
		{
			_m18068(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3101) 
		{
			_m18069(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3103) 
		{
			_m18070(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3105) 
		{
			_m18071(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3106) 
		{
			_m18072(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3107) 
		{
			_m18073(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3109) 
		{
			_m18074(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3111) 
		{
			_m18075(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3112) 
		{
			_m18076(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3113) 
		{
			_m18077(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3115) 
		{
			_m18078(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3116) 
		{
			_m18079(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3118) 
		{
			_m18080(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3119) 
		{
			_m18081(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3121) 
		{
			_m18082(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3122) 
		{
			_m18083(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3124) 
		{
			_m18084(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3127) 
		{
			_m18085(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3129) 
		{
			_m18086(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3130) 
		{
			_m18087(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3135) 
		{
			_m18088(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3136) 
		{
			_m18089(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3137) 
		{
			_m18090(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3139) 
		{
			_m18091(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3140) 
		{
			_m18092(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3142) 
		{
			_m18093(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3143) 
		{
			_m18094(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3145) 
		{
			_m18095(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3156) 
		{
			_m18096(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3157) 
		{
			_m18097(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3158) 
		{
			_m18098(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3159) 
		{
			_m18099(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3164) 
		{
			_m18100(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3174) 
		{
			_m18101(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3175) 
		{
			_m18102(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3178) 
		{
			_m18103(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3179) 
		{
			_m18104(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3180) 
		{
			_m18105(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -3181) 
		{
			_m18106(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10019) 
		{
			_m18107(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10017) 
		{
			_m18108(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10016) 
		{
			_m18109(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10039) 
		{
			_m18110(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10037) 
		{
			_m18111(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10059) 
		{
			_m18112(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10057) 
		{
			_m18113(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10056) 
		{
			_m18114(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10079) 
		{
			_m18115(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10077) 
		{
			_m18116(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10099) 
		{
			_m18117(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10097) 
		{
			_m18118(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10119) 
		{
			_m18119(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10117) 
		{
			_m18120(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10116) 
		{
			_m18121(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10139) 
		{
			_m18122(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10137) 
		{
			_m18123(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10159) 
		{
			_m18124(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10157) 
		{
			_m18125(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10179) 
		{
			_m18126(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10177) 
		{
			_m18127(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10199) 
		{
			_m18128(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10197) 
		{
			_m18129(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10196) 
		{
			_m18130(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10219) 
		{
			_m18131(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10217) 
		{
			_m18132(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10239) 
		{
			_m18133(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10237) 
		{
			_m18134(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10259) 
		{
			_m18135(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10257) 
		{
			_m18136(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10279) 
		{
			_m18137(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10277) 
		{
			_m18138(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10299) 
		{
			_m18139(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10297) 
		{
			_m18140(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10296) 
		{
			_m18141(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10319) 
		{
			_m18142(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10317) 
		{
			_m18143(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10339) 
		{
			_m18144(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10337) 
		{
			_m18145(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10359) 
		{
			_m18146(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10357) 
		{
			_m18147(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10379) 
		{
			_m18148(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10377) 
		{
			_m18149(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10399) 
		{
			_m18150(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10397) 
		{
			_m18151(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10419) 
		{
			_m18152(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10417) 
		{
			_m18153(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10439) 
		{
			_m18154(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10437) 
		{
			_m18155(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10459) 
		{
			_m18156(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10457) 
		{
			_m18157(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10479) 
		{
			_m18158(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10477) 
		{
			_m18159(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10476) 
		{
			_m18160(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10499) 
		{
			_m18161(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10497) 
		{
			_m18162(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10519) 
		{
			_m18163(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10517) 
		{
			_m18164(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10539) 
		{
			_m18165(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10537) 
		{
			_m18166(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10559) 
		{
			_m18167(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10557) 
		{
			_m18168(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10579) 
		{
			_m18169(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10577) 
		{
			_m18170(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10599) 
		{
			_m18171(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10597) 
		{
			_m18172(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10619) 
		{
			_m18173(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10617) 
		{
			_m18174(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10639) 
		{
			_m18175(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10637) 
		{
			_m18176(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10659) 
		{
			_m18177(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10657) 
		{
			_m18178(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10656) 
		{
			_m18179(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10679) 
		{
			_m18180(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10677) 
		{
			_m18181(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10699) 
		{
			_m18182(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10697) 
		{
			_m18183(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10719) 
		{
			_m18184(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10717) 
		{
			_m18185(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10739) 
		{
			_m18186(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10737) 
		{
			_m18187(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10759) 
		{
			_m18188(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10757) 
		{
			_m18189(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10756) 
		{
			_m18190(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10755) 
		{
			_m18191(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10779) 
		{
			_m18192(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10777) 
		{
			_m18193(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10799) 
		{
			_m18194(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10797) 
		{
			_m18195(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10796) 
		{
			_m18196(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10819) 
		{
			_m18197(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10817) 
		{
			_m18198(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10839) 
		{
			_m18199(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10837) 
		{
			_m18200(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10859) 
		{
			_m18201(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10857) 
		{
			_m18202(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10856) 
		{
			_m18203(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10879) 
		{
			_m18204(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10877) 
		{
			_m18205(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10876) 
		{
			_m18206(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10899) 
		{
			_m18207(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10897) 
		{
			_m18208(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10919) 
		{
			_m18209(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10917) 
		{
			_m18210(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10939) 
		{
			_m18211(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10937) 
		{
			_m18212(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10936) 
		{
			_m18213(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10959) 
		{
			_m18214(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10957) 
		{
			_m18215(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10979) 
		{
			_m18216(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10977) 
		{
			_m18217(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10999) 
		{
			_m18218(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10997) 
		{
			_m18219(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -10996) 
		{
			_m18220(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11019) 
		{
			_m18221(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11017) 
		{
			_m18222(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11016) 
		{
			_m18223(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11039) 
		{
			_m18224(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11037) 
		{
			_m18225(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11036) 
		{
			_m18226(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11059) 
		{
			_m18227(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11057) 
		{
			_m18228(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11079) 
		{
			_m18229(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11077) 
		{
			_m18230(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11099) 
		{
			_m18231(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11097) 
		{
			_m18232(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11119) 
		{
			_m18233(_w12571, _b12573);
			return;
		}
		if (_w12571.getSerializerID() == -11117) 
		{
			_m18234(_w12571, _b12573);
			return;
		}
	}

	public function _m17951( serializable:Serializable,  buff:T1229):Void
	{
		var _b12576:DnsStatus = (cast serializable);
		T1228._m18235(_b12576.getValue(), buff);
	}

	public function _m17952( serializable:Serializable,  buff:T1229):Void
	{
		var _t12579:MatchMakingType = (cast serializable);
		T1228._m18235(_t12579.getValue(), buff);
	}

	public function _m17953( serializable:Serializable,  buff:T1229):Void
	{
		var _g12582:LeaderboardOrder = (cast serializable);
		T1228._m18235(_g12582.getValue(), buff);
	}

	public function _m17954( serializable:Serializable,  buff:T1229):Void
	{
		var _a12585:LeaderboardPeriod = (cast serializable);
		T1228._m18235(_a12585.getValue(), buff);
	}

	public function _m17955( serializable:Serializable,  buff:T1229):Void
	{
		var _b12588:DeveloperGameType = (cast serializable);
		T1228._m18235(_b12588.getValue(), buff);
	}

	public function _m17956( serializable:Serializable,  buff:T1229):Void
	{
		var _r12591:GameLoadingType = (cast serializable);
		T1228._m18235(_r12591.getValue(), buff);
	}

	public function _m17957( serializable:Serializable,  buff:T1229):Void
	{
		var _t12594:DeveloperGameMode = (cast serializable);
		T1228._m18235(_t12594.getValue(), buff);
	}

	public function _m17958( serializable:Serializable,  buff:T1229):Void
	{
		var _f12597:ErrorCode = (cast serializable);
		T1228._m18235(_f12597.getValue(), buff);
	}

	public function _m17959( serializable:Serializable,  buff:T1229):Void
	{
		var _t12600:ThirdPartySource = (cast serializable);
		T1228._m18235(_t12600.getValue(), buff);
	}

	public function _m17960( serializable:Serializable,  buff:T1229):Void
	{
		var _o12603:ChallengeStatus = (cast serializable);
		T1228._m18235(_o12603.getValue(), buff);
	}

	public function _m17961( serializable:Serializable,  buff:T1229):Void
	{
		var _p12606:PlayerDisconnectionReason = (cast serializable);
		T1228._m18235(_p12606.getValue(), buff);
	}

	public function _m17962( serializable:Serializable,  buff:T1229):Void
	{
		var _q12609:LogLevel = (cast serializable);
		T1228._m18235(_q12609.getValue(), buff);
	}

	public function _m17963( serializable:Serializable,  buff:T1229):Void
	{
		var _l12612:EntityType = (cast serializable);
		T1228._m18235(_l12612.getValue(), buff);
	}

	public function _m17964( serializable:Serializable,  buff:T1229):Void
	{
		var _o12615:Gender = (cast serializable);
		T1228._m18235(_o12615.getValue(), buff);
	}

	public function _m17965( serializable:Serializable,  buff:T1229):Void
	{
		var _s12618:RedirectStrategyType = (cast serializable);
		T1228._m18235(_s12618.getValue(), buff);
	}

	public function _m17966( serializable:Serializable,  buff:T1229):Void
	{
		var _g12621:JobStatus = (cast serializable);
		T1228._m18235(_g12621.getValue(), buff);
	}

	public function _m17967( serializable:Serializable,  buff:T1229):Void
	{
		var _l12624:Environment = (cast serializable);
		T1228._m18235(_l12624.getValue(), buff);
	}

	public function _m17968( serializable:Serializable,  buff:T1229):Void
	{
		var _g12627:HandshakeState = (cast serializable);
		T1228._m18235(_g12627.getValue(), buff);
	}

	public function _m17969( serializable:Serializable,  buff:T1229):Void
	{
		var _e12630:PlayerState = (cast serializable);
		T1228._m18235(_e12630.getValue(), buff);
	}

	public function _m17970( serializable:Serializable,  buff:T1229):Void
	{
		var _g12633:ClientApplication = (cast serializable);
		T1228._m18235(_g12633.getValue(), buff);
	}

	public function _m17971( serializable:Serializable,  buff:T1229):Void
	{
		var _a12636:GameRunningState = (cast serializable);
		T1228._m18235(_a12636.getValue(), buff);
	}

	public function _m17972( serializable:Serializable,  buff:T1229):Void
	{
		var _t12639:Period = (cast serializable);
		T1228._m18235(_t12639.getValue(), buff);
	}

	public function _m17973( serializable:Serializable,  buff:T1229):Void
	{
		var _c12642:PlayerInvitationStatus = (cast serializable);
		T1228._m18235(_c12642.getValue(), buff);
	}

	public function _m17974( serializable:Serializable,  buff:T1229):Void
	{
		var _i12645:ExecutionStatus = (cast serializable);
		T1228._m18235(_i12645.getValue(), buff);
	}

	public function _m17975( serializable:Serializable,  buff:T1229):Void
	{
		var _d12648:NebulaPlayerStatus = (cast serializable);
		T1228._m18235(_d12648.getValue(), buff);
	}

	public function _m17976( serializable:Serializable,  buff:T1229):Void
	{
		var _l12651:GameServerStatus = (cast serializable);
		T1228._m18235(_l12651.getValue(), buff);
	}

	public function _m17977( serializable:Serializable,  buff:T1229):Void
	{
		var _e12654:DeveloperStatus = (cast serializable);
		T1228._m18235(_e12654.getValue(), buff);
	}

	public function _m17978( serializable:Serializable,  buff:T1229):Void
	{
		var _s12657:DeveloperGamePlan = (cast serializable);
		T1228._m18235(_s12657.getValue(), buff);
	}

	public function _m17979( serializable:Serializable,  buff:T1229):Void
	{
		var _v12660:LocationZone = (cast serializable);
		T1228._m18235(_v12660.getValue(), buff);
	}

	public function _m17980( serializable:Serializable,  buff:T1229):Void
	{
		var _o12663:ThirdPartyMethodType = (cast serializable);
		T1228._m18235(_o12663.getValue(), buff);
	}

	public function _m17981( serializable:Serializable,  buff:T1229):Void
	{
		var _q12666:ForumTopicStatus = (cast serializable);
		T1228._m18235(_q12666.getValue(), buff);
	}

	public function _m17982( serializable:Serializable,  buff:T1229):Void
	{
		var _q12669:DeveloperGameVersionStatus = (cast serializable);
		T1228._m18235(_q12669.getValue(), buff);
	}

	public function _m17983( serializable:Serializable,  buff:T1229):Void
	{
		var _h12672:StartStatus = (cast serializable);
		T1228._m18235(_h12672.getValue(), buff);
	}

	public function _m17984( serializable:Serializable,  buff:T1229):Void
	{
		var _g12675:EmailCampaignState = (cast serializable);
		T1228._m18235(_g12675.getValue(), buff);
	}

	public function _m17985( serializable:Serializable,  buff:T1229):Void
	{
		var _x12678:InvitePlayerStatus = (cast serializable);
		T1228._m18235(_x12678.getValue(), buff);
	}

	public function _m17986( serializable:Serializable,  buff:T1229):Void
	{
		var _f12681:SignUpStatus = (cast serializable);
		T1228._m18235(_f12681.getValue(), buff);
	}

	public function _m17987( serializable:Serializable,  buff:T1229):Void
	{
		var _u12684:ForgotPasswordStatus = (cast serializable);
		T1228._m18235(_u12684.getValue(), buff);
	}

	public function _m17988( serializable:Serializable,  buff:T1229):Void
	{
		var _d12687:LoginStatus = (cast serializable);
		T1228._m18235(_d12687.getValue(), buff);
	}

	public function _m17989( serializable:Serializable,  buff:T1229):Void
	{
		var _p12690:SavePlayerProfileStatus = (cast serializable);
		T1228._m18235(_p12690.getValue(), buff);
	}

	public function _m17990( serializable:Serializable,  buff:T1229):Void
	{
		var _d12693:GetPlayerProfileStatus = (cast serializable);
		T1228._m18235(_d12693.getValue(), buff);
	}

	public function _m17991( serializable:Serializable,  buff:T1229):Void
	{
		var _v12696:LogoutStatus = (cast serializable);
		T1228._m18235(_v12696.getValue(), buff);
	}

	public function _m17992( serializable:Serializable,  buff:T1229):Void
	{
		var _v12699:ChallengeFriendStatus = (cast serializable);
		T1228._m18235(_v12699.getValue(), buff);
	}

	public function _m17993( serializable:Serializable,  buff:T1229):Void
	{
		var _c12702:ChallengeThirdPartyFriendStatus = (cast serializable);
		T1228._m18235(_c12702.getValue(), buff);
	}

	public function _m17994( serializable:Serializable,  buff:T1229):Void
	{
		var _h12705:GetFriendsStatus = (cast serializable);
		T1228._m18235(_h12705.getValue(), buff);
	}

	public function _m17995( serializable:Serializable,  buff:T1229):Void
	{
		var _o12708:GetThirdPartyFriendsStatus = (cast serializable);
		T1228._m18235(_o12708.getValue(), buff);
	}

	public function _m17996( serializable:Serializable,  buff:T1229):Void
	{
		var _s12711:GetPlayerInvitationsStatus = (cast serializable);
		T1228._m18235(_s12711.getValue(), buff);
	}

	public function _m17997( serializable:Serializable,  buff:T1229):Void
	{
		var _x12714:AcceptPlayerInvitationStatus = (cast serializable);
		T1228._m18235(_x12714.getValue(), buff);
	}

	public function _m17998( serializable:Serializable,  buff:T1229):Void
	{
		var _w12717:IgnorePlayerInvitationStatus = (cast serializable);
		T1228._m18235(_w12717.getValue(), buff);
	}

	public function _m17999( serializable:Serializable,  buff:T1229):Void
	{
		var _t12720:SubmitScoreStatus = (cast serializable);
		T1228._m18235(_t12720.getValue(), buff);
	}

	public function _m18000( serializable:Serializable,  buff:T1229):Void
	{
		var _g12723:GetLeaderboardStatus = (cast serializable);
		T1228._m18235(_g12723.getValue(), buff);
	}

	public function _m18001( serializable:Serializable,  buff:T1229):Void
	{
		var _g12726:BuyItemStatus = (cast serializable);
		T1228._m18235(_g12726.getValue(), buff);
	}

	public function _m18002( serializable:Serializable,  buff:T1229):Void
	{
		var _t12729:GetStoreStatus = (cast serializable);
		T1228._m18235(_t12729.getValue(), buff);
	}

	public function _m18003( serializable:Serializable,  buff:T1229):Void
	{
		var _g12732:ConsumeItemStatus = (cast serializable);
		T1228._m18235(_g12732.getValue(), buff);
	}

	public function _m18004( serializable:Serializable,  buff:T1229):Void
	{
		var _q12735:IncreasePlayerWalletStatus = (cast serializable);
		T1228._m18235(_q12735.getValue(), buff);
	}

	public function _m18005( serializable:Serializable,  buff:T1229):Void
	{
		var _b12738:GetPlayerWalletStatus = (cast serializable);
		T1228._m18235(_b12738.getValue(), buff);
	}

	public function _m18006( serializable:Serializable,  buff:T1229):Void
	{
		var _e12741:GetAchievementBoardStatus = (cast serializable);
		T1228._m18235(_e12741.getValue(), buff);
	}

	public function _m18007( serializable:Serializable,  buff:T1229):Void
	{
		var _j12744:AchieveStatus = (cast serializable);
		T1228._m18235(_j12744.getValue(), buff);
	}

	public function _m18008( serializable:Serializable,  buff:T1229):Void
	{
		var _x12747:SearchImmediateGameStatus = (cast serializable);
		T1228._m18235(_x12747.getValue(), buff);
	}

	public function _m18009( serializable:Serializable,  buff:T1229):Void
	{
		var _g12750:JoinGameStatus = (cast serializable);
		T1228._m18235(_g12750.getValue(), buff);
	}

	public function _m18010( serializable:Serializable,  buff:T1229):Void
	{
		var _j12753:UnjoinGameStatus = (cast serializable);
		T1228._m18235(_j12753.getValue(), buff);
	}

	public function _m18011( serializable:Serializable,  buff:T1229):Void
	{
		var _z12756:AcceptFriendChallengeStatus = (cast serializable);
		T1228._m18235(_z12756.getValue(), buff);
	}

	public function _m18012( serializable:Serializable,  buff:T1229):Void
	{
		var _s12759:CancelFriendChallengeStatus = (cast serializable);
		T1228._m18235(_s12759.getValue(), buff);
	}

	public function _m18013( serializable:Serializable,  buff:T1229):Void
	{
		var _s12762:RefuseFriendChallengeStatus = (cast serializable);
		T1228._m18235(_s12762.getValue(), buff);
	}

	public function _m18014( serializable:Serializable,  buff:T1229):Void
	{
		var _b12765:GetChallengesStatus = (cast serializable);
		T1228._m18235(_b12765.getValue(), buff);
	}

	public function _m18015( serializable:Serializable,  buff:T1229):Void
	{
		var _h12768:StartGameStatus = (cast serializable);
		T1228._m18235(_h12768.getValue(), buff);
	}

	public function _m18016( serializable:Serializable,  buff:T1229):Void
	{
		var _m12771:StopGameStatus = (cast serializable);
		T1228._m18235(_m12771.getValue(), buff);
	}

	public function _m18017( serializable:Serializable,  buff:T1229):Void
	{
		var _l12774:CreateGameStatus = (cast serializable);
		T1228._m18235(_l12774.getValue(), buff);
	}

	public function _m18018( serializable:Serializable,  buff:T1229):Void
	{
		var _o12777:GetGamesStatus = (cast serializable);
		T1228._m18235(_o12777.getValue(), buff);
	}

	public function _m18019( serializable:Serializable,  buff:T1229):Void
	{
		var _x12780:SaveAsGhostStatus = (cast serializable);
		T1228._m18235(_x12780.getValue(), buff);
	}

	public function _m18020( serializable:Serializable,  buff:T1229):Void
	{
		var _k12783:GetGhostsStatus = (cast serializable);
		T1228._m18235(_k12783.getValue(), buff);
	}

	public function _m18021( serializable:Serializable,  buff:T1229):Void
	{
		var _u12786:LoadGhostStatus = (cast serializable);
		T1228._m18235(_u12786.getValue(), buff);
	}

	public function _m18022( serializable:Serializable,  buff:T1229):Void
	{
		var _u12789:SendGameChatStatus = (cast serializable);
		T1228._m18235(_u12789.getValue(), buff);
	}

	public function _m18023( serializable:Serializable,  buff:T1229):Void
	{
		var _p12792:GetStorablesStatus = (cast serializable);
		T1228._m18235(_p12792.getValue(), buff);
	}

	public function _m18024( serializable:Serializable,  buff:T1229):Void
	{
		var _w12795:SaveStorableStatus = (cast serializable);
		T1228._m18235(_w12795.getValue(), buff);
	}

	public function _m18025( serializable:Serializable,  buff:T1229):Void
	{
		var _c12798:NextPlayerTurnStatus = (cast serializable);
		T1228._m18235(_c12798.getValue(), buff);
	}

	public function _m18026( serializable:Serializable,  buff:T1229):Void
	{
		var _p12801:SetPlayerNameStatus = (cast serializable);
		T1228._m18235(_p12801.getValue(), buff);
	}

	public function _m18027( serializable:Serializable,  buff:T1229):Void
	{
		var _f12804:UpdateStorableStatus = (cast serializable);
		T1228._m18235(_f12804.getValue(), buff);
	}

	public function _m18028( serializable:Serializable,  buff:T1229):Void
	{
		var _s12807:RemoveStorableStatus = (cast serializable);
		T1228._m18235(_s12807.getValue(), buff);
	}

	public function _m18029( serializable:Serializable,  buff:T1229):Void
	{
		var _x12810:InviteThirdPartyFriendStatus = (cast serializable);
		T1228._m18235(_x12810.getValue(), buff);
	}

	public function _m18030( serializable:Serializable,  buff:T1229):Void
	{
		var _u12813:PublishThirdPartyMessageStatus = (cast serializable);
		T1228._m18235(_u12813.getValue(), buff);
	}

	public function _m18031( serializable:Serializable,  buff:T1229):Void
	{
		var _m12816:ThirdPartyLoginStatus = (cast serializable);
		T1228._m18235(_m12816.getValue(), buff);
	}

	public function _m18032( serializable:Serializable,  buff:T1229):Void
	{
		var _t12819:SaveGameStatus = (cast serializable);
		T1228._m18235(_t12819.getValue(), buff);
	}

	public function _m18033( serializable:Serializable,  buff:T1229):Void
	{
		var _s12822:LoadGameStatus = (cast serializable);
		T1228._m18235(_s12822.getValue(), buff);
	}

	public function _m18034( serializable:Serializable,  buff:T1229):Void
	{
		var _n12825:SavePlayerStorableStatus = (cast serializable);
		T1228._m18235(_n12825.getValue(), buff);
	}

	public function _m18035( serializable:Serializable,  buff:T1229):Void
	{
		var _i12828:UpdatePlayerStorableStatus = (cast serializable);
		T1228._m18235(_i12828.getValue(), buff);
	}

	public function _m18036( serializable:Serializable,  buff:T1229):Void
	{
		var _g12831:RemovePlayerStorableStatus = (cast serializable);
		T1228._m18235(_g12831.getValue(), buff);
	}

	public function _m18037( serializable:Serializable,  buff:T1229):Void
	{
		var _l12834:GetPlayerStorablesStatus = (cast serializable);
		T1228._m18235(_l12834.getValue(), buff);
	}

	public function _m18038( serializable:Serializable,  buff:T1229):Void
	{
		var _n12837:PauseSessionMonitoringStatus = (cast serializable);
		T1228._m18235(_n12837.getValue(), buff);
	}

	public function _m18039( serializable:Serializable,  buff:T1229):Void
	{
		var _g12840:ResumeSessionMonitoringStatus = (cast serializable);
		T1228._m18235(_g12840.getValue(), buff);
	}

	public function _m18040( serializable:Serializable,  buff:T1229):Void
	{
		var _b12843:PublishFriendThirdPartyMessageStatus = (cast serializable);
		T1228._m18235(_b12843.getValue(), buff);
	}

	public function _m18041( serializable:Serializable,  buff:T1229):Void
	{
		var _g4792:Int = buff._m17572();
		buff._m17573(2);
		var _e4793:Int = 0;
		var _t4794:Bool = false;
		var _n12849:Handshake = (cast serializable);
		if (_n12849.isMessageIdSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getMessageId(), (cast 0), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.isRequestIdSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getRequestId(), (cast 1), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.isVersionSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getVersion(), (cast 3), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.isReasonSet() == true) 
		{
			_t4794 = T1228._m18237(this, _n12849.getReason(), (cast 4), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.isdataPlayerIdSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getDataPlayerId(), (cast 5), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.issessionIdSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getSessionId(), (cast 6), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		if (_n12849.isplatformSet() == true) 
		{
			_t4794 = T1228._m18236(_n12849.getPlatform(), (cast 7), buff);
			if (_t4794) 
			{
				_e4793++;
			}
		}
		buff._m17576(_g4792, _e4793);
	}

	public function _m18042( serializable:Serializable,  buff:T1229):Void
	{
		var _k4796:Int = buff._m17572();
		buff._m17573(2);
		var _z4797:Int = 0;
		var _i4798:Bool = false;
		var _i12855:HandshakeResponse = (cast serializable);
		if (_i12855.isMessageIdSet() == true) 
		{
			_i4798 = T1228._m18236(_i12855.getMessageId(), (cast 0), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		if (_i12855.isRequestIdSet() == true) 
		{
			_i4798 = T1228._m18236(_i12855.getRequestId(), (cast 1), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		if (_i12855.isExecutionStatusSet() == true) 
		{
			_i4798 = T1228._m18237(this, _i12855.getExecutionStatus(), (cast 3), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		if (_i12855.isReasonSet() == true) 
		{
			_i4798 = T1228._m18237(this, _i12855.getReason(), (cast 4), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		if (_i12855.isdataPlayerIdSet() == true) 
		{
			_i4798 = T1228._m18236(_i12855.getDataPlayerId(), (cast 5), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		if (_i12855.issessionIdSet() == true) 
		{
			_i4798 = T1228._m18236(_i12855.getSessionId(), (cast 6), buff);
			if (_i4798) 
			{
				_z4797++;
			}
		}
		buff._m17576(_k4796, _z4797);
	}

	public function _m18043( serializable:Serializable,  buff:T1229):Void
	{
		var _l4800:Int = buff._m17572();
		buff._m17573(2);
		var _w4801:Int = 0;
		var _h4802:Bool = false;
		var _b12861:InvalidVersion = (cast serializable);
		if (_b12861.isMessageIdSet() == true) 
		{
			_h4802 = T1228._m18236(_b12861.getMessageId(), (cast 0), buff);
			if (_h4802) 
			{
				_w4801++;
			}
		}
		if (_b12861.isRequestIdSet() == true) 
		{
			_h4802 = T1228._m18236(_b12861.getRequestId(), (cast 1), buff);
			if (_h4802) 
			{
				_w4801++;
			}
		}
		buff._m17576(_l4800, _w4801);
	}

	public function _m18044( serializable:Serializable,  buff:T1229):Void
	{
		var _i4804:Int = buff._m17572();
		buff._m17573(2);
		var _v4805:Int = 0;
		var _w4806:Bool = false;
		var _s12867:NPlayer = (cast serializable);
		if (_s12867.isstoreIdSet() == true) 
		{
			_w4806 = T1228._m18236(_s12867.getStoreId(), (cast 0), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isIDSet() == true) 
		{
			_w4806 = T1228._m18236(_s12867.getID(), (cast 2), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isAccessTokenSet() == true) 
		{
			_w4806 = T1228._m18236(_s12867.getAccessToken(), (cast 5), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isNameSet() == true) 
		{
			_w4806 = T1228._m18236(_s12867.getName(), (cast 6), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isConnectedSet() == true) 
		{
			_w4806 = T1228._m18238(_s12867.isConnected(), (cast 7), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isLoginSourceSet() == true) 
		{
			_w4806 = T1228._m18237(this, _s12867.getLoginSource(), (cast 8), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		if (_s12867.isThirdPartyIdSet() == true) 
		{
			_w4806 = T1228._m18236(_s12867.getThirdPartyId(), (cast 9), buff);
			if (_w4806) 
			{
				_v4805++;
			}
		}
		buff._m17576(_i4804, _v4805);
	}

	public function _m18045( serializable:Serializable,  buff:T1229):Void
	{
		var _g4808:Int = buff._m17572();
		buff._m17573(2);
		var _s4809:Int = 0;
		var _f4810:Bool = false;
		var _e12873:GameStateChange = (cast serializable);
		if (_e12873.isMessageIdSet() == true) 
		{
			_f4810 = T1228._m18236(_e12873.getMessageId(), (cast 0), buff);
			if (_f4810) 
			{
				_s4809++;
			}
		}
		if (_e12873.isRequestIdSet() == true) 
		{
			_f4810 = T1228._m18236(_e12873.getRequestId(), (cast 1), buff);
			if (_f4810) 
			{
				_s4809++;
			}
		}
		if (_e12873.isGameIdSet() == true) 
		{
			_f4810 = T1228._m18236(_e12873.getGameId(), (cast 3), buff);
			if (_f4810) 
			{
				_s4809++;
			}
		}
		if (_e12873.isGameRunningStateSet() == true) 
		{
			_f4810 = T1228._m18237(this, _e12873.getGameRunningState(), (cast 4), buff);
			if (_f4810) 
			{
				_s4809++;
			}
		}
		buff._m17576(_g4808, _s4809);
	}

	public function _m18046( serializable:Serializable,  buff:T1229):Void
	{
		var _m4812:Int = buff._m17572();
		buff._m17573(2);
		var _w4813:Int = 0;
		var _l4814:Bool = false;
		var _d12879:NPlayerInvitation = (cast serializable);
		if (_d12879.isstoreIdSet() == true) 
		{
			_l4814 = T1228._m18236(_d12879.getStoreId(), (cast 0), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		if (_d12879.isEmitterSet() == true) 
		{
			_l4814 = T1228._m18237(this, _d12879.getEmitter(), (cast 2), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		if (_d12879.isReceiverIdSet() == true) 
		{
			_l4814 = T1228._m18236(_d12879.getReceiverId(), (cast 3), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		if (_d12879.isCustomMessageSet() == true) 
		{
			_l4814 = T1228._m18236(_d12879.getCustomMessage(), (cast 4), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		if (_d12879.isPlayerInvitationStatusSet() == true) 
		{
			_l4814 = T1228._m18237(this, _d12879.getPlayerInvitationStatus(), (cast 5), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		if (_d12879.isPlayerInvitationIdSet() == true) 
		{
			_l4814 = T1228._m18236(_d12879.getPlayerInvitationId(), (cast 6), buff);
			if (_l4814) 
			{
				_w4813++;
			}
		}
		buff._m17576(_m4812, _w4813);
	}

	public function _m18047( serializable:Serializable,  buff:T1229):Void
	{
		var _p4816:Int = buff._m17572();
		buff._m17573(2);
		var _c4817:Int = 0;
		var _f4818:Bool = false;
		var _k12885:NScore = (cast serializable);
		if (_k12885.isstoreIdSet() == true) 
		{
			_f4818 = T1228._m18236(_k12885.getStoreId(), (cast 0), buff);
			if (_f4818) 
			{
				_c4817++;
			}
		}
		if (_k12885.isValueSet() == true) 
		{
			_f4818 = T1228._m18239(_k12885.getValue(), (cast 2), buff);
			if (_f4818) 
			{
				_c4817++;
			}
		}
		buff._m17576(_p4816, _c4817);
	}

	public function _m18048( serializable:Serializable,  buff:T1229):Void
	{
		var _h4820:Int = buff._m17572();
		buff._m17573(2);
		var _k4821:Int = 0;
		var _f4822:Bool = false;
		var _n12891:NRoom = (cast serializable);
		if (_n12891.isstoreIdSet() == true) 
		{
			_f4822 = T1228._m18236(_n12891.getStoreId(), (cast 0), buff);
			if (_f4822) 
			{
				_k4821++;
			}
		}
		if (_n12891.isIdSet() == true) 
		{
			_f4822 = T1228._m18236(_n12891.getId(), (cast 2), buff);
			if (_f4822) 
			{
				_k4821++;
			}
		}
		if (_n12891.isNameSet() == true) 
		{
			_f4822 = T1228._m18236(_n12891.getName(), (cast 3), buff);
			if (_f4822) 
			{
				_k4821++;
			}
		}
		if (_n12891.isPlayersSet() == true) 
		{
			var _m12892:NList<NPlayer> = _n12891.getPlayers();
			if (_m12892 == null) 
			{
				_f4822 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _v12893:Int = buff._m17572();
				buff._m17573(4);
				var _w12894:Int = _m12892.size();
				buff._m17579((cast _w12894));
				for (_m4827 in 0 ... _w12894) 
				{
					var _i4828:NPlayer = _m12892.get(_m4827);
					if (_i4828 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _i4828, buff);
					}
				}
				buff._m17582(_v12893, buff._m17572() - _v12893);
				_f4822 = true;
			}
			if (_f4822) 
			{
				_k4821++;
			}
		}
		buff._m17576(_h4820, _k4821);
	}

	public function _m18049( serializable:Serializable,  buff:T1229):Void
	{
		var _a4829:Int = buff._m17572();
		buff._m17573(2);
		var _u4830:Int = 0;
		var _h4831:Bool = false;
		var _h12902:NGame = (cast serializable);
		if (_h12902.isstoreIdSet() == true) 
		{
			_h4831 = T1228._m18236(_h12902.getStoreId(), (cast 0), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isIdSet() == true) 
		{
			_h4831 = T1228._m18236(_h12902.getId(), (cast 2), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isNameSet() == true) 
		{
			_h4831 = T1228._m18236(_h12902.getName(), (cast 3), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isPlayersSet() == true) 
		{
			var _v12903:NList<NPlayer> = _h12902.getPlayers();
			if (_v12903 == null) 
			{
				_h4831 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _t12904:Int = buff._m17572();
				buff._m17573(4);
				var _y12905:Int = _v12903.size();
				buff._m17579((cast _y12905));
				for (_w4836 in 0 ... _y12905) 
				{
					var _l4837:NPlayer = _v12903.get(_w4836);
					if (_l4837 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _l4837, buff);
					}
				}
				buff._m17582(_t12904, buff._m17572() - _t12904);
				_h4831 = true;
			}
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isGameRunningStateSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getGameRunningState(), (cast 2502), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isGameCharacteristicsSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getGameCharacteristics(), (cast 2503), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isGameStateSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getGameState(), (cast 2504), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isMatchMakingConditionsSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getMatchMakingConditions(), (cast 2505), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isTurnBasedContextSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getTurnBasedContext(), (cast 2506), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isDisconnectedContextSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getDisconnectedContext(), (cast 2507), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		if (_h12902.isOwnerSet() == true) 
		{
			_h4831 = T1228._m18237(this, _h12902.getOwner(), (cast 2508), buff);
			if (_h4831) 
			{
				_u4830++;
			}
		}
		buff._m17576(_a4829, _u4830);
	}

	public function _m18050( serializable:Serializable,  buff:T1229):Void
	{
		var _f4838:Int = buff._m17572();
		buff._m17573(2);
		var _h4839:Int = 0;
		var _v4840:Bool = false;
		var _b12913:NGameCharacteristics = (cast serializable);
		if (_b12913.isstoreIdSet() == true) 
		{
			_v4840 = T1228._m18236(_b12913.getStoreId(), (cast 0), buff);
			if (_v4840) 
			{
				_h4839++;
			}
		}
		if (_b12913.isMinPlayerSet() == true) 
		{
			_v4840 = T1228._m18241(_b12913.getMinPlayer(), (cast 2), buff);
			if (_v4840) 
			{
				_h4839++;
			}
		}
		if (_b12913.isMaxPlayerSet() == true) 
		{
			_v4840 = T1228._m18241(_b12913.getMaxPlayer(), (cast 3), buff);
			if (_v4840) 
			{
				_h4839++;
			}
		}
		if (_b12913.isAutoStopSet() == true) 
		{
			_v4840 = T1228._m18238(_b12913.isAutoStop(), (cast 4), buff);
			if (_v4840) 
			{
				_h4839++;
			}
		}
		if (_b12913.isAutoStartSet() == true) 
		{
			_v4840 = T1228._m18238(_b12913.isAutoStart(), (cast 5), buff);
			if (_v4840) 
			{
				_h4839++;
			}
		}
		buff._m17576(_f4838, _h4839);
	}

	public function _m18051( serializable:Serializable,  buff:T1229):Void
	{
		var _m4842:Int = buff._m17572();
		buff._m17573(2);
		var _y4843:Int = 0;
		var _e4844:Bool = false;
		var _r12919:PlayerEnterGame = (cast serializable);
		if (_r12919.isMessageIdSet() == true) 
		{
			_e4844 = T1228._m18236(_r12919.getMessageId(), (cast 0), buff);
			if (_e4844) 
			{
				_y4843++;
			}
		}
		if (_r12919.isRequestIdSet() == true) 
		{
			_e4844 = T1228._m18236(_r12919.getRequestId(), (cast 1), buff);
			if (_e4844) 
			{
				_y4843++;
			}
		}
		if (_r12919.isGameIdSet() == true) 
		{
			_e4844 = T1228._m18236(_r12919.getGameId(), (cast 3), buff);
			if (_e4844) 
			{
				_y4843++;
			}
		}
		if (_r12919.isPlayerSet() == true) 
		{
			_e4844 = T1228._m18237(this, _r12919.getPlayer(), (cast 4), buff);
			if (_e4844) 
			{
				_y4843++;
			}
		}
		buff._m17576(_m4842, _y4843);
	}

	public function _m18052( serializable:Serializable,  buff:T1229):Void
	{
		var _d4846:Int = buff._m17572();
		buff._m17573(2);
		var _r4847:Int = 0;
		var _b4848:Bool = false;
		var _e12925:AdminPublicMessage = (cast serializable);
		if (_e12925.isMessageIdSet() == true) 
		{
			_b4848 = T1228._m18236(_e12925.getMessageId(), (cast 0), buff);
			if (_b4848) 
			{
				_r4847++;
			}
		}
		if (_e12925.isRequestIdSet() == true) 
		{
			_b4848 = T1228._m18236(_e12925.getRequestId(), (cast 1), buff);
			if (_b4848) 
			{
				_r4847++;
			}
		}
		if (_e12925.isPlayerIdSet() == true) 
		{
			_b4848 = T1228._m18236(_e12925.getPlayerId(), (cast 4), buff);
			if (_b4848) 
			{
				_r4847++;
			}
		}
		if (_e12925.isMessageSet() == true) 
		{
			_b4848 = T1228._m18236(_e12925.getMessage(), (cast 5), buff);
			if (_b4848) 
			{
				_r4847++;
			}
		}
		buff._m17576(_d4846, _r4847);
	}

	public function _m18053( serializable:Serializable,  buff:T1229):Void
	{
		var _w4850:Int = buff._m17572();
		buff._m17573(2);
		var _i4851:Int = 0;
		var _b4852:Bool = false;
		var _o12931:FriendshipNotification = (cast serializable);
		if (_o12931.isMessageIdSet() == true) 
		{
			_b4852 = T1228._m18236(_o12931.getMessageId(), (cast 0), buff);
			if (_b4852) 
			{
				_i4851++;
			}
		}
		if (_o12931.isRequestIdSet() == true) 
		{
			_b4852 = T1228._m18236(_o12931.getRequestId(), (cast 1), buff);
			if (_b4852) 
			{
				_i4851++;
			}
		}
		if (_o12931.isFriendSet() == true) 
		{
			_b4852 = T1228._m18237(this, _o12931.getFriend(), (cast 4), buff);
			if (_b4852) 
			{
				_i4851++;
			}
		}
		buff._m17576(_w4850, _i4851);
	}

	public function _m18054( serializable:Serializable,  buff:T1229):Void
	{
		var _g4854:Int = buff._m17572();
		buff._m17573(2);
		var _s4855:Int = 0;
		var _w4856:Bool = false;
		var _q12937:PlayerUnjoinGame = (cast serializable);
		if (_q12937.isMessageIdSet() == true) 
		{
			_w4856 = T1228._m18236(_q12937.getMessageId(), (cast 0), buff);
			if (_w4856) 
			{
				_s4855++;
			}
		}
		if (_q12937.isRequestIdSet() == true) 
		{
			_w4856 = T1228._m18236(_q12937.getRequestId(), (cast 1), buff);
			if (_w4856) 
			{
				_s4855++;
			}
		}
		if (_q12937.isGameIdSet() == true) 
		{
			_w4856 = T1228._m18236(_q12937.getGameId(), (cast 3), buff);
			if (_w4856) 
			{
				_s4855++;
			}
		}
		if (_q12937.isPlayerSet() == true) 
		{
			_w4856 = T1228._m18237(this, _q12937.getPlayer(), (cast 4), buff);
			if (_w4856) 
			{
				_s4855++;
			}
		}
		buff._m17576(_g4854, _s4855);
	}

	public function _m18055( serializable:Serializable,  buff:T1229):Void
	{
		var _e4858:Int = buff._m17572();
		buff._m17573(2);
		var _r4859:Int = 0;
		var _v4860:Bool = false;
		var _y12943:DnsRequest = (cast serializable);
		if (_y12943.isMessageIdSet() == true) 
		{
			_v4860 = T1228._m18236(_y12943.getMessageId(), (cast 0), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		if (_y12943.isRequestIdSet() == true) 
		{
			_v4860 = T1228._m18236(_y12943.getRequestId(), (cast 1), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		if (_y12943.isGameIdSet() == true) 
		{
			_v4860 = T1228._m18236(_y12943.getGameId(), (cast 3), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		if (_y12943.isGameVersionSet() == true) 
		{
			_v4860 = T1228._m18241(_y12943.getGameVersion(), (cast 4), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		if (_y12943.isGameDeployedVersionSet() == true) 
		{
			_v4860 = T1228._m18241(_y12943.getGameDeployedVersion(), (cast 5), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		if (_y12943.isPlatformSet() == true) 
		{
			_v4860 = T1228._m18236(_y12943.getPlatform(), (cast 6), buff);
			if (_v4860) 
			{
				_r4859++;
			}
		}
		buff._m17576(_e4858, _r4859);
	}

	public function _m18056( serializable:Serializable,  buff:T1229):Void
	{
		var _k4862:Int = buff._m17572();
		buff._m17573(2);
		var _c4863:Int = 0;
		var _j4864:Bool = false;
		var _l12949:DnsResponse = (cast serializable);
		if (_l12949.isMessageIdSet() == true) 
		{
			_j4864 = T1228._m18236(_l12949.getMessageId(), (cast 0), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		if (_l12949.isRequestIdSet() == true) 
		{
			_j4864 = T1228._m18236(_l12949.getRequestId(), (cast 1), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		if (_l12949.isIpAddressSet() == true) 
		{
			_j4864 = T1228._m18236(_l12949.getIpAddress(), (cast 3), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		if (_l12949.isTcpPortSet() == true) 
		{
			_j4864 = T1228._m18241(_l12949.getTcpPort(), (cast 4), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		if (_l12949.isDnsStatusSet() == true) 
		{
			_j4864 = T1228._m18237(this, _l12949.getDnsStatus(), (cast 5), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		if (_l12949.isStartDetailsSet() == true) 
		{
			_j4864 = T1228._m18237(this, _l12949.getStartDetails(), (cast 6), buff);
			if (_j4864) 
			{
				_c4863++;
			}
		}
		buff._m17576(_k4862, _c4863);
	}

	public function _m18057( serializable:Serializable,  buff:T1229):Void
	{
		var _m4866:Int = buff._m17572();
		buff._m17573(2);
		var _e4867:Int = 0;
		var _e4868:Bool = false;
		var _v12955:ConnectionLost = (cast serializable);
		if (_v12955.isMessageIdSet() == true) 
		{
			_e4868 = T1228._m18236(_v12955.getMessageId(), (cast 0), buff);
			if (_e4868) 
			{
				_e4867++;
			}
		}
		if (_v12955.isRequestIdSet() == true) 
		{
			_e4868 = T1228._m18236(_v12955.getRequestId(), (cast 1), buff);
			if (_e4868) 
			{
				_e4867++;
			}
		}
		buff._m17576(_m4866, _e4867);
	}

	public function _m18058( _h12586:Serializable,  _i12587:T1229):Void
	{
		var _q4870:Int = _i12587._m17572();
		_i12587._m17573(2);
		var _a4871:Int = 0;
		var _h4872:Bool = false;
		var _m12961:NWorldUpdate = (cast _h12586);
		if (_m12961.isstoreIdSet() == true) 
		{
			_h4872 = T1228._m18236(_m12961.getStoreId(), (cast 0), _i12587);
			if (_h4872) 
			{
				_a4871++;
			}
		}
		if (_m12961.isUpdateSet() == true) 
		{
			_h4872 = T1228._m18241(_m12961.getUpdate(), (cast 2), _i12587);
			if (_h4872) 
			{
				_a4871++;
			}
		}
		if (_m12961.isValuesSet() == true) 
		{
			var _e12962:NList<Message> = _m12961.getValues();
			if (_e12962 == null) 
			{
				_h4872 = false;
			} else 
			{
				_i12587._m17579((cast 3));
				_i12587._m17580(T1221._l17181);
				var _a12963:Int = _i12587._m17572();
				_i12587._m17573(4);
				var _w12964:Int = _e12962.size();
				_i12587._m17579((cast _w12964));
				for (_v4877 in 0 ... _w12964) 
				{
					var _k4878:Message = _e12962.get(_v4877);
					if (_k4878 == null) 
					{
						_i12587._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _k4878, _i12587);
					}
				}
				_i12587._m17582(_a12963, _i12587._m17572() - _a12963);
				_h4872 = true;
			}
			if (_h4872) 
			{
				_a4871++;
			}
		}
		_i12587._m17576(_q4870, _a4871);
	}

	public function _m18059( _e12595:Serializable,  _a12596:T1229):Void
	{
		var _l4879:Int = _a12596._m17572();
		_a12596._m17573(2);
		var _e4880:Int = 0;
		var _b4881:Bool = false;
		var _c12972:StopPlugConnectionRequest = (cast _e12595);
		if (_c12972.isMessageIdSet() == true) 
		{
			_b4881 = T1228._m18236(_c12972.getMessageId(), (cast 0), _a12596);
			if (_b4881) 
			{
				_e4880++;
			}
		}
		if (_c12972.isRequestIdSet() == true) 
		{
			_b4881 = T1228._m18236(_c12972.getRequestId(), (cast 1), _a12596);
			if (_b4881) 
			{
				_e4880++;
			}
		}
		_a12596._m17576(_l4879, _e4880);
	}

	public function _m18060( _r12601:Serializable,  _v12602:T1229):Void
	{
		var _c4883:Int = _v12602._m17572();
		_v12602._m17573(2);
		var _v4884:Int = 0;
		var _q4885:Bool = false;
		var _c12978:StopPlugConnectionResponse = (cast _r12601);
		if (_c12978.isMessageIdSet() == true) 
		{
			_q4885 = T1228._m18236(_c12978.getMessageId(), (cast 0), _v12602);
			if (_q4885) 
			{
				_v4884++;
			}
		}
		if (_c12978.isRequestIdSet() == true) 
		{
			_q4885 = T1228._m18236(_c12978.getRequestId(), (cast 1), _v12602);
			if (_q4885) 
			{
				_v4884++;
			}
		}
		_v12602._m17576(_c4883, _v4884);
	}

	public function _m18061( _h12622:Serializable,  _n12623:T1229):Void
	{
		var _r4887:Int = _n12623._m17572();
		_n12623._m17573(2);
		var _m4888:Int = 0;
		var _v4889:Bool = false;
		var _i12984:NChallenge = (cast _h12622);
		if (_i12984.isstoreIdSet() == true) 
		{
			_v4889 = T1228._m18236(_i12984.getStoreId(), (cast 0), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		if (_i12984.isIdSet() == true) 
		{
			_v4889 = T1228._m18236(_i12984.getId(), (cast 2), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		if (_i12984.isRequesterSet() == true) 
		{
			_v4889 = T1228._m18237(this, _i12984.getRequester(), (cast 3), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		if (_i12984.isTargetSet() == true) 
		{
			_v4889 = T1228._m18237(this, _i12984.getTarget(), (cast 4), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		if (_i12984.isStatusSet() == true) 
		{
			_v4889 = T1228._m18237(this, _i12984.getStatus(), (cast 5), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		if (_i12984.isDateSet() == true) 
		{
			_v4889 = T1228._m18242(_i12984.getDate(), (cast 6), _n12623);
			if (_v4889) 
			{
				_m4888++;
			}
		}
		_n12623._m17576(_r4887, _m4888);
	}

	public function _m18062( _q12628:Serializable,  _r12629:T1229):Void
	{
		var _x4891:Int = _r12629._m17572();
		_r12629._m17573(2);
		var _i4892:Int = 0;
		var _v4893:Bool = false;
		var _t12990:ConnectionInterrupted = (cast _q12628);
		if (_t12990.isMessageIdSet() == true) 
		{
			_v4893 = T1228._m18236(_t12990.getMessageId(), (cast 0), _r12629);
			if (_v4893) 
			{
				_i4892++;
			}
		}
		if (_t12990.isRequestIdSet() == true) 
		{
			_v4893 = T1228._m18236(_t12990.getRequestId(), (cast 1), _r12629);
			if (_v4893) 
			{
				_i4892++;
			}
		}
		_r12629._m17576(_x4891, _i4892);
	}

	public function _m18063( _x12637:Serializable,  _h12638:T1229):Void
	{
		var _s4895:Int = _h12638._m17572();
		_h12638._m17573(2);
		var _t4896:Int = 0;
		var _v4897:Bool = false;
		var _f12996:ConnectionResumed = (cast _x12637);
		if (_f12996.isMessageIdSet() == true) 
		{
			_v4897 = T1228._m18236(_f12996.getMessageId(), (cast 0), _h12638);
			if (_v4897) 
			{
				_t4896++;
			}
		}
		if (_f12996.isRequestIdSet() == true) 
		{
			_v4897 = T1228._m18236(_f12996.getRequestId(), (cast 1), _h12638);
			if (_v4897) 
			{
				_t4896++;
			}
		}
		_h12638._m17576(_s4895, _t4896);
	}

	public function _m18064( _x12643:Serializable,  _c12644:T1229):Void
	{
		var _t4899:Int = _c12644._m17572();
		_c12644._m17573(2);
		var _j4900:Int = 0;
		var _z4901:Bool = false;
		var _q13002:ConnectionStop = (cast _x12643);
		if (_q13002.isMessageIdSet() == true) 
		{
			_z4901 = T1228._m18236(_q13002.getMessageId(), (cast 0), _c12644);
			if (_z4901) 
			{
				_j4900++;
			}
		}
		if (_q13002.isRequestIdSet() == true) 
		{
			_z4901 = T1228._m18236(_q13002.getRequestId(), (cast 1), _c12644);
			if (_z4901) 
			{
				_j4900++;
			}
		}
		_c12644._m17576(_t4899, _j4900);
	}

	public function _m18065( _s12658:Serializable,  _g12659:T1229):Void
	{
		var _p4903:Int = _g12659._m17572();
		_g12659._m17573(2);
		var _x4904:Int = 0;
		var _e4905:Bool = false;
		var _q13008:NuggetaQuery = (cast _s12658);
		if (_q13008.isdomainSet() == true) 
		{
			_e4905 = T1228._m18236(_q13008.getDomain(), (cast 0), _g12659);
			if (_e4905) 
			{
				_x4904++;
			}
		}
		if (_q13008.isstartSet() == true) 
		{
			_e4905 = T1228._m18241(_q13008.getStart(), (cast 1), _g12659);
			if (_e4905) 
			{
				_x4904++;
			}
		}
		if (_q13008.islimitSet() == true) 
		{
			_e4905 = T1228._m18241(_q13008.getLimit(), (cast 2), _g12659);
			if (_e4905) 
			{
				_x4904++;
			}
		}
		if (_q13008.isquerySet() == true) 
		{
			_e4905 = T1228._m18236(_q13008.getQuery(), (cast 3), _g12659);
			if (_e4905) 
			{
				_x4904++;
			}
		}
		_g12659._m17576(_p4903, _x4904);
	}

	public function _m18066( _g12667:Serializable,  _s12668:T1229):Void
	{
		var _u4907:Int = _s12668._m17572();
		_s12668._m17573(2);
		var _h4908:Int = 0;
		var _q4909:Bool = false;
		var _t13014:FriendConnectedNotification = (cast _g12667);
		if (_t13014.isMessageIdSet() == true) 
		{
			_q4909 = T1228._m18236(_t13014.getMessageId(), (cast 0), _s12668);
			if (_q4909) 
			{
				_h4908++;
			}
		}
		if (_t13014.isRequestIdSet() == true) 
		{
			_q4909 = T1228._m18236(_t13014.getRequestId(), (cast 1), _s12668);
			if (_q4909) 
			{
				_h4908++;
			}
		}
		if (_t13014.isfriendSet() == true) 
		{
			_q4909 = T1228._m18237(this, _t13014.getFriend(), (cast 3), _s12668);
			if (_q4909) 
			{
				_h4908++;
			}
		}
		_s12668._m17576(_u4907, _h4908);
	}

	public function _m18067( _f12679:Serializable,  _d12680:T1229):Void
	{
		var _y4911:Int = _d12680._m17572();
		_d12680._m17573(2);
		var _y4912:Int = 0;
		var _j4913:Bool = false;
		var _k13020:FriendDisconnectedNotification = (cast _f12679);
		if (_k13020.isMessageIdSet() == true) 
		{
			_j4913 = T1228._m18236(_k13020.getMessageId(), (cast 0), _d12680);
			if (_j4913) 
			{
				_y4912++;
			}
		}
		if (_k13020.isRequestIdSet() == true) 
		{
			_j4913 = T1228._m18236(_k13020.getRequestId(), (cast 1), _d12680);
			if (_j4913) 
			{
				_y4912++;
			}
		}
		if (_k13020.isfriendSet() == true) 
		{
			_j4913 = T1228._m18237(this, _k13020.getFriend(), (cast 3), _d12680);
			if (_j4913) 
			{
				_y4912++;
			}
		}
		_d12680._m17576(_y4911, _y4912);
	}

	public function _m18068( _e12685:Serializable,  _g12686:T1229):Void
	{
		var _p4915:Int = _g12686._m17572();
		_g12686._m17573(2);
		var _w4916:Int = 0;
		var _y4917:Bool = false;
		var _p13026:NPlayerWallet = (cast _e12685);
		if (_p13026.isstoreIdSet() == true) 
		{
			_y4917 = T1228._m18236(_p13026.getStoreId(), (cast 0), _g12686);
			if (_y4917) 
			{
				_w4916++;
			}
		}
		if (_p13026.isNbCoinsSet() == true) 
		{
			_y4917 = T1228._m18241(_p13026.getNbCoins(), (cast 3), _g12686);
			if (_y4917) 
			{
				_w4916++;
			}
		}
		_g12686._m17576(_p4915, _w4916);
	}

	public function _m18069( _o12706:Serializable,  _l12707:T1229):Void
	{
		var _q4919:Int = _l12707._m17572();
		_l12707._m17573(2);
		var _m4920:Int = 0;
		var _j4921:Bool = false;
		var _q13032:NItem = (cast _o12706);
		if (_q13032.isstoreIdSet() == true) 
		{
			_j4921 = T1228._m18236(_q13032.getStoreId(), (cast 0), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		if (_q13032.isIdSet() == true) 
		{
			_j4921 = T1228._m18236(_q13032.getId(), (cast 2), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		if (_q13032.isNameSet() == true) 
		{
			_j4921 = T1228._m18236(_q13032.getName(), (cast 3), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		if (_q13032.isPriceSet() == true) 
		{
			_j4921 = T1228._m18241(_q13032.getPrice(), (cast 4), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		if (_q13032.isBoughtSet() == true) 
		{
			_j4921 = T1228._m18238(_q13032.isBought(), (cast 5), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		if (_q13032.isCountSet() == true) 
		{
			_j4921 = T1228._m18241(_q13032.getCount(), (cast 6), _l12707);
			if (_j4921) 
			{
				_m4920++;
			}
		}
		_l12707._m17576(_q4919, _m4920);
	}

	public function _m18070( _w12718:Serializable,  _g12719:T1229):Void
	{
		var _o4923:Int = _g12719._m17572();
		_g12719._m17573(2);
		var _r4924:Int = 0;
		var _r4925:Bool = false;
		var _j13038:NAchievement = (cast _w12718);
		if (_j13038.isstoreIdSet() == true) 
		{
			_r4925 = T1228._m18236(_j13038.getStoreId(), (cast 0), _g12719);
			if (_r4925) 
			{
				_r4924++;
			}
		}
		if (_j13038.isIdSet() == true) 
		{
			_r4925 = T1228._m18236(_j13038.getId(), (cast 2), _g12719);
			if (_r4925) 
			{
				_r4924++;
			}
		}
		if (_j13038.isNameSet() == true) 
		{
			_r4925 = T1228._m18236(_j13038.getName(), (cast 3), _g12719);
			if (_r4925) 
			{
				_r4924++;
			}
		}
		if (_j13038.isAchievedSet() == true) 
		{
			_r4925 = T1228._m18238(_j13038.isAchieved(), (cast 4), _g12719);
			if (_r4925) 
			{
				_r4924++;
			}
		}
		_g12719._m17576(_o4923, _r4924);
	}

	public function _m18071( _a12733:Serializable,  _i12734:T1229):Void
	{
		var _r4927:Int = _i12734._m17572();
		_i12734._m17573(2);
		var _i4928:Int = 0;
		var _k4929:Bool = false;
		var _f13044:NGameState = (cast _a12733);
		if (_f13044.isstoreIdSet() == true) 
		{
			_k4929 = T1228._m18236(_f13044.getStoreId(), (cast 0), _i12734);
			if (_k4929) 
			{
				_i4928++;
			}
		}
		if (_f13044.isUpdatesSet() == true) 
		{
			var _f13045:NList<NWorldUpdate> = _f13044.getUpdates();
			if (_f13045 == null) 
			{
				_k4929 = false;
			} else 
			{
				_i12734._m17579((cast 2));
				_i12734._m17580(T1221._l17181);
				var _r13046:Int = _i12734._m17572();
				_i12734._m17573(4);
				var _i13047:Int = _f13045.size();
				_i12734._m17579((cast _i13047));
				for (_l4934 in 0 ... _i13047) 
				{
					var _w4935:NWorldUpdate = _f13045.get(_l4934);
					if (_w4935 == null) 
					{
						_i12734._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _w4935, _i12734);
					}
				}
				_i12734._m17582(_r13046, _i12734._m17572() - _r13046);
				_k4929 = true;
			}
			if (_k4929) 
			{
				_i4928++;
			}
		}
		_i12734._m17576(_r4927, _i4928);
	}

	public function _m18072( _n12748:Serializable,  _c12749:T1229):Void
	{
		var _v4936:Int = _c12749._m17572();
		_c12749._m17573(2);
		var _n4937:Int = 0;
		var _u4938:Bool = false;
		var _a13055:NuggetaException = (cast _n12748);
		if (_a13055.isMessageIdSet() == true) 
		{
			_u4938 = T1228._m18236(_a13055.getMessageId(), (cast 0), _c12749);
			if (_u4938) 
			{
				_n4937++;
			}
		}
		if (_a13055.isRequestIdSet() == true) 
		{
			_u4938 = T1228._m18236(_a13055.getRequestId(), (cast 1), _c12749);
			if (_u4938) 
			{
				_n4937++;
			}
		}
		if (_a13055.isErrorCodeSet() == true) 
		{
			_u4938 = T1228._m18237(this, _a13055.getErrorCode(), (cast 3), _c12749);
			if (_u4938) 
			{
				_n4937++;
			}
		}
		if (_a13055.isReasonSet() == true) 
		{
			_u4938 = T1228._m18236(_a13055.getReason(), (cast 4), _c12749);
			if (_u4938) 
			{
				_n4937++;
			}
		}
		_c12749._m17576(_v4936, _n4937);
	}

	public function _m18073( _e12760:Serializable,  _s12761:T1229):Void
	{
		var _b4940:Int = _s12761._m17572();
		_s12761._m17573(2);
		var _v4941:Int = 0;
		var _m4942:Bool = false;
		var _w13061:NCoinPackage = (cast _e12760);
		if (_w13061.isstoreIdSet() == true) 
		{
			_m4942 = T1228._m18236(_w13061.getStoreId(), (cast 0), _s12761);
			if (_m4942) 
			{
				_v4941++;
			}
		}
		if (_w13061.isCoinPackageIdSet() == true) 
		{
			_m4942 = T1228._m18236(_w13061.getCoinPackageId(), (cast 2), _s12761);
			if (_m4942) 
			{
				_v4941++;
			}
		}
		if (_w13061.isVirtualValueSet() == true) 
		{
			_m4942 = T1228._m18243(_w13061.getVirtualValue(), (cast 3), _s12761);
			if (_m4942) 
			{
				_v4941++;
			}
		}
		if (_w13061.isProductIdSet() == true) 
		{
			_m4942 = T1228._m18236(_w13061.getProductId(), (cast 4), _s12761);
			if (_m4942) 
			{
				_v4941++;
			}
		}
		_s12761._m17576(_b4940, _v4941);
	}

	public function _m18074( _k12772:Serializable,  _o12773:T1229):Void
	{
		var _o4944:Int = _o12773._m17572();
		_o12773._m17573(2);
		var _o4945:Int = 0;
		var _f4946:Bool = false;
		var _a13067:BuyProductUrl = (cast _k12772);
		if (_a13067.isMessageIdSet() == true) 
		{
			_f4946 = T1228._m18236(_a13067.getMessageId(), (cast 0), _o12773);
			if (_f4946) 
			{
				_o4945++;
			}
		}
		if (_a13067.isRequestIdSet() == true) 
		{
			_f4946 = T1228._m18236(_a13067.getRequestId(), (cast 1), _o12773);
			if (_f4946) 
			{
				_o4945++;
			}
		}
		if (_a13067.isurlSet() == true) 
		{
			_f4946 = T1228._m18236(_a13067.getUrl(), (cast 3), _o12773);
			if (_f4946) 
			{
				_o4945++;
			}
		}
		_o12773._m17576(_o4944, _o4945);
	}

	public function _m18075( _m12778:Serializable,  _f12779:T1229):Void
	{
		var _e4948:Int = _f12779._m17572();
		_f12779._m17573(2);
		var _b4949:Int = 0;
		var _x4950:Bool = false;
		var _y13073:BuyProductNotification = (cast _m12778);
		if (_y13073.isMessageIdSet() == true) 
		{
			_x4950 = T1228._m18236(_y13073.getMessageId(), (cast 0), _f12779);
			if (_x4950) 
			{
				_b4949++;
			}
		}
		if (_y13073.isRequestIdSet() == true) 
		{
			_x4950 = T1228._m18236(_y13073.getRequestId(), (cast 1), _f12779);
			if (_x4950) 
			{
				_b4949++;
			}
		}
		_f12779._m17576(_e4948, _b4949);
	}

	public function _m18076( _g12787:Serializable,  _b12788:T1229):Void
	{
		var _p4952:Int = _b12788._m17572();
		_b12788._m17573(2);
		var _p4953:Int = 0;
		var _l4954:Bool = false;
		var _d13079:NMatchMakingConditions = (cast _g12787);
		if (_d13079.isstoreIdSet() == true) 
		{
			_l4954 = T1228._m18236(_d13079.getStoreId(), (cast 0), _b12788);
			if (_l4954) 
			{
				_p4953++;
			}
		}
		if (_d13079.isMatchMakingTypeSet() == true) 
		{
			_l4954 = T1228._m18237(this, _d13079.getMatchMakingType(), (cast 2), _b12788);
			if (_l4954) 
			{
				_p4953++;
			}
		}
		_b12788._m17576(_p4952, _p4953);
	}

	public function _m18077( _c12799:Serializable,  _b12800:T1229):Void
	{
		var _p4956:Int = _b12800._m17572();
		_b12800._m17573(2);
		var _c4957:Int = 0;
		var _f4958:Bool = false;
		var _f13085:OpenConnection = (cast _c12799);
		if (_f13085.isMessageIdSet() == true) 
		{
			_f4958 = T1228._m18236(_f13085.getMessageId(), (cast 0), _b12800);
			if (_f4958) 
			{
				_c4957++;
			}
		}
		if (_f13085.isRequestIdSet() == true) 
		{
			_f4958 = T1228._m18236(_f13085.getRequestId(), (cast 1), _b12800);
			if (_f4958) 
			{
				_c4957++;
			}
		}
		if (_f13085.isIpAddressSet() == true) 
		{
			_f4958 = T1228._m18236(_f13085.getIpAddress(), (cast 3), _b12800);
			if (_f4958) 
			{
				_c4957++;
			}
		}
		if (_f13085.isTcpPortSet() == true) 
		{
			_f4958 = T1228._m18241(_f13085.getTcpPort(), (cast 4), _b12800);
			if (_f4958) 
			{
				_c4957++;
			}
		}
		_b12800._m17576(_p4956, _c4957);
	}

	public function _m18078( _h12814:Serializable,  _s12815:T1229):Void
	{
		var _v4960:Int = _s12815._m17572();
		_s12815._m17573(2);
		var _j4961:Int = 0;
		var _y4962:Bool = false;
		var _g13091:ChallengeAccepted = (cast _h12814);
		if (_g13091.isMessageIdSet() == true) 
		{
			_y4962 = T1228._m18236(_g13091.getMessageId(), (cast 0), _s12815);
			if (_y4962) 
			{
				_j4961++;
			}
		}
		if (_g13091.isRequestIdSet() == true) 
		{
			_y4962 = T1228._m18236(_g13091.getRequestId(), (cast 1), _s12815);
			if (_y4962) 
			{
				_j4961++;
			}
		}
		if (_g13091.isChallengeIdSet() == true) 
		{
			_y4962 = T1228._m18236(_g13091.getChallengeId(), (cast 3), _s12815);
			if (_y4962) 
			{
				_j4961++;
			}
		}
		if (_g13091.isgameIdSet() == true) 
		{
			_y4962 = T1228._m18236(_g13091.getGameId(), (cast 4), _s12815);
			if (_y4962) 
			{
				_j4961++;
			}
		}
		_s12815._m17576(_v4960, _j4961);
	}

	public function _m18079( _b12829:Serializable,  _w12830:T1229):Void
	{
		var _i4964:Int = _w12830._m17572();
		_w12830._m17573(2);
		var _d4965:Int = 0;
		var _k4966:Bool = false;
		var _k13097:ChallengeRefused = (cast _b12829);
		if (_k13097.isMessageIdSet() == true) 
		{
			_k4966 = T1228._m18236(_k13097.getMessageId(), (cast 0), _w12830);
			if (_k4966) 
			{
				_d4965++;
			}
		}
		if (_k13097.isstoreIdSet() == true) 
		{
			_k4966 = T1228._m18236(_k13097.getStoreId(), (cast 1), _w12830);
			if (_k4966) 
			{
				_d4965++;
			}
		}
		if (_k13097.isRequestIdSet() == true) 
		{
			_k4966 = T1228._m18236(_k13097.getRequestId(), (cast 6), _w12830);
			if (_k4966) 
			{
				_d4965++;
			}
		}
		if (_k13097.isChallengeIdSet() == true) 
		{
			_k4966 = T1228._m18236(_k13097.getChallengeId(), (cast 9), _w12830);
			if (_k4966) 
			{
				_d4965++;
			}
		}
		if (_k13097.isReasonSet() == true) 
		{
			_k4966 = T1228._m18236(_k13097.getReason(), (cast 10), _w12830);
			if (_k4966) 
			{
				_d4965++;
			}
		}
		_w12830._m17576(_i4964, _d4965);
	}

	public function _m18080( _p12844:Serializable,  _j12845:T1229):Void
	{
		var _w12846:Int = _j12845._m17572();
		_j12845._m17573(2);
		var _z12847:Int = 0;
		var _q12848:Bool = false;
		var _w13103:PlayerMessage = (cast _p12844);
		if (_w13103.isMessageIdSet() == true) 
		{
			_q12848 = T1228._m18236(_w13103.getMessageId(), (cast 0), _j12845);
			if (_q12848) 
			{
				_z12847++;
			}
		}
		if (_w13103.isstoreIdSet() == true) 
		{
			_q12848 = T1228._m18236(_w13103.getStoreId(), (cast 1), _j12845);
			if (_q12848) 
			{
				_z12847++;
			}
		}
		if (_w13103.isRequestIdSet() == true) 
		{
			_q12848 = T1228._m18236(_w13103.getRequestId(), (cast 6), _j12845);
			if (_q12848) 
			{
				_z12847++;
			}
		}
		if (_w13103.isplayerIdSet() == true) 
		{
			_q12848 = T1228._m18236(_w13103.getPlayerId(), (cast 9), _j12845);
			if (_q12848) 
			{
				_z12847++;
			}
		}
		if (_w13103.ismessageSet() == true) 
		{
			_q12848 = T1228._m18237(this, _w13103.getMessage(), (cast 10), _j12845);
			if (_q12848) 
			{
				_z12847++;
			}
		}
		_j12845._m17576(_w12846, _z12847);
	}

	public function _m18081( serializable:Serializable,  buff:T1229):Void
	{
		var _w4972:Int = buff._m17572();
		buff._m17573(2);
		var _h4973:Int = 0;
		var _b4974:Bool = false;
		var _v13109:NRawMessage = (cast serializable);
		if (_v13109.isMessageIdSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getMessageId(), (cast 0), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		if (_v13109.isSenderIdSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getSenderId(), (cast 1), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		if (_v13109.isstoreIdSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getStoreId(), (cast 2), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		if (_v13109.isRequestIdSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getRequestId(), (cast 7), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		if (_v13109.isgameIdSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getGameId(), (cast 10), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		if (_v13109.iscontentSet() == true) 
		{
			_b4974 = T1228._m18236(_v13109.getContent(), (cast 11), buff);
			if (_b4974) 
			{
				_h4973++;
			}
		}
		buff._m17576(_w4972, _h4973);
	}

	public function _m18082( serializable:Serializable,  buff:T1229):Void
	{
		var _x4976:Int = buff._m17572();
		buff._m17573(2);
		var _x4977:Int = 0;
		var _j4978:Bool = false;
		var _g13115:SessionExpired = (cast serializable);
		if (_g13115.isMessageIdSet() == true) 
		{
			_j4978 = T1228._m18236(_g13115.getMessageId(), (cast 0), buff);
			if (_j4978) 
			{
				_x4977++;
			}
		}
		if (_g13115.isRequestIdSet() == true) 
		{
			_j4978 = T1228._m18236(_g13115.getRequestId(), (cast 1), buff);
			if (_j4978) 
			{
				_x4977++;
			}
		}
		if (_g13115.issessionIdSet() == true) 
		{
			_j4978 = T1228._m18236(_g13115.getSessionId(), (cast 3), buff);
			if (_j4978) 
			{
				_x4977++;
			}
		}
		buff._m17576(_x4976, _x4977);
	}

	public function _m18083( serializable:Serializable,  buff:T1229):Void
	{
		var _j4980:Int = buff._m17572();
		buff._m17573(2);
		var _v4981:Int = 0;
		var _b4982:Bool = false;
		var _q13121:GameMessageError = (cast serializable);
		if (_q13121.isMessageIdSet() == true) 
		{
			_b4982 = T1228._m18236(_q13121.getMessageId(), (cast 0), buff);
			if (_b4982) 
			{
				_v4981++;
			}
		}
		if (_q13121.isRequestIdSet() == true) 
		{
			_b4982 = T1228._m18236(_q13121.getRequestId(), (cast 1), buff);
			if (_b4982) 
			{
				_v4981++;
			}
		}
		if (_q13121.isReasonSet() == true) 
		{
			_b4982 = T1228._m18236(_q13121.getReason(), (cast 3), buff);
			if (_b4982) 
			{
				_v4981++;
			}
		}
		buff._m17576(_j4980, _v4981);
	}

	public function _m18084( _p12850:Serializable,  _y12851:T1229):Void
	{
		var _w12852:Int = _y12851._m17572();
		_y12851._m17573(2);
		var _y12853:Int = 0;
		var _c12854:Bool = false;
		var _w13127:AdDisplayedNotification = (cast _p12850);
		if (_w13127.isMessageIdSet() == true) 
		{
			_c12854 = T1228._m18236(_w13127.getMessageId(), (cast 0), _y12851);
			if (_c12854) 
			{
				_y12853++;
			}
		}
		if (_w13127.isRequestIdSet() == true) 
		{
			_c12854 = T1228._m18236(_w13127.getRequestId(), (cast 1), _y12851);
			if (_c12854) 
			{
				_y12853++;
			}
		}
		_y12851._m17576(_w12852, _y12853);
	}

	public function _m18085( serializable:Serializable,  buff:T1229):Void
	{
		var _y4988:Int = buff._m17572();
		buff._m17573(2);
		var _o4989:Int = 0;
		var _y4990:Bool = false;
		var _r13133:NPlayerProfile = (cast serializable);
		if (_r13133.isstoreIdSet() == true) 
		{
			_y4990 = T1228._m18236(_r13133.getStoreId(), (cast 0), buff);
			if (_y4990) 
			{
				_o4989++;
			}
		}
		if (_r13133.isAvatarSet() == true) 
		{
			_y4990 = T1228._m18236(_r13133.getAvatar(), (cast 2), buff);
			if (_y4990) 
			{
				_o4989++;
			}
		}
		if (_r13133.isPlayerIdSet() == true) 
		{
			_y4990 = T1228._m18236(_r13133.getPlayerId(), (cast 3), buff);
			if (_y4990) 
			{
				_o4989++;
			}
		}
		if (_r13133.isEmailSet() == true) 
		{
			_y4990 = T1228._m18236(_r13133.getEmail(), (cast 4), buff);
			if (_y4990) 
			{
				_o4989++;
			}
		}
		if (_r13133.isCountrySet() == true) 
		{
			_y4990 = T1228._m18236(_r13133.getCountry(), (cast 5), buff);
			if (_y4990) 
			{
				_o4989++;
			}
		}
		if (_r13133.isFriendsSet() == true) 
		{
			var _j13134:NList<NPlayer> = _r13133.getFriends();
			if (_j13134 == null) 
			{
				_y4990 = false;
			} else 
			{
				buff._m17579((cast 7));
				buff._m17580(T1221._l17181);
				var _r13135:Int = buff._m17572();
				buff._m17573(4);
				var _b13136:Int = _j13134.size();
				buff._m17579((cast _b13136));
				for (_q4995 in 0 ... _b13136) 
				{
					var _u4996:NPlayer = _j13134.get(_q4995);
					if (_u4996 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _u4996, buff);
					}
				}
				buff._m17582(_r13135, buff._m17572() - _r13135);
				_y4990 = true;
			}
			if (_y4990) 
			{
				_o4989++;
			}
		}
		buff._m17576(_y4988, _o4989);
	}

	public function _m18086( _f12856:Serializable,  _p12857:T1229):Void
	{
		var _s12858:Int = _p12857._m17572();
		_p12857._m17573(2);
		var _u12859:Int = 0;
		var _m12860:Bool = false;
		var _w13144:PlayerInvitationNotification = (cast _f12856);
		if (_w13144.isMessageIdSet() == true) 
		{
			_m12860 = T1228._m18236(_w13144.getMessageId(), (cast 0), _p12857);
			if (_m12860) 
			{
				_u12859++;
			}
		}
		if (_w13144.isRequestIdSet() == true) 
		{
			_m12860 = T1228._m18236(_w13144.getRequestId(), (cast 1), _p12857);
			if (_m12860) 
			{
				_u12859++;
			}
		}
		if (_w13144.isPlayerInvitationSet() == true) 
		{
			_m12860 = T1228._m18237(this, _w13144.getPlayerInvitation(), (cast 3), _p12857);
			if (_m12860) 
			{
				_u12859++;
			}
		}
		_p12857._m17576(_s12858, _u12859);
	}

	public function _m18087( _l12862:Serializable,  _i12863:T1229):Void
	{
		var _r5001:Int = _i12863._m17572();
		_i12863._m17573(2);
		var _z5002:Int = 0;
		var _w5003:Bool = false;
		var _z13150:FriendChallengeNotification = (cast _l12862);
		if (_z13150.isMessageIdSet() == true) 
		{
			_w5003 = T1228._m18236(_z13150.getMessageId(), (cast 0), _i12863);
			if (_w5003) 
			{
				_z5002++;
			}
		}
		if (_z13150.isRequestIdSet() == true) 
		{
			_w5003 = T1228._m18236(_z13150.getRequestId(), (cast 1), _i12863);
			if (_w5003) 
			{
				_z5002++;
			}
		}
		if (_z13150.isChallengeSet() == true) 
		{
			_w5003 = T1228._m18237(this, _z13150.getChallenge(), (cast 3), _i12863);
			if (_w5003) 
			{
				_z5002++;
			}
		}
		_i12863._m17576(_r5001, _z5002);
	}

	public function _m18088( serializable:Serializable,  buff:T1229):Void
	{
		var _x12864:Int = buff._m17572();
		buff._m17573(2);
		var _m12865:Int = 0;
		var _j12866:Bool = false;
		var _u13156:GameChatNotification = (cast serializable);
		if (_u13156.isMessageIdSet() == true) 
		{
			_j12866 = T1228._m18236(_u13156.getMessageId(), (cast 0), buff);
			if (_j12866) 
			{
				_m12865++;
			}
		}
		if (_u13156.isRequestIdSet() == true) 
		{
			_j12866 = T1228._m18236(_u13156.getRequestId(), (cast 1), buff);
			if (_j12866) 
			{
				_m12865++;
			}
		}
		if (_u13156.isplayerSet() == true) 
		{
			_j12866 = T1228._m18237(this, _u13156.getPlayer(), (cast 3), buff);
			if (_j12866) 
			{
				_m12865++;
			}
		}
		if (_u13156.ismessageSet() == true) 
		{
			_j12866 = T1228._m18236(_u13156.getMessage(), (cast 4), buff);
			if (_j12866) 
			{
				_m12865++;
			}
		}
		buff._m17576(_x12864, _m12865);
	}

	public function _m18089( serializable:Serializable,  buff:T1229):Void
	{
		var _u5009:Int = buff._m17572();
		buff._m17573(2);
		var _n5010:Int = 0;
		var _k5011:Bool = false;
		var _p13162:PublicServer = (cast serializable);
		if (_p13162.isstoreIdSet() == true) 
		{
			_k5011 = T1228._m18236(_p13162.getStoreId(), (cast 0), buff);
			if (_k5011) 
			{
				_n5010++;
			}
		}
		if (_p13162.isIdSet() == true) 
		{
			_k5011 = T1228._m18236(_p13162.getId(), (cast 3), buff);
			if (_k5011) 
			{
				_n5010++;
			}
		}
		if (_p13162.isLocationSet() == true) 
		{
			_k5011 = T1228._m18236(_p13162.getLocation(), (cast 4), buff);
			if (_k5011) 
			{
				_n5010++;
			}
		}
		if (_p13162.isPingSet() == true) 
		{
			_k5011 = T1228._m18243(_p13162.getPing(), (cast 5), buff);
			if (_k5011) 
			{
				_n5010++;
			}
		}
		buff._m17576(_u5009, _n5010);
	}

	public function _m18090( serializable:Serializable,  buff:T1229):Void
	{
		var _z5013:Int = buff._m17572();
		buff._m17573(2);
		var _h5014:Int = 0;
		var _s5015:Bool = false;
		var _q13168:SwitchToServerInformation = (cast serializable);
		if (_q13168.isMessageIdSet() == true) 
		{
			_s5015 = T1228._m18236(_q13168.getMessageId(), (cast 0), buff);
			if (_s5015) 
			{
				_h5014++;
			}
		}
		if (_q13168.isRequestIdSet() == true) 
		{
			_s5015 = T1228._m18236(_q13168.getRequestId(), (cast 1), buff);
			if (_s5015) 
			{
				_h5014++;
			}
		}
		if (_q13168.isAddressSet() == true) 
		{
			_s5015 = T1228._m18236(_q13168.getAddress(), (cast 3), buff);
			if (_s5015) 
			{
				_h5014++;
			}
		}
		buff._m17576(_z5013, _h5014);
	}

	public function _m18091( _l12868:Serializable,  _r12869:T1229):Void
	{
		var _k12870:Int = _r12869._m17572();
		_r12869._m17573(2);
		var _c12871:Int = 0;
		var _b12872:Bool = false;
		var _y13174:MyTurnNotification = (cast _l12868);
		if (_y13174.isMessageIdSet() == true) 
		{
			_b12872 = T1228._m18236(_y13174.getMessageId(), (cast 0), _r12869);
			if (_b12872) 
			{
				_c12871++;
			}
		}
		if (_y13174.isRequestIdSet() == true) 
		{
			_b12872 = T1228._m18236(_y13174.getRequestId(), (cast 1), _r12869);
			if (_b12872) 
			{
				_c12871++;
			}
		}
		if (_y13174.isGameIdSet() == true) 
		{
			_b12872 = T1228._m18236(_y13174.getGameId(), (cast 3), _r12869);
			if (_b12872) 
			{
				_c12871++;
			}
		}
		_r12869._m17576(_k12870, _c12871);
	}

	public function _m18092( serializable:Serializable,  buff:T1229):Void
	{
		var _s5021:Int = buff._m17572();
		buff._m17573(2);
		var _d5022:Int = 0;
		var _e5023:Bool = false;
		var _u13180:PlayerTurnNotification = (cast serializable);
		if (_u13180.isMessageIdSet() == true) 
		{
			_e5023 = T1228._m18236(_u13180.getMessageId(), (cast 0), buff);
			if (_e5023) 
			{
				_d5022++;
			}
		}
		if (_u13180.isRequestIdSet() == true) 
		{
			_e5023 = T1228._m18236(_u13180.getRequestId(), (cast 1), buff);
			if (_e5023) 
			{
				_d5022++;
			}
		}
		if (_u13180.isCurrentPlayerSet() == true) 
		{
			_e5023 = T1228._m18237(this, _u13180.getCurrentPlayer(), (cast 3), buff);
			if (_e5023) 
			{
				_d5022++;
			}
		}
		if (_u13180.isGameIdSet() == true) 
		{
			_e5023 = T1228._m18236(_u13180.getGameId(), (cast 4), buff);
			if (_e5023) 
			{
				_d5022++;
			}
		}
		buff._m17576(_s5021, _d5022);
	}

	public function _m18093( _b12874:Serializable,  _q12875:T1229):Void
	{
		var _l12876:Int = _q12875._m17572();
		_q12875._m17573(2);
		var _n12877:Int = 0;
		var _n12878:Bool = false;
		var _w13186:NStore = (cast _b12874);
		if (_w13186.isstoreIdSet() == true) 
		{
			_n12878 = T1228._m18236(_w13186.getStoreId(), (cast 1), _q12875);
			if (_n12878) 
			{
				_n12877++;
			}
		}
		if (_w13186.isItemsSet() == true) 
		{
			var _y13187:NList<NItem> = _w13186.getItems();
			if (_y13187 == null) 
			{
				_n12878 = false;
			} else 
			{
				_q12875._m17579((cast 2));
				_q12875._m17580(T1221._l17181);
				var _i13188:Int = _q12875._m17572();
				_q12875._m17573(4);
				var _r13189:Int = _y13187.size();
				_q12875._m17579((cast _r13189));
				for (_f5032 in 0 ... _r13189) 
				{
					var _p5033:NItem = _y13187.get(_f5032);
					if (_p5033 == null) 
					{
						_q12875._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _p5033, _q12875);
					}
				}
				_q12875._m17582(_i13188, _q12875._m17572() - _i13188);
				_n12878 = true;
			}
			if (_n12878) 
			{
				_n12877++;
			}
		}
		_q12875._m17576(_l12876, _n12877);
	}

	public function _m18094( serializable:Serializable,  buff:T1229):Void
	{
		var _x5034:Int = buff._m17572();
		buff._m17573(2);
		var _i5035:Int = 0;
		var _j5036:Bool = false;
		var _e13197:NAchievementBoard = (cast serializable);
		if (_e13197.isstoreIdSet() == true) 
		{
			_j5036 = T1228._m18236(_e13197.getStoreId(), (cast 1), buff);
			if (_j5036) 
			{
				_i5035++;
			}
		}
		if (_e13197.isachievementsSet() == true) 
		{
			var _s13198:NList<NAchievement> = _e13197.getAchievements();
			if (_s13198 == null) 
			{
				_j5036 = false;
			} else 
			{
				buff._m17579((cast 2));
				buff._m17580(T1221._l17181);
				var _t13199:Int = buff._m17572();
				buff._m17573(4);
				var _h13200:Int = _s13198.size();
				buff._m17579((cast _h13200));
				for (_n5041 in 0 ... _h13200) 
				{
					var _i5042:NAchievement = _s13198.get(_n5041);
					if (_i5042 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _i5042, buff);
					}
				}
				buff._m17582(_t13199, buff._m17572() - _t13199);
				_j5036 = true;
			}
			if (_j5036) 
			{
				_i5035++;
			}
		}
		buff._m17576(_x5034, _i5035);
	}

	public function _m18095( serializable:Serializable,  buff:T1229):Void
	{
		var _m5043:Int = buff._m17572();
		buff._m17573(2);
		var _i5044:Int = 0;
		var _v5045:Bool = false;
		var _n13208:NLeaderboard = (cast serializable);
		if (_n13208.isIdSet() == true) 
		{
			_v5045 = T1228._m18236(_n13208.getId(), (cast 2), buff);
			if (_v5045) 
			{
				_i5044++;
			}
		}
		if (_n13208.isNameSet() == true) 
		{
			_v5045 = T1228._m18236(_n13208.getName(), (cast 3), buff);
			if (_v5045) 
			{
				_i5044++;
			}
		}
		if (_n13208.isleaderboardEntriesSet() == true) 
		{
			var _x13209:NList<NLeaderboardEntry> = _n13208.getLeaderboardEntries();
			if (_x13209 == null) 
			{
				_v5045 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _r13210:Int = buff._m17572();
				buff._m17573(4);
				var _m13211:Int = _x13209.size();
				buff._m17579((cast _m13211));
				for (_p12895 in 0 ... _m13211) 
				{
					var _e12896:NLeaderboardEntry = _x13209.get(_p12895);
					if (_e12896 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _e12896, buff);
					}
				}
				buff._m17582(_r13210, buff._m17572() - _r13210);
				_v5045 = true;
			}
			if (_v5045) 
			{
				_i5044++;
			}
		}
		buff._m17576(_m5043, _i5044);
	}

	public function _m18096( _e12886:Serializable,  _a12887:T1229):Void
	{
		var _w12888:Int = _a12887._m17572();
		_a12887._m17573(2);
		var _g12889:Int = 0;
		var _a12890:Bool = false;
		var _e13219:TestPrimitiveList = (cast _e12886);
		if (_e13219.isMessageIdSet() == true) 
		{
			_a12890 = T1228._m18236(_e13219.getMessageId(), (cast 0), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isRequestIdSet() == true) 
		{
			_a12890 = T1228._m18236(_e13219.getRequestId(), (cast 1), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isStringListSet() == true) 
		{
			_a12890 = T1228._m18244(this, _e13219.getStringList(), (cast 3), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isIntegerListSet() == true) 
		{
			_a12890 = T1228._m18245(this, _e13219.getIntegerList(), (cast 4), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isShortListSet() == true) 
		{
			_a12890 = T1228._m18246(this, _e13219.getShortList(), (cast 5), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isLongListSet() == true) 
		{
			_a12890 = T1228._m18247(this, _e13219.getLongList(), (cast 6), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isFloatListSet() == true) 
		{
			_a12890 = T1228._m18248(this, _e13219.getFloatList(), (cast 7), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isDoubleListSet() == true) 
		{
			_a12890 = T1228._m18249(this, _e13219.getDoubleList(), (cast 8), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isBooleanListSet() == true) 
		{
			_a12890 = T1228._m18250(this, _e13219.getBooleanList(), (cast 9), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		if (_e13219.isPlayerMatrix2Set() == true) 
		{
			_a12890 = T1228._m18251(this, _e13219.getPlayerMatrix2(), (cast 14), _a12887);
			if (_a12890) 
			{
				_g12889++;
			}
		}
		_a12887._m17576(_w12888, _g12889);
	}

	public function _m18097( serializable:Serializable,  buff:T1229):Void
	{
		var _b5056:Int = buff._m17572();
		buff._m17573(2);
		var _n5057:Int = 0;
		var _f5058:Bool = false;
		var _n13225:OpenUrl = (cast serializable);
		if (_n13225.isMessageIdSet() == true) 
		{
			_f5058 = T1228._m18236(_n13225.getMessageId(), (cast 0), buff);
			if (_f5058) 
			{
				_n5057++;
			}
		}
		if (_n13225.isRequestIdSet() == true) 
		{
			_f5058 = T1228._m18236(_n13225.getRequestId(), (cast 1), buff);
			if (_f5058) 
			{
				_n5057++;
			}
		}
		if (_n13225.isurlSet() == true) 
		{
			_f5058 = T1228._m18236(_n13225.getUrl(), (cast 3), buff);
			if (_f5058) 
			{
				_n5057++;
			}
		}
		buff._m17576(_b5056, _n5057);
	}

	public function _m18098( serializable:Serializable,  buff:T1229):Void
	{
		var _c5060:Int = buff._m17572();
		buff._m17573(2);
		var _f5061:Int = 0;
		var _s5062:Bool = false;
		var _f13231:TurnBasedContext = (cast serializable);
		if (_f13231.isMessageIdSet() == true) 
		{
			_s5062 = T1228._m18236(_f13231.getMessageId(), (cast 0), buff);
			if (_s5062) 
			{
				_f5061++;
			}
		}
		if (_f13231.isRequestIdSet() == true) 
		{
			_s5062 = T1228._m18236(_f13231.getRequestId(), (cast 1), buff);
			if (_s5062) 
			{
				_f5061++;
			}
		}
		if (_f13231.isCurrentPlayerSet() == true) 
		{
			_s5062 = T1228._m18237(this, _f13231.getCurrentPlayer(), (cast 3), buff);
			if (_s5062) 
			{
				_f5061++;
			}
		}
		buff._m17576(_c5060, _f5061);
	}

	public function _m18099( _y12897:Serializable,  _m12898:T1229):Void
	{
		var _q12899:Int = _m12898._m17572();
		_m12898._m17573(2);
		var _w12900:Int = 0;
		var _p12901:Bool = false;
		var _i13237:DisconnectedContext = (cast _y12897);
		if (_i13237.isMessageIdSet() == true) 
		{
			_p12901 = T1228._m18236(_i13237.getMessageId(), (cast 0), _m12898);
			if (_p12901) 
			{
				_w12900++;
			}
		}
		if (_i13237.isRequestIdSet() == true) 
		{
			_p12901 = T1228._m18236(_i13237.getRequestId(), (cast 1), _m12898);
			if (_p12901) 
			{
				_w12900++;
			}
		}
		if (_i13237.isParticipantsSet() == true) 
		{
			var _m13238:NList<NPlayer> = _i13237.getParticipants();
			if (_m13238 == null) 
			{
				_p12901 = false;
			} else 
			{
				_m12898._m17579((cast 3));
				_m12898._m17580(T1221._l17181);
				var _e13239:Int = _m12898._m17572();
				_m12898._m17573(4);
				var _u13240:Int = _m13238.size();
				_m12898._m17579((cast _u13240));
				for (_y12965 in 0 ... _u13240) 
				{
					var _i12966:NPlayer = _m13238.get(_y12965);
					if (_i12966 == null) 
					{
						_m12898._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _i12966, _m12898);
					}
				}
				_m12898._m17582(_e13239, _m12898._m17572() - _e13239);
				_p12901 = true;
			}
			if (_p12901) 
			{
				_w12900++;
			}
		}
		_m12898._m17576(_q12899, _w12900);
	}

	public function _m18100( serializable:Serializable,  buff:T1229):Void
	{
		var _s5073:Int = buff._m17572();
		buff._m17573(2);
		var _u5074:Int = 0;
		var _a5075:Bool = false;
		var _o13248:OpenUrlData = (cast serializable);
		if (_o13248.isMessageIdSet() == true) 
		{
			_a5075 = T1228._m18236(_o13248.getMessageId(), (cast 0), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		if (_o13248.isRequestIdSet() == true) 
		{
			_a5075 = T1228._m18236(_o13248.getRequestId(), (cast 1), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		if (_o13248.isSessionIdSet() == true) 
		{
			_a5075 = T1228._m18236(_o13248.getSessionId(), (cast 3), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		if (_o13248.isCallbackIdSet() == true) 
		{
			_a5075 = T1228._m18236(_o13248.getCallbackId(), (cast 4), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		if (_o13248.isCallbackUrlSet() == true) 
		{
			_a5075 = T1228._m18236(_o13248.getCallbackUrl(), (cast 5), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		if (_o13248.isThirdPartySourceSet() == true) 
		{
			_a5075 = T1228._m18237(this, _o13248.getThirdPartySource(), (cast 6), buff);
			if (_a5075) 
			{
				_u5074++;
			}
		}
		buff._m17576(_s5073, _u5074);
	}

	public function _m18101( serializable:Serializable,  buff:T1229):Void
	{
		var _z5077:Int = buff._m17572();
		buff._m17573(2);
		var _t5078:Int = 0;
		var _g5079:Bool = false;
		var _x13254:HeartBeatRequest = (cast serializable);
		if (_x13254.isMessageIdSet() == true) 
		{
			_g5079 = T1228._m18236(_x13254.getMessageId(), (cast 0), buff);
			if (_g5079) 
			{
				_t5078++;
			}
		}
		if (_x13254.isRequestIdSet() == true) 
		{
			_g5079 = T1228._m18236(_x13254.getRequestId(), (cast 1), buff);
			if (_g5079) 
			{
				_t5078++;
			}
		}
		if (_x13254.isCounterSet() == true) 
		{
			_g5079 = T1228._m18241(_x13254.getCounter(), (cast 3), buff);
			if (_g5079) 
			{
				_t5078++;
			}
		}
		buff._m17576(_z5077, _t5078);
	}

	public function _m18102( serializable:Serializable,  buff:T1229):Void
	{
		var _e5081:Int = buff._m17572();
		buff._m17573(2);
		var _o5082:Int = 0;
		var _n5083:Bool = false;
		var _e13260:HeartBeatResponse = (cast serializable);
		if (_e13260.isMessageIdSet() == true) 
		{
			_n5083 = T1228._m18236(_e13260.getMessageId(), (cast 0), buff);
			if (_n5083) 
			{
				_o5082++;
			}
		}
		if (_e13260.isRequestIdSet() == true) 
		{
			_n5083 = T1228._m18236(_e13260.getRequestId(), (cast 1), buff);
			if (_n5083) 
			{
				_o5082++;
			}
		}
		if (_e13260.isCounterSet() == true) 
		{
			_n5083 = T1228._m18241(_e13260.getCounter(), (cast 3), buff);
			if (_n5083) 
			{
				_o5082++;
			}
		}
		buff._m17576(_e5081, _o5082);
	}

	public function _m18103( serializable:Serializable,  buff:T1229):Void
	{
		var _t5085:Int = buff._m17572();
		buff._m17573(2);
		var _r5086:Int = 0;
		var _t5087:Bool = false;
		var _n13266:NLeaderboardEntry = (cast serializable);
		if (_n13266.isstoreIdSet() == true) 
		{
			_t5087 = T1228._m18236(_n13266.getStoreId(), (cast 1), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		if (_n13266.isDataSet() == true) 
		{
			_t5087 = T1228._m18236(_n13266.getData(), (cast 2), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		if (_n13266.isIdSet() == true) 
		{
			_t5087 = T1228._m18236(_n13266.getId(), (cast 3), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		if (_n13266.isTimestampSet() == true) 
		{
			_t5087 = T1228._m18239(_n13266.getTimestamp(), (cast 4), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		if (_n13266.isPlayerSet() == true) 
		{
			_t5087 = T1228._m18237(this, _n13266.getPlayer(), (cast 5), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		if (_n13266.isScoreSet() == true) 
		{
			_t5087 = T1228._m18237(this, _n13266.getScore(), (cast 6), buff);
			if (_t5087) 
			{
				_r5086++;
			}
		}
		buff._m17576(_t5085, _r5086);
	}

	public function _m18104( _l12908:Serializable,  _c12909:T1229):Void
	{
		var _r12910:Int = _c12909._m17572();
		_c12909._m17573(2);
		var _f12911:Int = 0;
		var _f12912:Bool = false;
		var _k13272:StartDetails = (cast _l12908);
		if (_k13272.isstoreIdSet() == true) 
		{
			_f12912 = T1228._m18236(_k13272.getStoreId(), (cast 1), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isDataSet() == true) 
		{
			_f12912 = T1228._m18236(_k13272.getData(), (cast 2), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isUseDefaultImplSet() == true) 
		{
			_f12912 = T1228._m18238(_k13272.isUseDefaultImpl(), (cast 3), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isCurrentVersionSet() == true) 
		{
			_f12912 = T1228._m18241(_k13272.getCurrentVersion(), (cast 4), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isNextVersionSet() == true) 
		{
			_f12912 = T1228._m18241(_k13272.getNextVersion(), (cast 5), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isTitleSet() == true) 
		{
			_f12912 = T1228._m18236(_k13272.getTitle(), (cast 6), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isTextSet() == true) 
		{
			_f12912 = T1228._m18236(_k13272.getText(), (cast 7), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		if (_k13272.isUrlSet() == true) 
		{
			_f12912 = T1228._m18236(_k13272.getUrl(), (cast 8), _c12909);
			if (_f12912) 
			{
				_f12911++;
			}
		}
		_c12909._m17576(_r12910, _f12911);
	}

	public function _m18105( serializable:Serializable,  buff:T1229):Void
	{
		var _u5093:Int = buff._m17572();
		buff._m17573(2);
		var _c5094:Int = 0;
		var _v5095:Bool = false;
		var _b13278:StartRequest = (cast serializable);
		if (_b13278.isMessageIdSet() == true) 
		{
			_v5095 = T1228._m18236(_b13278.getMessageId(), (cast 0), buff);
			if (_v5095) 
			{
				_c5094++;
			}
		}
		if (_b13278.isRequestIdSet() == true) 
		{
			_v5095 = T1228._m18236(_b13278.getRequestId(), (cast 1), buff);
			if (_v5095) 
			{
				_c5094++;
			}
		}
		buff._m17576(_u5093, _c5094);
	}

	public function _m18106( _y12914:Serializable,  _s12915:T1229):Void
	{
		var _e12916:Int = _s12915._m17572();
		_s12915._m17573(2);
		var _w12917:Int = 0;
		var _i12918:Bool = false;
		var _p13284:StartResponse = (cast _y12914);
		if (_p13284.isMessageIdSet() == true) 
		{
			_i12918 = T1228._m18236(_p13284.getMessageId(), (cast 0), _s12915);
			if (_i12918) 
			{
				_w12917++;
			}
		}
		if (_p13284.isRequestIdSet() == true) 
		{
			_i12918 = T1228._m18236(_p13284.getRequestId(), (cast 1), _s12915);
			if (_i12918) 
			{
				_w12917++;
			}
		}
		if (_p13284.isStartStatusSet() == true) 
		{
			_i12918 = T1228._m18237(this, _p13284.getStartStatus(), (cast 3), _s12915);
			if (_i12918) 
			{
				_w12917++;
			}
		}
		if (_p13284.isStartDetailsSet() == true) 
		{
			_i12918 = T1228._m18237(this, _p13284.getStartDetails(), (cast 4), _s12915);
			if (_i12918) 
			{
				_w12917++;
			}
		}
		_s12915._m17576(_e12916, _w12917);
	}

	public function _m18107( serializable:Serializable,  buff:T1229):Void
	{
		var _w5101:Int = buff._m17572();
		buff._m17573(2);
		var _h5102:Int = 0;
		var _b5103:Bool = false;
		var _x13290:InvitePlayerResponse = (cast serializable);
		if (_x13290.isMessageIdSet() == true) 
		{
			_b5103 = T1228._m18236(_x13290.getMessageId(), (cast 0), buff);
			if (_b5103) 
			{
				_h5102++;
			}
		}
		if (_x13290.isRequestIdSet() == true) 
		{
			_b5103 = T1228._m18236(_x13290.getRequestId(), (cast 1), buff);
			if (_b5103) 
			{
				_h5102++;
			}
		}
		if (_x13290.isInvitePlayerStatusSet() == true) 
		{
			_b5103 = T1228._m18237(this, _x13290.getInvitePlayerStatus(), (cast 3), buff);
			if (_b5103) 
			{
				_h5102++;
			}
		}
		buff._m17576(_w5101, _h5102);
	}

	public function _m18108( serializable:Serializable,  buff:T1229):Void
	{
		var _u5105:Int = buff._m17572();
		buff._m17573(2);
		var _m5106:Int = 0;
		var _m5107:Bool = false;
		var _m13296:InvitePlayerByIdRequest = (cast serializable);
		if (_m13296.isMessageIdSet() == true) 
		{
			_m5107 = T1228._m18236(_m13296.getMessageId(), (cast 0), buff);
			if (_m5107) 
			{
				_m5106++;
			}
		}
		if (_m13296.isRequestIdSet() == true) 
		{
			_m5107 = T1228._m18236(_m13296.getRequestId(), (cast 1), buff);
			if (_m5107) 
			{
				_m5106++;
			}
		}
		if (_m13296.isIdSet() == true) 
		{
			_m5107 = T1228._m18236(_m13296.getId(), (cast 3), buff);
			if (_m5107) 
			{
				_m5106++;
			}
		}
		buff._m17576(_u5105, _m5106);
	}

	public function _m18109( _x12920:Serializable,  _v12921:T1229):Void
	{
		var _f12922:Int = _v12921._m17572();
		_v12921._m17573(2);
		var _x12923:Int = 0;
		var _y12924:Bool = false;
		var _g13302:InvitePlayerByLoginRequest = (cast _x12920);
		if (_g13302.isMessageIdSet() == true) 
		{
			_y12924 = T1228._m18236(_g13302.getMessageId(), (cast 0), _v12921);
			if (_y12924) 
			{
				_x12923++;
			}
		}
		if (_g13302.isRequestIdSet() == true) 
		{
			_y12924 = T1228._m18236(_g13302.getRequestId(), (cast 1), _v12921);
			if (_y12924) 
			{
				_x12923++;
			}
		}
		if (_g13302.isLoginSet() == true) 
		{
			_y12924 = T1228._m18236(_g13302.getLogin(), (cast 3), _v12921);
			if (_y12924) 
			{
				_x12923++;
			}
		}
		_v12921._m17576(_f12922, _x12923);
	}

	public function _m18110( serializable:Serializable,  buff:T1229):Void
	{
		var _p5113:Int = buff._m17572();
		buff._m17573(2);
		var _k5114:Int = 0;
		var _d5115:Bool = false;
		var _u13308:SignUpResponse = (cast serializable);
		if (_u13308.isMessageIdSet() == true) 
		{
			_d5115 = T1228._m18236(_u13308.getMessageId(), (cast 0), buff);
			if (_d5115) 
			{
				_k5114++;
			}
		}
		if (_u13308.isRequestIdSet() == true) 
		{
			_d5115 = T1228._m18236(_u13308.getRequestId(), (cast 1), buff);
			if (_d5115) 
			{
				_k5114++;
			}
		}
		if (_u13308.isSignUpStatusSet() == true) 
		{
			_d5115 = T1228._m18237(this, _u13308.getSignUpStatus(), (cast 3), buff);
			if (_d5115) 
			{
				_k5114++;
			}
		}
		if (_u13308.isPlayerSet() == true) 
		{
			_d5115 = T1228._m18237(this, _u13308.getPlayer(), (cast 4), buff);
			if (_d5115) 
			{
				_k5114++;
			}
		}
		buff._m17576(_p5113, _k5114);
	}

	public function _m18111( _e12926:Serializable,  _p12927:T1229):Void
	{
		var _q12928:Int = _p12927._m17572();
		_p12927._m17573(2);
		var _e12929:Int = 0;
		var _u12930:Bool = false;
		var _f13314:SignUpRequest = (cast _e12926);
		if (_f13314.isMessageIdSet() == true) 
		{
			_u12930 = T1228._m18236(_f13314.getMessageId(), (cast 0), _p12927);
			if (_u12930) 
			{
				_e12929++;
			}
		}
		if (_f13314.isRequestIdSet() == true) 
		{
			_u12930 = T1228._m18236(_f13314.getRequestId(), (cast 1), _p12927);
			if (_u12930) 
			{
				_e12929++;
			}
		}
		if (_f13314.isLoginSet() == true) 
		{
			_u12930 = T1228._m18236(_f13314.getLogin(), (cast 3), _p12927);
			if (_u12930) 
			{
				_e12929++;
			}
		}
		if (_f13314.isPasswordSet() == true) 
		{
			_u12930 = T1228._m18236(_f13314.getPassword(), (cast 4), _p12927);
			if (_u12930) 
			{
				_e12929++;
			}
		}
		if (_f13314.isPlayerProfileSet() == true) 
		{
			_u12930 = T1228._m18237(this, _f13314.getPlayerProfile(), (cast 5), _p12927);
			if (_u12930) 
			{
				_e12929++;
			}
		}
		_p12927._m17576(_q12928, _e12929);
	}

	public function _m18112( serializable:Serializable,  buff:T1229):Void
	{
		var _k5121:Int = buff._m17572();
		buff._m17573(2);
		var _k5122:Int = 0;
		var _l5123:Bool = false;
		var _n13320:ForgotPasswordResponse = (cast serializable);
		if (_n13320.isMessageIdSet() == true) 
		{
			_l5123 = T1228._m18236(_n13320.getMessageId(), (cast 0), buff);
			if (_l5123) 
			{
				_k5122++;
			}
		}
		if (_n13320.isRequestIdSet() == true) 
		{
			_l5123 = T1228._m18236(_n13320.getRequestId(), (cast 1), buff);
			if (_l5123) 
			{
				_k5122++;
			}
		}
		if (_n13320.isForgotPasswordStatusSet() == true) 
		{
			_l5123 = T1228._m18237(this, _n13320.getForgotPasswordStatus(), (cast 3), buff);
			if (_l5123) 
			{
				_k5122++;
			}
		}
		buff._m17576(_k5121, _k5122);
	}

	public function _m18113( _m12932:Serializable,  _e12933:T1229):Void
	{
		var _n12934:Int = _e12933._m17572();
		_e12933._m17573(2);
		var _f12935:Int = 0;
		var _d12936:Bool = false;
		var _a13326:ForgotPasswordByLoginRequest = (cast _m12932);
		if (_a13326.isMessageIdSet() == true) 
		{
			_d12936 = T1228._m18236(_a13326.getMessageId(), (cast 0), _e12933);
			if (_d12936) 
			{
				_f12935++;
			}
		}
		if (_a13326.isRequestIdSet() == true) 
		{
			_d12936 = T1228._m18236(_a13326.getRequestId(), (cast 1), _e12933);
			if (_d12936) 
			{
				_f12935++;
			}
		}
		if (_a13326.isLoginSet() == true) 
		{
			_d12936 = T1228._m18236(_a13326.getLogin(), (cast 3), _e12933);
			if (_d12936) 
			{
				_f12935++;
			}
		}
		_e12933._m17576(_n12934, _f12935);
	}

	public function _m18114( serializable:Serializable,  buff:T1229):Void
	{
		var _v5129:Int = buff._m17572();
		buff._m17573(2);
		var _r5130:Int = 0;
		var _o5131:Bool = false;
		var _j13332:ForgotPasswordByEmailRequest = (cast serializable);
		if (_j13332.isMessageIdSet() == true) 
		{
			_o5131 = T1228._m18236(_j13332.getMessageId(), (cast 0), buff);
			if (_o5131) 
			{
				_r5130++;
			}
		}
		if (_j13332.isRequestIdSet() == true) 
		{
			_o5131 = T1228._m18236(_j13332.getRequestId(), (cast 1), buff);
			if (_o5131) 
			{
				_r5130++;
			}
		}
		if (_j13332.isEmailSet() == true) 
		{
			_o5131 = T1228._m18236(_j13332.getEmail(), (cast 3), buff);
			if (_o5131) 
			{
				_r5130++;
			}
		}
		buff._m17576(_v5129, _r5130);
	}

	public function _m18115( _n12938:Serializable,  _t12939:T1229):Void
	{
		var _q12940:Int = _t12939._m17572();
		_t12939._m17573(2);
		var _h12941:Int = 0;
		var _b12942:Bool = false;
		var _h13338:LoginResponse = (cast _n12938);
		if (_h13338.isMessageIdSet() == true) 
		{
			_b12942 = T1228._m18236(_h13338.getMessageId(), (cast 0), _t12939);
			if (_b12942) 
			{
				_h12941++;
			}
		}
		if (_h13338.isRequestIdSet() == true) 
		{
			_b12942 = T1228._m18236(_h13338.getRequestId(), (cast 1), _t12939);
			if (_b12942) 
			{
				_h12941++;
			}
		}
		if (_h13338.isLoginStatusSet() == true) 
		{
			_b12942 = T1228._m18237(this, _h13338.getLoginStatus(), (cast 3), _t12939);
			if (_b12942) 
			{
				_h12941++;
			}
		}
		if (_h13338.isPlayerSet() == true) 
		{
			_b12942 = T1228._m18237(this, _h13338.getPlayer(), (cast 4), _t12939);
			if (_b12942) 
			{
				_h12941++;
			}
		}
		_t12939._m17576(_q12940, _h12941);
	}

	public function _m18116( serializable:Serializable,  buff:T1229):Void
	{
		var _p5137:Int = buff._m17572();
		buff._m17573(2);
		var _r5138:Int = 0;
		var _u5139:Bool = false;
		var _i13344:LoginRequest = (cast serializable);
		if (_i13344.isMessageIdSet() == true) 
		{
			_u5139 = T1228._m18236(_i13344.getMessageId(), (cast 0), buff);
			if (_u5139) 
			{
				_r5138++;
			}
		}
		if (_i13344.isRequestIdSet() == true) 
		{
			_u5139 = T1228._m18236(_i13344.getRequestId(), (cast 1), buff);
			if (_u5139) 
			{
				_r5138++;
			}
		}
		if (_i13344.isLoginSet() == true) 
		{
			_u5139 = T1228._m18236(_i13344.getLogin(), (cast 3), buff);
			if (_u5139) 
			{
				_r5138++;
			}
		}
		if (_i13344.isPasswordSet() == true) 
		{
			_u5139 = T1228._m18236(_i13344.getPassword(), (cast 4), buff);
			if (_u5139) 
			{
				_r5138++;
			}
		}
		if (_i13344.isClientApplicationSet() == true) 
		{
			_u5139 = T1228._m18237(this, _i13344.getClientApplication(), (cast 5), buff);
			if (_u5139) 
			{
				_r5138++;
			}
		}
		buff._m17576(_p5137, _r5138);
	}

	public function _m18117( serializable:Serializable,  buff:T1229):Void
	{
		var _i5141:Int = buff._m17572();
		buff._m17573(2);
		var _s5142:Int = 0;
		var _n5143:Bool = false;
		var _d13350:SavePlayerProfileResponse = (cast serializable);
		if (_d13350.isMessageIdSet() == true) 
		{
			_n5143 = T1228._m18236(_d13350.getMessageId(), (cast 0), buff);
			if (_n5143) 
			{
				_s5142++;
			}
		}
		if (_d13350.isRequestIdSet() == true) 
		{
			_n5143 = T1228._m18236(_d13350.getRequestId(), (cast 1), buff);
			if (_n5143) 
			{
				_s5142++;
			}
		}
		if (_d13350.isSavePlayerProfileStatusSet() == true) 
		{
			_n5143 = T1228._m18237(this, _d13350.getSavePlayerProfileStatus(), (cast 3), buff);
			if (_n5143) 
			{
				_s5142++;
			}
		}
		buff._m17576(_i5141, _s5142);
	}

	public function _m18118( _y12944:Serializable,  _y12945:T1229):Void
	{
		var _d12946:Int = _y12945._m17572();
		_y12945._m17573(2);
		var _p12947:Int = 0;
		var _q12948:Bool = false;
		var _e13356:SavePlayerProfileRequest = (cast _y12944);
		if (_e13356.isMessageIdSet() == true) 
		{
			_q12948 = T1228._m18236(_e13356.getMessageId(), (cast 0), _y12945);
			if (_q12948) 
			{
				_p12947++;
			}
		}
		if (_e13356.isRequestIdSet() == true) 
		{
			_q12948 = T1228._m18236(_e13356.getRequestId(), (cast 1), _y12945);
			if (_q12948) 
			{
				_p12947++;
			}
		}
		if (_e13356.isProfileSet() == true) 
		{
			_q12948 = T1228._m18237(this, _e13356.getProfile(), (cast 3), _y12945);
			if (_q12948) 
			{
				_p12947++;
			}
		}
		_y12945._m17576(_d12946, _p12947);
	}

	public function _m18119( serializable:Serializable,  buff:T1229):Void
	{
		var _j5149:Int = buff._m17572();
		buff._m17573(2);
		var _l5150:Int = 0;
		var _c5151:Bool = false;
		var _o13362:GetPlayerProfileResponse = (cast serializable);
		if (_o13362.isMessageIdSet() == true) 
		{
			_c5151 = T1228._m18236(_o13362.getMessageId(), (cast 0), buff);
			if (_c5151) 
			{
				_l5150++;
			}
		}
		if (_o13362.isRequestIdSet() == true) 
		{
			_c5151 = T1228._m18236(_o13362.getRequestId(), (cast 1), buff);
			if (_c5151) 
			{
				_l5150++;
			}
		}
		if (_o13362.isGetPlayerProfileStatusSet() == true) 
		{
			_c5151 = T1228._m18237(this, _o13362.getGetPlayerProfileStatus(), (cast 3), buff);
			if (_c5151) 
			{
				_l5150++;
			}
		}
		if (_o13362.isProfileSet() == true) 
		{
			_c5151 = T1228._m18237(this, _o13362.getProfile(), (cast 4), buff);
			if (_c5151) 
			{
				_l5150++;
			}
		}
		buff._m17576(_j5149, _l5150);
	}

	public function _m18120( serializable:Serializable,  buff:T1229):Void
	{
		var _b5153:Int = buff._m17572();
		buff._m17573(2);
		var _j5154:Int = 0;
		var _n5155:Bool = false;
		var _i13368:GetPlayerProfileRequest = (cast serializable);
		if (_i13368.isMessageIdSet() == true) 
		{
			_n5155 = T1228._m18236(_i13368.getMessageId(), (cast 0), buff);
			if (_n5155) 
			{
				_j5154++;
			}
		}
		if (_i13368.isRequestIdSet() == true) 
		{
			_n5155 = T1228._m18236(_i13368.getRequestId(), (cast 1), buff);
			if (_n5155) 
			{
				_j5154++;
			}
		}
		buff._m17576(_b5153, _j5154);
	}

	public function _m18121( serializable:Serializable,  buff:T1229):Void
	{
		var _h5157:Int = buff._m17572();
		buff._m17573(2);
		var _r5158:Int = 0;
		var _q5159:Bool = false;
		var _m13374:GetPlayerProfileByPlayerIdRequest = (cast serializable);
		if (_m13374.isMessageIdSet() == true) 
		{
			_q5159 = T1228._m18236(_m13374.getMessageId(), (cast 0), buff);
			if (_q5159) 
			{
				_r5158++;
			}
		}
		if (_m13374.isRequestIdSet() == true) 
		{
			_q5159 = T1228._m18236(_m13374.getRequestId(), (cast 1), buff);
			if (_q5159) 
			{
				_r5158++;
			}
		}
		if (_m13374.isPlayerIdSet() == true) 
		{
			_q5159 = T1228._m18236(_m13374.getPlayerId(), (cast 3), buff);
			if (_q5159) 
			{
				_r5158++;
			}
		}
		buff._m17576(_h5157, _r5158);
	}

	public function _m18122( _c12950:Serializable,  _v12951:T1229):Void
	{
		var _n12952:Int = _v12951._m17572();
		_v12951._m17573(2);
		var _w12953:Int = 0;
		var _w12954:Bool = false;
		var _n13380:LogoutResponse = (cast _c12950);
		if (_n13380.isMessageIdSet() == true) 
		{
			_w12954 = T1228._m18236(_n13380.getMessageId(), (cast 0), _v12951);
			if (_w12954) 
			{
				_w12953++;
			}
		}
		if (_n13380.isRequestIdSet() == true) 
		{
			_w12954 = T1228._m18236(_n13380.getRequestId(), (cast 1), _v12951);
			if (_w12954) 
			{
				_w12953++;
			}
		}
		if (_n13380.isLogoutStatusSet() == true) 
		{
			_w12954 = T1228._m18237(this, _n13380.getLogoutStatus(), (cast 3), _v12951);
			if (_w12954) 
			{
				_w12953++;
			}
		}
		if (_n13380.isPlayerSet() == true) 
		{
			_w12954 = T1228._m18237(this, _n13380.getPlayer(), (cast 4), _v12951);
			if (_w12954) 
			{
				_w12953++;
			}
		}
		_v12951._m17576(_n12952, _w12953);
	}

	public function _m18123( _g12956:Serializable,  _g12957:T1229):Void
	{
		var _v12958:Int = _g12957._m17572();
		_g12957._m17573(2);
		var _g12959:Int = 0;
		var _b12960:Bool = false;
		var _l13386:LogoutRequest = (cast _g12956);
		if (_l13386.isMessageIdSet() == true) 
		{
			_b12960 = T1228._m18236(_l13386.getMessageId(), (cast 0), _g12957);
			if (_b12960) 
			{
				_g12959++;
			}
		}
		if (_l13386.isRequestIdSet() == true) 
		{
			_b12960 = T1228._m18236(_l13386.getRequestId(), (cast 1), _g12957);
			if (_b12960) 
			{
				_g12959++;
			}
		}
		_g12957._m17576(_v12958, _g12959);
	}

	public function _m18124( serializable:Serializable,  buff:T1229):Void
	{
		var _m5169:Int = buff._m17572();
		buff._m17573(2);
		var _a5170:Int = 0;
		var _t5171:Bool = false;
		var _s13392:ChallengeFriendResponse = (cast serializable);
		if (_s13392.isMessageIdSet() == true) 
		{
			_t5171 = T1228._m18236(_s13392.getMessageId(), (cast 0), buff);
			if (_t5171) 
			{
				_a5170++;
			}
		}
		if (_s13392.isRequestIdSet() == true) 
		{
			_t5171 = T1228._m18236(_s13392.getRequestId(), (cast 1), buff);
			if (_t5171) 
			{
				_a5170++;
			}
		}
		if (_s13392.isChallengeFriendStatusSet() == true) 
		{
			_t5171 = T1228._m18237(this, _s13392.getChallengeFriendStatus(), (cast 3), buff);
			if (_t5171) 
			{
				_a5170++;
			}
		}
		if (_s13392.isPlayerIdSet() == true) 
		{
			_t5171 = T1228._m18236(_s13392.getPlayerId(), (cast 4), buff);
			if (_t5171) 
			{
				_a5170++;
			}
		}
		buff._m17576(_m5169, _a5170);
	}

	public function _m18125( serializable:Serializable,  buff:T1229):Void
	{
		var _k5173:Int = buff._m17572();
		buff._m17573(2);
		var _u5174:Int = 0;
		var _o5175:Bool = false;
		var _m13398:ChallengeFriendRequest = (cast serializable);
		if (_m13398.isMessageIdSet() == true) 
		{
			_o5175 = T1228._m18236(_m13398.getMessageId(), (cast 0), buff);
			if (_o5175) 
			{
				_u5174++;
			}
		}
		if (_m13398.isRequestIdSet() == true) 
		{
			_o5175 = T1228._m18236(_m13398.getRequestId(), (cast 1), buff);
			if (_o5175) 
			{
				_u5174++;
			}
		}
		if (_m13398.isPlayerIdSet() == true) 
		{
			_o5175 = T1228._m18236(_m13398.getPlayerId(), (cast 3), buff);
			if (_o5175) 
			{
				_u5174++;
			}
		}
		buff._m17576(_k5173, _u5174);
	}

	public function _m18126( _n12967:Serializable,  _c12968:T1229):Void
	{
		var _e12969:Int = _c12968._m17572();
		_c12968._m17573(2);
		var _g12970:Int = 0;
		var _a12971:Bool = false;
		var _l13404:ChallengeThirdPartyFriendResponse = (cast _n12967);
		if (_l13404.isMessageIdSet() == true) 
		{
			_a12971 = T1228._m18236(_l13404.getMessageId(), (cast 0), _c12968);
			if (_a12971) 
			{
				_g12970++;
			}
		}
		if (_l13404.isRequestIdSet() == true) 
		{
			_a12971 = T1228._m18236(_l13404.getRequestId(), (cast 1), _c12968);
			if (_a12971) 
			{
				_g12970++;
			}
		}
		if (_l13404.isChallengeThirdPartyFriendStatusSet() == true) 
		{
			_a12971 = T1228._m18237(this, _l13404.getChallengeThirdPartyFriendStatus(), (cast 3), _c12968);
			if (_a12971) 
			{
				_g12970++;
			}
		}
		if (_l13404.isThirdPartyIdSet() == true) 
		{
			_a12971 = T1228._m18236(_l13404.getThirdPartyId(), (cast 4), _c12968);
			if (_a12971) 
			{
				_g12970++;
			}
		}
		_c12968._m17576(_e12969, _g12970);
	}

	public function _m18127( _i12979:Serializable,  _v12980:T1229):Void
	{
		var _r12975:Int = _v12980._m17572();
		_v12980._m17573(2);
		var _r12976:Int = 0;
		var _i12977:Bool = false;
		var _n13410:ChallengeThirdPartyFriendRequest = (cast _i12979);
		if (_n13410.isMessageIdSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getMessageId(), (cast 0), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isRequestIdSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getRequestId(), (cast 1), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isThirdPartyIdSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getThirdPartyId(), (cast 3), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isTitleSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getTitle(), (cast 4), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isChallengeMessageSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getChallengeMessage(), (cast 5), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isPictureUrlSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getPictureUrl(), (cast 6), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isLinkSet() == true) 
		{
			_i12977 = T1228._m18236(_n13410.getLink(), (cast 7), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		if (_n13410.isThirdPartySourceSet() == true) 
		{
			_i12977 = T1228._m18237(this, _n13410.getThirdPartySource(), (cast 8), _v12980);
			if (_i12977) 
			{
				_r12976++;
			}
		}
		_v12980._m17576(_r12975, _r12976);
	}

	public function _m18128( serializable:Serializable,  buff:T1229):Void
	{
		var _d12981:Int = buff._m17572();
		buff._m17573(2);
		var _f12982:Int = 0;
		var _v12983:Bool = false;
		var _g13416:GetFriendsResponse = (cast serializable);
		if (_g13416.isMessageIdSet() == true) 
		{
			_v12983 = T1228._m18236(_g13416.getMessageId(), (cast 0), buff);
			if (_v12983) 
			{
				_f12982++;
			}
		}
		if (_g13416.isRequestIdSet() == true) 
		{
			_v12983 = T1228._m18236(_g13416.getRequestId(), (cast 1), buff);
			if (_v12983) 
			{
				_f12982++;
			}
		}
		if (_g13416.isGetFriendsStatusSet() == true) 
		{
			_v12983 = T1228._m18237(this, _g13416.getGetFriendsStatus(), (cast 3), buff);
			if (_v12983) 
			{
				_f12982++;
			}
		}
		if (_g13416.isFriendsSet() == true) 
		{
			var _v13417:NList<NPlayer> = _g13416.getFriends();
			if (_v13417 == null) 
			{
				_v12983 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _m13418:Int = buff._m17572();
				buff._m17573(4);
				var _u13419:Int = _v13417.size();
				buff._m17579((cast _u13419));
				for (_g5192 in 0 ... _u13419) 
				{
					var _p5193:NPlayer = _v13417.get(_g5192);
					if (_p5193 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _p5193, buff);
					}
				}
				buff._m17582(_m13418, buff._m17572() - _m13418);
				_v12983 = true;
			}
			if (_v12983) 
			{
				_f12982++;
			}
		}
		buff._m17576(_d12981, _f12982);
	}

	public function _m18129( serializable:Serializable,  buff:T1229):Void
	{
		var _i5194:Int = buff._m17572();
		buff._m17573(2);
		var _h5195:Int = 0;
		var _o5196:Bool = false;
		var _f13427:GetFriendsRequest = (cast serializable);
		if (_f13427.isMessageIdSet() == true) 
		{
			_o5196 = T1228._m18236(_f13427.getMessageId(), (cast 0), buff);
			if (_o5196) 
			{
				_h5195++;
			}
		}
		if (_f13427.isRequestIdSet() == true) 
		{
			_o5196 = T1228._m18236(_f13427.getRequestId(), (cast 1), buff);
			if (_o5196) 
			{
				_h5195++;
			}
		}
		buff._m17576(_i5194, _h5195);
	}

	public function _m18130( _b12985:Serializable,  _t12986:T1229):Void
	{
		var _y5198:Int = _t12986._m17572();
		_t12986._m17573(2);
		var _y5199:Int = 0;
		var _t5200:Bool = false;
		var _t13433:GetFriendsByPlayerIdRequest = (cast _b12985);
		if (_t13433.isMessageIdSet() == true) 
		{
			_t5200 = T1228._m18236(_t13433.getMessageId(), (cast 0), _t12986);
			if (_t5200) 
			{
				_y5199++;
			}
		}
		if (_t13433.isRequestIdSet() == true) 
		{
			_t5200 = T1228._m18236(_t13433.getRequestId(), (cast 1), _t12986);
			if (_t5200) 
			{
				_y5199++;
			}
		}
		if (_t13433.isPlayerIdSet() == true) 
		{
			_t5200 = T1228._m18236(_t13433.getPlayerId(), (cast 3), _t12986);
			if (_t5200) 
			{
				_y5199++;
			}
		}
		_t12986._m17576(_y5198, _y5199);
	}

	public function _m18131( _i12991:Serializable,  _l12992:T1229):Void
	{
		var _i12993:Int = _l12992._m17572();
		_l12992._m17573(2);
		var _k12994:Int = 0;
		var _e12995:Bool = false;
		var _t13439:GetThirdPartyFriendsResponse = (cast _i12991);
		if (_t13439.isMessageIdSet() == true) 
		{
			_e12995 = T1228._m18236(_t13439.getMessageId(), (cast 0), _l12992);
			if (_e12995) 
			{
				_k12994++;
			}
		}
		if (_t13439.isRequestIdSet() == true) 
		{
			_e12995 = T1228._m18236(_t13439.getRequestId(), (cast 1), _l12992);
			if (_e12995) 
			{
				_k12994++;
			}
		}
		if (_t13439.isGetThirdPartyFriendsStatusSet() == true) 
		{
			_e12995 = T1228._m18237(this, _t13439.getGetThirdPartyFriendsStatus(), (cast 3), _l12992);
			if (_e12995) 
			{
				_k12994++;
			}
		}
		if (_t13439.isThirdPartyFriendsSet() == true) 
		{
			var _v13440:NList<NPlayer> = _t13439.getThirdPartyFriends();
			if (_v13440 == null) 
			{
				_e12995 = false;
			} else 
			{
				_l12992._m17579((cast 4));
				_l12992._m17580(T1221._l17181);
				var _r13441:Int = _l12992._m17572();
				_l12992._m17573(4);
				var _m13442:Int = _v13440.size();
				_l12992._m17579((cast _m13442));
				for (_f5209 in 0 ... _m13442) 
				{
					var _l5210:NPlayer = _v13440.get(_f5209);
					if (_l5210 == null) 
					{
						_l12992._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _l5210, _l12992);
					}
				}
				_l12992._m17582(_r13441, _l12992._m17572() - _r13441);
				_e12995 = true;
			}
			if (_e12995) 
			{
				_k12994++;
			}
		}
		_l12992._m17576(_i12993, _k12994);
	}

	public function _m18132( _a12997:Serializable,  _s12998:T1229):Void
	{
		var _m12999:Int = _s12998._m17572();
		_s12998._m17573(2);
		var _l13000:Int = 0;
		var _u13001:Bool = false;
		var _i13450:GetThirdPartyFriendsRequest = (cast _a12997);
		if (_i13450.isMessageIdSet() == true) 
		{
			_u13001 = T1228._m18236(_i13450.getMessageId(), (cast 0), _s12998);
			if (_u13001) 
			{
				_l13000++;
			}
		}
		if (_i13450.isRequestIdSet() == true) 
		{
			_u13001 = T1228._m18236(_i13450.getRequestId(), (cast 1), _s12998);
			if (_u13001) 
			{
				_l13000++;
			}
		}
		if (_i13450.isThirdPartySourceSet() == true) 
		{
			_u13001 = T1228._m18237(this, _i13450.getThirdPartySource(), (cast 3), _s12998);
			if (_u13001) 
			{
				_l13000++;
			}
		}
		_s12998._m17576(_m12999, _l13000);
	}

	public function _m18133( _g13003:Serializable,  _s13004:T1229):Void
	{
		var _i13005:Int = _s13004._m17572();
		_s13004._m17573(2);
		var _m13006:Int = 0;
		var _z13007:Bool = false;
		var _o13456:GetPlayerInvitationsResponse = (cast _g13003);
		if (_o13456.isMessageIdSet() == true) 
		{
			_z13007 = T1228._m18236(_o13456.getMessageId(), (cast 0), _s13004);
			if (_z13007) 
			{
				_m13006++;
			}
		}
		if (_o13456.isRequestIdSet() == true) 
		{
			_z13007 = T1228._m18236(_o13456.getRequestId(), (cast 1), _s13004);
			if (_z13007) 
			{
				_m13006++;
			}
		}
		if (_o13456.isGetPlayerInvitationsStatusSet() == true) 
		{
			_z13007 = T1228._m18237(this, _o13456.getGetPlayerInvitationsStatus(), (cast 3), _s13004);
			if (_z13007) 
			{
				_m13006++;
			}
		}
		if (_o13456.isInvitationsSet() == true) 
		{
			var _f13457:NList<NPlayerInvitation> = _o13456.getInvitations();
			if (_f13457 == null) 
			{
				_z13007 = false;
			} else 
			{
				_s13004._m17579((cast 4));
				_s13004._m17580(T1221._l17181);
				var _p13458:Int = _s13004._m17572();
				_s13004._m17573(4);
				var _q13459:Int = _f13457.size();
				_s13004._m17579((cast _q13459));
				for (_h13048 in 0 ... _q13459) 
				{
					var _e13049:NPlayerInvitation = _f13457.get(_h13048);
					if (_e13049 == null) 
					{
						_s13004._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _e13049, _s13004);
					}
				}
				_s13004._m17582(_p13458, _s13004._m17572() - _p13458);
				_z13007 = true;
			}
			if (_z13007) 
			{
				_m13006++;
			}
		}
		_s13004._m17576(_i13005, _m13006);
	}

	public function _m18134( serializable:Serializable,  buff:T1229):Void
	{
		var _g5224:Int = buff._m17572();
		buff._m17573(2);
		var _h5225:Int = 0;
		var _d5226:Bool = false;
		var _f13467:GetPlayerInvitationsRequest = (cast serializable);
		if (_f13467.isMessageIdSet() == true) 
		{
			_d5226 = T1228._m18236(_f13467.getMessageId(), (cast 0), buff);
			if (_d5226) 
			{
				_h5225++;
			}
		}
		if (_f13467.isRequestIdSet() == true) 
		{
			_d5226 = T1228._m18236(_f13467.getRequestId(), (cast 1), buff);
			if (_d5226) 
			{
				_h5225++;
			}
		}
		buff._m17576(_g5224, _h5225);
	}

	public function _m18135( _n13009:Serializable,  _z13010:T1229):Void
	{
		var _m13011:Int = _z13010._m17572();
		_z13010._m17573(2);
		var _a13012:Int = 0;
		var _h13013:Bool = false;
		var _p13473:AcceptPlayerInvitationResponse = (cast _n13009);
		if (_p13473.isMessageIdSet() == true) 
		{
			_h13013 = T1228._m18236(_p13473.getMessageId(), (cast 0), _z13010);
			if (_h13013) 
			{
				_a13012++;
			}
		}
		if (_p13473.isRequestIdSet() == true) 
		{
			_h13013 = T1228._m18236(_p13473.getRequestId(), (cast 1), _z13010);
			if (_h13013) 
			{
				_a13012++;
			}
		}
		if (_p13473.isAcceptPlayerInvitationStatusSet() == true) 
		{
			_h13013 = T1228._m18237(this, _p13473.getAcceptPlayerInvitationStatus(), (cast 3), _z13010);
			if (_h13013) 
			{
				_a13012++;
			}
		}
		if (_p13473.isPlayerInvitationIdSet() == true) 
		{
			_h13013 = T1228._m18236(_p13473.getPlayerInvitationId(), (cast 4), _z13010);
			if (_h13013) 
			{
				_a13012++;
			}
		}
		_z13010._m17576(_m13011, _a13012);
	}

	public function _m18136( serializable:Serializable,  buff:T1229):Void
	{
		var _i5232:Int = buff._m17572();
		buff._m17573(2);
		var _t5233:Int = 0;
		var _j5234:Bool = false;
		var _a13479:AcceptPlayerInvitationRequest = (cast serializable);
		if (_a13479.isMessageIdSet() == true) 
		{
			_j5234 = T1228._m18236(_a13479.getMessageId(), (cast 0), buff);
			if (_j5234) 
			{
				_t5233++;
			}
		}
		if (_a13479.isRequestIdSet() == true) 
		{
			_j5234 = T1228._m18236(_a13479.getRequestId(), (cast 1), buff);
			if (_j5234) 
			{
				_t5233++;
			}
		}
		if (_a13479.isInvitationIdSet() == true) 
		{
			_j5234 = T1228._m18236(_a13479.getInvitationId(), (cast 3), buff);
			if (_j5234) 
			{
				_t5233++;
			}
		}
		buff._m17576(_i5232, _t5233);
	}

	public function _m18137( _f13015:Serializable,  _x13016:T1229):Void
	{
		var _t13017:Int = _x13016._m17572();
		_x13016._m17573(2);
		var _m13018:Int = 0;
		var _f13019:Bool = false;
		var _h13485:IgnorePlayerInvitationResponse = (cast _f13015);
		if (_h13485.isMessageIdSet() == true) 
		{
			_f13019 = T1228._m18236(_h13485.getMessageId(), (cast 0), _x13016);
			if (_f13019) 
			{
				_m13018++;
			}
		}
		if (_h13485.isRequestIdSet() == true) 
		{
			_f13019 = T1228._m18236(_h13485.getRequestId(), (cast 1), _x13016);
			if (_f13019) 
			{
				_m13018++;
			}
		}
		if (_h13485.isIgnorePlayerInvitationStatusSet() == true) 
		{
			_f13019 = T1228._m18237(this, _h13485.getIgnorePlayerInvitationStatus(), (cast 3), _x13016);
			if (_f13019) 
			{
				_m13018++;
			}
		}
		if (_h13485.isPlayerInvitationIdSet() == true) 
		{
			_f13019 = T1228._m18236(_h13485.getPlayerInvitationId(), (cast 4), _x13016);
			if (_f13019) 
			{
				_m13018++;
			}
		}
		_x13016._m17576(_t13017, _m13018);
	}

	public function _m18138( serializable:Serializable,  buff:T1229):Void
	{
		var _k5240:Int = buff._m17572();
		buff._m17573(2);
		var _w5241:Int = 0;
		var _o5242:Bool = false;
		var _z13491:IgnorePlayerInvitationRequest = (cast serializable);
		if (_z13491.isMessageIdSet() == true) 
		{
			_o5242 = T1228._m18236(_z13491.getMessageId(), (cast 0), buff);
			if (_o5242) 
			{
				_w5241++;
			}
		}
		if (_z13491.isRequestIdSet() == true) 
		{
			_o5242 = T1228._m18236(_z13491.getRequestId(), (cast 1), buff);
			if (_o5242) 
			{
				_w5241++;
			}
		}
		if (_z13491.isInvitationIdSet() == true) 
		{
			_o5242 = T1228._m18236(_z13491.getInvitationId(), (cast 3), buff);
			if (_o5242) 
			{
				_w5241++;
			}
		}
		buff._m17576(_k5240, _w5241);
	}

	public function _m18139( _k13021:Serializable,  _b13022:T1229):Void
	{
		var _b13023:Int = _b13022._m17572();
		_b13022._m17573(2);
		var _j13024:Int = 0;
		var _u13025:Bool = false;
		var _o13497:SubmitScoreResponse = (cast _k13021);
		if (_o13497.isMessageIdSet() == true) 
		{
			_u13025 = T1228._m18236(_o13497.getMessageId(), (cast 0), _b13022);
			if (_u13025) 
			{
				_j13024++;
			}
		}
		if (_o13497.isRequestIdSet() == true) 
		{
			_u13025 = T1228._m18236(_o13497.getRequestId(), (cast 1), _b13022);
			if (_u13025) 
			{
				_j13024++;
			}
		}
		if (_o13497.isSubmitScoreStatusSet() == true) 
		{
			_u13025 = T1228._m18237(this, _o13497.getSubmitScoreStatus(), (cast 3), _b13022);
			if (_u13025) 
			{
				_j13024++;
			}
		}
		_b13022._m17576(_b13023, _j13024);
	}

	public function _m18140( _b13027:Serializable,  _e13028:T1229):Void
	{
		var _w13029:Int = _e13028._m17572();
		_e13028._m17573(2);
		var _m13030:Int = 0;
		var _e13031:Bool = false;
		var _n13503:SubmitScoreRequest = (cast _b13027);
		if (_n13503.isMessageIdSet() == true) 
		{
			_e13031 = T1228._m18236(_n13503.getMessageId(), (cast 0), _e13028);
			if (_e13031) 
			{
				_m13030++;
			}
		}
		if (_n13503.isRequestIdSet() == true) 
		{
			_e13031 = T1228._m18236(_n13503.getRequestId(), (cast 1), _e13028);
			if (_e13031) 
			{
				_m13030++;
			}
		}
		if (_n13503.isScoreSet() == true) 
		{
			_e13031 = T1228._m18237(this, _n13503.getScore(), (cast 3), _e13028);
			if (_e13031) 
			{
				_m13030++;
			}
		}
		if (_n13503.isLeaderboardIdSet() == true) 
		{
			_e13031 = T1228._m18236(_n13503.getLeaderboardId(), (cast 4), _e13028);
			if (_e13031) 
			{
				_m13030++;
			}
		}
		_e13028._m17576(_w13029, _m13030);
	}

	public function _m18141( serializable:Serializable,  buff:T1229):Void
	{
		var _m5252:Int = buff._m17572();
		buff._m17573(2);
		var _w5253:Int = 0;
		var _o5254:Bool = false;
		var _z13509:SubmitScoreWithPlayerNameRequest = (cast serializable);
		if (_z13509.isMessageIdSet() == true) 
		{
			_o5254 = T1228._m18236(_z13509.getMessageId(), (cast 0), buff);
			if (_o5254) 
			{
				_w5253++;
			}
		}
		if (_z13509.isRequestIdSet() == true) 
		{
			_o5254 = T1228._m18236(_z13509.getRequestId(), (cast 1), buff);
			if (_o5254) 
			{
				_w5253++;
			}
		}
		if (_z13509.isNameSet() == true) 
		{
			_o5254 = T1228._m18236(_z13509.getName(), (cast 3), buff);
			if (_o5254) 
			{
				_w5253++;
			}
		}
		if (_z13509.isScoreSet() == true) 
		{
			_o5254 = T1228._m18237(this, _z13509.getScore(), (cast 4), buff);
			if (_o5254) 
			{
				_w5253++;
			}
		}
		if (_z13509.isLeaderboardIdSet() == true) 
		{
			_o5254 = T1228._m18236(_z13509.getLeaderboardId(), (cast 5), buff);
			if (_o5254) 
			{
				_w5253++;
			}
		}
		buff._m17576(_m5252, _w5253);
	}

	public function _m18142( serializable:Serializable,  buff:T1229):Void
	{
		var _j5256:Int = buff._m17572();
		buff._m17573(2);
		var _q5257:Int = 0;
		var _d5258:Bool = false;
		var _m13515:GetLeaderboardResponse = (cast serializable);
		if (_m13515.isMessageIdSet() == true) 
		{
			_d5258 = T1228._m18236(_m13515.getMessageId(), (cast 0), buff);
			if (_d5258) 
			{
				_q5257++;
			}
		}
		if (_m13515.isRequestIdSet() == true) 
		{
			_d5258 = T1228._m18236(_m13515.getRequestId(), (cast 1), buff);
			if (_d5258) 
			{
				_q5257++;
			}
		}
		if (_m13515.isGetLeaderboardStatusSet() == true) 
		{
			_d5258 = T1228._m18237(this, _m13515.getGetLeaderboardStatus(), (cast 3), buff);
			if (_d5258) 
			{
				_q5257++;
			}
		}
		if (_m13515.isLeaderboardSet() == true) 
		{
			_d5258 = T1228._m18237(this, _m13515.getLeaderboard(), (cast 4), buff);
			if (_d5258) 
			{
				_q5257++;
			}
		}
		buff._m17576(_j5256, _q5257);
	}

	public function _m18143( _k13033:Serializable,  _r13034:T1229):Void
	{
		var _s13035:Int = _r13034._m17572();
		_r13034._m17573(2);
		var _y13036:Int = 0;
		var _w13037:Bool = false;
		var _x13521:GetLeaderboardRequest = (cast _k13033);
		if (_x13521.isMessageIdSet() == true) 
		{
			_w13037 = T1228._m18236(_x13521.getMessageId(), (cast 0), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		if (_x13521.isRequestIdSet() == true) 
		{
			_w13037 = T1228._m18236(_x13521.getRequestId(), (cast 1), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		if (_x13521.isLeaderboardIdSet() == true) 
		{
			_w13037 = T1228._m18236(_x13521.getLeaderboardId(), (cast 3), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		if (_x13521.isPeriodSet() == true) 
		{
			_w13037 = T1228._m18237(this, _x13521.getPeriod(), (cast 4), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		if (_x13521.isStartSet() == true) 
		{
			_w13037 = T1228._m18241(_x13521.getStart(), (cast 5), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		if (_x13521.isLimitSet() == true) 
		{
			_w13037 = T1228._m18241(_x13521.getLimit(), (cast 6), _r13034);
			if (_w13037) 
			{
				_y13036++;
			}
		}
		_r13034._m17576(_s13035, _y13036);
	}

	public function _m18144( _l13039:Serializable,  _x13040:T1229):Void
	{
		var _y13041:Int = _x13040._m17572();
		_x13040._m17573(2);
		var _l13042:Int = 0;
		var _u13043:Bool = false;
		var _k13527:BuyItemResponse = (cast _l13039);
		if (_k13527.isMessageIdSet() == true) 
		{
			_u13043 = T1228._m18236(_k13527.getMessageId(), (cast 0), _x13040);
			if (_u13043) 
			{
				_l13042++;
			}
		}
		if (_k13527.isRequestIdSet() == true) 
		{
			_u13043 = T1228._m18236(_k13527.getRequestId(), (cast 1), _x13040);
			if (_u13043) 
			{
				_l13042++;
			}
		}
		if (_k13527.isBuyItemStatusSet() == true) 
		{
			_u13043 = T1228._m18237(this, _k13527.getBuyItemStatus(), (cast 3), _x13040);
			if (_u13043) 
			{
				_l13042++;
			}
		}
		if (_k13527.isBoughtItemSet() == true) 
		{
			_u13043 = T1228._m18237(this, _k13527.getBoughtItem(), (cast 4), _x13040);
			if (_u13043) 
			{
				_l13042++;
			}
		}
		if (_k13527.isQuantitySet() == true) 
		{
			_u13043 = T1228._m18241(_k13527.getQuantity(), (cast 5), _x13040);
			if (_u13043) 
			{
				_l13042++;
			}
		}
		_x13040._m17576(_y13041, _l13042);
	}

	public function _m18145( serializable:Serializable,  buff:T1229):Void
	{
		var _i5268:Int = buff._m17572();
		buff._m17573(2);
		var _n5269:Int = 0;
		var _x5270:Bool = false;
		var _t13533:BuyItemRequest = (cast serializable);
		if (_t13533.isMessageIdSet() == true) 
		{
			_x5270 = T1228._m18236(_t13533.getMessageId(), (cast 0), buff);
			if (_x5270) 
			{
				_n5269++;
			}
		}
		if (_t13533.isRequestIdSet() == true) 
		{
			_x5270 = T1228._m18236(_t13533.getRequestId(), (cast 1), buff);
			if (_x5270) 
			{
				_n5269++;
			}
		}
		if (_t13533.isItemIdSet() == true) 
		{
			_x5270 = T1228._m18236(_t13533.getItemId(), (cast 3), buff);
			if (_x5270) 
			{
				_n5269++;
			}
		}
		if (_t13533.isQuantitySet() == true) 
		{
			_x5270 = T1228._m18241(_t13533.getQuantity(), (cast 4), buff);
			if (_x5270) 
			{
				_n5269++;
			}
		}
		buff._m17576(_i5268, _n5269);
	}

	public function _m18146( _h13050:Serializable,  _v13051:T1229):Void
	{
		var _t5272:Int = _v13051._m17572();
		_v13051._m17573(2);
		var _h5273:Int = 0;
		var _d5274:Bool = false;
		var _x13539:GetStoreResponse = (cast _h13050);
		if (_x13539.isMessageIdSet() == true) 
		{
			_d5274 = T1228._m18236(_x13539.getMessageId(), (cast 0), _v13051);
			if (_d5274) 
			{
				_h5273++;
			}
		}
		if (_x13539.isRequestIdSet() == true) 
		{
			_d5274 = T1228._m18236(_x13539.getRequestId(), (cast 1), _v13051);
			if (_d5274) 
			{
				_h5273++;
			}
		}
		if (_x13539.isGetStoreStatusSet() == true) 
		{
			_d5274 = T1228._m18237(this, _x13539.getGetStoreStatus(), (cast 3), _v13051);
			if (_d5274) 
			{
				_h5273++;
			}
		}
		if (_x13539.isStoreSet() == true) 
		{
			_d5274 = T1228._m18237(this, _x13539.getStore(), (cast 4), _v13051);
			if (_d5274) 
			{
				_h5273++;
			}
		}
		_v13051._m17576(_t5272, _h5273);
	}

	public function _m18147( serializable:Serializable,  buff:T1229):Void
	{
		var _r13052:Int = buff._m17572();
		buff._m17573(2);
		var _f13053:Int = 0;
		var _j13054:Bool = false;
		var _o13545:GetStoreRequest = (cast serializable);
		if (_o13545.isMessageIdSet() == true) 
		{
			_j13054 = T1228._m18236(_o13545.getMessageId(), (cast 0), buff);
			if (_j13054) 
			{
				_f13053++;
			}
		}
		if (_o13545.isRequestIdSet() == true) 
		{
			_j13054 = T1228._m18236(_o13545.getRequestId(), (cast 1), buff);
			if (_j13054) 
			{
				_f13053++;
			}
		}
		buff._m17576(_r13052, _f13053);
	}

	public function _m18148( serializable:Serializable,  buff:T1229):Void
	{
		var _g5280:Int = buff._m17572();
		buff._m17573(2);
		var _l5281:Int = 0;
		var _u5282:Bool = false;
		var _y13551:ConsumeItemResponse = (cast serializable);
		if (_y13551.isMessageIdSet() == true) 
		{
			_u5282 = T1228._m18236(_y13551.getMessageId(), (cast 0), buff);
			if (_u5282) 
			{
				_l5281++;
			}
		}
		if (_y13551.isRequestIdSet() == true) 
		{
			_u5282 = T1228._m18236(_y13551.getRequestId(), (cast 1), buff);
			if (_u5282) 
			{
				_l5281++;
			}
		}
		if (_y13551.isConsumeItemStatusSet() == true) 
		{
			_u5282 = T1228._m18237(this, _y13551.getConsumeItemStatus(), (cast 3), buff);
			if (_u5282) 
			{
				_l5281++;
			}
		}
		if (_y13551.isConsumedItemSet() == true) 
		{
			_u5282 = T1228._m18237(this, _y13551.getConsumedItem(), (cast 4), buff);
			if (_u5282) 
			{
				_l5281++;
			}
		}
		if (_y13551.isQuantitySet() == true) 
		{
			_u5282 = T1228._m18241(_y13551.getQuantity(), (cast 5), buff);
			if (_u5282) 
			{
				_l5281++;
			}
		}
		buff._m17576(_g5280, _l5281);
	}

	public function _m18149( _e13056:Serializable,  _x13057:T1229):Void
	{
		var _z13058:Int = _x13057._m17572();
		_x13057._m17573(2);
		var _e13059:Int = 0;
		var _i13060:Bool = false;
		var _b13557:ConsumeItemRequest = (cast _e13056);
		if (_b13557.isMessageIdSet() == true) 
		{
			_i13060 = T1228._m18236(_b13557.getMessageId(), (cast 0), _x13057);
			if (_i13060) 
			{
				_e13059++;
			}
		}
		if (_b13557.isRequestIdSet() == true) 
		{
			_i13060 = T1228._m18236(_b13557.getRequestId(), (cast 1), _x13057);
			if (_i13060) 
			{
				_e13059++;
			}
		}
		if (_b13557.isItemIdSet() == true) 
		{
			_i13060 = T1228._m18236(_b13557.getItemId(), (cast 3), _x13057);
			if (_i13060) 
			{
				_e13059++;
			}
		}
		if (_b13557.isQuantitySet() == true) 
		{
			_i13060 = T1228._m18241(_b13557.getQuantity(), (cast 4), _x13057);
			if (_i13060) 
			{
				_e13059++;
			}
		}
		_x13057._m17576(_z13058, _e13059);
	}

	public function _m18150( serializable:Serializable,  buff:T1229):Void
	{
		var _p5288:Int = buff._m17572();
		buff._m17573(2);
		var _k5289:Int = 0;
		var _c5290:Bool = false;
		var _b13563:IncreasePlayerWalletResponse = (cast serializable);
		if (_b13563.isMessageIdSet() == true) 
		{
			_c5290 = T1228._m18236(_b13563.getMessageId(), (cast 0), buff);
			if (_c5290) 
			{
				_k5289++;
			}
		}
		if (_b13563.isRequestIdSet() == true) 
		{
			_c5290 = T1228._m18236(_b13563.getRequestId(), (cast 1), buff);
			if (_c5290) 
			{
				_k5289++;
			}
		}
		if (_b13563.isIncreasePlayerWalletStatusSet() == true) 
		{
			_c5290 = T1228._m18237(this, _b13563.getIncreasePlayerWalletStatus(), (cast 3), buff);
			if (_c5290) 
			{
				_k5289++;
			}
		}
		if (_b13563.isValueSet() == true) 
		{
			_c5290 = T1228._m18241(_b13563.getValue(), (cast 4), buff);
			if (_c5290) 
			{
				_k5289++;
			}
		}
		buff._m17576(_p5288, _k5289);
	}

	public function _m18151( _e13062:Serializable,  _c13063:T1229):Void
	{
		var _e13064:Int = _c13063._m17572();
		_c13063._m17573(2);
		var _u13065:Int = 0;
		var _t13066:Bool = false;
		var _y13569:IncreasePlayerWalletRequest = (cast _e13062);
		if (_y13569.isMessageIdSet() == true) 
		{
			_t13066 = T1228._m18236(_y13569.getMessageId(), (cast 0), _c13063);
			if (_t13066) 
			{
				_u13065++;
			}
		}
		if (_y13569.isRequestIdSet() == true) 
		{
			_t13066 = T1228._m18236(_y13569.getRequestId(), (cast 1), _c13063);
			if (_t13066) 
			{
				_u13065++;
			}
		}
		if (_y13569.isValueSet() == true) 
		{
			_t13066 = T1228._m18241(_y13569.getValue(), (cast 3), _c13063);
			if (_t13066) 
			{
				_u13065++;
			}
		}
		_c13063._m17576(_e13064, _u13065);
	}

	public function _m18152( _x13068:Serializable,  _m13069:T1229):Void
	{
		var _s5296:Int = _m13069._m17572();
		_m13069._m17573(2);
		var _l5297:Int = 0;
		var _u5298:Bool = false;
		var _d13575:GetPlayerWalletResponse = (cast _x13068);
		if (_d13575.isMessageIdSet() == true) 
		{
			_u5298 = T1228._m18236(_d13575.getMessageId(), (cast 0), _m13069);
			if (_u5298) 
			{
				_l5297++;
			}
		}
		if (_d13575.isRequestIdSet() == true) 
		{
			_u5298 = T1228._m18236(_d13575.getRequestId(), (cast 1), _m13069);
			if (_u5298) 
			{
				_l5297++;
			}
		}
		if (_d13575.isGetPlayerWalletStatusSet() == true) 
		{
			_u5298 = T1228._m18237(this, _d13575.getGetPlayerWalletStatus(), (cast 3), _m13069);
			if (_u5298) 
			{
				_l5297++;
			}
		}
		if (_d13575.isWalletSet() == true) 
		{
			_u5298 = T1228._m18237(this, _d13575.getWallet(), (cast 4), _m13069);
			if (_u5298) 
			{
				_l5297++;
			}
		}
		_m13069._m17576(_s5296, _l5297);
	}

	public function _m18153( serializable:Serializable,  buff:T1229):Void
	{
		var _r13070:Int = buff._m17572();
		buff._m17573(2);
		var _u13071:Int = 0;
		var _g13072:Bool = false;
		var _s13581:GetPlayerWalletRequest = (cast serializable);
		if (_s13581.isMessageIdSet() == true) 
		{
			_g13072 = T1228._m18236(_s13581.getMessageId(), (cast 0), buff);
			if (_g13072) 
			{
				_u13071++;
			}
		}
		if (_s13581.isRequestIdSet() == true) 
		{
			_g13072 = T1228._m18236(_s13581.getRequestId(), (cast 1), buff);
			if (_g13072) 
			{
				_u13071++;
			}
		}
		buff._m17576(_r13070, _u13071);
	}

	public function _m18154( _o13074:Serializable,  _z13075:T1229):Void
	{
		var _a13076:Int = _z13075._m17572();
		_z13075._m17573(2);
		var _b13077:Int = 0;
		var _k13078:Bool = false;
		var _q13587:GetAchievementBoardResponse = (cast _o13074);
		if (_q13587.isMessageIdSet() == true) 
		{
			_k13078 = T1228._m18236(_q13587.getMessageId(), (cast 0), _z13075);
			if (_k13078) 
			{
				_b13077++;
			}
		}
		if (_q13587.isRequestIdSet() == true) 
		{
			_k13078 = T1228._m18236(_q13587.getRequestId(), (cast 1), _z13075);
			if (_k13078) 
			{
				_b13077++;
			}
		}
		if (_q13587.isGetAchievementBoardStatusSet() == true) 
		{
			_k13078 = T1228._m18237(this, _q13587.getGetAchievementBoardStatus(), (cast 3), _z13075);
			if (_k13078) 
			{
				_b13077++;
			}
		}
		if (_q13587.isAchievementBoardSet() == true) 
		{
			_k13078 = T1228._m18237(this, _q13587.getAchievementBoard(), (cast 4), _z13075);
			if (_k13078) 
			{
				_b13077++;
			}
		}
		_z13075._m17576(_a13076, _b13077);
	}

	public function _m18155( serializable:Serializable,  buff:T1229):Void
	{
		var _i5308:Int = buff._m17572();
		buff._m17573(2);
		var _i5309:Int = 0;
		var _o5310:Bool = false;
		var _w13593:GetAchievementBoardRequest = (cast serializable);
		if (_w13593.isMessageIdSet() == true) 
		{
			_o5310 = T1228._m18236(_w13593.getMessageId(), (cast 0), buff);
			if (_o5310) 
			{
				_i5309++;
			}
		}
		if (_w13593.isRequestIdSet() == true) 
		{
			_o5310 = T1228._m18236(_w13593.getRequestId(), (cast 1), buff);
			if (_o5310) 
			{
				_i5309++;
			}
		}
		buff._m17576(_i5308, _i5309);
	}

	public function _m18156( _o13080:Serializable,  _w13081:T1229):Void
	{
		var _j13082:Int = _w13081._m17572();
		_w13081._m17573(2);
		var _i13083:Int = 0;
		var _t13084:Bool = false;
		var _i13599:AchieveResponse = (cast _o13080);
		if (_i13599.isMessageIdSet() == true) 
		{
			_t13084 = T1228._m18236(_i13599.getMessageId(), (cast 0), _w13081);
			if (_t13084) 
			{
				_i13083++;
			}
		}
		if (_i13599.isRequestIdSet() == true) 
		{
			_t13084 = T1228._m18236(_i13599.getRequestId(), (cast 1), _w13081);
			if (_t13084) 
			{
				_i13083++;
			}
		}
		if (_i13599.isAchieveStatusSet() == true) 
		{
			_t13084 = T1228._m18237(this, _i13599.getAchieveStatus(), (cast 3), _w13081);
			if (_t13084) 
			{
				_i13083++;
			}
		}
		_w13081._m17576(_j13082, _i13083);
	}

	public function _m18157( serializable:Serializable,  buff:T1229):Void
	{
		var _k5316:Int = buff._m17572();
		buff._m17573(2);
		var _l5317:Int = 0;
		var _t5318:Bool = false;
		var _l13605:AchieveRequest = (cast serializable);
		if (_l13605.isMessageIdSet() == true) 
		{
			_t5318 = T1228._m18236(_l13605.getMessageId(), (cast 0), buff);
			if (_t5318) 
			{
				_l5317++;
			}
		}
		if (_l13605.isRequestIdSet() == true) 
		{
			_t5318 = T1228._m18236(_l13605.getRequestId(), (cast 1), buff);
			if (_t5318) 
			{
				_l5317++;
			}
		}
		if (_l13605.isAchivementIdSet() == true) 
		{
			_t5318 = T1228._m18236(_l13605.getAchivementId(), (cast 3), buff);
			if (_t5318) 
			{
				_l5317++;
			}
		}
		buff._m17576(_k5316, _l5317);
	}

	public function _m18158( _n13086:Serializable,  _k13087:T1229):Void
	{
		var _m13088:Int = _k13087._m17572();
		_k13087._m17573(2);
		var _w13089:Int = 0;
		var _u13090:Bool = false;
		var _y13611:SearchImmediateGameResponse = (cast _n13086);
		if (_y13611.isMessageIdSet() == true) 
		{
			_u13090 = T1228._m18236(_y13611.getMessageId(), (cast 0), _k13087);
			if (_u13090) 
			{
				_w13089++;
			}
		}
		if (_y13611.isRequestIdSet() == true) 
		{
			_u13090 = T1228._m18236(_y13611.getRequestId(), (cast 1), _k13087);
			if (_u13090) 
			{
				_w13089++;
			}
		}
		if (_y13611.isSearchImmediateGameStatusSet() == true) 
		{
			_u13090 = T1228._m18237(this, _y13611.getSearchImmediateGameStatus(), (cast 3), _k13087);
			if (_u13090) 
			{
				_w13089++;
			}
		}
		if (_y13611.isGameSet() == true) 
		{
			_u13090 = T1228._m18237(this, _y13611.getGame(), (cast 4), _k13087);
			if (_u13090) 
			{
				_w13089++;
			}
		}
		_k13087._m17576(_m13088, _w13089);
	}

	public function _m18159( serializable:Serializable,  buff:T1229):Void
	{
		var _i5324:Int = buff._m17572();
		buff._m17573(2);
		var _b5325:Int = 0;
		var _j5326:Bool = false;
		var _n13617:SearchImmediateGameRequest = (cast serializable);
		if (_n13617.isMessageIdSet() == true) 
		{
			_j5326 = T1228._m18236(_n13617.getMessageId(), (cast 0), buff);
			if (_j5326) 
			{
				_b5325++;
			}
		}
		if (_n13617.isRequestIdSet() == true) 
		{
			_j5326 = T1228._m18236(_n13617.getRequestId(), (cast 1), buff);
			if (_j5326) 
			{
				_b5325++;
			}
		}
		buff._m17576(_i5324, _b5325);
	}

	public function _m18160( _m13092:Serializable,  _l13093:T1229):Void
	{
		var _q5328:Int = _l13093._m17572();
		_l13093._m17573(2);
		var _a5329:Int = 0;
		var _y5330:Bool = false;
		var _y13623:SearchImmediateGameByConditionsRequest = (cast _m13092);
		if (_y13623.isMessageIdSet() == true) 
		{
			_y5330 = T1228._m18236(_y13623.getMessageId(), (cast 0), _l13093);
			if (_y5330) 
			{
				_a5329++;
			}
		}
		if (_y13623.isRequestIdSet() == true) 
		{
			_y5330 = T1228._m18236(_y13623.getRequestId(), (cast 1), _l13093);
			if (_y5330) 
			{
				_a5329++;
			}
		}
		if (_y13623.isQuerySet() == true) 
		{
			_y5330 = T1228._m18237(this, _y13623.getQuery(), (cast 3), _l13093);
			if (_y5330) 
			{
				_a5329++;
			}
		}
		if (_y13623.isMatchMakingConditionsSet() == true) 
		{
			_y5330 = T1228._m18237(this, _y13623.getMatchMakingConditions(), (cast 4), _l13093);
			if (_y5330) 
			{
				_a5329++;
			}
		}
		_l13093._m17576(_q5328, _a5329);
	}

	public function _m18161( serializable:Serializable,  buff:T1229):Void
	{
		var _i13094:Int = buff._m17572();
		buff._m17573(2);
		var _w13095:Int = 0;
		var _o13096:Bool = false;
		var _n13629:JoinGameResponse = (cast serializable);
		if (_n13629.isMessageIdSet() == true) 
		{
			_o13096 = T1228._m18236(_n13629.getMessageId(), (cast 0), buff);
			if (_o13096) 
			{
				_w13095++;
			}
		}
		if (_n13629.isRequestIdSet() == true) 
		{
			_o13096 = T1228._m18236(_n13629.getRequestId(), (cast 1), buff);
			if (_o13096) 
			{
				_w13095++;
			}
		}
		if (_n13629.isJoinGameStatusSet() == true) 
		{
			_o13096 = T1228._m18237(this, _n13629.getJoinGameStatus(), (cast 3), buff);
			if (_o13096) 
			{
				_w13095++;
			}
		}
		if (_n13629.isGameSet() == true) 
		{
			_o13096 = T1228._m18237(this, _n13629.getGame(), (cast 4), buff);
			if (_o13096) 
			{
				_w13095++;
			}
		}
		buff._m17576(_i13094, _w13095);
	}

	public function _m18162( serializable:Serializable,  buff:T1229):Void
	{
		var _u5336:Int = buff._m17572();
		buff._m17573(2);
		var _l5337:Int = 0;
		var _i5338:Bool = false;
		var _r13635:JoinGameRequest = (cast serializable);
		if (_r13635.isMessageIdSet() == true) 
		{
			_i5338 = T1228._m18236(_r13635.getMessageId(), (cast 0), buff);
			if (_i5338) 
			{
				_l5337++;
			}
		}
		if (_r13635.isRequestIdSet() == true) 
		{
			_i5338 = T1228._m18236(_r13635.getRequestId(), (cast 1), buff);
			if (_i5338) 
			{
				_l5337++;
			}
		}
		if (_r13635.isGameIdSet() == true) 
		{
			_i5338 = T1228._m18236(_r13635.getGameId(), (cast 3), buff);
			if (_i5338) 
			{
				_l5337++;
			}
		}
		buff._m17576(_u5336, _l5337);
	}

	public function _m18163( _j13098:Serializable,  _c13099:T1229):Void
	{
		var _r13100:Int = _c13099._m17572();
		_c13099._m17573(2);
		var _i13101:Int = 0;
		var _e13102:Bool = false;
		var _m13641:UnjoinGameResponse = (cast _j13098);
		if (_m13641.isMessageIdSet() == true) 
		{
			_e13102 = T1228._m18236(_m13641.getMessageId(), (cast 0), _c13099);
			if (_e13102) 
			{
				_i13101++;
			}
		}
		if (_m13641.isRequestIdSet() == true) 
		{
			_e13102 = T1228._m18236(_m13641.getRequestId(), (cast 1), _c13099);
			if (_e13102) 
			{
				_i13101++;
			}
		}
		if (_m13641.isUnjoinGameStatusSet() == true) 
		{
			_e13102 = T1228._m18237(this, _m13641.getUnjoinGameStatus(), (cast 3), _c13099);
			if (_e13102) 
			{
				_i13101++;
			}
		}
		if (_m13641.isGameIdSet() == true) 
		{
			_e13102 = T1228._m18236(_m13641.getGameId(), (cast 4), _c13099);
			if (_e13102) 
			{
				_i13101++;
			}
		}
		_c13099._m17576(_r13100, _i13101);
	}

	public function _m18164( serializable:Serializable,  buff:T1229):Void
	{
		var _i5344:Int = buff._m17572();
		buff._m17573(2);
		var _h5345:Int = 0;
		var _g5346:Bool = false;
		var _b13647:UnjoinGameRequest = (cast serializable);
		if (_b13647.isMessageIdSet() == true) 
		{
			_g5346 = T1228._m18236(_b13647.getMessageId(), (cast 0), buff);
			if (_g5346) 
			{
				_h5345++;
			}
		}
		if (_b13647.isRequestIdSet() == true) 
		{
			_g5346 = T1228._m18236(_b13647.getRequestId(), (cast 1), buff);
			if (_g5346) 
			{
				_h5345++;
			}
		}
		if (_b13647.isGameIdSet() == true) 
		{
			_g5346 = T1228._m18236(_b13647.getGameId(), (cast 3), buff);
			if (_g5346) 
			{
				_h5345++;
			}
		}
		buff._m17576(_i5344, _h5345);
	}

	public function _m18165( serializable:Serializable,  buff:T1229):Void
	{
		var _l5348:Int = buff._m17572();
		buff._m17573(2);
		var _s5349:Int = 0;
		var _w5350:Bool = false;
		var _c13653:AcceptFriendChallengeResponse = (cast serializable);
		if (_c13653.isMessageIdSet() == true) 
		{
			_w5350 = T1228._m18236(_c13653.getMessageId(), (cast 0), buff);
			if (_w5350) 
			{
				_s5349++;
			}
		}
		if (_c13653.isRequestIdSet() == true) 
		{
			_w5350 = T1228._m18236(_c13653.getRequestId(), (cast 1), buff);
			if (_w5350) 
			{
				_s5349++;
			}
		}
		if (_c13653.isAcceptFriendChallengeStatusSet() == true) 
		{
			_w5350 = T1228._m18237(this, _c13653.getAcceptFriendChallengeStatus(), (cast 3), buff);
			if (_w5350) 
			{
				_s5349++;
			}
		}
		if (_c13653.isGameIdSet() == true) 
		{
			_w5350 = T1228._m18236(_c13653.getGameId(), (cast 4), buff);
			if (_w5350) 
			{
				_s5349++;
			}
		}
		if (_c13653.isChallengeIdSet() == true) 
		{
			_w5350 = T1228._m18236(_c13653.getChallengeId(), (cast 5), buff);
			if (_w5350) 
			{
				_s5349++;
			}
		}
		buff._m17576(_l5348, _s5349);
	}

	public function _m18166( _h13104:Serializable,  _u13105:T1229):Void
	{
		var _p13106:Int = _u13105._m17572();
		_u13105._m17573(2);
		var _o13107:Int = 0;
		var _y13108:Bool = false;
		var _f13659:AcceptFriendChallengeRequest = (cast _h13104);
		if (_f13659.isMessageIdSet() == true) 
		{
			_y13108 = T1228._m18236(_f13659.getMessageId(), (cast 0), _u13105);
			if (_y13108) 
			{
				_o13107++;
			}
		}
		if (_f13659.isRequestIdSet() == true) 
		{
			_y13108 = T1228._m18236(_f13659.getRequestId(), (cast 1), _u13105);
			if (_y13108) 
			{
				_o13107++;
			}
		}
		if (_f13659.isChallengeIdSet() == true) 
		{
			_y13108 = T1228._m18236(_f13659.getChallengeId(), (cast 3), _u13105);
			if (_y13108) 
			{
				_o13107++;
			}
		}
		_u13105._m17576(_p13106, _o13107);
	}

	public function _m18167( serializable:Serializable,  buff:T1229):Void
	{
		var _d5356:Int = buff._m17572();
		buff._m17573(2);
		var _q5357:Int = 0;
		var _v5358:Bool = false;
		var _u13665:CancelFriendChallengeResponse = (cast serializable);
		if (_u13665.isMessageIdSet() == true) 
		{
			_v5358 = T1228._m18236(_u13665.getMessageId(), (cast 0), buff);
			if (_v5358) 
			{
				_q5357++;
			}
		}
		if (_u13665.isRequestIdSet() == true) 
		{
			_v5358 = T1228._m18236(_u13665.getRequestId(), (cast 1), buff);
			if (_v5358) 
			{
				_q5357++;
			}
		}
		if (_u13665.isCancelFriendChallengeStatusSet() == true) 
		{
			_v5358 = T1228._m18237(this, _u13665.getCancelFriendChallengeStatus(), (cast 3), buff);
			if (_v5358) 
			{
				_q5357++;
			}
		}
		if (_u13665.isChallengeIdSet() == true) 
		{
			_v5358 = T1228._m18236(_u13665.getChallengeId(), (cast 4), buff);
			if (_v5358) 
			{
				_q5357++;
			}
		}
		buff._m17576(_d5356, _q5357);
	}

	public function _m18168( serializable:Serializable,  buff:T1229):Void
	{
		var _q5360:Int = buff._m17572();
		buff._m17573(2);
		var _t5361:Int = 0;
		var _i5362:Bool = false;
		var _i13671:CancelFriendChallengeRequest = (cast serializable);
		if (_i13671.isMessageIdSet() == true) 
		{
			_i5362 = T1228._m18236(_i13671.getMessageId(), (cast 0), buff);
			if (_i5362) 
			{
				_t5361++;
			}
		}
		if (_i13671.isRequestIdSet() == true) 
		{
			_i5362 = T1228._m18236(_i13671.getRequestId(), (cast 1), buff);
			if (_i5362) 
			{
				_t5361++;
			}
		}
		if (_i13671.isChallengeIdSet() == true) 
		{
			_i5362 = T1228._m18236(_i13671.getChallengeId(), (cast 3), buff);
			if (_i5362) 
			{
				_t5361++;
			}
		}
		buff._m17576(_q5360, _t5361);
	}

	public function _m18169( _x13110:Serializable,  _h13111:T1229):Void
	{
		var _d13112:Int = _h13111._m17572();
		_h13111._m17573(2);
		var _p13113:Int = 0;
		var _y13114:Bool = false;
		var _r13677:RefuseFriendChallengeResponse = (cast _x13110);
		if (_r13677.isMessageIdSet() == true) 
		{
			_y13114 = T1228._m18236(_r13677.getMessageId(), (cast 0), _h13111);
			if (_y13114) 
			{
				_p13113++;
			}
		}
		if (_r13677.isRequestIdSet() == true) 
		{
			_y13114 = T1228._m18236(_r13677.getRequestId(), (cast 1), _h13111);
			if (_y13114) 
			{
				_p13113++;
			}
		}
		if (_r13677.isRefuseFriendChallengeStatusSet() == true) 
		{
			_y13114 = T1228._m18237(this, _r13677.getRefuseFriendChallengeStatus(), (cast 3), _h13111);
			if (_y13114) 
			{
				_p13113++;
			}
		}
		if (_r13677.isChallengeIdSet() == true) 
		{
			_y13114 = T1228._m18236(_r13677.getChallengeId(), (cast 4), _h13111);
			if (_y13114) 
			{
				_p13113++;
			}
		}
		_h13111._m17576(_d13112, _p13113);
	}

	public function _m18170( serializable:Serializable,  buff:T1229):Void
	{
		var _m5368:Int = buff._m17572();
		buff._m17573(2);
		var _i5369:Int = 0;
		var _p5370:Bool = false;
		var _g13683:RefuseFriendChallengeRequest = (cast serializable);
		if (_g13683.isMessageIdSet() == true) 
		{
			_p5370 = T1228._m18236(_g13683.getMessageId(), (cast 0), buff);
			if (_p5370) 
			{
				_i5369++;
			}
		}
		if (_g13683.isRequestIdSet() == true) 
		{
			_p5370 = T1228._m18236(_g13683.getRequestId(), (cast 1), buff);
			if (_p5370) 
			{
				_i5369++;
			}
		}
		if (_g13683.isChallengeIdSet() == true) 
		{
			_p5370 = T1228._m18236(_g13683.getChallengeId(), (cast 3), buff);
			if (_p5370) 
			{
				_i5369++;
			}
		}
		buff._m17576(_m5368, _i5369);
	}

	public function _m18171( _f13116:Serializable,  _k13117:T1229):Void
	{
		var _f13118:Int = _k13117._m17572();
		_k13117._m17573(2);
		var _h13119:Int = 0;
		var _i13120:Bool = false;
		var _s13689:GetChallengesResponse = (cast _f13116);
		if (_s13689.isMessageIdSet() == true) 
		{
			_i13120 = T1228._m18236(_s13689.getMessageId(), (cast 0), _k13117);
			if (_i13120) 
			{
				_h13119++;
			}
		}
		if (_s13689.isRequestIdSet() == true) 
		{
			_i13120 = T1228._m18236(_s13689.getRequestId(), (cast 1), _k13117);
			if (_i13120) 
			{
				_h13119++;
			}
		}
		if (_s13689.isGetChallengesStatusSet() == true) 
		{
			_i13120 = T1228._m18237(this, _s13689.getGetChallengesStatus(), (cast 3), _k13117);
			if (_i13120) 
			{
				_h13119++;
			}
		}
		if (_s13689.isChallengesSet() == true) 
		{
			var _k13690:NList<NChallenge> = _s13689.getChallenges();
			if (_k13690 == null) 
			{
				_i13120 = false;
			} else 
			{
				_k13117._m17579((cast 4));
				_k13117._m17580(T1221._l17181);
				var _s13691:Int = _k13117._m17572();
				_k13117._m17573(4);
				var _f13692:Int = _k13690.size();
				_k13117._m17579((cast _f13692));
				for (_t13137 in 0 ... _f13692) 
				{
					var _w13138:NChallenge = _k13690.get(_t13137);
					if (_w13138 == null) 
					{
						_k13117._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _w13138, _k13117);
					}
				}
				_k13117._m17582(_s13691, _k13117._m17572() - _s13691);
				_i13120 = true;
			}
			if (_i13120) 
			{
				_h13119++;
			}
		}
		_k13117._m17576(_f13118, _h13119);
	}

	public function _m18172( _j13122:Serializable,  _k13123:T1229):Void
	{
		var _r13124:Int = _k13123._m17572();
		_k13123._m17573(2);
		var _f13125:Int = 0;
		var _i13126:Bool = false;
		var _m13700:GetChallengesRequest = (cast _j13122);
		if (_m13700.isMessageIdSet() == true) 
		{
			_i13126 = T1228._m18236(_m13700.getMessageId(), (cast 0), _k13123);
			if (_i13126) 
			{
				_f13125++;
			}
		}
		if (_m13700.isRequestIdSet() == true) 
		{
			_i13126 = T1228._m18236(_m13700.getRequestId(), (cast 1), _k13123);
			if (_i13126) 
			{
				_f13125++;
			}
		}
		if (_m13700.isDbQuerySet() == true) 
		{
			_i13126 = T1228._m18237(this, _m13700.getDbQuery(), (cast 3), _k13123);
			if (_i13126) 
			{
				_f13125++;
			}
		}
		_k13123._m17576(_r13124, _f13125);
	}

	public function _m18173( _p13128:Serializable,  _e13129:T1229):Void
	{
		var _z13130:Int = _e13129._m17572();
		_e13129._m17573(2);
		var _s13131:Int = 0;
		var _t13132:Bool = false;
		var _f13706:StartGameResponse = (cast _p13128);
		if (_f13706.isMessageIdSet() == true) 
		{
			_t13132 = T1228._m18236(_f13706.getMessageId(), (cast 0), _e13129);
			if (_t13132) 
			{
				_s13131++;
			}
		}
		if (_f13706.isRequestIdSet() == true) 
		{
			_t13132 = T1228._m18236(_f13706.getRequestId(), (cast 1), _e13129);
			if (_t13132) 
			{
				_s13131++;
			}
		}
		if (_f13706.isStartGameStatusSet() == true) 
		{
			_t13132 = T1228._m18237(this, _f13706.getStartGameStatus(), (cast 3), _e13129);
			if (_t13132) 
			{
				_s13131++;
			}
		}
		if (_f13706.isGameIdSet() == true) 
		{
			_t13132 = T1228._m18236(_f13706.getGameId(), (cast 4), _e13129);
			if (_t13132) 
			{
				_s13131++;
			}
		}
		_e13129._m17576(_z13130, _s13131);
	}

	public function _m18174( serializable:Serializable,  buff:T1229):Void
	{
		var _n5389:Int = buff._m17572();
		buff._m17573(2);
		var _n5390:Int = 0;
		var _w5391:Bool = false;
		var _r13712:StartGameRequest = (cast serializable);
		if (_r13712.isMessageIdSet() == true) 
		{
			_w5391 = T1228._m18236(_r13712.getMessageId(), (cast 0), buff);
			if (_w5391) 
			{
				_n5390++;
			}
		}
		if (_r13712.isRequestIdSet() == true) 
		{
			_w5391 = T1228._m18236(_r13712.getRequestId(), (cast 1), buff);
			if (_w5391) 
			{
				_n5390++;
			}
		}
		if (_r13712.isGameIdSet() == true) 
		{
			_w5391 = T1228._m18236(_r13712.getGameId(), (cast 3), buff);
			if (_w5391) 
			{
				_n5390++;
			}
		}
		buff._m17576(_n5389, _n5390);
	}

	public function _m18175( serializable:Serializable,  buff:T1229):Void
	{
		var _u5393:Int = buff._m17572();
		buff._m17573(2);
		var _i5394:Int = 0;
		var _d5395:Bool = false;
		var _j13718:StopGameResponse = (cast serializable);
		if (_j13718.isMessageIdSet() == true) 
		{
			_d5395 = T1228._m18236(_j13718.getMessageId(), (cast 0), buff);
			if (_d5395) 
			{
				_i5394++;
			}
		}
		if (_j13718.isRequestIdSet() == true) 
		{
			_d5395 = T1228._m18236(_j13718.getRequestId(), (cast 1), buff);
			if (_d5395) 
			{
				_i5394++;
			}
		}
		if (_j13718.isStopGameStatusSet() == true) 
		{
			_d5395 = T1228._m18237(this, _j13718.getStopGameStatus(), (cast 3), buff);
			if (_d5395) 
			{
				_i5394++;
			}
		}
		if (_j13718.isGameIdSet() == true) 
		{
			_d5395 = T1228._m18236(_j13718.getGameId(), (cast 4), buff);
			if (_d5395) 
			{
				_i5394++;
			}
		}
		buff._m17576(_u5393, _i5394);
	}

	public function _m18176( serializable:Serializable,  buff:T1229):Void
	{
		var _e5397:Int = buff._m17572();
		buff._m17573(2);
		var _g5398:Int = 0;
		var _g5399:Bool = false;
		var _r13724:StopGameRequest = (cast serializable);
		if (_r13724.isMessageIdSet() == true) 
		{
			_g5399 = T1228._m18236(_r13724.getMessageId(), (cast 0), buff);
			if (_g5399) 
			{
				_g5398++;
			}
		}
		if (_r13724.isRequestIdSet() == true) 
		{
			_g5399 = T1228._m18236(_r13724.getRequestId(), (cast 1), buff);
			if (_g5399) 
			{
				_g5398++;
			}
		}
		if (_r13724.isGameIdSet() == true) 
		{
			_g5399 = T1228._m18236(_r13724.getGameId(), (cast 3), buff);
			if (_g5399) 
			{
				_g5398++;
			}
		}
		buff._m17576(_e5397, _g5398);
	}

	public function _m18177( _h13139:Serializable,  _s13140:T1229):Void
	{
		var _v5401:Int = _s13140._m17572();
		_s13140._m17573(2);
		var _s5402:Int = 0;
		var _l5403:Bool = false;
		var _m13730:CreateGameResponse = (cast _h13139);
		if (_m13730.isMessageIdSet() == true) 
		{
			_l5403 = T1228._m18236(_m13730.getMessageId(), (cast 0), _s13140);
			if (_l5403) 
			{
				_s5402++;
			}
		}
		if (_m13730.isRequestIdSet() == true) 
		{
			_l5403 = T1228._m18236(_m13730.getRequestId(), (cast 1), _s13140);
			if (_l5403) 
			{
				_s5402++;
			}
		}
		if (_m13730.isCreateGameStatusSet() == true) 
		{
			_l5403 = T1228._m18237(this, _m13730.getCreateGameStatus(), (cast 3), _s13140);
			if (_l5403) 
			{
				_s5402++;
			}
		}
		if (_m13730.isGameIdSet() == true) 
		{
			_l5403 = T1228._m18236(_m13730.getGameId(), (cast 4), _s13140);
			if (_l5403) 
			{
				_s5402++;
			}
		}
		_s13140._m17576(_v5401, _s5402);
	}

	public function _m18178( serializable:Serializable,  buff:T1229):Void
	{
		var _e13141:Int = buff._m17572();
		buff._m17573(2);
		var _v13142:Int = 0;
		var _o13143:Bool = false;
		var _w13736:CreateGameRequest = (cast serializable);
		if (_w13736.isMessageIdSet() == true) 
		{
			_o13143 = T1228._m18236(_w13736.getMessageId(), (cast 0), buff);
			if (_o13143) 
			{
				_v13142++;
			}
		}
		if (_w13736.isRequestIdSet() == true) 
		{
			_o13143 = T1228._m18236(_w13736.getRequestId(), (cast 1), buff);
			if (_o13143) 
			{
				_v13142++;
			}
		}
		buff._m17576(_e13141, _v13142);
	}

	public function _m18179( serializable:Serializable,  buff:T1229):Void
	{
		var _i5409:Int = buff._m17572();
		buff._m17573(2);
		var _q5410:Int = 0;
		var _y5411:Bool = false;
		var _f13742:CreateGameWithCharacteristicsRequest = (cast serializable);
		if (_f13742.isMessageIdSet() == true) 
		{
			_y5411 = T1228._m18236(_f13742.getMessageId(), (cast 0), buff);
			if (_y5411) 
			{
				_q5410++;
			}
		}
		if (_f13742.isRequestIdSet() == true) 
		{
			_y5411 = T1228._m18236(_f13742.getRequestId(), (cast 1), buff);
			if (_y5411) 
			{
				_q5410++;
			}
		}
		if (_f13742.isGameCharacteristicsSet() == true) 
		{
			_y5411 = T1228._m18237(this, _f13742.getGameCharacteristics(), (cast 3), buff);
			if (_y5411) 
			{
				_q5410++;
			}
		}
		buff._m17576(_i5409, _q5410);
	}

	public function _m18180( _j13145:Serializable,  _g13146:T1229):Void
	{
		var _e13147:Int = _g13146._m17572();
		_g13146._m17573(2);
		var _n13148:Int = 0;
		var _r13149:Bool = false;
		var _d13748:GetGamesResponse = (cast _j13145);
		if (_d13748.isMessageIdSet() == true) 
		{
			_r13149 = T1228._m18236(_d13748.getMessageId(), (cast 0), _g13146);
			if (_r13149) 
			{
				_n13148++;
			}
		}
		if (_d13748.isRequestIdSet() == true) 
		{
			_r13149 = T1228._m18236(_d13748.getRequestId(), (cast 1), _g13146);
			if (_r13149) 
			{
				_n13148++;
			}
		}
		if (_d13748.isGetGamesStatusSet() == true) 
		{
			_r13149 = T1228._m18237(this, _d13748.getGetGamesStatus(), (cast 3), _g13146);
			if (_r13149) 
			{
				_n13148++;
			}
		}
		if (_d13748.isGamesSet() == true) 
		{
			var _z13749:NList<NGame> = _d13748.getGames();
			if (_z13749 == null) 
			{
				_r13149 = false;
			} else 
			{
				_g13146._m17579((cast 4));
				_g13146._m17580(T1221._l17181);
				var _x13750:Int = _g13146._m17572();
				_g13146._m17573(4);
				var _u13751:Int = _z13749.size();
				_g13146._m17579((cast _u13751));
				for (_n5420 in 0 ... _u13751) 
				{
					var _g5421:NGame = _z13749.get(_n5420);
					if (_g5421 == null) 
					{
						_g13146._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _g5421, _g13146);
					}
				}
				_g13146._m17582(_x13750, _g13146._m17572() - _x13750);
				_r13149 = true;
			}
			if (_r13149) 
			{
				_n13148++;
			}
		}
		_g13146._m17576(_e13147, _n13148);
	}

	public function _m18181( _h13151:Serializable,  _y13152:T1229):Void
	{
		var _z13153:Int = _y13152._m17572();
		_y13152._m17573(2);
		var _r13154:Int = 0;
		var _j13155:Bool = false;
		var _o13759:GetGamesRequest = (cast _h13151);
		if (_o13759.isMessageIdSet() == true) 
		{
			_j13155 = T1228._m18236(_o13759.getMessageId(), (cast 0), _y13152);
			if (_j13155) 
			{
				_r13154++;
			}
		}
		if (_o13759.isRequestIdSet() == true) 
		{
			_j13155 = T1228._m18236(_o13759.getRequestId(), (cast 1), _y13152);
			if (_j13155) 
			{
				_r13154++;
			}
		}
		if (_o13759.isDbQuerySet() == true) 
		{
			_j13155 = T1228._m18237(this, _o13759.getDbQuery(), (cast 3), _y13152);
			if (_j13155) 
			{
				_r13154++;
			}
		}
		_y13152._m17576(_z13153, _r13154);
	}

	public function _m18182( serializable:Serializable,  buff:T1229):Void
	{
		var _b5426:Int = buff._m17572();
		buff._m17573(2);
		var _g5427:Int = 0;
		var _q5428:Bool = false;
		var _h13765:SaveAsGhostResponse = (cast serializable);
		if (_h13765.isMessageIdSet() == true) 
		{
			_q5428 = T1228._m18236(_h13765.getMessageId(), (cast 0), buff);
			if (_q5428) 
			{
				_g5427++;
			}
		}
		if (_h13765.isRequestIdSet() == true) 
		{
			_q5428 = T1228._m18236(_h13765.getRequestId(), (cast 1), buff);
			if (_q5428) 
			{
				_g5427++;
			}
		}
		if (_h13765.isSaveAsGhostStatusSet() == true) 
		{
			_q5428 = T1228._m18237(this, _h13765.getSaveAsGhostStatus(), (cast 3), buff);
			if (_q5428) 
			{
				_g5427++;
			}
		}
		buff._m17576(_b5426, _g5427);
	}

	public function _m18183( _q13157:Serializable,  _a13158:T1229):Void
	{
		var _e13159:Int = _a13158._m17572();
		_a13158._m17573(2);
		var _t13160:Int = 0;
		var _t13161:Bool = false;
		var _x13771:SaveAsGhostRequest = (cast _q13157);
		if (_x13771.isMessageIdSet() == true) 
		{
			_t13161 = T1228._m18236(_x13771.getMessageId(), (cast 0), _a13158);
			if (_t13161) 
			{
				_t13160++;
			}
		}
		if (_x13771.isRequestIdSet() == true) 
		{
			_t13161 = T1228._m18236(_x13771.getRequestId(), (cast 1), _a13158);
			if (_t13161) 
			{
				_t13160++;
			}
		}
		if (_x13771.isGameSet() == true) 
		{
			_t13161 = T1228._m18237(this, _x13771.getGame(), (cast 3), _a13158);
			if (_t13161) 
			{
				_t13160++;
			}
		}
		_a13158._m17576(_e13159, _t13160);
	}

	public function _m18184( serializable:Serializable,  buff:T1229):Void
	{
		var _j5434:Int = buff._m17572();
		buff._m17573(2);
		var _q5435:Int = 0;
		var _k5436:Bool = false;
		var _s13777:GetGhostsResponse = (cast serializable);
		if (_s13777.isMessageIdSet() == true) 
		{
			_k5436 = T1228._m18236(_s13777.getMessageId(), (cast 0), buff);
			if (_k5436) 
			{
				_q5435++;
			}
		}
		if (_s13777.isRequestIdSet() == true) 
		{
			_k5436 = T1228._m18236(_s13777.getRequestId(), (cast 1), buff);
			if (_k5436) 
			{
				_q5435++;
			}
		}
		if (_s13777.isGetGhostsStatusSet() == true) 
		{
			_k5436 = T1228._m18237(this, _s13777.getGetGhostsStatus(), (cast 3), buff);
			if (_k5436) 
			{
				_q5435++;
			}
		}
		if (_s13777.isGhostsSet() == true) 
		{
			var _e13778:NList<NGame> = _s13777.getGhosts();
			if (_e13778 == null) 
			{
				_k5436 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _o13779:Int = buff._m17572();
				buff._m17573(4);
				var _l13780:Int = _e13778.size();
				buff._m17579((cast _l13780));
				for (_u13190 in 0 ... _l13780) 
				{
					var _p13191:NGame = _e13778.get(_u13190);
					if (_p13191 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _p13191, buff);
					}
				}
				buff._m17582(_o13779, buff._m17572() - _o13779);
				_k5436 = true;
			}
			if (_k5436) 
			{
				_q5435++;
			}
		}
		buff._m17576(_j5434, _q5435);
	}

	public function _m18185( _c13163:Serializable,  _d13164:T1229):Void
	{
		var _c13165:Int = _d13164._m17572();
		_d13164._m17573(2);
		var _q13166:Int = 0;
		var _o13167:Bool = false;
		var _v5446:GetGhostsRequest = (cast _c13163);
		if (_v5446.isMessageIdSet() == true) 
		{
			_o13167 = T1228._m18236(_v5446.getMessageId(), (cast 0), _d13164);
			if (_o13167) 
			{
				_q13166++;
			}
		}
		if (_v5446.isRequestIdSet() == true) 
		{
			_o13167 = T1228._m18236(_v5446.getRequestId(), (cast 1), _d13164);
			if (_o13167) 
			{
				_q13166++;
			}
		}
		if (_v5446.isDbQuerySet() == true) 
		{
			_o13167 = T1228._m18237(this, _v5446.getDbQuery(), (cast 3), _d13164);
			if (_o13167) 
			{
				_q13166++;
			}
		}
		_d13164._m17576(_c13165, _q13166);
	}

	public function _m18186( serializable:Serializable,  buff:T1229):Void
	{
		var _a5447:Int = buff._m17572();
		buff._m17573(2);
		var _t5448:Int = 0;
		var _w5449:Bool = false;
		var _x5450:LoadGhostResponse = (cast serializable);
		if (_x5450.isMessageIdSet() == true) 
		{
			_w5449 = T1228._m18236(_x5450.getMessageId(), (cast 0), buff);
			if (_w5449) 
			{
				_t5448++;
			}
		}
		if (_x5450.isRequestIdSet() == true) 
		{
			_w5449 = T1228._m18236(_x5450.getRequestId(), (cast 1), buff);
			if (_w5449) 
			{
				_t5448++;
			}
		}
		if (_x5450.isLoadGhostStatusSet() == true) 
		{
			_w5449 = T1228._m18237(this, _x5450.getLoadGhostStatus(), (cast 3), buff);
			if (_w5449) 
			{
				_t5448++;
			}
		}
		if (_x5450.isGameSet() == true) 
		{
			_w5449 = T1228._m18237(this, _x5450.getGame(), (cast 4), buff);
			if (_w5449) 
			{
				_t5448++;
			}
		}
		buff._m17576(_a5447, _t5448);
	}

	public function _m18187( _r13169:Serializable,  _s13170:T1229):Void
	{
		var _e13171:Int = _s13170._m17572();
		_s13170._m17573(2);
		var _r13172:Int = 0;
		var _k13173:Bool = false;
		var _m5454:LoadGhostRequest = (cast _r13169);
		if (_m5454.isMessageIdSet() == true) 
		{
			_k13173 = T1228._m18236(_m5454.getMessageId(), (cast 0), _s13170);
			if (_k13173) 
			{
				_r13172++;
			}
		}
		if (_m5454.isRequestIdSet() == true) 
		{
			_k13173 = T1228._m18236(_m5454.getRequestId(), (cast 1), _s13170);
			if (_k13173) 
			{
				_r13172++;
			}
		}
		if (_m5454.isGameIdSet() == true) 
		{
			_k13173 = T1228._m18236(_m5454.getGameId(), (cast 3), _s13170);
			if (_k13173) 
			{
				_r13172++;
			}
		}
		_s13170._m17576(_e13171, _r13172);
	}

	public function _m18188( serializable:Serializable,  buff:T1229):Void
	{
		var _d5455:Int = buff._m17572();
		buff._m17573(2);
		var _a5456:Int = 0;
		var _r5457:Bool = false;
		var _f5458:SendGameChatResponse = (cast serializable);
		if (_f5458.isMessageIdSet() == true) 
		{
			_r5457 = T1228._m18236(_f5458.getMessageId(), (cast 0), buff);
			if (_r5457) 
			{
				_a5456++;
			}
		}
		if (_f5458.isRequestIdSet() == true) 
		{
			_r5457 = T1228._m18236(_f5458.getRequestId(), (cast 1), buff);
			if (_r5457) 
			{
				_a5456++;
			}
		}
		if (_f5458.isSendGameChatStatusSet() == true) 
		{
			_r5457 = T1228._m18237(this, _f5458.getSendGameChatStatus(), (cast 3), buff);
			if (_r5457) 
			{
				_a5456++;
			}
		}
		buff._m17576(_d5455, _a5456);
	}

	public function _m18189( _g13175:Serializable,  _t13176:T1229):Void
	{
		var _p13177:Int = _t13176._m17572();
		_t13176._m17573(2);
		var _y13178:Int = 0;
		var _t13179:Bool = false;
		var _g5462:SendGameChatRequest = (cast _g13175);
		if (_g5462.isMessageIdSet() == true) 
		{
			_t13179 = T1228._m18236(_g5462.getMessageId(), (cast 0), _t13176);
			if (_t13179) 
			{
				_y13178++;
			}
		}
		if (_g5462.isRequestIdSet() == true) 
		{
			_t13179 = T1228._m18236(_g5462.getRequestId(), (cast 1), _t13176);
			if (_t13179) 
			{
				_y13178++;
			}
		}
		if (_g5462.isGameIdSet() == true) 
		{
			_t13179 = T1228._m18236(_g5462.getGameId(), (cast 3), _t13176);
			if (_t13179) 
			{
				_y13178++;
			}
		}
		if (_g5462.isMessageSet() == true) 
		{
			_t13179 = T1228._m18236(_g5462.getMessage(), (cast 4), _t13176);
			if (_t13179) 
			{
				_y13178++;
			}
		}
		_t13176._m17576(_p13177, _y13178);
	}

	public function _m18190( _y13181:Serializable,  _o13182:T1229):Void
	{
		var _q13183:Int = _o13182._m17572();
		_o13182._m17573(2);
		var _i13184:Int = 0;
		var _j13185:Bool = false;
		var _o5466:SendGameChatToPlayerRequest = (cast _y13181);
		if (_o5466.isMessageIdSet() == true) 
		{
			_j13185 = T1228._m18236(_o5466.getMessageId(), (cast 0), _o13182);
			if (_j13185) 
			{
				_i13184++;
			}
		}
		if (_o5466.isRequestIdSet() == true) 
		{
			_j13185 = T1228._m18236(_o5466.getRequestId(), (cast 1), _o13182);
			if (_j13185) 
			{
				_i13184++;
			}
		}
		if (_o5466.isGameIdSet() == true) 
		{
			_j13185 = T1228._m18236(_o5466.getGameId(), (cast 3), _o13182);
			if (_j13185) 
			{
				_i13184++;
			}
		}
		if (_o5466.isPlayerIdSet() == true) 
		{
			_j13185 = T1228._m18236(_o5466.getPlayerId(), (cast 4), _o13182);
			if (_j13185) 
			{
				_i13184++;
			}
		}
		if (_o5466.isMessageSet() == true) 
		{
			_j13185 = T1228._m18236(_o5466.getMessage(), (cast 5), _o13182);
			if (_j13185) 
			{
				_i13184++;
			}
		}
		_o13182._m17576(_q13183, _i13184);
	}

	public function _m18191( serializable:Serializable,  buff:T1229):Void
	{
		var _g5467:Int = buff._m17572();
		buff._m17573(2);
		var _v5468:Int = 0;
		var _r5469:Bool = false;
		var _b5470:SendGameChatToPlayerListRequest = (cast serializable);
		if (_b5470.isMessageIdSet() == true) 
		{
			_r5469 = T1228._m18236(_b5470.getMessageId(), (cast 0), buff);
			if (_r5469) 
			{
				_v5468++;
			}
		}
		if (_b5470.isRequestIdSet() == true) 
		{
			_r5469 = T1228._m18236(_b5470.getRequestId(), (cast 1), buff);
			if (_r5469) 
			{
				_v5468++;
			}
		}
		if (_b5470.isGameIdSet() == true) 
		{
			_r5469 = T1228._m18236(_b5470.getGameId(), (cast 3), buff);
			if (_r5469) 
			{
				_v5468++;
			}
		}
		if (_b5470.isMessageSet() == true) 
		{
			_r5469 = T1228._m18236(_b5470.getMessage(), (cast 4), buff);
			if (_r5469) 
			{
				_v5468++;
			}
		}
		buff._m17576(_g5467, _v5468);
	}

	public function _m18192( _o13192:Serializable,  _a13193:T1229):Void
	{
		var _v13194:Int = _a13193._m17572();
		_a13193._m17573(2);
		var _n13195:Int = 0;
		var _c13196:Bool = false;
		var _j5474:GetStorablesResponse = (cast _o13192);
		if (_j5474.isMessageIdSet() == true) 
		{
			_c13196 = T1228._m18236(_j5474.getMessageId(), (cast 0), _a13193);
			if (_c13196) 
			{
				_n13195++;
			}
		}
		if (_j5474.isRequestIdSet() == true) 
		{
			_c13196 = T1228._m18236(_j5474.getRequestId(), (cast 1), _a13193);
			if (_c13196) 
			{
				_n13195++;
			}
		}
		if (_j5474.isGetStorablesStatusSet() == true) 
		{
			_c13196 = T1228._m18237(this, _j5474.getGetStorablesStatus(), (cast 3), _a13193);
			if (_c13196) 
			{
				_n13195++;
			}
		}
		if (_j5474.isStorablesSet() == true) 
		{
			var _k13831:NList<Storable> = _j5474.getStorables();
			if (_k13831 == null) 
			{
				_c13196 = false;
			} else 
			{
				_a13193._m17579((cast 4));
				_a13193._m17580(T1221._l17181);
				var _m13832:Int = _a13193._m17572();
				_a13193._m17573(4);
				var _l13833:Int = _k13831.size();
				_a13193._m17579((cast _l13833));
				for (_s13201 in 0 ... _l13833) 
				{
					var _q13202:Storable = _k13831.get(_s13201);
					if (_q13202 == null) 
					{
						_a13193._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _q13202, _a13193);
					}
				}
				_a13193._m17582(_m13832, _a13193._m17572() - _m13832);
				_c13196 = true;
			}
			if (_c13196) 
			{
				_n13195++;
			}
		}
		_a13193._m17576(_v13194, _n13195);
	}

	public function _m18193( serializable:Serializable,  buff:T1229):Void
	{
		var _r5480:Int = buff._m17572();
		buff._m17573(2);
		var _w5481:Int = 0;
		var _y5482:Bool = false;
		var _k5483:GetStorablesRequest = (cast serializable);
		if (_k5483.isMessageIdSet() == true) 
		{
			_y5482 = T1228._m18236(_k5483.getMessageId(), (cast 0), buff);
			if (_y5482) 
			{
				_w5481++;
			}
		}
		if (_k5483.isRequestIdSet() == true) 
		{
			_y5482 = T1228._m18236(_k5483.getRequestId(), (cast 1), buff);
			if (_y5482) 
			{
				_w5481++;
			}
		}
		if (_k5483.isDbQuerySet() == true) 
		{
			_y5482 = T1228._m18237(this, _k5483.getDbQuery(), (cast 3), buff);
			if (_y5482) 
			{
				_w5481++;
			}
		}
		buff._m17576(_r5480, _w5481);
	}

	public function _m18194( serializable:Serializable,  buff:T1229):Void
	{
		var _j5484:Int = buff._m17572();
		buff._m17573(2);
		var _e5485:Int = 0;
		var _m5486:Bool = false;
		var _r5487:SaveStorableResponse = (cast serializable);
		if (_r5487.isMessageIdSet() == true) 
		{
			_m5486 = T1228._m18236(_r5487.getMessageId(), (cast 0), buff);
			if (_m5486) 
			{
				_e5485++;
			}
		}
		if (_r5487.isRequestIdSet() == true) 
		{
			_m5486 = T1228._m18236(_r5487.getRequestId(), (cast 1), buff);
			if (_m5486) 
			{
				_e5485++;
			}
		}
		if (_r5487.isSaveStorableStatusSet() == true) 
		{
			_m5486 = T1228._m18237(this, _r5487.getSaveStorableStatus(), (cast 3), buff);
			if (_m5486) 
			{
				_e5485++;
			}
		}
		buff._m17576(_j5484, _e5485);
	}

	public function _m18195( _s13203:Serializable,  _a13204:T1229):Void
	{
		var _a13205:Int = _a13204._m17572();
		_a13204._m17573(2);
		var _a13206:Int = 0;
		var _i13207:Bool = false;
		var _z5491:SaveStorableRequest = (cast _s13203);
		if (_z5491.isMessageIdSet() == true) 
		{
			_i13207 = T1228._m18236(_z5491.getMessageId(), (cast 0), _a13204);
			if (_i13207) 
			{
				_a13206++;
			}
		}
		if (_z5491.isRequestIdSet() == true) 
		{
			_i13207 = T1228._m18236(_z5491.getRequestId(), (cast 1), _a13204);
			if (_i13207) 
			{
				_a13206++;
			}
		}
		if (_z5491.isStorableSet() == true) 
		{
			_i13207 = T1228._m18237(this, _z5491.getStorable(), (cast 3), _a13204);
			if (_i13207) 
			{
				_a13206++;
			}
		}
		_a13204._m17576(_a13205, _a13206);
	}

	public function _m18196( serializable:Serializable,  buff:T1229):Void
	{
		var _p5492:Int = buff._m17572();
		buff._m17573(2);
		var _k5493:Int = 0;
		var _h5494:Bool = false;
		var _g5495:SaveStorableListRequest = (cast serializable);
		if (_g5495.isMessageIdSet() == true) 
		{
			_h5494 = T1228._m18236(_g5495.getMessageId(), (cast 0), buff);
			if (_h5494) 
			{
				_k5493++;
			}
		}
		if (_g5495.isRequestIdSet() == true) 
		{
			_h5494 = T1228._m18236(_g5495.getRequestId(), (cast 1), buff);
			if (_h5494) 
			{
				_k5493++;
			}
		}
		if (_g5495.isStorablesSet() == true) 
		{
			var _i13860:NList<Storable> = _g5495.getStorables();
			if (_i13860 == null) 
			{
				_h5494 = false;
			} else 
			{
				buff._m17579((cast 3));
				buff._m17580(T1221._l17181);
				var _h13861:Int = buff._m17572();
				buff._m17573(4);
				var _z13862:Int = _i13860.size();
				buff._m17579((cast _z13862));
				for (_e13212 in 0 ... _z13862) 
				{
					var _i13213:Storable = _i13860.get(_e13212);
					if (_i13213 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _i13213, buff);
					}
				}
				buff._m17582(_h13861, buff._m17572() - _h13861);
				_h5494 = true;
			}
			if (_h5494) 
			{
				_k5493++;
			}
		}
		buff._m17576(_p5492, _k5493);
	}

	public function _m18197( _h13214:Serializable,  _b13215:T1229):Void
	{
		var _m5501:Int = _b13215._m17572();
		_b13215._m17573(2);
		var _f5502:Int = 0;
		var _x5503:Bool = false;
		var _v5504:NextPlayerTurnResponse = (cast _h13214);
		if (_v5504.isMessageIdSet() == true) 
		{
			_x5503 = T1228._m18236(_v5504.getMessageId(), (cast 0), _b13215);
			if (_x5503) 
			{
				_f5502++;
			}
		}
		if (_v5504.isRequestIdSet() == true) 
		{
			_x5503 = T1228._m18236(_v5504.getRequestId(), (cast 1), _b13215);
			if (_x5503) 
			{
				_f5502++;
			}
		}
		if (_v5504.isNextPlayerTurnStatusSet() == true) 
		{
			_x5503 = T1228._m18237(this, _v5504.getNextPlayerTurnStatus(), (cast 3), _b13215);
			if (_x5503) 
			{
				_f5502++;
			}
		}
		_b13215._m17576(_m5501, _f5502);
	}

	public function _m18198( serializable:Serializable,  buff:T1229):Void
	{
		var _s13216:Int = buff._m17572();
		buff._m17573(2);
		var _j13217:Int = 0;
		var _k13218:Bool = false;
		var _s5508:NextPlayerTurnRequest = (cast serializable);
		if (_s5508.isMessageIdSet() == true) 
		{
			_k13218 = T1228._m18236(_s5508.getMessageId(), (cast 0), buff);
			if (_k13218) 
			{
				_j13217++;
			}
		}
		if (_s5508.isRequestIdSet() == true) 
		{
			_k13218 = T1228._m18236(_s5508.getRequestId(), (cast 1), buff);
			if (_k13218) 
			{
				_j13217++;
			}
		}
		if (_s5508.isGameIdSet() == true) 
		{
			_k13218 = T1228._m18236(_s5508.getGameId(), (cast 3), buff);
			if (_k13218) 
			{
				_j13217++;
			}
		}
		buff._m17576(_s13216, _j13217);
	}

	public function _m18199( serializable:Serializable,  buff:T1229):Void
	{
		var _b5509:Int = buff._m17572();
		buff._m17573(2);
		var _q5510:Int = 0;
		var _p5511:Bool = false;
		var _i5512:SetPlayerNameResponse = (cast serializable);
		if (_i5512.isMessageIdSet() == true) 
		{
			_p5511 = T1228._m18236(_i5512.getMessageId(), (cast 0), buff);
			if (_p5511) 
			{
				_q5510++;
			}
		}
		if (_i5512.isRequestIdSet() == true) 
		{
			_p5511 = T1228._m18236(_i5512.getRequestId(), (cast 1), buff);
			if (_p5511) 
			{
				_q5510++;
			}
		}
		if (_i5512.isSetPlayerNameStatusSet() == true) 
		{
			_p5511 = T1228._m18237(this, _i5512.getSetPlayerNameStatus(), (cast 3), buff);
			if (_p5511) 
			{
				_q5510++;
			}
		}
		buff._m17576(_b5509, _q5510);
	}

	public function _m18200( serializable:Serializable,  buff:T1229):Void
	{
		var _v5513:Int = buff._m17572();
		buff._m17573(2);
		var _a5514:Int = 0;
		var _g5515:Bool = false;
		var _f5516:SetPlayerNameRequest = (cast serializable);
		if (_f5516.isMessageIdSet() == true) 
		{
			_g5515 = T1228._m18236(_f5516.getMessageId(), (cast 0), buff);
			if (_g5515) 
			{
				_a5514++;
			}
		}
		if (_f5516.isRequestIdSet() == true) 
		{
			_g5515 = T1228._m18236(_f5516.getRequestId(), (cast 1), buff);
			if (_g5515) 
			{
				_a5514++;
			}
		}
		if (_f5516.isNameSet() == true) 
		{
			_g5515 = T1228._m18236(_f5516.getName(), (cast 3), buff);
			if (_g5515) 
			{
				_a5514++;
			}
		}
		buff._m17576(_v5513, _a5514);
	}

	public function _m18201( serializable:Serializable,  buff:T1229):Void
	{
		var _t5517:Int = buff._m17572();
		buff._m17573(2);
		var _r5518:Int = 0;
		var _s5519:Bool = false;
		var _h5520:UpdateStorableResponse = (cast serializable);
		if (_h5520.isMessageIdSet() == true) 
		{
			_s5519 = T1228._m18236(_h5520.getMessageId(), (cast 0), buff);
			if (_s5519) 
			{
				_r5518++;
			}
		}
		if (_h5520.isRequestIdSet() == true) 
		{
			_s5519 = T1228._m18236(_h5520.getRequestId(), (cast 1), buff);
			if (_s5519) 
			{
				_r5518++;
			}
		}
		if (_h5520.isUpdateStorableStatusSet() == true) 
		{
			_s5519 = T1228._m18237(this, _h5520.getUpdateStorableStatus(), (cast 3), buff);
			if (_s5519) 
			{
				_r5518++;
			}
		}
		buff._m17576(_t5517, _r5518);
	}

	public function _m18202( serializable:Serializable,  buff:T1229):Void
	{
		var _e5521:Int = buff._m17572();
		buff._m17573(2);
		var _r5522:Int = 0;
		var _i5523:Bool = false;
		var _u5524:UpdateStorableRequest = (cast serializable);
		if (_u5524.isMessageIdSet() == true) 
		{
			_i5523 = T1228._m18236(_u5524.getMessageId(), (cast 0), buff);
			if (_i5523) 
			{
				_r5522++;
			}
		}
		if (_u5524.isRequestIdSet() == true) 
		{
			_i5523 = T1228._m18236(_u5524.getRequestId(), (cast 1), buff);
			if (_i5523) 
			{
				_r5522++;
			}
		}
		if (_u5524.isStorableSet() == true) 
		{
			_i5523 = T1228._m18237(this, _u5524.getStorable(), (cast 3), buff);
			if (_i5523) 
			{
				_r5522++;
			}
		}
		buff._m17576(_e5521, _r5522);
	}

	public function _m18203( _i13220:Serializable,  _z13221:T1229):Void
	{
		var _d13222:Int = _z13221._m17572();
		_z13221._m17573(2);
		var _n13223:Int = 0;
		var _a13224:Bool = false;
		var _a5528:UpdateStorableListRequest = (cast _i13220);
		if (_a5528.isMessageIdSet() == true) 
		{
			_a13224 = T1228._m18236(_a5528.getMessageId(), (cast 0), _z13221);
			if (_a13224) 
			{
				_n13223++;
			}
		}
		if (_a5528.isRequestIdSet() == true) 
		{
			_a13224 = T1228._m18236(_a5528.getRequestId(), (cast 1), _z13221);
			if (_a13224) 
			{
				_n13223++;
			}
		}
		if (_a5528.isStorablesSet() == true) 
		{
			var _p13907:NList<Storable> = _a5528.getStorables();
			if (_p13907 == null) 
			{
				_a13224 = false;
			} else 
			{
				_z13221._m17579((cast 3));
				_z13221._m17580(T1221._l17181);
				var _v13908:Int = _z13221._m17572();
				_z13221._m17573(4);
				var _d13909:Int = _p13907.size();
				_z13221._m17579((cast _d13909));
				for (_r5532 in 0 ... _d13909) 
				{
					var _r5533:Storable = _p13907.get(_r5532);
					if (_r5533 == null) 
					{
						_z13221._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _r5533, _z13221);
					}
				}
				_z13221._m17582(_v13908, _z13221._m17572() - _v13908);
				_a13224 = true;
			}
			if (_a13224) 
			{
				_n13223++;
			}
		}
		_z13221._m17576(_d13222, _n13223);
	}

	public function _m18204( serializable:Serializable,  buff:T1229):Void
	{
		var _p5534:Int = buff._m17572();
		buff._m17573(2);
		var _v5535:Int = 0;
		var _s5536:Bool = false;
		var _n5537:RemoveStorableResponse = (cast serializable);
		if (_n5537.isMessageIdSet() == true) 
		{
			_s5536 = T1228._m18236(_n5537.getMessageId(), (cast 0), buff);
			if (_s5536) 
			{
				_v5535++;
			}
		}
		if (_n5537.isRequestIdSet() == true) 
		{
			_s5536 = T1228._m18236(_n5537.getRequestId(), (cast 1), buff);
			if (_s5536) 
			{
				_v5535++;
			}
		}
		if (_n5537.isRemoveStorableStatusSet() == true) 
		{
			_s5536 = T1228._m18237(this, _n5537.getRemoveStorableStatus(), (cast 3), buff);
			if (_s5536) 
			{
				_v5535++;
			}
		}
		buff._m17576(_p5534, _v5535);
	}

	public function _m18205( _y13226:Serializable,  _y13227:T1229):Void
	{
		var _q13228:Int = _y13227._m17572();
		_y13227._m17573(2);
		var _c13229:Int = 0;
		var _c13230:Bool = false;
		var _l5541:RemoveStorableRequest = (cast _y13226);
		if (_l5541.isMessageIdSet() == true) 
		{
			_c13230 = T1228._m18236(_l5541.getMessageId(), (cast 0), _y13227);
			if (_c13230) 
			{
				_c13229++;
			}
		}
		if (_l5541.isRequestIdSet() == true) 
		{
			_c13230 = T1228._m18236(_l5541.getRequestId(), (cast 1), _y13227);
			if (_c13230) 
			{
				_c13229++;
			}
		}
		if (_l5541.isStorableSet() == true) 
		{
			_c13230 = T1228._m18237(this, _l5541.getStorable(), (cast 3), _y13227);
			if (_c13230) 
			{
				_c13229++;
			}
		}
		_y13227._m17576(_q13228, _c13229);
	}

	public function _m18206( _n13232:Serializable,  _k13233:T1229):Void
	{
		var _f13234:Int = _k13233._m17572();
		_k13233._m17573(2);
		var _h13235:Int = 0;
		var _p13236:Bool = false;
		var _w5545:RemoveStorableListRequest = (cast _n13232);
		if (_w5545.isMessageIdSet() == true) 
		{
			_p13236 = T1228._m18236(_w5545.getMessageId(), (cast 0), _k13233);
			if (_p13236) 
			{
				_h13235++;
			}
		}
		if (_w5545.isRequestIdSet() == true) 
		{
			_p13236 = T1228._m18236(_w5545.getRequestId(), (cast 1), _k13233);
			if (_p13236) 
			{
				_h13235++;
			}
		}
		if (_w5545.isStorablesSet() == true) 
		{
			var _m13930:NList<Storable> = _w5545.getStorables();
			if (_m13930 == null) 
			{
				_p13236 = false;
			} else 
			{
				_k13233._m17579((cast 3));
				_k13233._m17580(T1221._l17181);
				var _e13931:Int = _k13233._m17572();
				_k13233._m17573(4);
				var _u13932:Int = _m13930.size();
				_k13233._m17579((cast _u13932));
				for (_q13241 in 0 ... _u13932) 
				{
					var _c13242:Storable = _m13930.get(_q13241);
					if (_c13242 == null) 
					{
						_k13233._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _c13242, _k13233);
					}
				}
				_k13233._m17582(_e13931, _k13233._m17572() - _e13931);
				_p13236 = true;
			}
			if (_p13236) 
			{
				_h13235++;
			}
		}
		_k13233._m17576(_f13234, _h13235);
	}

	public function _m18207( serializable:Serializable,  buff:T1229):Void
	{
		var _a5551:Int = buff._m17572();
		buff._m17573(2);
		var _f5552:Int = 0;
		var _p5553:Bool = false;
		var _u5554:InviteThirdPartyFriendResponse = (cast serializable);
		if (_u5554.isMessageIdSet() == true) 
		{
			_p5553 = T1228._m18236(_u5554.getMessageId(), (cast 0), buff);
			if (_p5553) 
			{
				_f5552++;
			}
		}
		if (_u5554.isRequestIdSet() == true) 
		{
			_p5553 = T1228._m18236(_u5554.getRequestId(), (cast 1), buff);
			if (_p5553) 
			{
				_f5552++;
			}
		}
		if (_u5554.isInviteThirdPartyFriendStatusSet() == true) 
		{
			_p5553 = T1228._m18237(this, _u5554.getInviteThirdPartyFriendStatus(), (cast 3), buff);
			if (_p5553) 
			{
				_f5552++;
			}
		}
		buff._m17576(_a5551, _f5552);
	}

	public function _m18208( _f13243:Serializable,  _x13244:T1229):Void
	{
		var _n13245:Int = _x13244._m17572();
		_x13244._m17573(2);
		var _a13246:Int = 0;
		var _k13247:Bool = false;
		var _t5558:InviteThirdPartyFriendRequest = (cast _f13243);
		if (_t5558.isMessageIdSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getMessageId(), (cast 0), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isRequestIdSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getRequestId(), (cast 1), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isThirdPartyIdSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getThirdPartyId(), (cast 3), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isTitleSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getTitle(), (cast 4), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isInviteMessageSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getInviteMessage(), (cast 5), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isPictureUrlSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getPictureUrl(), (cast 6), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isLinkSet() == true) 
		{
			_k13247 = T1228._m18236(_t5558.getLink(), (cast 7), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		if (_t5558.isThirdPartySourceSet() == true) 
		{
			_k13247 = T1228._m18237(this, _t5558.getThirdPartySource(), (cast 8), _x13244);
			if (_k13247) 
			{
				_a13246++;
			}
		}
		_x13244._m17576(_n13245, _a13246);
	}

	public function _m18209( serializable:Serializable,  buff:T1229):Void
	{
		var _s5559:Int = buff._m17572();
		buff._m17573(2);
		var _b5560:Int = 0;
		var _m5561:Bool = false;
		var _g5562:PublishThirdPartyMessageResponse = (cast serializable);
		if (_g5562.isMessageIdSet() == true) 
		{
			_m5561 = T1228._m18236(_g5562.getMessageId(), (cast 0), buff);
			if (_m5561) 
			{
				_b5560++;
			}
		}
		if (_g5562.isRequestIdSet() == true) 
		{
			_m5561 = T1228._m18236(_g5562.getRequestId(), (cast 1), buff);
			if (_m5561) 
			{
				_b5560++;
			}
		}
		if (_g5562.isPublishThirdPartyMessageStatusSet() == true) 
		{
			_m5561 = T1228._m18237(this, _g5562.getPublishThirdPartyMessageStatus(), (cast 3), buff);
			if (_m5561) 
			{
				_b5560++;
			}
		}
		buff._m17576(_s5559, _b5560);
	}

	public function _m18210( serializable:Serializable,  buff:T1229):Void
	{
		var _v5563:Int = buff._m17572();
		buff._m17573(2);
		var _b5564:Int = 0;
		var _p5565:Bool = false;
		var _r5566:PublishThirdPartyMessageRequest = (cast serializable);
		if (_r5566.isMessageIdSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getMessageId(), (cast 0), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isRequestIdSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getRequestId(), (cast 1), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isTitleSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getTitle(), (cast 3), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isMessageSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getMessage(), (cast 4), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isPictureUrlSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getPictureUrl(), (cast 5), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isLinkSet() == true) 
		{
			_p5565 = T1228._m18236(_r5566.getLink(), (cast 6), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		if (_r5566.isThirdPartySourceSet() == true) 
		{
			_p5565 = T1228._m18237(this, _r5566.getThirdPartySource(), (cast 7), buff);
			if (_p5565) 
			{
				_b5564++;
			}
		}
		buff._m17576(_v5563, _b5564);
	}

	public function _m18211( _k13249:Serializable,  _a13250:T1229):Void
	{
		var _w13251:Int = _a13250._m17572();
		_a13250._m17573(2);
		var _p13252:Int = 0;
		var _t13253:Bool = false;
		var _h5570:ThirdPartyLoginResponse = (cast _k13249);
		if (_h5570.isMessageIdSet() == true) 
		{
			_t13253 = T1228._m18236(_h5570.getMessageId(), (cast 0), _a13250);
			if (_t13253) 
			{
				_p13252++;
			}
		}
		if (_h5570.isRequestIdSet() == true) 
		{
			_t13253 = T1228._m18236(_h5570.getRequestId(), (cast 1), _a13250);
			if (_t13253) 
			{
				_p13252++;
			}
		}
		if (_h5570.isThirdPartyLoginStatusSet() == true) 
		{
			_t13253 = T1228._m18237(this, _h5570.getThirdPartyLoginStatus(), (cast 3), _a13250);
			if (_t13253) 
			{
				_p13252++;
			}
		}
		if (_h5570.isPlayerSet() == true) 
		{
			_t13253 = T1228._m18237(this, _h5570.getPlayer(), (cast 4), _a13250);
			if (_t13253) 
			{
				_p13252++;
			}
		}
		_a13250._m17576(_w13251, _p13252);
	}

	public function _m18212( _i13255:Serializable,  _f13256:T1229):Void
	{
		var _q13257:Int = _f13256._m17572();
		_f13256._m17573(2);
		var _u13258:Int = 0;
		var _y13259:Bool = false;
		var _k5574:ThirdPartyLoginRequest = (cast _i13255);
		if (_k5574.isMessageIdSet() == true) 
		{
			_y13259 = T1228._m18236(_k5574.getMessageId(), (cast 0), _f13256);
			if (_y13259) 
			{
				_u13258++;
			}
		}
		if (_k5574.isRequestIdSet() == true) 
		{
			_y13259 = T1228._m18236(_k5574.getRequestId(), (cast 1), _f13256);
			if (_y13259) 
			{
				_u13258++;
			}
		}
		if (_k5574.isThirdPartySourceSet() == true) 
		{
			_y13259 = T1228._m18237(this, _k5574.getThirdPartySource(), (cast 3), _f13256);
			if (_y13259) 
			{
				_u13258++;
			}
		}
		_f13256._m17576(_q13257, _u13258);
	}

	public function _m18213( serializable:Serializable,  buff:T1229):Void
	{
		var _o5575:Int = buff._m17572();
		buff._m17573(2);
		var _y5576:Int = 0;
		var _f5577:Bool = false;
		var _q5578:ThirdPartyLoginWithTokenRequest = (cast serializable);
		if (_q5578.isMessageIdSet() == true) 
		{
			_f5577 = T1228._m18236(_q5578.getMessageId(), (cast 0), buff);
			if (_f5577) 
			{
				_y5576++;
			}
		}
		if (_q5578.isRequestIdSet() == true) 
		{
			_f5577 = T1228._m18236(_q5578.getRequestId(), (cast 1), buff);
			if (_f5577) 
			{
				_y5576++;
			}
		}
		if (_q5578.isThirdPartySourceSet() == true) 
		{
			_f5577 = T1228._m18237(this, _q5578.getThirdPartySource(), (cast 3), buff);
			if (_f5577) 
			{
				_y5576++;
			}
		}
		if (_q5578.isAccessTokenSet() == true) 
		{
			_f5577 = T1228._m18236(_q5578.getAccessToken(), (cast 4), buff);
			if (_f5577) 
			{
				_y5576++;
			}
		}
		buff._m17576(_o5575, _y5576);
	}

	public function _m18214( _b13261:Serializable,  _f13262:T1229):Void
	{
		var _o13263:Int = _f13262._m17572();
		_f13262._m17573(2);
		var _q13264:Int = 0;
		var _r13265:Bool = false;
		var _y5582:SaveGameResponse = (cast _b13261);
		if (_y5582.isMessageIdSet() == true) 
		{
			_r13265 = T1228._m18236(_y5582.getMessageId(), (cast 0), _f13262);
			if (_r13265) 
			{
				_q13264++;
			}
		}
		if (_y5582.isRequestIdSet() == true) 
		{
			_r13265 = T1228._m18236(_y5582.getRequestId(), (cast 1), _f13262);
			if (_r13265) 
			{
				_q13264++;
			}
		}
		if (_y5582.isSaveGameStatusSet() == true) 
		{
			_r13265 = T1228._m18237(this, _y5582.getSaveGameStatus(), (cast 3), _f13262);
			if (_r13265) 
			{
				_q13264++;
			}
		}
		if (_y5582.isGameIdSet() == true) 
		{
			_r13265 = T1228._m18236(_y5582.getGameId(), (cast 4), _f13262);
			if (_r13265) 
			{
				_q13264++;
			}
		}
		_f13262._m17576(_o13263, _q13264);
	}

	public function _m18215( serializable:Serializable,  buff:T1229):Void
	{
		var _h5583:Int = buff._m17572();
		buff._m17573(2);
		var _q5584:Int = 0;
		var _c5585:Bool = false;
		var _h5586:SaveGameRequest = (cast serializable);
		if (_h5586.isMessageIdSet() == true) 
		{
			_c5585 = T1228._m18236(_h5586.getMessageId(), (cast 0), buff);
			if (_c5585) 
			{
				_q5584++;
			}
		}
		if (_h5586.isRequestIdSet() == true) 
		{
			_c5585 = T1228._m18236(_h5586.getRequestId(), (cast 1), buff);
			if (_c5585) 
			{
				_q5584++;
			}
		}
		if (_h5586.isGameSet() == true) 
		{
			_c5585 = T1228._m18237(this, _h5586.getGame(), (cast 3), buff);
			if (_c5585) 
			{
				_q5584++;
			}
		}
		buff._m17576(_h5583, _q5584);
	}

	public function _m18216( serializable:Serializable,  buff:T1229):Void
	{
		var _q5587:Int = buff._m17572();
		buff._m17573(2);
		var _i5588:Int = 0;
		var _k5589:Bool = false;
		var _j5590:LoadGameResponse = (cast serializable);
		if (_j5590.isMessageIdSet() == true) 
		{
			_k5589 = T1228._m18236(_j5590.getMessageId(), (cast 0), buff);
			if (_k5589) 
			{
				_i5588++;
			}
		}
		if (_j5590.isRequestIdSet() == true) 
		{
			_k5589 = T1228._m18236(_j5590.getRequestId(), (cast 1), buff);
			if (_k5589) 
			{
				_i5588++;
			}
		}
		if (_j5590.isLoadGameStatusSet() == true) 
		{
			_k5589 = T1228._m18237(this, _j5590.getLoadGameStatus(), (cast 3), buff);
			if (_k5589) 
			{
				_i5588++;
			}
		}
		if (_j5590.isGameSet() == true) 
		{
			_k5589 = T1228._m18237(this, _j5590.getGame(), (cast 4), buff);
			if (_k5589) 
			{
				_i5588++;
			}
		}
		buff._m17576(_q5587, _i5588);
	}

	public function _m18217( _t13267:Serializable,  _p13268:T1229):Void
	{
		var _f13269:Int = _p13268._m17572();
		_p13268._m17573(2);
		var _w13270:Int = 0;
		var _d13271:Bool = false;
		var _y5594:LoadGameRequest = (cast _t13267);
		if (_y5594.isMessageIdSet() == true) 
		{
			_d13271 = T1228._m18236(_y5594.getMessageId(), (cast 0), _p13268);
			if (_d13271) 
			{
				_w13270++;
			}
		}
		if (_y5594.isRequestIdSet() == true) 
		{
			_d13271 = T1228._m18236(_y5594.getRequestId(), (cast 1), _p13268);
			if (_d13271) 
			{
				_w13270++;
			}
		}
		if (_y5594.isGameIdSet() == true) 
		{
			_d13271 = T1228._m18236(_y5594.getGameId(), (cast 3), _p13268);
			if (_d13271) 
			{
				_w13270++;
			}
		}
		_p13268._m17576(_f13269, _w13270);
	}

	public function _m18218( serializable:Serializable,  buff:T1229):Void
	{
		var _l5595:Int = buff._m17572();
		buff._m17573(2);
		var _l5596:Int = 0;
		var _t5597:Bool = false;
		var _l5598:SavePlayerStorableResponse = (cast serializable);
		if (_l5598.isMessageIdSet() == true) 
		{
			_t5597 = T1228._m18236(_l5598.getMessageId(), (cast 0), buff);
			if (_t5597) 
			{
				_l5596++;
			}
		}
		if (_l5598.isRequestIdSet() == true) 
		{
			_t5597 = T1228._m18236(_l5598.getRequestId(), (cast 1), buff);
			if (_t5597) 
			{
				_l5596++;
			}
		}
		if (_l5598.isSavePlayerStorableStatusSet() == true) 
		{
			_t5597 = T1228._m18237(this, _l5598.getSavePlayerStorableStatus(), (cast 3), buff);
			if (_t5597) 
			{
				_l5596++;
			}
		}
		buff._m17576(_l5595, _l5596);
	}

	public function _m18219( serializable:Serializable,  buff:T1229):Void
	{
		var _k5599:Int = buff._m17572();
		buff._m17573(2);
		var _n5600:Int = 0;
		var _n5601:Bool = false;
		var _l5602:SavePlayerStorableRequest = (cast serializable);
		if (_l5602.isMessageIdSet() == true) 
		{
			_n5601 = T1228._m18236(_l5602.getMessageId(), (cast 0), buff);
			if (_n5601) 
			{
				_n5600++;
			}
		}
		if (_l5602.isRequestIdSet() == true) 
		{
			_n5601 = T1228._m18236(_l5602.getRequestId(), (cast 1), buff);
			if (_n5601) 
			{
				_n5600++;
			}
		}
		if (_l5602.isStorableSet() == true) 
		{
			_n5601 = T1228._m18237(this, _l5602.getStorable(), (cast 3), buff);
			if (_n5601) 
			{
				_n5600++;
			}
		}
		buff._m17576(_k5599, _n5600);
	}

	public function _m18220( serializable:Serializable,  buff:T1229):Void
	{
		var _n5603:Int = buff._m17572();
		buff._m17573(2);
		var _q5604:Int = 0;
		var _m5605:Bool = false;
		var _f5606:SavePlayerStorableListRequest = (cast serializable);
		if (_f5606.isMessageIdSet() == true) 
		{
			_m5605 = T1228._m18236(_f5606.getMessageId(), (cast 0), buff);
			if (_m5605) 
			{
				_q5604++;
			}
		}
		if (_f5606.isRequestIdSet() == true) 
		{
			_m5605 = T1228._m18236(_f5606.getRequestId(), (cast 1), buff);
			if (_m5605) 
			{
				_q5604++;
			}
		}
		if (_f5606.isStorablesSet() == true) 
		{
			var _e14019:NList<Storable> = _f5606.getStorables();
			if (_e14019 == null) 
			{
				_m5605 = false;
			} else 
			{
				buff._m17579((cast 3));
				buff._m17580(T1221._l17181);
				var _e14020:Int = buff._m17572();
				buff._m17573(4);
				var _i14021:Int = _e14019.size();
				buff._m17579((cast _i14021));
				for (_b5610 in 0 ... _i14021) 
				{
					var _b5611:Storable = _e14019.get(_b5610);
					if (_b5611 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _b5611, buff);
					}
				}
				buff._m17582(_e14020, buff._m17572() - _e14020);
				_m5605 = true;
			}
			if (_m5605) 
			{
				_q5604++;
			}
		}
		buff._m17576(_n5603, _q5604);
	}

	public function _m18221( _e13273:Serializable,  _q13274:T1229):Void
	{
		var _e13275:Int = _q13274._m17572();
		_q13274._m17573(2);
		var _s13276:Int = 0;
		var _p13277:Bool = false;
		var _l5615:UpdatePlayerStorableResponse = (cast _e13273);
		if (_l5615.isMessageIdSet() == true) 
		{
			_p13277 = T1228._m18236(_l5615.getMessageId(), (cast 0), _q13274);
			if (_p13277) 
			{
				_s13276++;
			}
		}
		if (_l5615.isRequestIdSet() == true) 
		{
			_p13277 = T1228._m18236(_l5615.getRequestId(), (cast 1), _q13274);
			if (_p13277) 
			{
				_s13276++;
			}
		}
		if (_l5615.isUpdatePlayerStorableStatusSet() == true) 
		{
			_p13277 = T1228._m18237(this, _l5615.getUpdatePlayerStorableStatus(), (cast 3), _q13274);
			if (_p13277) 
			{
				_s13276++;
			}
		}
		_q13274._m17576(_e13275, _s13276);
	}

	public function _m18222( serializable:Serializable,  buff:T1229):Void
	{
		var _q5616:Int = buff._m17572();
		buff._m17573(2);
		var _j5617:Int = 0;
		var _g5618:Bool = false;
		var _k5619:UpdatePlayerStorableRequest = (cast serializable);
		if (_k5619.isMessageIdSet() == true) 
		{
			_g5618 = T1228._m18236(_k5619.getMessageId(), (cast 0), buff);
			if (_g5618) 
			{
				_j5617++;
			}
		}
		if (_k5619.isRequestIdSet() == true) 
		{
			_g5618 = T1228._m18236(_k5619.getRequestId(), (cast 1), buff);
			if (_g5618) 
			{
				_j5617++;
			}
		}
		if (_k5619.isStorableSet() == true) 
		{
			_g5618 = T1228._m18237(this, _k5619.getStorable(), (cast 3), buff);
			if (_g5618) 
			{
				_j5617++;
			}
		}
		buff._m17576(_q5616, _j5617);
	}

	public function _m18223( _h13279:Serializable,  _l13280:T1229):Void
	{
		var _k13281:Int = _l13280._m17572();
		_l13280._m17573(2);
		var _h13282:Int = 0;
		var _m13283:Bool = false;
		var _f5623:UpdatePlayerStorableListRequest = (cast _h13279);
		if (_f5623.isMessageIdSet() == true) 
		{
			_m13283 = T1228._m18236(_f5623.getMessageId(), (cast 0), _l13280);
			if (_m13283) 
			{
				_h13282++;
			}
		}
		if (_f5623.isRequestIdSet() == true) 
		{
			_m13283 = T1228._m18236(_f5623.getRequestId(), (cast 1), _l13280);
			if (_m13283) 
			{
				_h13282++;
			}
		}
		if (_f5623.isStorablesSet() == true) 
		{
			var _l14042:NList<Storable> = _f5623.getStorables();
			if (_l14042 == null) 
			{
				_m13283 = false;
			} else 
			{
				_l13280._m17579((cast 3));
				_l13280._m17580(T1221._l17181);
				var _w14043:Int = _l13280._m17572();
				_l13280._m17573(4);
				var _q14044:Int = _l14042.size();
				_l13280._m17579((cast _q14044));
				for (_t5627 in 0 ... _q14044) 
				{
					var _y5628:Storable = _l14042.get(_t5627);
					if (_y5628 == null) 
					{
						_l13280._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _y5628, _l13280);
					}
				}
				_l13280._m17582(_w14043, _l13280._m17572() - _w14043);
				_m13283 = true;
			}
			if (_m13283) 
			{
				_h13282++;
			}
		}
		_l13280._m17576(_k13281, _h13282);
	}

	public function _m18224( serializable:Serializable,  buff:T1229):Void
	{
		var _a5629:Int = buff._m17572();
		buff._m17573(2);
		var _s5630:Int = 0;
		var _h5631:Bool = false;
		var _w5632:RemovePlayerStorableResponse = (cast serializable);
		if (_w5632.isMessageIdSet() == true) 
		{
			_h5631 = T1228._m18236(_w5632.getMessageId(), (cast 0), buff);
			if (_h5631) 
			{
				_s5630++;
			}
		}
		if (_w5632.isRequestIdSet() == true) 
		{
			_h5631 = T1228._m18236(_w5632.getRequestId(), (cast 1), buff);
			if (_h5631) 
			{
				_s5630++;
			}
		}
		if (_w5632.isRemovePlayerStorableStatusSet() == true) 
		{
			_h5631 = T1228._m18237(this, _w5632.getRemovePlayerStorableStatus(), (cast 3), buff);
			if (_h5631) 
			{
				_s5630++;
			}
		}
		buff._m17576(_a5629, _s5630);
	}

	public function _m18225( _v13285:Serializable,  _k13286:T1229):Void
	{
		var _n13287:Int = _k13286._m17572();
		_k13286._m17573(2);
		var _h13288:Int = 0;
		var _n13289:Bool = false;
		var _s5636:RemovePlayerStorableRequest = (cast _v13285);
		if (_s5636.isMessageIdSet() == true) 
		{
			_n13289 = T1228._m18236(_s5636.getMessageId(), (cast 0), _k13286);
			if (_n13289) 
			{
				_h13288++;
			}
		}
		if (_s5636.isRequestIdSet() == true) 
		{
			_n13289 = T1228._m18236(_s5636.getRequestId(), (cast 1), _k13286);
			if (_n13289) 
			{
				_h13288++;
			}
		}
		if (_s5636.isStorableSet() == true) 
		{
			_n13289 = T1228._m18237(this, _s5636.getStorable(), (cast 3), _k13286);
			if (_n13289) 
			{
				_h13288++;
			}
		}
		_k13286._m17576(_n13287, _h13288);
	}

	public function _m18226( _n13291:Serializable,  _d13292:T1229):Void
	{
		var _g13293:Int = _d13292._m17572();
		_d13292._m17573(2);
		var _g13294:Int = 0;
		var _m13295:Bool = false;
		var _y5640:RemovePlayerStorableListRequest = (cast _n13291);
		if (_y5640.isMessageIdSet() == true) 
		{
			_m13295 = T1228._m18236(_y5640.getMessageId(), (cast 0), _d13292);
			if (_m13295) 
			{
				_g13294++;
			}
		}
		if (_y5640.isRequestIdSet() == true) 
		{
			_m13295 = T1228._m18236(_y5640.getRequestId(), (cast 1), _d13292);
			if (_m13295) 
			{
				_g13294++;
			}
		}
		if (_y5640.isStorablesSet() == true) 
		{
			var _d14065:NList<Storable> = _y5640.getStorables();
			if (_d14065 == null) 
			{
				_m13295 = false;
			} else 
			{
				_d13292._m17579((cast 3));
				_d13292._m17580(T1221._l17181);
				var _o14066:Int = _d13292._m17572();
				_d13292._m17573(4);
				var _e14067:Int = _d14065.size();
				_d13292._m17579((cast _e14067));
				for (_c5644 in 0 ... _e14067) 
				{
					var _r5645:Storable = _d14065.get(_c5644);
					if (_r5645 == null) 
					{
						_d13292._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _r5645, _d13292);
					}
				}
				_d13292._m17582(_o14066, _d13292._m17572() - _o14066);
				_m13295 = true;
			}
			if (_m13295) 
			{
				_g13294++;
			}
		}
		_d13292._m17576(_g13293, _g13294);
	}

	public function _m18227( _o13297:Serializable,  _m13298:T1229):Void
	{
		var _n13299:Int = _m13298._m17572();
		_m13298._m17573(2);
		var _z13300:Int = 0;
		var _m13301:Bool = false;
		var _p5649:GetPlayerStorablesResponse = (cast _o13297);
		if (_p5649.isMessageIdSet() == true) 
		{
			_m13301 = T1228._m18236(_p5649.getMessageId(), (cast 0), _m13298);
			if (_m13301) 
			{
				_z13300++;
			}
		}
		if (_p5649.isRequestIdSet() == true) 
		{
			_m13301 = T1228._m18236(_p5649.getRequestId(), (cast 1), _m13298);
			if (_m13301) 
			{
				_z13300++;
			}
		}
		if (_p5649.isGetPlayerStorablesStatusSet() == true) 
		{
			_m13301 = T1228._m18237(this, _p5649.getGetPlayerStorablesStatus(), (cast 3), _m13298);
			if (_m13301) 
			{
				_z13300++;
			}
		}
		if (_p5649.isStorablesSet() == true) 
		{
			var _q14076:NList<Storable> = _p5649.getStorables();
			if (_q14076 == null) 
			{
				_m13301 = false;
			} else 
			{
				_m13298._m17579((cast 4));
				_m13298._m17580(T1221._l17181);
				var _r14077:Int = _m13298._m17572();
				_m13298._m17573(4);
				var _v14078:Int = _q14076.size();
				_m13298._m17579((cast _v14078));
				for (_u13460 in 0 ... _v14078) 
				{
					var _m14080:Storable = _q14076.get(_u13460);
					if (_m14080 == null) 
					{
						_m13298._m17580(T1221._m17179);
					} else 
					{
						T1228._m18240(this, _m14080, _m13298);
					}
				}
				_m13298._m17582(_r14077, _m13298._m17572() - _r14077);
				_m13301 = true;
			}
			if (_m13301) 
			{
				_z13300++;
			}
		}
		_m13298._m17576(_n13299, _z13300);
	}

	public function _m18228( serializable:Serializable,  buff:T1229):Void
	{
		var _m5655:Int = buff._m17572();
		buff._m17573(2);
		var _i5656:Int = 0;
		var _j5657:Bool = false;
		var _s5658:GetPlayerStorablesRequest = (cast serializable);
		if (_s5658.isMessageIdSet() == true) 
		{
			_j5657 = T1228._m18236(_s5658.getMessageId(), (cast 0), buff);
			if (_j5657) 
			{
				_i5656++;
			}
		}
		if (_s5658.isRequestIdSet() == true) 
		{
			_j5657 = T1228._m18236(_s5658.getRequestId(), (cast 1), buff);
			if (_j5657) 
			{
				_i5656++;
			}
		}
		if (_s5658.isDbQuerySet() == true) 
		{
			_j5657 = T1228._m18237(this, _s5658.getDbQuery(), (cast 3), buff);
			if (_j5657) 
			{
				_i5656++;
			}
		}
		buff._m17576(_m5655, _i5656);
	}

	public function _m18229( _d13303:Serializable,  _u13304:T1229):Void
	{
		var _v13305:Int = _u13304._m17572();
		_u13304._m17573(2);
		var _l13306:Int = 0;
		var _h13307:Bool = false;
		var _r5662:PauseSessionMonitoringResponse = (cast _d13303);
		if (_r5662.isMessageIdSet() == true) 
		{
			_h13307 = T1228._m18236(_r5662.getMessageId(), (cast 0), _u13304);
			if (_h13307) 
			{
				_l13306++;
			}
		}
		if (_r5662.isRequestIdSet() == true) 
		{
			_h13307 = T1228._m18236(_r5662.getRequestId(), (cast 1), _u13304);
			if (_h13307) 
			{
				_l13306++;
			}
		}
		if (_r5662.isPauseSessionMonitoringStatusSet() == true) 
		{
			_h13307 = T1228._m18237(this, _r5662.getPauseSessionMonitoringStatus(), (cast 3), _u13304);
			if (_h13307) 
			{
				_l13306++;
			}
		}
		_u13304._m17576(_v13305, _l13306);
	}

	public function _m18230( serializable:Serializable,  buff:T1229):Void
	{
		var _d5663:Int = buff._m17572();
		buff._m17573(2);
		var _q5664:Int = 0;
		var _g5665:Bool = false;
		var _j5666:PauseSessionMonitoringRequest = (cast serializable);
		if (_j5666.isMessageIdSet() == true) 
		{
			_g5665 = T1228._m18236(_j5666.getMessageId(), (cast 0), buff);
			if (_g5665) 
			{
				_q5664++;
			}
		}
		if (_j5666.isRequestIdSet() == true) 
		{
			_g5665 = T1228._m18236(_j5666.getRequestId(), (cast 1), buff);
			if (_g5665) 
			{
				_q5664++;
			}
		}
		buff._m17576(_d5663, _q5664);
	}

	public function _m18231( serializable:Serializable,  buff:T1229):Void
	{
		var _g5667:Int = buff._m17572();
		buff._m17573(2);
		var _f5668:Int = 0;
		var _m5669:Bool = false;
		var _l5670:ResumeSessionMonitoringResponse = (cast serializable);
		if (_l5670.isMessageIdSet() == true) 
		{
			_m5669 = T1228._m18236(_l5670.getMessageId(), (cast 0), buff);
			if (_m5669) 
			{
				_f5668++;
			}
		}
		if (_l5670.isRequestIdSet() == true) 
		{
			_m5669 = T1228._m18236(_l5670.getRequestId(), (cast 1), buff);
			if (_m5669) 
			{
				_f5668++;
			}
		}
		if (_l5670.isResumeSessionMonitoringStatusSet() == true) 
		{
			_m5669 = T1228._m18237(this, _l5670.getResumeSessionMonitoringStatus(), (cast 3), buff);
			if (_m5669) 
			{
				_f5668++;
			}
		}
		buff._m17576(_g5667, _f5668);
	}

	public function _m18232( _x13309:Serializable,  _l13310:T1229):Void
	{
		var _t13311:Int = _l13310._m17572();
		_l13310._m17573(2);
		var _o13312:Int = 0;
		var _b13313:Bool = false;
		var _c5674:ResumeSessionMonitoringRequest = (cast _x13309);
		if (_c5674.isMessageIdSet() == true) 
		{
			_b13313 = T1228._m18236(_c5674.getMessageId(), (cast 0), _l13310);
			if (_b13313) 
			{
				_o13312++;
			}
		}
		if (_c5674.isRequestIdSet() == true) 
		{
			_b13313 = T1228._m18236(_c5674.getRequestId(), (cast 1), _l13310);
			if (_b13313) 
			{
				_o13312++;
			}
		}
		_l13310._m17576(_t13311, _o13312);
	}

	public function _m18233( serializable:Serializable,  buff:T1229):Void
	{
		var _n5675:Int = buff._m17572();
		buff._m17573(2);
		var _i5676:Int = 0;
		var _u5677:Bool = false;
		var _q5678:PublishFriendThirdPartyMessageResponse = (cast serializable);
		if (_q5678.isMessageIdSet() == true) 
		{
			_u5677 = T1228._m18236(_q5678.getMessageId(), (cast 0), buff);
			if (_u5677) 
			{
				_i5676++;
			}
		}
		if (_q5678.isRequestIdSet() == true) 
		{
			_u5677 = T1228._m18236(_q5678.getRequestId(), (cast 1), buff);
			if (_u5677) 
			{
				_i5676++;
			}
		}
		if (_q5678.isPublishFriendThirdPartyMessageStatusSet() == true) 
		{
			_u5677 = T1228._m18237(this, _q5678.getPublishFriendThirdPartyMessageStatus(), (cast 3), buff);
			if (_u5677) 
			{
				_i5676++;
			}
		}
		buff._m17576(_n5675, _i5676);
	}

	public function _m18234( _g14117:Serializable,  _m13316:T1229):Void
	{
		var _j14119:Int = _m13316._m17572();
		_m13316._m17573(2);
		var _s13454:Int = 0;
		var _x14121:Bool = false;
		var _x5682:PublishFriendThirdPartyMessageRequest = (cast _g14117);
		if (_x5682.isMessageIdSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getMessageId(), (cast 0), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isRequestIdSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getRequestId(), (cast 1), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isTitleSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getTitle(), (cast 3), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isMessageSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getMessage(), (cast 4), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isPictureUrlSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getPictureUrl(), (cast 5), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isLinkSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getLink(), (cast 6), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isThirdPartyIdSet() == true) 
		{
			_x14121 = T1228._m18236(_x5682.getThirdPartyId(), (cast 7), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		if (_x5682.isThirdPartySourceSet() == true) 
		{
			_x14121 = T1228._m18237(this, _x5682.getThirdPartySource(), (cast 8), _m13316);
			if (_x14121) 
			{
				_s13454++;
			}
		}
		_m13316._m17576(_j14119, _s13454);
	}

	public function _m17594( buffer:T1220):Serializable
	{
		var _r5683:T1229 = (cast buffer);
		return (cast T1227._m18252(this, _r5683));
	}

	public function _m17595( _v14125:T1220,  _q14126:Int):Serializable
	{
		var _f13412:T1229 = (cast _v14125);
		if (_q14126 == -1) 
		{
			return _m18253(_f13412);
		}
		if (_q14126 == -2) 
		{
			return _m18254(_f13412);
		}
		if (_q14126 == -3) 
		{
			return _m18255(_f13412);
		}
		if (_q14126 == -4) 
		{
			return _m18256(_f13412);
		}
		if (_q14126 == -5) 
		{
			return _m18257(_f13412);
		}
		if (_q14126 == -6) 
		{
			return _m18258(_f13412);
		}
		if (_q14126 == -7) 
		{
			return _m18259(_f13412);
		}
		if (_q14126 == -8) 
		{
			return _m18260(_f13412);
		}
		if (_q14126 == -9) 
		{
			return _m18261(_f13412);
		}
		if (_q14126 == -10) 
		{
			return _m18262(_f13412);
		}
		if (_q14126 == -11) 
		{
			return _m18263(_f13412);
		}
		if (_q14126 == -12) 
		{
			return _m18264(_f13412);
		}
		if (_q14126 == -13) 
		{
			return _m18265(_f13412);
		}
		if (_q14126 == -14) 
		{
			return _m18266(_f13412);
		}
		if (_q14126 == -15) 
		{
			return _m18267(_f13412);
		}
		if (_q14126 == -16) 
		{
			return _m18268(_f13412);
		}
		if (_q14126 == -17) 
		{
			return _m18269(_f13412);
		}
		if (_q14126 == -18) 
		{
			return _m18270(_f13412);
		}
		if (_q14126 == -19) 
		{
			return _m18271(_f13412);
		}
		if (_q14126 == -20) 
		{
			return _m18272(_f13412);
		}
		if (_q14126 == -21) 
		{
			return _m18273(_f13412);
		}
		if (_q14126 == -22) 
		{
			return _m18274(_f13412);
		}
		if (_q14126 == -23) 
		{
			return _m18275(_f13412);
		}
		if (_q14126 == -24) 
		{
			return _m18276(_f13412);
		}
		if (_q14126 == -26) 
		{
			return _m18277(_f13412);
		}
		if (_q14126 == -27) 
		{
			return _m18278(_f13412);
		}
		if (_q14126 == -28) 
		{
			return _m18279(_f13412);
		}
		if (_q14126 == -29) 
		{
			return _m18280(_f13412);
		}
		if (_q14126 == -30) 
		{
			return _m18281(_f13412);
		}
		if (_q14126 == -31) 
		{
			return _m18282(_f13412);
		}
		if (_q14126 == -32) 
		{
			return _m18283(_f13412);
		}
		if (_q14126 == -33) 
		{
			return _m18284(_f13412);
		}
		if (_q14126 == -34) 
		{
			return _m18285(_f13412);
		}
		if (_q14126 == -35) 
		{
			return _m18286(_f13412);
		}
		if (_q14126 == -10018) 
		{
			return _m18287(_f13412);
		}
		if (_q14126 == -10038) 
		{
			return _m18288(_f13412);
		}
		if (_q14126 == -10058) 
		{
			return _m18289(_f13412);
		}
		if (_q14126 == -10078) 
		{
			return _m18290(_f13412);
		}
		if (_q14126 == -10098) 
		{
			return _m18291(_f13412);
		}
		if (_q14126 == -10118) 
		{
			return _m18292(_f13412);
		}
		if (_q14126 == -10138) 
		{
			return _m18293(_f13412);
		}
		if (_q14126 == -10158) 
		{
			return _m18294(_f13412);
		}
		if (_q14126 == -10178) 
		{
			return _m18295(_f13412);
		}
		if (_q14126 == -10198) 
		{
			return _m18296(_f13412);
		}
		if (_q14126 == -10218) 
		{
			return _m18297(_f13412);
		}
		if (_q14126 == -10238) 
		{
			return _m18298(_f13412);
		}
		if (_q14126 == -10258) 
		{
			return _m18299(_f13412);
		}
		if (_q14126 == -10278) 
		{
			return _m18300(_f13412);
		}
		if (_q14126 == -10298) 
		{
			return _m18301(_f13412);
		}
		if (_q14126 == -10318) 
		{
			return _m18302(_f13412);
		}
		if (_q14126 == -10338) 
		{
			return _m18303(_f13412);
		}
		if (_q14126 == -10358) 
		{
			return _m18304(_f13412);
		}
		if (_q14126 == -10378) 
		{
			return _m18305(_f13412);
		}
		if (_q14126 == -10398) 
		{
			return _m18306(_f13412);
		}
		if (_q14126 == -10418) 
		{
			return _m18307(_f13412);
		}
		if (_q14126 == -10438) 
		{
			return _m18308(_f13412);
		}
		if (_q14126 == -10458) 
		{
			return _m18309(_f13412);
		}
		if (_q14126 == -10478) 
		{
			return _m18310(_f13412);
		}
		if (_q14126 == -10498) 
		{
			return _m18311(_f13412);
		}
		if (_q14126 == -10518) 
		{
			return _m18312(_f13412);
		}
		if (_q14126 == -10538) 
		{
			return _m18313(_f13412);
		}
		if (_q14126 == -10558) 
		{
			return _m18314(_f13412);
		}
		if (_q14126 == -10578) 
		{
			return _m18315(_f13412);
		}
		if (_q14126 == -10598) 
		{
			return _m18316(_f13412);
		}
		if (_q14126 == -10618) 
		{
			return _m18317(_f13412);
		}
		if (_q14126 == -10638) 
		{
			return _m18318(_f13412);
		}
		if (_q14126 == -10658) 
		{
			return _m18319(_f13412);
		}
		if (_q14126 == -10678) 
		{
			return _m18320(_f13412);
		}
		if (_q14126 == -10698) 
		{
			return _m18321(_f13412);
		}
		if (_q14126 == -10718) 
		{
			return _m18322(_f13412);
		}
		if (_q14126 == -10738) 
		{
			return _m18323(_f13412);
		}
		if (_q14126 == -10758) 
		{
			return _m18324(_f13412);
		}
		if (_q14126 == -10778) 
		{
			return _m18325(_f13412);
		}
		if (_q14126 == -10798) 
		{
			return _m18326(_f13412);
		}
		if (_q14126 == -10818) 
		{
			return _m18327(_f13412);
		}
		if (_q14126 == -10838) 
		{
			return _m18328(_f13412);
		}
		if (_q14126 == -10858) 
		{
			return _m18329(_f13412);
		}
		if (_q14126 == -10878) 
		{
			return _m18330(_f13412);
		}
		if (_q14126 == -10898) 
		{
			return _m18331(_f13412);
		}
		if (_q14126 == -10918) 
		{
			return _m18332(_f13412);
		}
		if (_q14126 == -10938) 
		{
			return _m18333(_f13412);
		}
		if (_q14126 == -10958) 
		{
			return _m18334(_f13412);
		}
		if (_q14126 == -10978) 
		{
			return _m18335(_f13412);
		}
		if (_q14126 == -10998) 
		{
			return _m18336(_f13412);
		}
		if (_q14126 == -11018) 
		{
			return _m18337(_f13412);
		}
		if (_q14126 == -11038) 
		{
			return _m18338(_f13412);
		}
		if (_q14126 == -11058) 
		{
			return _m18339(_f13412);
		}
		if (_q14126 == -11078) 
		{
			return _m18340(_f13412);
		}
		if (_q14126 == -11098) 
		{
			return _m18341(_f13412);
		}
		if (_q14126 == -11118) 
		{
			return _m18342(_f13412);
		}
		if (_q14126 == -3000) 
		{
			return _m18343(_f13412);
		}
		if (_q14126 == -3001) 
		{
			return _m18344(_f13412);
		}
		if (_q14126 == -3002) 
		{
			return _m18345(_f13412);
		}
		if (_q14126 == -3003) 
		{
			return _m18346(_f13412);
		}
		if (_q14126 == -3004) 
		{
			return _m18347(_f13412);
		}
		if (_q14126 == -3005) 
		{
			return _m18348(_f13412);
		}
		if (_q14126 == -3006) 
		{
			return _m18349(_f13412);
		}
		if (_q14126 == -3008) 
		{
			return _m18350(_f13412);
		}
		if (_q14126 == -3009) 
		{
			return _m18351(_f13412);
		}
		if (_q14126 == -3010) 
		{
			return _m18352(_f13412);
		}
		if (_q14126 == -3011) 
		{
			return _m18353(_f13412);
		}
		if (_q14126 == -3012) 
		{
			return _m18354(_f13412);
		}
		if (_q14126 == -3013) 
		{
			return _m18355(_f13412);
		}
		if (_q14126 == -3017) 
		{
			return _m18356(_f13412);
		}
		if (_q14126 == -3019) 
		{
			return _m18357(_f13412);
		}
		if (_q14126 == -3020) 
		{
			return _m18358(_f13412);
		}
		if (_q14126 == -3021) 
		{
			return _m18359(_f13412);
		}
		if (_q14126 == -3042) 
		{
			return _m18360(_f13412);
		}
		if (_q14126 == -3077) 
		{
			return _m18361(_f13412);
		}
		if (_q14126 == -3078) 
		{
			return _m18362(_f13412);
		}
		if (_q14126 == -3084) 
		{
			return _m18363(_f13412);
		}
		if (_q14126 == -3088) 
		{
			return _m18364(_f13412);
		}
		if (_q14126 == -3089) 
		{
			return _m18365(_f13412);
		}
		if (_q14126 == -3090) 
		{
			return _m18366(_f13412);
		}
		if (_q14126 == -3093) 
		{
			return _m18367(_f13412);
		}
		if (_q14126 == -3098) 
		{
			return _m18368(_f13412);
		}
		if (_q14126 == -3099) 
		{
			return _m18369(_f13412);
		}
		if (_q14126 == -3100) 
		{
			return _m18370(_f13412);
		}
		if (_q14126 == -3101) 
		{
			return _m18371(_f13412);
		}
		if (_q14126 == -3103) 
		{
			return _m18372(_f13412);
		}
		if (_q14126 == -3105) 
		{
			return _m18373(_f13412);
		}
		if (_q14126 == -3106) 
		{
			return _m18374(_f13412);
		}
		if (_q14126 == -3107) 
		{
			return _m18375(_f13412);
		}
		if (_q14126 == -3109) 
		{
			return _m18376(_f13412);
		}
		if (_q14126 == -3111) 
		{
			return _m18377(_f13412);
		}
		if (_q14126 == -3112) 
		{
			return _m18378(_f13412);
		}
		if (_q14126 == -3113) 
		{
			return _m18379(_f13412);
		}
		if (_q14126 == -3115) 
		{
			return _m18380(_f13412);
		}
		if (_q14126 == -3116) 
		{
			return _m18381(_f13412);
		}
		if (_q14126 == -3118) 
		{
			return _m18382(_f13412);
		}
		if (_q14126 == -3119) 
		{
			return _m18383(_f13412);
		}
		if (_q14126 == -3121) 
		{
			return _m18384(_f13412);
		}
		if (_q14126 == -3122) 
		{
			return _m18385(_f13412);
		}
		if (_q14126 == -3124) 
		{
			return _m18386(_f13412);
		}
		if (_q14126 == -3127) 
		{
			return _m18387(_f13412);
		}
		if (_q14126 == -3129) 
		{
			return _m18388(_f13412);
		}
		if (_q14126 == -3130) 
		{
			return _m18389(_f13412);
		}
		if (_q14126 == -3135) 
		{
			return _m18390(_f13412);
		}
		if (_q14126 == -3136) 
		{
			return _m18391(_f13412);
		}
		if (_q14126 == -3137) 
		{
			return _m18392(_f13412);
		}
		if (_q14126 == -3139) 
		{
			return _m18393(_f13412);
		}
		if (_q14126 == -3140) 
		{
			return _m18394(_f13412);
		}
		if (_q14126 == -3142) 
		{
			return _m18395(_f13412);
		}
		if (_q14126 == -3143) 
		{
			return _m18396(_f13412);
		}
		if (_q14126 == -3145) 
		{
			return _m18397(_f13412);
		}
		if (_q14126 == -3156) 
		{
			return _m18398(_f13412);
		}
		if (_q14126 == -3157) 
		{
			return _m18399(_f13412);
		}
		if (_q14126 == -3158) 
		{
			return _m18400(_f13412);
		}
		if (_q14126 == -3159) 
		{
			return _m18401(_f13412);
		}
		if (_q14126 == -3164) 
		{
			return _m18402(_f13412);
		}
		if (_q14126 == -3174) 
		{
			return _m18403(_f13412);
		}
		if (_q14126 == -3175) 
		{
			return _m18404(_f13412);
		}
		if (_q14126 == -3178) 
		{
			return _m18405(_f13412);
		}
		if (_q14126 == -3179) 
		{
			return _m18406(_f13412);
		}
		if (_q14126 == -3180) 
		{
			return _m18407(_f13412);
		}
		if (_q14126 == -3181) 
		{
			return _m18408(_f13412);
		}
		if (_q14126 == -10019) 
		{
			return _m18409(_f13412);
		}
		if (_q14126 == -10017) 
		{
			return _m18410(_f13412);
		}
		if (_q14126 == -10016) 
		{
			return _m18411(_f13412);
		}
		if (_q14126 == -10039) 
		{
			return _m18412(_f13412);
		}
		if (_q14126 == -10037) 
		{
			return _m18413(_f13412);
		}
		if (_q14126 == -10059) 
		{
			return _m18414(_f13412);
		}
		if (_q14126 == -10057) 
		{
			return _m18415(_f13412);
		}
		if (_q14126 == -10056) 
		{
			return _m18416(_f13412);
		}
		if (_q14126 == -10079) 
		{
			return _m18417(_f13412);
		}
		if (_q14126 == -10077) 
		{
			return _m18418(_f13412);
		}
		if (_q14126 == -10099) 
		{
			return _m18419(_f13412);
		}
		if (_q14126 == -10097) 
		{
			return _m18420(_f13412);
		}
		if (_q14126 == -10119) 
		{
			return _m18421(_f13412);
		}
		if (_q14126 == -10117) 
		{
			return _m18422(_f13412);
		}
		if (_q14126 == -10116) 
		{
			return _m18423(_f13412);
		}
		if (_q14126 == -10139) 
		{
			return _m18424(_f13412);
		}
		if (_q14126 == -10137) 
		{
			return _m18425(_f13412);
		}
		if (_q14126 == -10159) 
		{
			return _m18426(_f13412);
		}
		if (_q14126 == -10157) 
		{
			return _m18427(_f13412);
		}
		if (_q14126 == -10179) 
		{
			return _m18428(_f13412);
		}
		if (_q14126 == -10177) 
		{
			return _m18429(_f13412);
		}
		if (_q14126 == -10199) 
		{
			return _m18430(_f13412);
		}
		if (_q14126 == -10197) 
		{
			return _m18431(_f13412);
		}
		if (_q14126 == -10196) 
		{
			return _m18432(_f13412);
		}
		if (_q14126 == -10219) 
		{
			return _m18433(_f13412);
		}
		if (_q14126 == -10217) 
		{
			return _m18434(_f13412);
		}
		if (_q14126 == -10239) 
		{
			return _m18435(_f13412);
		}
		if (_q14126 == -10237) 
		{
			return _m18436(_f13412);
		}
		if (_q14126 == -10259) 
		{
			return _m18437(_f13412);
		}
		if (_q14126 == -10257) 
		{
			return _m18438(_f13412);
		}
		if (_q14126 == -10279) 
		{
			return _m18439(_f13412);
		}
		if (_q14126 == -10277) 
		{
			return _m18440(_f13412);
		}
		if (_q14126 == -10299) 
		{
			return _m18441(_f13412);
		}
		if (_q14126 == -10297) 
		{
			return _m18442(_f13412);
		}
		if (_q14126 == -10296) 
		{
			return _m18443(_f13412);
		}
		if (_q14126 == -10319) 
		{
			return _m18444(_f13412);
		}
		if (_q14126 == -10317) 
		{
			return _m18445(_f13412);
		}
		if (_q14126 == -10339) 
		{
			return _m18446(_f13412);
		}
		if (_q14126 == -10337) 
		{
			return _m18447(_f13412);
		}
		if (_q14126 == -10359) 
		{
			return _m18448(_f13412);
		}
		if (_q14126 == -10357) 
		{
			return _m18449(_f13412);
		}
		if (_q14126 == -10379) 
		{
			return _m18450(_f13412);
		}
		if (_q14126 == -10377) 
		{
			return _m18451(_f13412);
		}
		if (_q14126 == -10399) 
		{
			return _m18452(_f13412);
		}
		if (_q14126 == -10397) 
		{
			return _m18453(_f13412);
		}
		if (_q14126 == -10419) 
		{
			return _m18454(_f13412);
		}
		if (_q14126 == -10417) 
		{
			return _m18455(_f13412);
		}
		if (_q14126 == -10439) 
		{
			return _m18456(_f13412);
		}
		if (_q14126 == -10437) 
		{
			return _m18457(_f13412);
		}
		if (_q14126 == -10459) 
		{
			return _m18458(_f13412);
		}
		if (_q14126 == -10457) 
		{
			return _m18459(_f13412);
		}
		if (_q14126 == -10479) 
		{
			return _m18460(_f13412);
		}
		if (_q14126 == -10477) 
		{
			return _m18461(_f13412);
		}
		if (_q14126 == -10476) 
		{
			return _m18462(_f13412);
		}
		if (_q14126 == -10499) 
		{
			return _m18463(_f13412);
		}
		if (_q14126 == -10497) 
		{
			return _m18464(_f13412);
		}
		if (_q14126 == -10519) 
		{
			return _m18465(_f13412);
		}
		if (_q14126 == -10517) 
		{
			return _m18466(_f13412);
		}
		if (_q14126 == -10539) 
		{
			return _m18467(_f13412);
		}
		if (_q14126 == -10537) 
		{
			return _m18468(_f13412);
		}
		if (_q14126 == -10559) 
		{
			return _m18469(_f13412);
		}
		if (_q14126 == -10557) 
		{
			return _m18470(_f13412);
		}
		if (_q14126 == -10579) 
		{
			return _m18471(_f13412);
		}
		if (_q14126 == -10577) 
		{
			return _m18472(_f13412);
		}
		if (_q14126 == -10599) 
		{
			return _m18473(_f13412);
		}
		if (_q14126 == -10597) 
		{
			return _m18474(_f13412);
		}
		if (_q14126 == -10619) 
		{
			return _m18475(_f13412);
		}
		if (_q14126 == -10617) 
		{
			return _m18476(_f13412);
		}
		if (_q14126 == -10639) 
		{
			return _m18477(_f13412);
		}
		if (_q14126 == -10637) 
		{
			return _m18478(_f13412);
		}
		if (_q14126 == -10659) 
		{
			return _m18479(_f13412);
		}
		if (_q14126 == -10657) 
		{
			return _m18480(_f13412);
		}
		if (_q14126 == -10656) 
		{
			return _m18481(_f13412);
		}
		if (_q14126 == -10679) 
		{
			return _m18482(_f13412);
		}
		if (_q14126 == -10677) 
		{
			return _m18483(_f13412);
		}
		if (_q14126 == -10699) 
		{
			return _m18484(_f13412);
		}
		if (_q14126 == -10697) 
		{
			return _m18485(_f13412);
		}
		if (_q14126 == -10719) 
		{
			return _m18486(_f13412);
		}
		if (_q14126 == -10717) 
		{
			return _m18487(_f13412);
		}
		if (_q14126 == -10739) 
		{
			return _m18488(_f13412);
		}
		if (_q14126 == -10737) 
		{
			return _m18489(_f13412);
		}
		if (_q14126 == -10759) 
		{
			return _m18490(_f13412);
		}
		if (_q14126 == -10757) 
		{
			return _m18491(_f13412);
		}
		if (_q14126 == -10756) 
		{
			return _m18492(_f13412);
		}
		if (_q14126 == -10755) 
		{
			return _m18493(_f13412);
		}
		if (_q14126 == -10779) 
		{
			return _m18494(_f13412);
		}
		if (_q14126 == -10777) 
		{
			return _m18495(_f13412);
		}
		if (_q14126 == -10799) 
		{
			return _m18496(_f13412);
		}
		if (_q14126 == -10797) 
		{
			return _m18497(_f13412);
		}
		if (_q14126 == -10796) 
		{
			return _m18498(_f13412);
		}
		if (_q14126 == -10819) 
		{
			return _m18499(_f13412);
		}
		if (_q14126 == -10817) 
		{
			return _m18500(_f13412);
		}
		if (_q14126 == -10839) 
		{
			return _m18501(_f13412);
		}
		if (_q14126 == -10837) 
		{
			return _m18502(_f13412);
		}
		if (_q14126 == -10859) 
		{
			return _m18503(_f13412);
		}
		if (_q14126 == -10857) 
		{
			return _m18504(_f13412);
		}
		if (_q14126 == -10856) 
		{
			return _m18505(_f13412);
		}
		if (_q14126 == -10879) 
		{
			return _m18506(_f13412);
		}
		if (_q14126 == -10877) 
		{
			return _m18507(_f13412);
		}
		if (_q14126 == -10876) 
		{
			return _m18508(_f13412);
		}
		if (_q14126 == -10899) 
		{
			return _m18509(_f13412);
		}
		if (_q14126 == -10897) 
		{
			return _m18510(_f13412);
		}
		if (_q14126 == -10919) 
		{
			return _m18511(_f13412);
		}
		if (_q14126 == -10917) 
		{
			return _m18512(_f13412);
		}
		if (_q14126 == -10939) 
		{
			return _m18513(_f13412);
		}
		if (_q14126 == -10937) 
		{
			return _m18514(_f13412);
		}
		if (_q14126 == -10936) 
		{
			return _m18515(_f13412);
		}
		if (_q14126 == -10959) 
		{
			return _m18516(_f13412);
		}
		if (_q14126 == -10957) 
		{
			return _m18517(_f13412);
		}
		if (_q14126 == -10979) 
		{
			return _m18518(_f13412);
		}
		if (_q14126 == -10977) 
		{
			return _m18519(_f13412);
		}
		if (_q14126 == -10999) 
		{
			return _m18520(_f13412);
		}
		if (_q14126 == -10997) 
		{
			return _m18521(_f13412);
		}
		if (_q14126 == -10996) 
		{
			return _m18522(_f13412);
		}
		if (_q14126 == -11019) 
		{
			return _m18523(_f13412);
		}
		if (_q14126 == -11017) 
		{
			return _m18524(_f13412);
		}
		if (_q14126 == -11016) 
		{
			return _m18525(_f13412);
		}
		if (_q14126 == -11039) 
		{
			return _m18526(_f13412);
		}
		if (_q14126 == -11037) 
		{
			return _m18527(_f13412);
		}
		if (_q14126 == -11036) 
		{
			return _m18528(_f13412);
		}
		if (_q14126 == -11059) 
		{
			return _m18529(_f13412);
		}
		if (_q14126 == -11057) 
		{
			return _m18530(_f13412);
		}
		if (_q14126 == -11079) 
		{
			return _m18531(_f13412);
		}
		if (_q14126 == -11077) 
		{
			return _m18532(_f13412);
		}
		if (_q14126 == -11099) 
		{
			return _m18533(_f13412);
		}
		if (_q14126 == -11097) 
		{
			return _m18534(_f13412);
		}
		if (_q14126 == -11119) 
		{
			return _m18535(_f13412);
		}
		if (_q14126 == -11117) 
		{
			return _m18536(_f13412);
		}
		throw new NError("No serializer found for type " + _q14126, null);
	}

	public function _m18253( _j13423:T1229):Serializable
	{
		var _b5685:Int = T1227._m18537(_j13423);
		return DnsStatus.fromValue(_b5685);
	}

	public function _m18254( buff:T1229):Serializable
	{
		var _p5686:Int = T1227._m18537(buff);
		return MatchMakingType.fromValue(_p5686);
	}

	public function _m18255( buff:T1229):Serializable
	{
		var _i5687:Int = T1227._m18537(buff);
		return LeaderboardOrder.fromValue(_i5687);
	}

	public function _m18256( buff:T1229):Serializable
	{
		var _v5688:Int = T1227._m18537(buff);
		return LeaderboardPeriod.fromValue(_v5688);
	}

	public function _m18257( buff:T1229):Serializable
	{
		var _z5689:Int = T1227._m18537(buff);
		return DeveloperGameType.fromValue(_z5689);
	}

	public function _m18258( buff:T1229):Serializable
	{
		var _u5690:Int = T1227._m18537(buff);
		return GameLoadingType.fromValue(_u5690);
	}

	public function _m18259( buff:T1229):Serializable
	{
		var _v5691:Int = T1227._m18537(buff);
		return DeveloperGameMode.fromValue(_v5691);
	}

	public function _m18260( buff:T1229):Serializable
	{
		var _j5692:Int = T1227._m18537(buff);
		return ErrorCode.fromValue(_j5692);
	}

	public function _m18261( buff:T1229):Serializable
	{
		var _n5693:Int = T1227._m18537(buff);
		return ThirdPartySource.fromValue(_n5693);
	}

	public function _m18262( buff:T1229):Serializable
	{
		var _q5694:Int = T1227._m18537(buff);
		return ChallengeStatus.fromValue(_q5694);
	}

	public function _m18263( _u13429:T1229):Serializable
	{
		var _v5695:Int = T1227._m18537(_u13429);
		return PlayerDisconnectionReason.fromValue(_v5695);
	}

	public function _m18264( buff:T1229):Serializable
	{
		var _v5696:Int = T1227._m18537(buff);
		return LogLevel.fromValue(_v5696);
	}

	public function _m18265( buff:T1229):Serializable
	{
		var _o5697:Int = T1227._m18537(buff);
		return EntityType.fromValue(_o5697);
	}

	public function _m18266( buff:T1229):Serializable
	{
		var _m5698:Int = T1227._m18537(buff);
		return Gender.fromValue(_m5698);
	}

	public function _m18267( buff:T1229):Serializable
	{
		var _d5699:Int = T1227._m18537(buff);
		return RedirectStrategyType.fromValue(_d5699);
	}

	public function _m18268( buff:T1229):Serializable
	{
		var _i5700:Int = T1227._m18537(buff);
		return JobStatus.fromValue(_i5700);
	}

	public function _m18269( buff:T1229):Serializable
	{
		var _s5701:Int = T1227._m18537(buff);
		return Environment.fromValue(_s5701);
	}

	public function _m18270( buff:T1229):Serializable
	{
		var _v5702:Int = T1227._m18537(buff);
		return HandshakeState.fromValue(_v5702);
	}

	public function _m18271( buff:T1229):Serializable
	{
		var _o5703:Int = T1227._m18537(buff);
		return PlayerState.fromValue(_o5703);
	}

	public function _m18272( buff:T1229):Serializable
	{
		var _u5704:Int = T1227._m18537(buff);
		return ClientApplication.fromValue(_u5704);
	}

	public function _m18273( buff:T1229):Serializable
	{
		var _h5705:Int = T1227._m18537(buff);
		return GameRunningState.fromValue(_h5705);
	}

	public function _m18274( buff:T1229):Serializable
	{
		var _j5706:Int = T1227._m18537(buff);
		return Period.fromValue(_j5706);
	}

	public function _m18275( buff:T1229):Serializable
	{
		var _k5707:Int = T1227._m18537(buff);
		return PlayerInvitationStatus.fromValue(_k5707);
	}

	public function _m18276( buff:T1229):Serializable
	{
		var _g5708:Int = T1227._m18537(buff);
		return ExecutionStatus.fromValue(_g5708);
	}

	public function _m18277( _t13435:T1229):Serializable
	{
		var _q5709:Int = T1227._m18537(_t13435);
		return NebulaPlayerStatus.fromValue(_q5709);
	}

	public function _m18278( buff:T1229):Serializable
	{
		var _d5710:Int = T1227._m18537(buff);
		return GameServerStatus.fromValue(_d5710);
	}

	public function _m18279( buff:T1229):Serializable
	{
		var _j5711:Int = T1227._m18537(buff);
		return DeveloperStatus.fromValue(_j5711);
	}

	public function _m18280( buff:T1229):Serializable
	{
		var _y5712:Int = T1227._m18537(buff);
		return DeveloperGamePlan.fromValue(_y5712);
	}

	public function _m18281( buff:T1229):Serializable
	{
		var _a5713:Int = T1227._m18537(buff);
		return LocationZone.fromValue(_a5713);
	}

	public function _m18282( buff:T1229):Serializable
	{
		var _l5714:Int = T1227._m18537(buff);
		return ThirdPartyMethodType.fromValue(_l5714);
	}

	public function _m18283( buff:T1229):Serializable
	{
		var _c5715:Int = T1227._m18537(buff);
		return ForumTopicStatus.fromValue(_c5715);
	}

	public function _m18284( buff:T1229):Serializable
	{
		var _b5716:Int = T1227._m18537(buff);
		return DeveloperGameVersionStatus.fromValue(_b5716);
	}

	public function _m18285( buff:T1229):Serializable
	{
		var _f5717:Int = T1227._m18537(buff);
		return StartStatus.fromValue(_f5717);
	}

	public function _m18286( buff:T1229):Serializable
	{
		var _c5718:Int = T1227._m18537(buff);
		return EmailCampaignState.fromValue(_c5718);
	}

	public function _m18287( buff:T1229):Serializable
	{
		var _x5719:Int = T1227._m18537(buff);
		return InvitePlayerStatus.fromValue(_x5719);
	}

	public function _m18288( buff:T1229):Serializable
	{
		var _b5720:Int = T1227._m18537(buff);
		return SignUpStatus.fromValue(_b5720);
	}

	public function _m18289( buff:T1229):Serializable
	{
		var _w5721:Int = T1227._m18537(buff);
		return ForgotPasswordStatus.fromValue(_w5721);
	}

	public function _m18290( buff:T1229):Serializable
	{
		var _o5722:Int = T1227._m18537(buff);
		return LoginStatus.fromValue(_o5722);
	}

	public function _m18291( buff:T1229):Serializable
	{
		var _i5723:Int = T1227._m18537(buff);
		return SavePlayerProfileStatus.fromValue(_i5723);
	}

	public function _m18292( buff:T1229):Serializable
	{
		var _u5724:Int = T1227._m18537(buff);
		return GetPlayerProfileStatus.fromValue(_u5724);
	}

	public function _m18293( buff:T1229):Serializable
	{
		var _q5725:Int = T1227._m18537(buff);
		return LogoutStatus.fromValue(_q5725);
	}

	public function _m18294( buff:T1229):Serializable
	{
		var _x5726:Int = T1227._m18537(buff);
		return ChallengeFriendStatus.fromValue(_x5726);
	}

	public function _m18295( buff:T1229):Serializable
	{
		var _h5727:Int = T1227._m18537(buff);
		return ChallengeThirdPartyFriendStatus.fromValue(_h5727);
	}

	public function _m18296( buff:T1229):Serializable
	{
		var _x5728:Int = T1227._m18537(buff);
		return GetFriendsStatus.fromValue(_x5728);
	}

	public function _m18297( buff:T1229):Serializable
	{
		var _c5729:Int = T1227._m18537(buff);
		return GetThirdPartyFriendsStatus.fromValue(_c5729);
	}

	public function _m18298( buff:T1229):Serializable
	{
		var _f5730:Int = T1227._m18537(buff);
		return GetPlayerInvitationsStatus.fromValue(_f5730);
	}

	public function _m18299( buff:T1229):Serializable
	{
		var _p5731:Int = T1227._m18537(buff);
		return AcceptPlayerInvitationStatus.fromValue(_p5731);
	}

	public function _m18300( buff:T1229):Serializable
	{
		var _h5732:Int = T1227._m18537(buff);
		return IgnorePlayerInvitationStatus.fromValue(_h5732);
	}

	public function _m18301( buff:T1229):Serializable
	{
		var _q5733:Int = T1227._m18537(buff);
		return SubmitScoreStatus.fromValue(_q5733);
	}

	public function _m18302( buff:T1229):Serializable
	{
		var _w5734:Int = T1227._m18537(buff);
		return GetLeaderboardStatus.fromValue(_w5734);
	}

	public function _m18303( buff:T1229):Serializable
	{
		var _g5735:Int = T1227._m18537(buff);
		return BuyItemStatus.fromValue(_g5735);
	}

	public function _m18304( buff:T1229):Serializable
	{
		var _n5736:Int = T1227._m18537(buff);
		return GetStoreStatus.fromValue(_n5736);
	}

	public function _m18305( _l13446:T1229):Serializable
	{
		var _x5737:Int = T1227._m18537(_l13446);
		return ConsumeItemStatus.fromValue(_x5737);
	}

	public function _m18306( buff:T1229):Serializable
	{
		var _e5738:Int = T1227._m18537(buff);
		return IncreasePlayerWalletStatus.fromValue(_e5738);
	}

	public function _m18307( buff:T1229):Serializable
	{
		var _e5739:Int = T1227._m18537(buff);
		return GetPlayerWalletStatus.fromValue(_e5739);
	}

	public function _m18308( buff:T1229):Serializable
	{
		var _s5740:Int = T1227._m18537(buff);
		return GetAchievementBoardStatus.fromValue(_s5740);
	}

	public function _m18309( buff:T1229):Serializable
	{
		var _d5741:Int = T1227._m18537(buff);
		return AchieveStatus.fromValue(_d5741);
	}

	public function _m18310( buff:T1229):Serializable
	{
		var _b5742:Int = T1227._m18537(buff);
		return SearchImmediateGameStatus.fromValue(_b5742);
	}

	public function _m18311( buff:T1229):Serializable
	{
		var _b5743:Int = T1227._m18537(buff);
		return JoinGameStatus.fromValue(_b5743);
	}

	public function _m18312( buff:T1229):Serializable
	{
		var _h5744:Int = T1227._m18537(buff);
		return UnjoinGameStatus.fromValue(_h5744);
	}

	public function _m18313( buff:T1229):Serializable
	{
		var _h5745:Int = T1227._m18537(buff);
		return AcceptFriendChallengeStatus.fromValue(_h5745);
	}

	public function _m18314( buff:T1229):Serializable
	{
		var _a5746:Int = T1227._m18537(buff);
		return CancelFriendChallengeStatus.fromValue(_a5746);
	}

	public function _m18315( buff:T1229):Serializable
	{
		var _x5747:Int = T1227._m18537(buff);
		return RefuseFriendChallengeStatus.fromValue(_x5747);
	}

	public function _m18316( buff:T1229):Serializable
	{
		var _t5748:Int = T1227._m18537(buff);
		return GetChallengesStatus.fromValue(_t5748);
	}

	public function _m18317( buff:T1229):Serializable
	{
		var _a5749:Int = T1227._m18537(buff);
		return StartGameStatus.fromValue(_a5749);
	}

	public function _m18318( buff:T1229):Serializable
	{
		var _c5750:Int = T1227._m18537(buff);
		return StopGameStatus.fromValue(_c5750);
	}

	public function _m18319( _n13452:T1229):Serializable
	{
		var _d5751:Int = T1227._m18537(_n13452);
		return CreateGameStatus.fromValue(_d5751);
	}

	public function _m18320( buff:T1229):Serializable
	{
		var _l5752:Int = T1227._m18537(buff);
		return GetGamesStatus.fromValue(_l5752);
	}

	public function _m18321( buff:T1229):Serializable
	{
		var _n5753:Int = T1227._m18537(buff);
		return SaveAsGhostStatus.fromValue(_n5753);
	}

	public function _m18322( buff:T1229):Serializable
	{
		var _f5754:Int = T1227._m18537(buff);
		return GetGhostsStatus.fromValue(_f5754);
	}

	public function _m18323( buff:T1229):Serializable
	{
		var _f5755:Int = T1227._m18537(buff);
		return LoadGhostStatus.fromValue(_f5755);
	}

	public function _m18324( buff:T1229):Serializable
	{
		var _f5756:Int = T1227._m18537(buff);
		return SendGameChatStatus.fromValue(_f5756);
	}

	public function _m18325( buff:T1229):Serializable
	{
		var _e5757:Int = T1227._m18537(buff);
		return GetStorablesStatus.fromValue(_e5757);
	}

	public function _m18326( buff:T1229):Serializable
	{
		var _l5758:Int = T1227._m18537(buff);
		return SaveStorableStatus.fromValue(_l5758);
	}

	public function _m18327( buff:T1229):Serializable
	{
		var _f5759:Int = T1227._m18537(buff);
		return NextPlayerTurnStatus.fromValue(_f5759);
	}

	public function _m18328( buff:T1229):Serializable
	{
		var _f5760:Int = T1227._m18537(buff);
		return SetPlayerNameStatus.fromValue(_f5760);
	}

	public function _m18329( buff:T1229):Serializable
	{
		var _t5761:Int = T1227._m18537(buff);
		return UpdateStorableStatus.fromValue(_t5761);
	}

	public function _m18330( buff:T1229):Serializable
	{
		var _e5762:Int = T1227._m18537(buff);
		return RemoveStorableStatus.fromValue(_e5762);
	}

	public function _m18331( buff:T1229):Serializable
	{
		var _o5763:Int = T1227._m18537(buff);
		return InviteThirdPartyFriendStatus.fromValue(_o5763);
	}

	public function _m18332( buff:T1229):Serializable
	{
		var _o5764:Int = T1227._m18537(buff);
		return PublishThirdPartyMessageStatus.fromValue(_o5764);
	}

	public function _m18333( buff:T1229):Serializable
	{
		var _u5765:Int = T1227._m18537(buff);
		return ThirdPartyLoginStatus.fromValue(_u5765);
	}

	public function _m18334( buff:T1229):Serializable
	{
		var _l5766:Int = T1227._m18537(buff);
		return SaveGameStatus.fromValue(_l5766);
	}

	public function _m18335( buff:T1229):Serializable
	{
		var _o5767:Int = T1227._m18537(buff);
		return LoadGameStatus.fromValue(_o5767);
	}

	public function _m18336( buff:T1229):Serializable
	{
		var _b5768:Int = T1227._m18537(buff);
		return SavePlayerStorableStatus.fromValue(_b5768);
	}

	public function _m18337( buff:T1229):Serializable
	{
		var _y5769:Int = T1227._m18537(buff);
		return UpdatePlayerStorableStatus.fromValue(_y5769);
	}

	public function _m18338( buff:T1229):Serializable
	{
		var _e5770:Int = T1227._m18537(buff);
		return RemovePlayerStorableStatus.fromValue(_e5770);
	}

	public function _m18339( buff:T1229):Serializable
	{
		var _d5771:Int = T1227._m18537(buff);
		return GetPlayerStorablesStatus.fromValue(_d5771);
	}

	public function _m18340( buff:T1229):Serializable
	{
		var _f5772:Int = T1227._m18537(buff);
		return PauseSessionMonitoringStatus.fromValue(_f5772);
	}

	public function _m18341( buff:T1229):Serializable
	{
		var _p5773:Int = T1227._m18537(buff);
		return ResumeSessionMonitoringStatus.fromValue(_p5773);
	}

	public function _m18342( buff:T1229):Serializable
	{
		var _t14307:Int = T1227._m18537(buff);
		return PublishFriendThirdPartyMessageStatus.fromValue(_t14307);
	}

	public function _m18343( _s13463:T1229):Serializable
	{
		var _e14309:Handshake = new Handshake();
		var _q13465:Int = T1227._m18538(_s13463);
		for (_w5777 in 0 ... _q13465) 
		{
			var _u5778:Int = T1227._m18538(_s13463);
			if (_u5778 == 0) 
			{
				var _m5779:String = T1227._m18539(_s13463);
				_e14309.setMessageId(_m5779);
				MemoryManagement.free(_m5779);
				continue;
			}
			if (_u5778 == 1) 
			{
				var _q5780:String = T1227._m18539(_s13463);
				_e14309.setRequestId(_q5780);
				MemoryManagement.free(_q5780);
				continue;
			}
			if (_u5778 == 3) 
			{
				var _t5781:String = T1227._m18539(_s13463);
				_e14309.setVersion(_t5781);
				MemoryManagement.free(_t5781);
				continue;
			}
			if (_u5778 == 4) 
			{
				_e14309.setReason((cast T1227._m18252(this, _s13463)));
				continue;
			}
			if (_u5778 == 5) 
			{
				var _t5782:String = T1227._m18539(_s13463);
				_e14309.setDataPlayerId(_t5782);
				MemoryManagement.free(_t5782);
				continue;
			}
			if (_u5778 == 6) 
			{
				var _d5783:String = T1227._m18539(_s13463);
				_e14309.setSessionId(_d5783);
				MemoryManagement.free(_d5783);
				continue;
			}
			if (_u5778 == 7) 
			{
				var _v5784:String = T1227._m18539(_s13463);
				_e14309.setPlatform(_v5784);
				MemoryManagement.free(_v5784);
				continue;
			}
			T1227._m18540(_s13463);
		}
		return _e14309;
	}

	public function _m18344( _l13469:T1229):Serializable
	{
		var _u14320:HandshakeResponse = new HandshakeResponse();
		var _m13471:Int = T1227._m18538(_l13469);
		for (_j5787 in 0 ... _m13471) 
		{
			var _y5788:Int = T1227._m18538(_l13469);
			if (_y5788 == 0) 
			{
				var _b5789:String = T1227._m18539(_l13469);
				_u14320.setMessageId(_b5789);
				MemoryManagement.free(_b5789);
				continue;
			}
			if (_y5788 == 1) 
			{
				var _u5790:String = T1227._m18539(_l13469);
				_u14320.setRequestId(_u5790);
				MemoryManagement.free(_u5790);
				continue;
			}
			if (_y5788 == 3) 
			{
				_u14320.setExecutionStatus((cast T1227._m18252(this, _l13469)));
				continue;
			}
			if (_y5788 == 4) 
			{
				_u14320.setReason((cast T1227._m18252(this, _l13469)));
				continue;
			}
			if (_y5788 == 5) 
			{
				var _l5791:String = T1227._m18539(_l13469);
				_u14320.setDataPlayerId(_l5791);
				MemoryManagement.free(_l5791);
				continue;
			}
			if (_y5788 == 6) 
			{
				var _l5792:String = T1227._m18539(_l13469);
				_u14320.setSessionId(_l5792);
				MemoryManagement.free(_l5792);
				continue;
			}
			T1227._m18540(_l13469);
		}
		return _u14320;
	}

	public function _m18345( buff:T1229):Serializable
	{
		var _a14329:InvalidVersion = new InvalidVersion();
		var _b5794:Int = T1227._m18538(buff);
		for (_x5795 in 0 ... _b5794) 
		{
			var _f5796:Int = T1227._m18538(buff);
			if (_f5796 == 0) 
			{
				var _p5797:String = T1227._m18539(buff);
				_a14329.setMessageId(_p5797);
				MemoryManagement.free(_p5797);
				continue;
			}
			if (_f5796 == 1) 
			{
				var _x5798:String = T1227._m18539(buff);
				_a14329.setRequestId(_x5798);
				MemoryManagement.free(_x5798);
				continue;
			}
			T1227._m18540(buff);
		}
		return _a14329;
	}

	public function _m18346( buff:T1229):Serializable
	{
		var _h14336:NPlayer = new NPlayer();
		var _b5800:Int = T1227._m18538(buff);
		for (_q5801 in 0 ... _b5800) 
		{
			var _e5802:Int = T1227._m18538(buff);
			if (_e5802 == 0) 
			{
				var _s5803:String = T1227._m18539(buff);
				_h14336.setStoreId(_s5803);
				MemoryManagement.free(_s5803);
				continue;
			}
			if (_e5802 == 2) 
			{
				var _k5804:String = T1227._m18539(buff);
				_h14336.setID(_k5804);
				MemoryManagement.free(_k5804);
				continue;
			}
			if (_e5802 == 5) 
			{
				var _u5805:String = T1227._m18539(buff);
				_h14336.setAccessToken(_u5805);
				MemoryManagement.free(_u5805);
				continue;
			}
			if (_e5802 == 6) 
			{
				var _g5806:String = T1227._m18539(buff);
				_h14336.setName(_g5806);
				MemoryManagement.free(_g5806);
				continue;
			}
			if (_e5802 == 7) 
			{
				_h14336.setConnected(T1227._m18541(buff));
				continue;
			}
			if (_e5802 == 8) 
			{
				_h14336.setLoginSource((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_e5802 == 9) 
			{
				var _l5807:String = T1227._m18539(buff);
				_h14336.setThirdPartyId(_l5807);
				MemoryManagement.free(_l5807);
				continue;
			}
			T1227._m18540(buff);
		}
		return _h14336;
	}

	public function _m18347( _f13475:T1229):Serializable
	{
		var _x14346:GameStateChange = new GameStateChange();
		var _k13477:Int = T1227._m18538(_f13475);
		for (_w5810 in 0 ... _k13477) 
		{
			var _a5811:Int = T1227._m18538(_f13475);
			if (_a5811 == 0) 
			{
				var _t5812:String = T1227._m18539(_f13475);
				_x14346.setMessageId(_t5812);
				MemoryManagement.free(_t5812);
				continue;
			}
			if (_a5811 == 1) 
			{
				var _w5813:String = T1227._m18539(_f13475);
				_x14346.setRequestId(_w5813);
				MemoryManagement.free(_w5813);
				continue;
			}
			if (_a5811 == 3) 
			{
				var _w5814:String = T1227._m18539(_f13475);
				_x14346.setGameId(_w5814);
				MemoryManagement.free(_w5814);
				continue;
			}
			if (_a5811 == 4) 
			{
				_x14346.setGameRunningState((cast T1227._m18252(this, _f13475)));
				continue;
			}
			T1227._m18540(_f13475);
		}
		return _x14346;
	}

	public function _m18348( buff:T1229):Serializable
	{
		var _f14354:NPlayerInvitation = new NPlayerInvitation();
		var _q5816:Int = T1227._m18538(buff);
		for (_u5817 in 0 ... _q5816) 
		{
			var _k5818:Int = T1227._m18538(buff);
			if (_k5818 == 0) 
			{
				var _u5819:String = T1227._m18539(buff);
				_f14354.setStoreId(_u5819);
				MemoryManagement.free(_u5819);
				continue;
			}
			if (_k5818 == 2) 
			{
				_f14354.setEmitter((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_k5818 == 3) 
			{
				var _w5820:String = T1227._m18539(buff);
				_f14354.setReceiverId(_w5820);
				MemoryManagement.free(_w5820);
				continue;
			}
			if (_k5818 == 4) 
			{
				var _m5821:String = T1227._m18539(buff);
				_f14354.setCustomMessage(_m5821);
				MemoryManagement.free(_m5821);
				continue;
			}
			if (_k5818 == 5) 
			{
				_f14354.setPlayerInvitationStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_k5818 == 6) 
			{
				var _n5822:String = T1227._m18539(buff);
				_f14354.setPlayerInvitationId(_n5822);
				MemoryManagement.free(_n5822);
				continue;
			}
			T1227._m18540(buff);
		}
		return _f14354;
	}

	public function _m18349( _l13481:T1229):Serializable
	{
		var _e14363:NScore = new NScore();
		var _b13483:Int = T1227._m18538(_l13481);
		for (_m5825 in 0 ... _b13483) 
		{
			var _b5826:Int = T1227._m18538(_l13481);
			if (_b5826 == 0) 
			{
				var _z5827:String = T1227._m18539(_l13481);
				_e14363.setStoreId(_z5827);
				MemoryManagement.free(_z5827);
				continue;
			}
			if (_b5826 == 2) 
			{
				_e14363.setValue(T1227._m18542(_l13481));
				continue;
			}
			T1227._m18540(_l13481);
		}
		return _e14363;
	}

	public function _m18350( buff:T1229):Serializable
	{
		var _p14369:NRoom = new NRoom();
		var _y5829:Int = T1227._m18538(buff);
		for (_d5830 in 0 ... _y5829) 
		{
			var _r5831:Int = T1227._m18538(buff);
			if (_r5831 == 0) 
			{
				var _v5832:String = T1227._m18539(buff);
				_p14369.setStoreId(_v5832);
				MemoryManagement.free(_v5832);
				continue;
			}
			if (_r5831 == 2) 
			{
				var _r5833:String = T1227._m18539(buff);
				_p14369.setId(_r5833);
				MemoryManagement.free(_r5833);
				continue;
			}
			if (_r5831 == 3) 
			{
				var _b5834:String = T1227._m18539(buff);
				_p14369.setName(_b5834);
				MemoryManagement.free(_b5834);
				continue;
			}
			if (_r5831 == 4) 
			{
				var _w14376:NList<NPlayer> = null;
				var _x14377:Int = buff._m17886();
				if (_x14377 != T1221._m17179) 
				{
					buff._m17887();
					var _b14378:Int = buff._m17888();
					_w14376 = new NList<NPlayer>();
					for (_d5838 in 0 ... _b14378) 
					{
						_w14376.add((cast T1227._m18252(this, buff)));
					}
				}
				_p14369.setPlayers(_w14376);
				continue;
			}
			T1227._m18540(buff);
		}
		return _p14369;
	}

	public function _m18351( _s13487:T1229):Serializable
	{
		var _l14381:NGame = new NGame();
		var _v13489:Int = T1227._m18538(_s13487);
		for (_n5841 in 0 ... _v13489) 
		{
			var _b5842:Int = T1227._m18538(_s13487);
			if (_b5842 == 0) 
			{
				var _n5843:String = T1227._m18539(_s13487);
				_l14381.setStoreId(_n5843);
				MemoryManagement.free(_n5843);
				continue;
			}
			if (_b5842 == 2) 
			{
				var _f5844:String = T1227._m18539(_s13487);
				_l14381.setId(_f5844);
				MemoryManagement.free(_f5844);
				continue;
			}
			if (_b5842 == 3) 
			{
				var _f5845:String = T1227._m18539(_s13487);
				_l14381.setName(_f5845);
				MemoryManagement.free(_f5845);
				continue;
			}
			if (_b5842 == 4) 
			{
				var _e14388:NList<NPlayer> = null;
				var _u14389:Int = _s13487._m17886();
				if (_u14389 != T1221._m17179) 
				{
					_s13487._m17887();
					var _w14390:Int = _s13487._m17888();
					_e14388 = new NList<NPlayer>();
					for (_k5849 in 0 ... _w14390) 
					{
						_e14388.add((cast T1227._m18252(this, _s13487)));
					}
				}
				_l14381.setPlayers(_e14388);
				continue;
			}
			if (_b5842 == 2502) 
			{
				_l14381.setGameRunningState((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2503) 
			{
				_l14381.setGameCharacteristics((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2504) 
			{
				_l14381.setGameState((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2505) 
			{
				_l14381.setMatchMakingConditions((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2506) 
			{
				_l14381.setTurnBasedContext((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2507) 
			{
				_l14381.setDisconnectedContext((cast T1227._m18252(this, _s13487)));
				continue;
			}
			if (_b5842 == 2508) 
			{
				_l14381.setOwner((cast T1227._m18252(this, _s13487)));
				continue;
			}
			T1227._m18540(_s13487);
		}
		return _l14381;
	}

	public function _m18352( buff:T1229):Serializable
	{
		var _e14393:NGameCharacteristics = new NGameCharacteristics();
		var _q5851:Int = T1227._m18538(buff);
		for (_l5852 in 0 ... _q5851) 
		{
			var _o5853:Int = T1227._m18538(buff);
			if (_o5853 == 0) 
			{
				var _r5854:String = T1227._m18539(buff);
				_e14393.setStoreId(_r5854);
				MemoryManagement.free(_r5854);
				continue;
			}
			if (_o5853 == 2) 
			{
				_e14393.setMinPlayer(T1227._m18537(buff));
				continue;
			}
			if (_o5853 == 3) 
			{
				_e14393.setMaxPlayer(T1227._m18537(buff));
				continue;
			}
			if (_o5853 == 4) 
			{
				_e14393.setAutoStop(T1227._m18541(buff));
				continue;
			}
			if (_o5853 == 5) 
			{
				_e14393.setAutoStart(T1227._m18541(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _e14393;
	}

	public function _m18353( _q13493:T1229):Serializable
	{
		var _q14399:PlayerEnterGame = new PlayerEnterGame();
		var _h13495:Int = T1227._m18538(_q13493);
		for (_l5857 in 0 ... _h13495) 
		{
			var _z5858:Int = T1227._m18538(_q13493);
			if (_z5858 == 0) 
			{
				var _m5859:String = T1227._m18539(_q13493);
				_q14399.setMessageId(_m5859);
				MemoryManagement.free(_m5859);
				continue;
			}
			if (_z5858 == 1) 
			{
				var _p5860:String = T1227._m18539(_q13493);
				_q14399.setRequestId(_p5860);
				MemoryManagement.free(_p5860);
				continue;
			}
			if (_z5858 == 3) 
			{
				var _q5861:String = T1227._m18539(_q13493);
				_q14399.setGameId(_q5861);
				MemoryManagement.free(_q5861);
				continue;
			}
			if (_z5858 == 4) 
			{
				_q14399.setPlayer((cast T1227._m18252(this, _q13493)));
				continue;
			}
			T1227._m18540(_q13493);
		}
		return _q14399;
	}

	public function _m18354( buff:T1229):Serializable
	{
		var _t14407:AdminPublicMessage = new AdminPublicMessage();
		var _k5863:Int = T1227._m18538(buff);
		for (_m5864 in 0 ... _k5863) 
		{
			var _m5865:Int = T1227._m18538(buff);
			if (_m5865 == 0) 
			{
				var _w5866:String = T1227._m18539(buff);
				_t14407.setMessageId(_w5866);
				MemoryManagement.free(_w5866);
				continue;
			}
			if (_m5865 == 1) 
			{
				var _e5867:String = T1227._m18539(buff);
				_t14407.setRequestId(_e5867);
				MemoryManagement.free(_e5867);
				continue;
			}
			if (_m5865 == 4) 
			{
				var _n5868:String = T1227._m18539(buff);
				_t14407.setPlayerId(_n5868);
				MemoryManagement.free(_n5868);
				continue;
			}
			if (_m5865 == 5) 
			{
				var _j5869:String = T1227._m18539(buff);
				_t14407.setMessage(_j5869);
				MemoryManagement.free(_j5869);
				continue;
			}
			T1227._m18540(buff);
		}
		return _t14407;
	}

	public function _m18355( _x13499:T1229):Serializable
	{
		var _i14416:FriendshipNotification = new FriendshipNotification();
		var _d13501:Int = T1227._m18538(_x13499);
		for (_a5872 in 0 ... _d13501) 
		{
			var _y5873:Int = T1227._m18538(_x13499);
			if (_y5873 == 0) 
			{
				var _r5874:String = T1227._m18539(_x13499);
				_i14416.setMessageId(_r5874);
				MemoryManagement.free(_r5874);
				continue;
			}
			if (_y5873 == 1) 
			{
				var _r5875:String = T1227._m18539(_x13499);
				_i14416.setRequestId(_r5875);
				MemoryManagement.free(_r5875);
				continue;
			}
			if (_y5873 == 4) 
			{
				_i14416.setFriend((cast T1227._m18252(this, _x13499)));
				continue;
			}
			T1227._m18540(_x13499);
		}
		return _i14416;
	}

	public function _m18356( buff:T1229):Serializable
	{
		var _s14423:PlayerUnjoinGame = new PlayerUnjoinGame();
		var _r5877:Int = T1227._m18538(buff);
		for (_o5878 in 0 ... _r5877) 
		{
			var _p5879:Int = T1227._m18538(buff);
			if (_p5879 == 0) 
			{
				var _e5880:String = T1227._m18539(buff);
				_s14423.setMessageId(_e5880);
				MemoryManagement.free(_e5880);
				continue;
			}
			if (_p5879 == 1) 
			{
				var _b5881:String = T1227._m18539(buff);
				_s14423.setRequestId(_b5881);
				MemoryManagement.free(_b5881);
				continue;
			}
			if (_p5879 == 3) 
			{
				var _s5882:String = T1227._m18539(buff);
				_s14423.setGameId(_s5882);
				MemoryManagement.free(_s5882);
				continue;
			}
			if (_p5879 == 4) 
			{
				_s14423.setPlayer((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _s14423;
	}

	public function _m18357( buff:T1229):Serializable
	{
		var _n14431:DnsRequest = new DnsRequest();
		var _f5884:Int = T1227._m18538(buff);
		for (_e5885 in 0 ... _f5884) 
		{
			var _k5886:Int = T1227._m18538(buff);
			if (_k5886 == 0) 
			{
				var _w5887:String = T1227._m18539(buff);
				_n14431.setMessageId(_w5887);
				MemoryManagement.free(_w5887);
				continue;
			}
			if (_k5886 == 1) 
			{
				var _i5888:String = T1227._m18539(buff);
				_n14431.setRequestId(_i5888);
				MemoryManagement.free(_i5888);
				continue;
			}
			if (_k5886 == 3) 
			{
				var _i5889:String = T1227._m18539(buff);
				_n14431.setGameId(_i5889);
				MemoryManagement.free(_i5889);
				continue;
			}
			if (_k5886 == 4) 
			{
				_n14431.setGameVersion(T1227._m18537(buff));
				continue;
			}
			if (_k5886 == 5) 
			{
				_n14431.setGameDeployedVersion(T1227._m18537(buff));
				continue;
			}
			if (_k5886 == 6) 
			{
				var _h5890:String = T1227._m18539(buff);
				_n14431.setPlatform(_h5890);
				MemoryManagement.free(_h5890);
				continue;
			}
			T1227._m18540(buff);
		}
		return _n14431;
	}

	public function _m18358( _p13505:T1229):Serializable
	{
		var _t14440:DnsResponse = new DnsResponse();
		var _u13507:Int = T1227._m18538(_p13505);
		for (_c5893 in 0 ... _u13507) 
		{
			var _f5894:Int = T1227._m18538(_p13505);
			if (_f5894 == 0) 
			{
				var _p5895:String = T1227._m18539(_p13505);
				_t14440.setMessageId(_p5895);
				MemoryManagement.free(_p5895);
				continue;
			}
			if (_f5894 == 1) 
			{
				var _t5896:String = T1227._m18539(_p13505);
				_t14440.setRequestId(_t5896);
				MemoryManagement.free(_t5896);
				continue;
			}
			if (_f5894 == 3) 
			{
				var _n5897:String = T1227._m18539(_p13505);
				_t14440.setIpAddress(_n5897);
				MemoryManagement.free(_n5897);
				continue;
			}
			if (_f5894 == 4) 
			{
				_t14440.setTcpPort(T1227._m18537(_p13505));
				continue;
			}
			if (_f5894 == 5) 
			{
				_t14440.setDnsStatus((cast T1227._m18252(this, _p13505)));
				continue;
			}
			if (_f5894 == 6) 
			{
				_t14440.setStartDetails((cast T1227._m18252(this, _p13505)));
				continue;
			}
			T1227._m18540(_p13505);
		}
		return _t14440;
	}

	public function _m18359( buff:T1229):Serializable
	{
		var _k14448:ConnectionLost = new ConnectionLost();
		var _u5899:Int = T1227._m18538(buff);
		for (_o5900 in 0 ... _u5899) 
		{
			var _o5901:Int = T1227._m18538(buff);
			if (_o5901 == 0) 
			{
				var _e5902:String = T1227._m18539(buff);
				_k14448.setMessageId(_e5902);
				MemoryManagement.free(_e5902);
				continue;
			}
			if (_o5901 == 1) 
			{
				var _f5903:String = T1227._m18539(buff);
				_k14448.setRequestId(_f5903);
				MemoryManagement.free(_f5903);
				continue;
			}
			T1227._m18540(buff);
		}
		return _k14448;
	}

	public function _m18360( buff:T1229):Serializable
	{
		var _j14455:NWorldUpdate = new NWorldUpdate();
		var _n5905:Int = T1227._m18538(buff);
		for (_i5906 in 0 ... _n5905) 
		{
			var _c5907:Int = T1227._m18538(buff);
			if (_c5907 == 0) 
			{
				var _x5908:String = T1227._m18539(buff);
				_j14455.setStoreId(_x5908);
				MemoryManagement.free(_x5908);
				continue;
			}
			if (_c5907 == 2) 
			{
				_j14455.setUpdate(T1227._m18537(buff));
				continue;
			}
			if (_c5907 == 3) 
			{
				var _g14460:NList<Message> = null;
				var _y14461:Int = buff._m17886();
				if (_y14461 != T1221._m17179) 
				{
					buff._m17887();
					var _j14462:Int = buff._m17888();
					_g14460 = new NList<Message>();
					for (_v5912 in 0 ... _j14462) 
					{
						_g14460.add((cast T1227._m18252(this, buff)));
					}
				}
				_j14455.setValues(_g14460);
				continue;
			}
			T1227._m18540(buff);
		}
		return _j14455;
	}

	public function _m18361( buff:T1229):Serializable
	{
		var _c14465:StopPlugConnectionRequest = new StopPlugConnectionRequest();
		var _m5914:Int = T1227._m18538(buff);
		for (_c5915 in 0 ... _m5914) 
		{
			var _o5916:Int = T1227._m18538(buff);
			if (_o5916 == 0) 
			{
				var _g5917:String = T1227._m18539(buff);
				_c14465.setMessageId(_g5917);
				MemoryManagement.free(_g5917);
				continue;
			}
			if (_o5916 == 1) 
			{
				var _g5918:String = T1227._m18539(buff);
				_c14465.setRequestId(_g5918);
				MemoryManagement.free(_g5918);
				continue;
			}
			T1227._m18540(buff);
		}
		return _c14465;
	}

	public function _m18362( _e13511:T1229):Serializable
	{
		var _j14472:StopPlugConnectionResponse = new StopPlugConnectionResponse();
		var _k13513:Int = T1227._m18538(_e13511);
		for (_w5921 in 0 ... _k13513) 
		{
			var _q5922:Int = T1227._m18538(_e13511);
			if (_q5922 == 0) 
			{
				var _g5923:String = T1227._m18539(_e13511);
				_j14472.setMessageId(_g5923);
				MemoryManagement.free(_g5923);
				continue;
			}
			if (_q5922 == 1) 
			{
				var _p5924:String = T1227._m18539(_e13511);
				_j14472.setRequestId(_p5924);
				MemoryManagement.free(_p5924);
				continue;
			}
			T1227._m18540(_e13511);
		}
		return _j14472;
	}

	public function _m18363( buff:T1229):Serializable
	{
		var _p14479:NChallenge = new NChallenge();
		var _p5926:Int = T1227._m18538(buff);
		for (_c5927 in 0 ... _p5926) 
		{
			var _r5928:Int = T1227._m18538(buff);
			if (_r5928 == 0) 
			{
				var _e5929:String = T1227._m18539(buff);
				_p14479.setStoreId(_e5929);
				MemoryManagement.free(_e5929);
				continue;
			}
			if (_r5928 == 2) 
			{
				var _j5930:String = T1227._m18539(buff);
				_p14479.setId(_j5930);
				MemoryManagement.free(_j5930);
				continue;
			}
			if (_r5928 == 3) 
			{
				_p14479.setRequester((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r5928 == 4) 
			{
				_p14479.setTarget((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r5928 == 5) 
			{
				_p14479.setStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r5928 == 6) 
			{
				_p14479.setDate(T1227._m18543(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _p14479;
	}

	public function _m18364( buff:T1229):Serializable
	{
		var _b14486:ConnectionInterrupted = new ConnectionInterrupted();
		var _v5932:Int = T1227._m18538(buff);
		for (_q5933 in 0 ... _v5932) 
		{
			var _t5934:Int = T1227._m18538(buff);
			if (_t5934 == 0) 
			{
				var _c5935:String = T1227._m18539(buff);
				_b14486.setMessageId(_c5935);
				MemoryManagement.free(_c5935);
				continue;
			}
			if (_t5934 == 1) 
			{
				var _k5936:String = T1227._m18539(buff);
				_b14486.setRequestId(_k5936);
				MemoryManagement.free(_k5936);
				continue;
			}
			T1227._m18540(buff);
		}
		return _b14486;
	}

	public function _m18365( _g13517:T1229):Serializable
	{
		var _x14493:ConnectionResumed = new ConnectionResumed();
		var _o13519:Int = T1227._m18538(_g13517);
		for (_m5939 in 0 ... _o13519) 
		{
			var _r5940:Int = T1227._m18538(_g13517);
			if (_r5940 == 0) 
			{
				var _g5941:String = T1227._m18539(_g13517);
				_x14493.setMessageId(_g5941);
				MemoryManagement.free(_g5941);
				continue;
			}
			if (_r5940 == 1) 
			{
				var _g5942:String = T1227._m18539(_g13517);
				_x14493.setRequestId(_g5942);
				MemoryManagement.free(_g5942);
				continue;
			}
			T1227._m18540(_g13517);
		}
		return _x14493;
	}

	public function _m18366( buff:T1229):Serializable
	{
		var _l14500:ConnectionStop = new ConnectionStop();
		var _r5944:Int = T1227._m18538(buff);
		for (_l5945 in 0 ... _r5944) 
		{
			var _i5946:Int = T1227._m18538(buff);
			if (_i5946 == 0) 
			{
				var _x5947:String = T1227._m18539(buff);
				_l14500.setMessageId(_x5947);
				MemoryManagement.free(_x5947);
				continue;
			}
			if (_i5946 == 1) 
			{
				var _q5948:String = T1227._m18539(buff);
				_l14500.setRequestId(_q5948);
				MemoryManagement.free(_q5948);
				continue;
			}
			T1227._m18540(buff);
		}
		return _l14500;
	}

	public function _m18367( buff:T1229):Serializable
	{
		var _d14507:NuggetaQuery = new NuggetaQuery();
		var _e5950:Int = T1227._m18538(buff);
		for (_b5951 in 0 ... _e5950) 
		{
			var _f5952:Int = T1227._m18538(buff);
			if (_f5952 == 0) 
			{
				var _y5953:String = T1227._m18539(buff);
				_d14507.setDomain(_y5953);
				MemoryManagement.free(_y5953);
				continue;
			}
			if (_f5952 == 1) 
			{
				_d14507.setStart(T1227._m18537(buff));
				continue;
			}
			if (_f5952 == 2) 
			{
				_d14507.setLimit(T1227._m18537(buff));
				continue;
			}
			if (_f5952 == 3) 
			{
				var _j5954:String = T1227._m18539(buff);
				_d14507.setQuery(_j5954);
				MemoryManagement.free(_j5954);
				continue;
			}
			T1227._m18540(buff);
		}
		return _d14507;
	}

	public function _m18368( buff:T1229):Serializable
	{
		var _n14514:FriendConnectedNotification = new FriendConnectedNotification();
		var _v5956:Int = T1227._m18538(buff);
		for (_g5957 in 0 ... _v5956) 
		{
			var _u5958:Int = T1227._m18538(buff);
			if (_u5958 == 0) 
			{
				var _c5959:String = T1227._m18539(buff);
				_n14514.setMessageId(_c5959);
				MemoryManagement.free(_c5959);
				continue;
			}
			if (_u5958 == 1) 
			{
				var _e5960:String = T1227._m18539(buff);
				_n14514.setRequestId(_e5960);
				MemoryManagement.free(_e5960);
				continue;
			}
			if (_u5958 == 3) 
			{
				_n14514.setFriend((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _n14514;
	}

	public function _m18369( buff:T1229):Serializable
	{
		var _r14521:FriendDisconnectedNotification = new FriendDisconnectedNotification();
		var _g5962:Int = T1227._m18538(buff);
		for (_a5963 in 0 ... _g5962) 
		{
			var _y5964:Int = T1227._m18538(buff);
			if (_y5964 == 0) 
			{
				var _w5965:String = T1227._m18539(buff);
				_r14521.setMessageId(_w5965);
				MemoryManagement.free(_w5965);
				continue;
			}
			if (_y5964 == 1) 
			{
				var _b5966:String = T1227._m18539(buff);
				_r14521.setRequestId(_b5966);
				MemoryManagement.free(_b5966);
				continue;
			}
			if (_y5964 == 3) 
			{
				_r14521.setFriend((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _r14521;
	}

	public function _m18370( buff:T1229):Serializable
	{
		var _l14528:NPlayerWallet = new NPlayerWallet();
		var _u5968:Int = T1227._m18538(buff);
		for (_x5969 in 0 ... _u5968) 
		{
			var _f5970:Int = T1227._m18538(buff);
			if (_f5970 == 0) 
			{
				var _t5971:String = T1227._m18539(buff);
				_l14528.setStoreId(_t5971);
				MemoryManagement.free(_t5971);
				continue;
			}
			if (_f5970 == 3) 
			{
				_l14528.setNbCoins(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _l14528;
	}

	public function _m18371( _h13523:T1229):Serializable
	{
		var _r14534:NItem = new NItem();
		var _e13525:Int = T1227._m18538(_h13523);
		for (_n5974 in 0 ... _e13525) 
		{
			var _o5975:Int = T1227._m18538(_h13523);
			if (_o5975 == 0) 
			{
				var _s5976:String = T1227._m18539(_h13523);
				_r14534.setStoreId(_s5976);
				MemoryManagement.free(_s5976);
				continue;
			}
			if (_o5975 == 2) 
			{
				var _y5977:String = T1227._m18539(_h13523);
				_r14534.setId(_y5977);
				MemoryManagement.free(_y5977);
				continue;
			}
			if (_o5975 == 3) 
			{
				var _w5978:String = T1227._m18539(_h13523);
				_r14534.setName(_w5978);
				MemoryManagement.free(_w5978);
				continue;
			}
			if (_o5975 == 4) 
			{
				_r14534.setPrice(T1227._m18537(_h13523));
				continue;
			}
			if (_o5975 == 5) 
			{
				_r14534.setBought(T1227._m18541(_h13523));
				continue;
			}
			if (_o5975 == 6) 
			{
				_r14534.setCount(T1227._m18537(_h13523));
				continue;
			}
			T1227._m18540(_h13523);
		}
		return _r14534;
	}

	public function _m18372( buff:T1229):Serializable
	{
		var _s14542:NAchievement = new NAchievement();
		var _n5980:Int = T1227._m18538(buff);
		for (_s5981 in 0 ... _n5980) 
		{
			var _h5982:Int = T1227._m18538(buff);
			if (_h5982 == 0) 
			{
				var _k5983:String = T1227._m18539(buff);
				_s14542.setStoreId(_k5983);
				MemoryManagement.free(_k5983);
				continue;
			}
			if (_h5982 == 2) 
			{
				var _t5984:String = T1227._m18539(buff);
				_s14542.setId(_t5984);
				MemoryManagement.free(_t5984);
				continue;
			}
			if (_h5982 == 3) 
			{
				var _c5985:String = T1227._m18539(buff);
				_s14542.setName(_c5985);
				MemoryManagement.free(_c5985);
				continue;
			}
			if (_h5982 == 4) 
			{
				_s14542.setAchieved(T1227._m18541(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _s14542;
	}

	public function _m18373( buff:T1229):Serializable
	{
		var _w14550:NGameState = new NGameState();
		var _z5987:Int = T1227._m18538(buff);
		for (_w5988 in 0 ... _z5987) 
		{
			var _k5989:Int = T1227._m18538(buff);
			if (_k5989 == 0) 
			{
				var _h5990:String = T1227._m18539(buff);
				_w14550.setStoreId(_h5990);
				MemoryManagement.free(_h5990);
				continue;
			}
			if (_k5989 == 2) 
			{
				var _j14555:NList<NWorldUpdate> = null;
				var _p14556:Int = buff._m17886();
				if (_p14556 != T1221._m17179) 
				{
					buff._m17887();
					var _j14557:Int = buff._m17888();
					_j14555 = new NList<NWorldUpdate>();
					for (_t5994 in 0 ... _j14557) 
					{
						_j14555.add((cast T1227._m18252(this, buff)));
					}
				}
				_w14550.setUpdates(_j14555);
				continue;
			}
			T1227._m18540(buff);
		}
		return _w14550;
	}

	public function _m18374( _s13529:T1229):Serializable
	{
		var _s14560:NuggetaException = new NuggetaException();
		var _m13531:Int = T1227._m18538(_s13529);
		for (_f5997 in 0 ... _m13531) 
		{
			var _p5998:Int = T1227._m18538(_s13529);
			if (_p5998 == 0) 
			{
				var _r5999:String = T1227._m18539(_s13529);
				_s14560.setMessageId(_r5999);
				MemoryManagement.free(_r5999);
				continue;
			}
			if (_p5998 == 1) 
			{
				var _j6000:String = T1227._m18539(_s13529);
				_s14560.setRequestId(_j6000);
				MemoryManagement.free(_j6000);
				continue;
			}
			if (_p5998 == 3) 
			{
				_s14560.setErrorCode((cast T1227._m18252(this, _s13529)));
				continue;
			}
			if (_p5998 == 4) 
			{
				var _s6001:String = T1227._m18539(_s13529);
				_s14560.setReason(_s6001);
				MemoryManagement.free(_s6001);
				continue;
			}
			T1227._m18540(_s13529);
		}
		return _s14560;
	}

	public function _m18375( buff:T1229):Serializable
	{
		var _i14568:NCoinPackage = new NCoinPackage();
		var _o6003:Int = T1227._m18538(buff);
		for (_h6004 in 0 ... _o6003) 
		{
			var _o6005:Int = T1227._m18538(buff);
			if (_o6005 == 0) 
			{
				var _p6006:String = T1227._m18539(buff);
				_i14568.setStoreId(_p6006);
				MemoryManagement.free(_p6006);
				continue;
			}
			if (_o6005 == 2) 
			{
				var _l6007:String = T1227._m18539(buff);
				_i14568.setCoinPackageId(_l6007);
				MemoryManagement.free(_l6007);
				continue;
			}
			if (_o6005 == 3) 
			{
				_i14568.setVirtualValue(T1227._m18544(buff));
				continue;
			}
			if (_o6005 == 4) 
			{
				var _z6008:String = T1227._m18539(buff);
				_i14568.setProductId(_z6008);
				MemoryManagement.free(_z6008);
				continue;
			}
			T1227._m18540(buff);
		}
		return _i14568;
	}

	public function _m18376( buff:T1229):Serializable
	{
		var _h14576:BuyProductUrl = new BuyProductUrl();
		var _v6010:Int = T1227._m18538(buff);
		for (_p6011 in 0 ... _v6010) 
		{
			var _o6012:Int = T1227._m18538(buff);
			if (_o6012 == 0) 
			{
				var _n6013:String = T1227._m18539(buff);
				_h14576.setMessageId(_n6013);
				MemoryManagement.free(_n6013);
				continue;
			}
			if (_o6012 == 1) 
			{
				var _i6014:String = T1227._m18539(buff);
				_h14576.setRequestId(_i6014);
				MemoryManagement.free(_i6014);
				continue;
			}
			if (_o6012 == 3) 
			{
				var _l6015:String = T1227._m18539(buff);
				_h14576.setUrl(_l6015);
				MemoryManagement.free(_l6015);
				continue;
			}
			T1227._m18540(buff);
		}
		return _h14576;
	}

	public function _m18377( _n13535:T1229):Serializable
	{
		var _v14584:BuyProductNotification = new BuyProductNotification();
		var _u6017:Int = T1227._m18538(_n13535);
		for (_w6018 in 0 ... _u6017) 
		{
			var _t6019:Int = T1227._m18538(_n13535);
			if (_t6019 == 0) 
			{
				var _y6020:String = T1227._m18539(_n13535);
				_v14584.setMessageId(_y6020);
				MemoryManagement.free(_y6020);
				continue;
			}
			if (_t6019 == 1) 
			{
				var _l6021:String = T1227._m18539(_n13535);
				_v14584.setRequestId(_l6021);
				MemoryManagement.free(_l6021);
				continue;
			}
			T1227._m18540(_n13535);
		}
		return _v14584;
	}

	public function _m18378( buff:T1229):Serializable
	{
		var _d14591:NMatchMakingConditions = new NMatchMakingConditions();
		var _i13537:Int = T1227._m18538(buff);
		for (_g6024 in 0 ... _i13537) 
		{
			var _e6025:Int = T1227._m18538(buff);
			if (_e6025 == 0) 
			{
				var _s6026:String = T1227._m18539(buff);
				_d14591.setStoreId(_s6026);
				MemoryManagement.free(_s6026);
				continue;
			}
			if (_e6025 == 2) 
			{
				_d14591.setMatchMakingType((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _d14591;
	}

	public function _m18379( buff:T1229):Serializable
	{
		var _i14597:OpenConnection = new OpenConnection();
		var _p6028:Int = T1227._m18538(buff);
		for (_n6029 in 0 ... _p6028) 
		{
			var _x6030:Int = T1227._m18538(buff);
			if (_x6030 == 0) 
			{
				var _b6031:String = T1227._m18539(buff);
				_i14597.setMessageId(_b6031);
				MemoryManagement.free(_b6031);
				continue;
			}
			if (_x6030 == 1) 
			{
				var _n6032:String = T1227._m18539(buff);
				_i14597.setRequestId(_n6032);
				MemoryManagement.free(_n6032);
				continue;
			}
			if (_x6030 == 3) 
			{
				var _v6033:String = T1227._m18539(buff);
				_i14597.setIpAddress(_v6033);
				MemoryManagement.free(_v6033);
				continue;
			}
			if (_x6030 == 4) 
			{
				_i14597.setTcpPort(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _i14597;
	}

	public function _m18380( buff:T1229):Serializable
	{
		var _o14605:ChallengeAccepted = new ChallengeAccepted();
		var _u6035:Int = T1227._m18538(buff);
		for (_m6036 in 0 ... _u6035) 
		{
			var _o6037:Int = T1227._m18538(buff);
			if (_o6037 == 0) 
			{
				var _w6038:String = T1227._m18539(buff);
				_o14605.setMessageId(_w6038);
				MemoryManagement.free(_w6038);
				continue;
			}
			if (_o6037 == 1) 
			{
				var _o6039:String = T1227._m18539(buff);
				_o14605.setRequestId(_o6039);
				MemoryManagement.free(_o6039);
				continue;
			}
			if (_o6037 == 3) 
			{
				var _g6040:String = T1227._m18539(buff);
				_o14605.setChallengeId(_g6040);
				MemoryManagement.free(_g6040);
				continue;
			}
			if (_o6037 == 4) 
			{
				var _w6041:String = T1227._m18539(buff);
				_o14605.setGameId(_w6041);
				MemoryManagement.free(_w6041);
				continue;
			}
			T1227._m18540(buff);
		}
		return _o14605;
	}

	public function _m18381( _g13541:T1229):Serializable
	{
		var _o14614:ChallengeRefused = new ChallengeRefused();
		var _y13543:Int = T1227._m18538(_g13541);
		for (_i6044 in 0 ... _y13543) 
		{
			var _s6045:Int = T1227._m18538(_g13541);
			if (_s6045 == 0) 
			{
				var _e6046:String = T1227._m18539(_g13541);
				_o14614.setMessageId(_e6046);
				MemoryManagement.free(_e6046);
				continue;
			}
			if (_s6045 == 1) 
			{
				var _d6047:String = T1227._m18539(_g13541);
				_o14614.setStoreId(_d6047);
				MemoryManagement.free(_d6047);
				continue;
			}
			if (_s6045 == 6) 
			{
				var _g6048:String = T1227._m18539(_g13541);
				_o14614.setRequestId(_g6048);
				MemoryManagement.free(_g6048);
				continue;
			}
			if (_s6045 == 9) 
			{
				var _y6049:String = T1227._m18539(_g13541);
				_o14614.setChallengeId(_y6049);
				MemoryManagement.free(_y6049);
				continue;
			}
			if (_s6045 == 10) 
			{
				var _f6050:String = T1227._m18539(_g13541);
				_o14614.setReason(_f6050);
				MemoryManagement.free(_f6050);
				continue;
			}
			T1227._m18540(_g13541);
		}
		return _o14614;
	}

	public function _m18382( _r13547:T1229):Serializable
	{
		var _t14624:PlayerMessage = new PlayerMessage();
		var _n13549:Int = T1227._m18538(_r13547);
		for (_c6053 in 0 ... _n13549) 
		{
			var _w6054:Int = T1227._m18538(_r13547);
			if (_w6054 == 0) 
			{
				var _p6055:String = T1227._m18539(_r13547);
				_t14624.setMessageId(_p6055);
				MemoryManagement.free(_p6055);
				continue;
			}
			if (_w6054 == 1) 
			{
				var _l6056:String = T1227._m18539(_r13547);
				_t14624.setStoreId(_l6056);
				MemoryManagement.free(_l6056);
				continue;
			}
			if (_w6054 == 6) 
			{
				var _b6057:String = T1227._m18539(_r13547);
				_t14624.setRequestId(_b6057);
				MemoryManagement.free(_b6057);
				continue;
			}
			if (_w6054 == 9) 
			{
				var _k14631:String = T1227._m18539(_r13547);
				_t14624.setPlayerId(_k14631);
				MemoryManagement.free(_k14631);
				continue;
			}
			if (_w6054 == 10) 
			{
				_t14624.setMessage((cast T1227._m18252(this, _r13547)));
				continue;
			}
			T1227._m18540(_r13547);
		}
		return _t14624;
	}

	public function _m18383( buff:T1229):Serializable
	{
		var _y14633:NRawMessage = new NRawMessage();
		var _a6060:Int = T1227._m18538(buff);
		for (_s6061 in 0 ... _a6060) 
		{
			var _p6062:Int = T1227._m18538(buff);
			if (_p6062 == 0) 
			{
				var _w6063:String = T1227._m18539(buff);
				_y14633.setMessageId(_w6063);
				MemoryManagement.free(_w6063);
				continue;
			}
			if (_p6062 == 1) 
			{
				var _z6064:String = T1227._m18539(buff);
				_y14633.setSenderId(_z6064);
				MemoryManagement.free(_z6064);
				continue;
			}
			if (_p6062 == 2) 
			{
				var _a6065:String = T1227._m18539(buff);
				_y14633.setStoreId(_a6065);
				MemoryManagement.free(_a6065);
				continue;
			}
			if (_p6062 == 7) 
			{
				var _j6066:String = T1227._m18539(buff);
				_y14633.setRequestId(_j6066);
				MemoryManagement.free(_j6066);
				continue;
			}
			if (_p6062 == 10) 
			{
				var _l14641:String = T1227._m18539(buff);
				_y14633.setGameId(_l14641);
				MemoryManagement.free(_l14641);
				continue;
			}
			if (_p6062 == 11) 
			{
				var _y14642:String = T1227._m18539(buff);
				_y14633.setContent(_y14642);
				MemoryManagement.free(_y14642);
				continue;
			}
			T1227._m18540(buff);
		}
		return _y14633;
	}

	public function _m18384( buff:T1229):Serializable
	{
		var _b14644:SessionExpired = new SessionExpired();
		var _f6070:Int = T1227._m18538(buff);
		for (_z6071 in 0 ... _f6070) 
		{
			var _b6072:Int = T1227._m18538(buff);
			if (_b6072 == 0) 
			{
				var _g6073:String = T1227._m18539(buff);
				_b14644.setMessageId(_g6073);
				MemoryManagement.free(_g6073);
				continue;
			}
			if (_b6072 == 1) 
			{
				var _y6074:String = T1227._m18539(buff);
				_b14644.setRequestId(_y6074);
				MemoryManagement.free(_y6074);
				continue;
			}
			if (_b6072 == 3) 
			{
				var _o6075:String = T1227._m18539(buff);
				_b14644.setSessionId(_o6075);
				MemoryManagement.free(_o6075);
				continue;
			}
			T1227._m18540(buff);
		}
		return _b14644;
	}

	public function _m18385( buff:T1229):Serializable
	{
		var _q14652:GameMessageError = new GameMessageError();
		var _f6077:Int = T1227._m18538(buff);
		for (_m6078 in 0 ... _f6077) 
		{
			var _c6079:Int = T1227._m18538(buff);
			if (_c6079 == 0) 
			{
				var _e6080:String = T1227._m18539(buff);
				_q14652.setMessageId(_e6080);
				MemoryManagement.free(_e6080);
				continue;
			}
			if (_c6079 == 1) 
			{
				var _i6081:String = T1227._m18539(buff);
				_q14652.setRequestId(_i6081);
				MemoryManagement.free(_i6081);
				continue;
			}
			if (_c6079 == 3) 
			{
				var _d6082:String = T1227._m18539(buff);
				_q14652.setReason(_d6082);
				MemoryManagement.free(_d6082);
				continue;
			}
			T1227._m18540(buff);
		}
		return _q14652;
	}

	public function _m18386( _r13553:T1229):Serializable
	{
		var _n14660:AdDisplayedNotification = new AdDisplayedNotification();
		var _l13555:Int = T1227._m18538(_r13553);
		for (_t6085 in 0 ... _l13555) 
		{
			var _t6086:Int = T1227._m18538(_r13553);
			if (_t6086 == 0) 
			{
				var _d6087:String = T1227._m18539(_r13553);
				_n14660.setMessageId(_d6087);
				MemoryManagement.free(_d6087);
				continue;
			}
			if (_t6086 == 1) 
			{
				var _h6088:String = T1227._m18539(_r13553);
				_n14660.setRequestId(_h6088);
				MemoryManagement.free(_h6088);
				continue;
			}
			T1227._m18540(_r13553);
		}
		return _n14660;
	}

	public function _m18387( buff:T1229):Serializable
	{
		var _v14667:NPlayerProfile = new NPlayerProfile();
		var _d6090:Int = T1227._m18538(buff);
		for (_q6091 in 0 ... _d6090) 
		{
			var _d6092:Int = T1227._m18538(buff);
			if (_d6092 == 0) 
			{
				var _r6093:String = T1227._m18539(buff);
				_v14667.setStoreId(_r6093);
				MemoryManagement.free(_r6093);
				continue;
			}
			if (_d6092 == 2) 
			{
				var _r6094:String = T1227._m18539(buff);
				_v14667.setAvatar(_r6094);
				MemoryManagement.free(_r6094);
				continue;
			}
			if (_d6092 == 3) 
			{
				var _m6095:String = T1227._m18539(buff);
				_v14667.setPlayerId(_m6095);
				MemoryManagement.free(_m6095);
				continue;
			}
			if (_d6092 == 4) 
			{
				var _f6096:String = T1227._m18539(buff);
				_v14667.setEmail(_f6096);
				MemoryManagement.free(_f6096);
				continue;
			}
			if (_d6092 == 5) 
			{
				var _r6097:String = T1227._m18539(buff);
				_v14667.setCountry(_r6097);
				MemoryManagement.free(_r6097);
				continue;
			}
			if (_d6092 == 7) 
			{
				var _w14676:NList<NPlayer> = null;
				var _n14677:Int = buff._m17886();
				if (_n14677 != T1221._m17179) 
				{
					buff._m17887();
					var _j14678:Int = buff._m17888();
					_w14676 = new NList<NPlayer>();
					for (_u6101 in 0 ... _j14678) 
					{
						_w14676.add((cast T1227._m18252(this, buff)));
					}
				}
				_v14667.setFriends(_w14676);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v14667;
	}

	public function _m18388( buff:T1229):Serializable
	{
		var _u14681:PlayerInvitationNotification = new PlayerInvitationNotification();
		var _k6103:Int = T1227._m18538(buff);
		for (_z6104 in 0 ... _k6103) 
		{
			var _p6105:Int = T1227._m18538(buff);
			if (_p6105 == 0) 
			{
				var _e6106:String = T1227._m18539(buff);
				_u14681.setMessageId(_e6106);
				MemoryManagement.free(_e6106);
				continue;
			}
			if (_p6105 == 1) 
			{
				var _w6107:String = T1227._m18539(buff);
				_u14681.setRequestId(_w6107);
				MemoryManagement.free(_w6107);
				continue;
			}
			if (_p6105 == 3) 
			{
				_u14681.setPlayerInvitation((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _u14681;
	}

	public function _m18389( _i13559:T1229):Serializable
	{
		var _k14688:FriendChallengeNotification = new FriendChallengeNotification();
		var _o13561:Int = T1227._m18538(_i13559);
		for (_t6110 in 0 ... _o13561) 
		{
			var _h6111:Int = T1227._m18538(_i13559);
			if (_h6111 == 0) 
			{
				var _r6112:String = T1227._m18539(_i13559);
				_k14688.setMessageId(_r6112);
				MemoryManagement.free(_r6112);
				continue;
			}
			if (_h6111 == 1) 
			{
				var _h6113:String = T1227._m18539(_i13559);
				_k14688.setRequestId(_h6113);
				MemoryManagement.free(_h6113);
				continue;
			}
			if (_h6111 == 3) 
			{
				_k14688.setChallenge((cast T1227._m18252(this, _i13559)));
				continue;
			}
			T1227._m18540(_i13559);
		}
		return _k14688;
	}

	public function _m18390( buff:T1229):Serializable
	{
		var _q14695:GameChatNotification = new GameChatNotification();
		var _e6115:Int = T1227._m18538(buff);
		for (_m6116 in 0 ... _e6115) 
		{
			var _q6117:Int = T1227._m18538(buff);
			if (_q6117 == 0) 
			{
				var _y6118:String = T1227._m18539(buff);
				_q14695.setMessageId(_y6118);
				MemoryManagement.free(_y6118);
				continue;
			}
			if (_q6117 == 1) 
			{
				var _k6119:String = T1227._m18539(buff);
				_q14695.setRequestId(_k6119);
				MemoryManagement.free(_k6119);
				continue;
			}
			if (_q6117 == 3) 
			{
				_q14695.setPlayer((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_q6117 == 4) 
			{
				var _s6120:String = T1227._m18539(buff);
				_q14695.setMessage(_s6120);
				MemoryManagement.free(_s6120);
				continue;
			}
			T1227._m18540(buff);
		}
		return _q14695;
	}

	public function _m18391( buff:T1229):Serializable
	{
		var _x14703:PublicServer = new PublicServer();
		var _e6122:Int = T1227._m18538(buff);
		for (_g6123 in 0 ... _e6122) 
		{
			var _x6124:Int = T1227._m18538(buff);
			if (_x6124 == 0) 
			{
				var _m6125:String = T1227._m18539(buff);
				_x14703.setStoreId(_m6125);
				MemoryManagement.free(_m6125);
				continue;
			}
			if (_x6124 == 3) 
			{
				var _h6126:String = T1227._m18539(buff);
				_x14703.setId(_h6126);
				MemoryManagement.free(_h6126);
				continue;
			}
			if (_x6124 == 4) 
			{
				var _u6127:String = T1227._m18539(buff);
				_x14703.setLocation(_u6127);
				MemoryManagement.free(_u6127);
				continue;
			}
			if (_x6124 == 5) 
			{
				_x14703.setPing(T1227._m18544(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _x14703;
	}

	public function _m18392( _f13565:T1229):Serializable
	{
		var _o14711:SwitchToServerInformation = new SwitchToServerInformation();
		var _y13567:Int = T1227._m18538(_f13565);
		for (_x6130 in 0 ... _y13567) 
		{
			var _h6131:Int = T1227._m18538(_f13565);
			if (_h6131 == 0) 
			{
				var _e6132:String = T1227._m18539(_f13565);
				_o14711.setMessageId(_e6132);
				MemoryManagement.free(_e6132);
				continue;
			}
			if (_h6131 == 1) 
			{
				var _j6133:String = T1227._m18539(_f13565);
				_o14711.setRequestId(_j6133);
				MemoryManagement.free(_j6133);
				continue;
			}
			if (_h6131 == 3) 
			{
				var _m6134:String = T1227._m18539(_f13565);
				_o14711.setAddress(_m6134);
				MemoryManagement.free(_m6134);
				continue;
			}
			T1227._m18540(_f13565);
		}
		return _o14711;
	}

	public function _m18393( buff:T1229):Serializable
	{
		var _c14719:MyTurnNotification = new MyTurnNotification();
		var _h6136:Int = T1227._m18538(buff);
		for (_g6137 in 0 ... _h6136) 
		{
			var _h6138:Int = T1227._m18538(buff);
			if (_h6138 == 0) 
			{
				var _m6139:String = T1227._m18539(buff);
				_c14719.setMessageId(_m6139);
				MemoryManagement.free(_m6139);
				continue;
			}
			if (_h6138 == 1) 
			{
				var _b6140:String = T1227._m18539(buff);
				_c14719.setRequestId(_b6140);
				MemoryManagement.free(_b6140);
				continue;
			}
			if (_h6138 == 3) 
			{
				var _x6141:String = T1227._m18539(buff);
				_c14719.setGameId(_x6141);
				MemoryManagement.free(_x6141);
				continue;
			}
			T1227._m18540(buff);
		}
		return _c14719;
	}

	public function _m18394( _i13571:T1229):Serializable
	{
		var _u14727:PlayerTurnNotification = new PlayerTurnNotification();
		var _c6143:Int = T1227._m18538(_i13571);
		for (_a6144 in 0 ... _c6143) 
		{
			var _i6145:Int = T1227._m18538(_i13571);
			if (_i6145 == 0) 
			{
				var _t6146:String = T1227._m18539(_i13571);
				_u14727.setMessageId(_t6146);
				MemoryManagement.free(_t6146);
				continue;
			}
			if (_i6145 == 1) 
			{
				var _h6147:String = T1227._m18539(_i13571);
				_u14727.setRequestId(_h6147);
				MemoryManagement.free(_h6147);
				continue;
			}
			if (_i6145 == 3) 
			{
				_u14727.setCurrentPlayer((cast T1227._m18252(this, _i13571)));
				continue;
			}
			if (_i6145 == 4) 
			{
				var _o6148:String = T1227._m18539(_i13571);
				_u14727.setGameId(_o6148);
				MemoryManagement.free(_o6148);
				continue;
			}
			T1227._m18540(_i13571);
		}
		return _u14727;
	}

	public function _m18395( buff:T1229):Serializable
	{
		var _j14735:NStore = new NStore();
		var _y13573:Int = T1227._m18538(buff);
		for (_x6151 in 0 ... _y13573) 
		{
			var _r6152:Int = T1227._m18538(buff);
			if (_r6152 == 1) 
			{
				var _g6153:String = T1227._m18539(buff);
				_j14735.setStoreId(_g6153);
				MemoryManagement.free(_g6153);
				continue;
			}
			if (_r6152 == 2) 
			{
				var _n14740:NList<NItem> = null;
				var _b14741:Int = buff._m17886();
				if (_b14741 != T1221._m17179) 
				{
					buff._m17887();
					var _q14742:Int = buff._m17888();
					_n14740 = new NList<NItem>();
					for (_f6157 in 0 ... _q14742) 
					{
						_n14740.add((cast T1227._m18252(this, buff)));
					}
				}
				_j14735.setItems(_n14740);
				continue;
			}
			T1227._m18540(buff);
		}
		return _j14735;
	}

	public function _m18396( buff:T1229):Serializable
	{
		var _g14745:NAchievementBoard = new NAchievementBoard();
		var _z6159:Int = T1227._m18538(buff);
		for (_g6160 in 0 ... _z6159) 
		{
			var _s6161:Int = T1227._m18538(buff);
			if (_s6161 == 1) 
			{
				var _w6162:String = T1227._m18539(buff);
				_g14745.setStoreId(_w6162);
				MemoryManagement.free(_w6162);
				continue;
			}
			if (_s6161 == 2) 
			{
				var _x14750:NList<NAchievement> = null;
				var _y14751:Int = buff._m17886();
				if (_y14751 != T1221._m17179) 
				{
					buff._m17887();
					var _t14752:Int = buff._m17888();
					_x14750 = new NList<NAchievement>();
					for (_g6166 in 0 ... _t14752) 
					{
						_x14750.add((cast T1227._m18252(this, buff)));
					}
				}
				_g14745.setAchievements(_x14750);
				continue;
			}
			T1227._m18540(buff);
		}
		return _g14745;
	}

	public function _m18397( _a13577:T1229):Serializable
	{
		var _h14755:NLeaderboard = new NLeaderboard();
		var _m13579:Int = T1227._m18538(_a13577);
		for (_o6169 in 0 ... _m13579) 
		{
			var _b6170:Int = T1227._m18538(_a13577);
			if (_b6170 == 2) 
			{
				var _k6171:String = T1227._m18539(_a13577);
				_h14755.setId(_k6171);
				MemoryManagement.free(_k6171);
				continue;
			}
			if (_b6170 == 3) 
			{
				var _x6172:String = T1227._m18539(_a13577);
				_h14755.setName(_x6172);
				MemoryManagement.free(_x6172);
				continue;
			}
			if (_b6170 == 4) 
			{
				var _z14761:NList<NLeaderboardEntry> = null;
				var _k14762:Int = _a13577._m17886();
				if (_k14762 != T1221._m17179) 
				{
					_a13577._m17887();
					var _s14763:Int = _a13577._m17888();
					_z14761 = new NList<NLeaderboardEntry>();
					for (_j6176 in 0 ... _s14763) 
					{
						_z14761.add((cast T1227._m18252(this, _a13577)));
					}
				}
				_h14755.setLeaderboardEntries(_z14761);
				continue;
			}
			T1227._m18540(_a13577);
		}
		return _h14755;
	}

	public function _m18398( _h13583:T1229):Serializable
	{
		var _w14766:TestPrimitiveList = new TestPrimitiveList();
		var _c13585:Int = T1227._m18538(_h13583);
		for (_r6179 in 0 ... _c13585) 
		{
			var _u6180:Int = T1227._m18538(_h13583);
			if (_u6180 == 0) 
			{
				var _e6181:String = T1227._m18539(_h13583);
				_w14766.setMessageId(_e6181);
				MemoryManagement.free(_e6181);
				continue;
			}
			if (_u6180 == 1) 
			{
				var _j6182:String = T1227._m18539(_h13583);
				_w14766.setRequestId(_j6182);
				MemoryManagement.free(_j6182);
				continue;
			}
			if (_u6180 == 3) 
			{
				var _m14772:NList<String> = T1227._m18545(this, _h13583);
				_w14766.setStringList(_m14772);
				continue;
			}
			if (_u6180 == 4) 
			{
				var _w14773:NList<Int> = T1227._m18546(this, _h13583);
				_w14766.setIntegerList(_w14773);
				continue;
			}
			if (_u6180 == 5) 
			{
				var _v14774:NList<Int> = T1227._m18547(this, _h13583);
				_w14766.setShortList(_v14774);
				continue;
			}
			if (_u6180 == 6) 
			{
				var _k14775:NList<Float> = T1227._m18548(this, _h13583);
				_w14766.setLongList(_k14775);
				continue;
			}
			if (_u6180 == 7) 
			{
				var _i14776:NList<Float> = T1227._m18549(this, _h13583);
				_w14766.setFloatList(_i14776);
				continue;
			}
			if (_u6180 == 8) 
			{
				var _k14777:NList<Float> = T1227._m18550(this, _h13583);
				_w14766.setDoubleList(_k14777);
				continue;
			}
			if (_u6180 == 9) 
			{
				var _f14778:NList<Bool> = T1227._m18551(this, _h13583);
				_w14766.setBooleanList(_f14778);
				continue;
			}
			if (_u6180 == 14) 
			{
				_w14766.setPlayerMatrix2(T1227._m18552(this, _h13583));
				continue;
			}
			T1227._m18540(_h13583);
		}
		return _w14766;
	}

	public function _m18399( buff:T1229):Serializable
	{
		var _q14780:OpenUrl = new OpenUrl();
		var _d6191:Int = T1227._m18538(buff);
		for (_b6192 in 0 ... _d6191) 
		{
			var _y6193:Int = T1227._m18538(buff);
			if (_y6193 == 0) 
			{
				var _p6194:String = T1227._m18539(buff);
				_q14780.setMessageId(_p6194);
				MemoryManagement.free(_p6194);
				continue;
			}
			if (_y6193 == 1) 
			{
				var _v6195:String = T1227._m18539(buff);
				_q14780.setRequestId(_v6195);
				MemoryManagement.free(_v6195);
				continue;
			}
			if (_y6193 == 3) 
			{
				var _n6196:String = T1227._m18539(buff);
				_q14780.setUrl(_n6196);
				MemoryManagement.free(_n6196);
				continue;
			}
			T1227._m18540(buff);
		}
		return _q14780;
	}

	public function _m18400( buff:T1229):Serializable
	{
		var _m14788:TurnBasedContext = new TurnBasedContext();
		var _f6198:Int = T1227._m18538(buff);
		for (_c6199 in 0 ... _f6198) 
		{
			var _q6200:Int = T1227._m18538(buff);
			if (_q6200 == 0) 
			{
				var _j6201:String = T1227._m18539(buff);
				_m14788.setMessageId(_j6201);
				MemoryManagement.free(_j6201);
				continue;
			}
			if (_q6200 == 1) 
			{
				var _t6202:String = T1227._m18539(buff);
				_m14788.setRequestId(_t6202);
				MemoryManagement.free(_t6202);
				continue;
			}
			if (_q6200 == 3) 
			{
				_m14788.setCurrentPlayer((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _m14788;
	}

	public function _m18401( _o13589:T1229):Serializable
	{
		var _g14795:DisconnectedContext = new DisconnectedContext();
		var _i13591:Int = T1227._m18538(_o13589);
		for (_n6205 in 0 ... _i13591) 
		{
			var _q6206:Int = T1227._m18538(_o13589);
			if (_q6206 == 0) 
			{
				var _x6207:String = T1227._m18539(_o13589);
				_g14795.setMessageId(_x6207);
				MemoryManagement.free(_x6207);
				continue;
			}
			if (_q6206 == 1) 
			{
				var _w6208:String = T1227._m18539(_o13589);
				_g14795.setRequestId(_w6208);
				MemoryManagement.free(_w6208);
				continue;
			}
			if (_q6206 == 3) 
			{
				var _b14801:NList<NPlayer> = null;
				var _m14802:Int = _o13589._m17886();
				if (_m14802 != T1221._m17179) 
				{
					_o13589._m17887();
					var _w14803:Int = _o13589._m17888();
					_b14801 = new NList<NPlayer>();
					for (_f6212 in 0 ... _w14803) 
					{
						_b14801.add((cast T1227._m18252(this, _o13589)));
					}
				}
				_g14795.setParticipants(_b14801);
				continue;
			}
			T1227._m18540(_o13589);
		}
		return _g14795;
	}

	public function _m18402( _c13595:T1229):Serializable
	{
		var _k14806:OpenUrlData = new OpenUrlData();
		var _p6214:Int = T1227._m18538(_c13595);
		for (_o6215 in 0 ... _p6214) 
		{
			var _f6216:Int = T1227._m18538(_c13595);
			if (_f6216 == 0) 
			{
				var _f6217:String = T1227._m18539(_c13595);
				_k14806.setMessageId(_f6217);
				MemoryManagement.free(_f6217);
				continue;
			}
			if (_f6216 == 1) 
			{
				var _q6218:String = T1227._m18539(_c13595);
				_k14806.setRequestId(_q6218);
				MemoryManagement.free(_q6218);
				continue;
			}
			if (_f6216 == 3) 
			{
				var _t6219:String = T1227._m18539(_c13595);
				_k14806.setSessionId(_t6219);
				MemoryManagement.free(_t6219);
				continue;
			}
			if (_f6216 == 4) 
			{
				var _v6220:String = T1227._m18539(_c13595);
				_k14806.setCallbackId(_v6220);
				MemoryManagement.free(_v6220);
				continue;
			}
			if (_f6216 == 5) 
			{
				var _d6221:String = T1227._m18539(_c13595);
				_k14806.setCallbackUrl(_d6221);
				MemoryManagement.free(_d6221);
				continue;
			}
			if (_f6216 == 6) 
			{
				_k14806.setThirdPartySource((cast T1227._m18252(this, _c13595)));
				continue;
			}
			T1227._m18540(_c13595);
		}
		return _k14806;
	}

	public function _m18403( buff:T1229):Serializable
	{
		var _l14816:HeartBeatRequest = new HeartBeatRequest();
		var _h13597:Int = T1227._m18538(buff);
		for (_d6224 in 0 ... _h13597) 
		{
			var _m6225:Int = T1227._m18538(buff);
			if (_m6225 == 0) 
			{
				var _i6226:String = T1227._m18539(buff);
				_l14816.setMessageId(_i6226);
				MemoryManagement.free(_i6226);
				continue;
			}
			if (_m6225 == 1) 
			{
				var _f6227:String = T1227._m18539(buff);
				_l14816.setRequestId(_f6227);
				MemoryManagement.free(_f6227);
				continue;
			}
			if (_m6225 == 3) 
			{
				_l14816.setCounter(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _l14816;
	}

	public function _m18404( buff:T1229):Serializable
	{
		var _b14823:HeartBeatResponse = new HeartBeatResponse();
		var _i6229:Int = T1227._m18538(buff);
		for (_j6230 in 0 ... _i6229) 
		{
			var _p6231:Int = T1227._m18538(buff);
			if (_p6231 == 0) 
			{
				var _k6232:String = T1227._m18539(buff);
				_b14823.setMessageId(_k6232);
				MemoryManagement.free(_k6232);
				continue;
			}
			if (_p6231 == 1) 
			{
				var _l6233:String = T1227._m18539(buff);
				_b14823.setRequestId(_l6233);
				MemoryManagement.free(_l6233);
				continue;
			}
			if (_p6231 == 3) 
			{
				_b14823.setCounter(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _b14823;
	}

	public function _m18405( _p13601:T1229):Serializable
	{
		var _w14830:NLeaderboardEntry = new NLeaderboardEntry();
		var _e13603:Int = T1227._m18538(_p13601);
		for (_q6236 in 0 ... _e13603) 
		{
			var _k6237:Int = T1227._m18538(_p13601);
			if (_k6237 == 1) 
			{
				var _p6238:String = T1227._m18539(_p13601);
				_w14830.setStoreId(_p6238);
				MemoryManagement.free(_p6238);
				continue;
			}
			if (_k6237 == 2) 
			{
				var _k6239:String = T1227._m18539(_p13601);
				_w14830.setData(_k6239);
				MemoryManagement.free(_k6239);
				continue;
			}
			if (_k6237 == 3) 
			{
				var _w6240:String = T1227._m18539(_p13601);
				_w14830.setId(_w6240);
				MemoryManagement.free(_w6240);
				continue;
			}
			if (_k6237 == 4) 
			{
				_w14830.setTimestamp(T1227._m18542(_p13601));
				continue;
			}
			if (_k6237 == 5) 
			{
				_w14830.setPlayer((cast T1227._m18252(this, _p13601)));
				continue;
			}
			if (_k6237 == 6) 
			{
				_w14830.setScore((cast T1227._m18252(this, _p13601)));
				continue;
			}
			T1227._m18540(_p13601);
		}
		return _w14830;
	}

	public function _m18406( _u13607:T1229):Serializable
	{
		var _p14838:StartDetails = new StartDetails();
		var _i6242:Int = T1227._m18538(_u13607);
		for (_f6243 in 0 ... _i6242) 
		{
			var _u6244:Int = T1227._m18538(_u13607);
			if (_u6244 == 1) 
			{
				var _v6245:String = T1227._m18539(_u13607);
				_p14838.setStoreId(_v6245);
				MemoryManagement.free(_v6245);
				continue;
			}
			if (_u6244 == 2) 
			{
				var _d14843:String = T1227._m18539(_u13607);
				_p14838.setData(_d14843);
				MemoryManagement.free(_d14843);
				continue;
			}
			if (_u6244 == 3) 
			{
				_p14838.setUseDefaultImpl(T1227._m18541(_u13607));
				continue;
			}
			if (_u6244 == 4) 
			{
				_p14838.setCurrentVersion(T1227._m18537(_u13607));
				continue;
			}
			if (_u6244 == 5) 
			{
				_p14838.setNextVersion(T1227._m18537(_u13607));
				continue;
			}
			if (_u6244 == 6) 
			{
				var _w6247:String = T1227._m18539(_u13607);
				_p14838.setTitle(_w6247);
				MemoryManagement.free(_w6247);
				continue;
			}
			if (_u6244 == 7) 
			{
				var _b6248:String = T1227._m18539(_u13607);
				_p14838.setText(_b6248);
				MemoryManagement.free(_b6248);
				continue;
			}
			if (_u6244 == 8) 
			{
				var _o14846:String = T1227._m18539(_u13607);
				_p14838.setUrl(_o14846);
				MemoryManagement.free(_o14846);
				continue;
			}
			T1227._m18540(_u13607);
		}
		return _p14838;
	}

	public function _m18407( buff:T1229):Serializable
	{
		var _m14848:StartRequest = new StartRequest();
		var _d13609:Int = T1227._m18538(buff);
		for (_k6252 in 0 ... _d13609) 
		{
			var _o6253:Int = T1227._m18538(buff);
			if (_o6253 == 0) 
			{
				var _m6254:String = T1227._m18539(buff);
				_m14848.setMessageId(_m6254);
				MemoryManagement.free(_m6254);
				continue;
			}
			if (_o6253 == 1) 
			{
				var _u6255:String = T1227._m18539(buff);
				_m14848.setRequestId(_u6255);
				MemoryManagement.free(_u6255);
				continue;
			}
			T1227._m18540(buff);
		}
		return _m14848;
	}

	public function _m18408( buff:T1229):Serializable
	{
		var _x14855:StartResponse = new StartResponse();
		var _j6257:Int = T1227._m18538(buff);
		for (_g6258 in 0 ... _j6257) 
		{
			var _j6259:Int = T1227._m18538(buff);
			if (_j6259 == 0) 
			{
				var _d6260:String = T1227._m18539(buff);
				_x14855.setMessageId(_d6260);
				MemoryManagement.free(_d6260);
				continue;
			}
			if (_j6259 == 1) 
			{
				var _f6261:String = T1227._m18539(buff);
				_x14855.setRequestId(_f6261);
				MemoryManagement.free(_f6261);
				continue;
			}
			if (_j6259 == 3) 
			{
				_x14855.setStartStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_j6259 == 4) 
			{
				_x14855.setStartDetails((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _x14855;
	}

	public function _m18409( buff:T1229):Serializable
	{
		var _m14862:InvitePlayerResponse = new InvitePlayerResponse();
		var _m6263:Int = T1227._m18538(buff);
		for (_t6264 in 0 ... _m6263) 
		{
			var _k6265:Int = T1227._m18538(buff);
			if (_k6265 == 0) 
			{
				var _k6266:String = T1227._m18539(buff);
				_m14862.setMessageId(_k6266);
				MemoryManagement.free(_k6266);
				continue;
			}
			if (_k6265 == 1) 
			{
				var _u6267:String = T1227._m18539(buff);
				_m14862.setRequestId(_u6267);
				MemoryManagement.free(_u6267);
				continue;
			}
			if (_k6265 == 3) 
			{
				_m14862.setInvitePlayerStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _m14862;
	}

	public function _m18410( _l13613:T1229):Serializable
	{
		var _r14869:InvitePlayerByIdRequest = new InvitePlayerByIdRequest();
		var _m13615:Int = T1227._m18538(_l13613);
		for (_r6270 in 0 ... _m13615) 
		{
			var _z6271:Int = T1227._m18538(_l13613);
			if (_z6271 == 0) 
			{
				var _w6272:String = T1227._m18539(_l13613);
				_r14869.setMessageId(_w6272);
				MemoryManagement.free(_w6272);
				continue;
			}
			if (_z6271 == 1) 
			{
				var _y6273:String = T1227._m18539(_l13613);
				_r14869.setRequestId(_y6273);
				MemoryManagement.free(_y6273);
				continue;
			}
			if (_z6271 == 3) 
			{
				var _m6274:String = T1227._m18539(_l13613);
				_r14869.setId(_m6274);
				MemoryManagement.free(_m6274);
				continue;
			}
			T1227._m18540(_l13613);
		}
		return _r14869;
	}

	public function _m18411( buff:T1229):Serializable
	{
		var _s14877:InvitePlayerByLoginRequest = new InvitePlayerByLoginRequest();
		var _y6276:Int = T1227._m18538(buff);
		for (_h6277 in 0 ... _y6276) 
		{
			var _f6278:Int = T1227._m18538(buff);
			if (_f6278 == 0) 
			{
				var _x6279:String = T1227._m18539(buff);
				_s14877.setMessageId(_x6279);
				MemoryManagement.free(_x6279);
				continue;
			}
			if (_f6278 == 1) 
			{
				var _d6280:String = T1227._m18539(buff);
				_s14877.setRequestId(_d6280);
				MemoryManagement.free(_d6280);
				continue;
			}
			if (_f6278 == 3) 
			{
				var _f6281:String = T1227._m18539(buff);
				_s14877.setLogin(_f6281);
				MemoryManagement.free(_f6281);
				continue;
			}
			T1227._m18540(buff);
		}
		return _s14877;
	}

	public function _m18412( _q13619:T1229):Serializable
	{
		var _y14885:SignUpResponse = new SignUpResponse();
		var _f13621:Int = T1227._m18538(_q13619);
		for (_y6284 in 0 ... _f13621) 
		{
			var _d6285:Int = T1227._m18538(_q13619);
			if (_d6285 == 0) 
			{
				var _c6286:String = T1227._m18539(_q13619);
				_y14885.setMessageId(_c6286);
				MemoryManagement.free(_c6286);
				continue;
			}
			if (_d6285 == 1) 
			{
				var _u6287:String = T1227._m18539(_q13619);
				_y14885.setRequestId(_u6287);
				MemoryManagement.free(_u6287);
				continue;
			}
			if (_d6285 == 3) 
			{
				_y14885.setSignUpStatus((cast T1227._m18252(this, _q13619)));
				continue;
			}
			if (_d6285 == 4) 
			{
				_y14885.setPlayer((cast T1227._m18252(this, _q13619)));
				continue;
			}
			T1227._m18540(_q13619);
		}
		return _y14885;
	}

	public function _m18413( buff:T1229):Serializable
	{
		var _n14892:SignUpRequest = new SignUpRequest();
		var _y6289:Int = T1227._m18538(buff);
		for (_o6290 in 0 ... _y6289) 
		{
			var _o6291:Int = T1227._m18538(buff);
			if (_o6291 == 0) 
			{
				var _v6292:String = T1227._m18539(buff);
				_n14892.setMessageId(_v6292);
				MemoryManagement.free(_v6292);
				continue;
			}
			if (_o6291 == 1) 
			{
				var _a6293:String = T1227._m18539(buff);
				_n14892.setRequestId(_a6293);
				MemoryManagement.free(_a6293);
				continue;
			}
			if (_o6291 == 3) 
			{
				var _j6294:String = T1227._m18539(buff);
				_n14892.setLogin(_j6294);
				MemoryManagement.free(_j6294);
				continue;
			}
			if (_o6291 == 4) 
			{
				var _b6295:String = T1227._m18539(buff);
				_n14892.setPassword(_b6295);
				MemoryManagement.free(_b6295);
				continue;
			}
			if (_o6291 == 5) 
			{
				_n14892.setPlayerProfile((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _n14892;
	}

	public function _m18414( buff:T1229):Serializable
	{
		var _r14901:ForgotPasswordResponse = new ForgotPasswordResponse();
		var _q6297:Int = T1227._m18538(buff);
		for (_g6298 in 0 ... _q6297) 
		{
			var _v6299:Int = T1227._m18538(buff);
			if (_v6299 == 0) 
			{
				var _i6300:String = T1227._m18539(buff);
				_r14901.setMessageId(_i6300);
				MemoryManagement.free(_i6300);
				continue;
			}
			if (_v6299 == 1) 
			{
				var _x6301:String = T1227._m18539(buff);
				_r14901.setRequestId(_x6301);
				MemoryManagement.free(_x6301);
				continue;
			}
			if (_v6299 == 3) 
			{
				_r14901.setForgotPasswordStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _r14901;
	}

	public function _m18415( _d13625:T1229):Serializable
	{
		var _n14908:ForgotPasswordByLoginRequest = new ForgotPasswordByLoginRequest();
		var _s13627:Int = T1227._m18538(_d13625);
		for (_m6304 in 0 ... _s13627) 
		{
			var _r6305:Int = T1227._m18538(_d13625);
			if (_r6305 == 0) 
			{
				var _p6306:String = T1227._m18539(_d13625);
				_n14908.setMessageId(_p6306);
				MemoryManagement.free(_p6306);
				continue;
			}
			if (_r6305 == 1) 
			{
				var _m6307:String = T1227._m18539(_d13625);
				_n14908.setRequestId(_m6307);
				MemoryManagement.free(_m6307);
				continue;
			}
			if (_r6305 == 3) 
			{
				var _s6308:String = T1227._m18539(_d13625);
				_n14908.setLogin(_s6308);
				MemoryManagement.free(_s6308);
				continue;
			}
			T1227._m18540(_d13625);
		}
		return _n14908;
	}

	public function _m18416( buff:T1229):Serializable
	{
		var _t14916:ForgotPasswordByEmailRequest = new ForgotPasswordByEmailRequest();
		var _z6310:Int = T1227._m18538(buff);
		for (_x6311 in 0 ... _z6310) 
		{
			var _x6312:Int = T1227._m18538(buff);
			if (_x6312 == 0) 
			{
				var _v6313:String = T1227._m18539(buff);
				_t14916.setMessageId(_v6313);
				MemoryManagement.free(_v6313);
				continue;
			}
			if (_x6312 == 1) 
			{
				var _w6314:String = T1227._m18539(buff);
				_t14916.setRequestId(_w6314);
				MemoryManagement.free(_w6314);
				continue;
			}
			if (_x6312 == 3) 
			{
				var _v6315:String = T1227._m18539(buff);
				_t14916.setEmail(_v6315);
				MemoryManagement.free(_v6315);
				continue;
			}
			T1227._m18540(buff);
		}
		return _t14916;
	}

	public function _m18417( buff:T1229):Serializable
	{
		var _t14924:LoginResponse = new LoginResponse();
		var _q6317:Int = T1227._m18538(buff);
		for (_v6318 in 0 ... _q6317) 
		{
			var _a6319:Int = T1227._m18538(buff);
			if (_a6319 == 0) 
			{
				var _y6320:String = T1227._m18539(buff);
				_t14924.setMessageId(_y6320);
				MemoryManagement.free(_y6320);
				continue;
			}
			if (_a6319 == 1) 
			{
				var _w6321:String = T1227._m18539(buff);
				_t14924.setRequestId(_w6321);
				MemoryManagement.free(_w6321);
				continue;
			}
			if (_a6319 == 3) 
			{
				_t14924.setLoginStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_a6319 == 4) 
			{
				_t14924.setPlayer((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _t14924;
	}

	public function _m18418( _m13631:T1229):Serializable
	{
		var _g14931:LoginRequest = new LoginRequest();
		var _w13633:Int = T1227._m18538(_m13631);
		for (_a6324 in 0 ... _w13633) 
		{
			var _f6325:Int = T1227._m18538(_m13631);
			if (_f6325 == 0) 
			{
				var _m6326:String = T1227._m18539(_m13631);
				_g14931.setMessageId(_m6326);
				MemoryManagement.free(_m6326);
				continue;
			}
			if (_f6325 == 1) 
			{
				var _n6327:String = T1227._m18539(_m13631);
				_g14931.setRequestId(_n6327);
				MemoryManagement.free(_n6327);
				continue;
			}
			if (_f6325 == 3) 
			{
				var _e6328:String = T1227._m18539(_m13631);
				_g14931.setLogin(_e6328);
				MemoryManagement.free(_e6328);
				continue;
			}
			if (_f6325 == 4) 
			{
				var _r6329:String = T1227._m18539(_m13631);
				_g14931.setPassword(_r6329);
				MemoryManagement.free(_r6329);
				continue;
			}
			if (_f6325 == 5) 
			{
				_g14931.setClientApplication((cast T1227._m18252(this, _m13631)));
				continue;
			}
			T1227._m18540(_m13631);
		}
		return _g14931;
	}

	public function _m18419( buff:T1229):Serializable
	{
		var _v14940:SavePlayerProfileResponse = new SavePlayerProfileResponse();
		var _k6331:Int = T1227._m18538(buff);
		for (_l6332 in 0 ... _k6331) 
		{
			var _a6333:Int = T1227._m18538(buff);
			if (_a6333 == 0) 
			{
				var _b6334:String = T1227._m18539(buff);
				_v14940.setMessageId(_b6334);
				MemoryManagement.free(_b6334);
				continue;
			}
			if (_a6333 == 1) 
			{
				var _r6335:String = T1227._m18539(buff);
				_v14940.setRequestId(_r6335);
				MemoryManagement.free(_r6335);
				continue;
			}
			if (_a6333 == 3) 
			{
				_v14940.setSavePlayerProfileStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _v14940;
	}

	public function _m18420( buff:T1229):Serializable
	{
		var _z14947:SavePlayerProfileRequest = new SavePlayerProfileRequest();
		var _f6337:Int = T1227._m18538(buff);
		for (_p6338 in 0 ... _f6337) 
		{
			var _v6339:Int = T1227._m18538(buff);
			if (_v6339 == 0) 
			{
				var _u6340:String = T1227._m18539(buff);
				_z14947.setMessageId(_u6340);
				MemoryManagement.free(_u6340);
				continue;
			}
			if (_v6339 == 1) 
			{
				var _j6341:String = T1227._m18539(buff);
				_z14947.setRequestId(_j6341);
				MemoryManagement.free(_j6341);
				continue;
			}
			if (_v6339 == 3) 
			{
				_z14947.setProfile((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _z14947;
	}

	public function _m18421( _h13637:T1229):Serializable
	{
		var _j14954:GetPlayerProfileResponse = new GetPlayerProfileResponse();
		var _j13639:Int = T1227._m18538(_h13637);
		for (_i6344 in 0 ... _j13639) 
		{
			var _h6345:Int = T1227._m18538(_h13637);
			if (_h6345 == 0) 
			{
				var _j6346:String = T1227._m18539(_h13637);
				_j14954.setMessageId(_j6346);
				MemoryManagement.free(_j6346);
				continue;
			}
			if (_h6345 == 1) 
			{
				var _g6347:String = T1227._m18539(_h13637);
				_j14954.setRequestId(_g6347);
				MemoryManagement.free(_g6347);
				continue;
			}
			if (_h6345 == 3) 
			{
				_j14954.setGetPlayerProfileStatus((cast T1227._m18252(this, _h13637)));
				continue;
			}
			if (_h6345 == 4) 
			{
				_j14954.setProfile((cast T1227._m18252(this, _h13637)));
				continue;
			}
			T1227._m18540(_h13637);
		}
		return _j14954;
	}

	public function _m18422( buff:T1229):Serializable
	{
		var _m14961:GetPlayerProfileRequest = new GetPlayerProfileRequest();
		var _q6349:Int = T1227._m18538(buff);
		for (_r6350 in 0 ... _q6349) 
		{
			var _s6351:Int = T1227._m18538(buff);
			if (_s6351 == 0) 
			{
				var _a6352:String = T1227._m18539(buff);
				_m14961.setMessageId(_a6352);
				MemoryManagement.free(_a6352);
				continue;
			}
			if (_s6351 == 1) 
			{
				var _h6353:String = T1227._m18539(buff);
				_m14961.setRequestId(_h6353);
				MemoryManagement.free(_h6353);
				continue;
			}
			T1227._m18540(buff);
		}
		return _m14961;
	}

	public function _m18423( buff:T1229):Serializable
	{
		var _o14968:GetPlayerProfileByPlayerIdRequest = new GetPlayerProfileByPlayerIdRequest();
		var _r6355:Int = T1227._m18538(buff);
		for (_k6356 in 0 ... _r6355) 
		{
			var _w6357:Int = T1227._m18538(buff);
			if (_w6357 == 0) 
			{
				var _n6358:String = T1227._m18539(buff);
				_o14968.setMessageId(_n6358);
				MemoryManagement.free(_n6358);
				continue;
			}
			if (_w6357 == 1) 
			{
				var _m6359:String = T1227._m18539(buff);
				_o14968.setRequestId(_m6359);
				MemoryManagement.free(_m6359);
				continue;
			}
			if (_w6357 == 3) 
			{
				var _q6360:String = T1227._m18539(buff);
				_o14968.setPlayerId(_q6360);
				MemoryManagement.free(_q6360);
				continue;
			}
			T1227._m18540(buff);
		}
		return _o14968;
	}

	public function _m18424( _b13643:T1229):Serializable
	{
		var _i14976:LogoutResponse = new LogoutResponse();
		var _p13645:Int = T1227._m18538(_b13643);
		for (_x6363 in 0 ... _p13645) 
		{
			var _u6364:Int = T1227._m18538(_b13643);
			if (_u6364 == 0) 
			{
				var _y6365:String = T1227._m18539(_b13643);
				_i14976.setMessageId(_y6365);
				MemoryManagement.free(_y6365);
				continue;
			}
			if (_u6364 == 1) 
			{
				var _v6366:String = T1227._m18539(_b13643);
				_i14976.setRequestId(_v6366);
				MemoryManagement.free(_v6366);
				continue;
			}
			if (_u6364 == 3) 
			{
				_i14976.setLogoutStatus((cast T1227._m18252(this, _b13643)));
				continue;
			}
			if (_u6364 == 4) 
			{
				_i14976.setPlayer((cast T1227._m18252(this, _b13643)));
				continue;
			}
			T1227._m18540(_b13643);
		}
		return _i14976;
	}

	public function _m18425( buff:T1229):Serializable
	{
		var _v14983:LogoutRequest = new LogoutRequest();
		var _b6368:Int = T1227._m18538(buff);
		for (_y6369 in 0 ... _b6368) 
		{
			var _z6370:Int = T1227._m18538(buff);
			if (_z6370 == 0) 
			{
				var _m6371:String = T1227._m18539(buff);
				_v14983.setMessageId(_m6371);
				MemoryManagement.free(_m6371);
				continue;
			}
			if (_z6370 == 1) 
			{
				var _i6372:String = T1227._m18539(buff);
				_v14983.setRequestId(_i6372);
				MemoryManagement.free(_i6372);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v14983;
	}

	public function _m18426( buff:T1229):Serializable
	{
		var _l14990:ChallengeFriendResponse = new ChallengeFriendResponse();
		var _s6374:Int = T1227._m18538(buff);
		for (_s6375 in 0 ... _s6374) 
		{
			var _l6376:Int = T1227._m18538(buff);
			if (_l6376 == 0) 
			{
				var _y6377:String = T1227._m18539(buff);
				_l14990.setMessageId(_y6377);
				MemoryManagement.free(_y6377);
				continue;
			}
			if (_l6376 == 1) 
			{
				var _c6378:String = T1227._m18539(buff);
				_l14990.setRequestId(_c6378);
				MemoryManagement.free(_c6378);
				continue;
			}
			if (_l6376 == 3) 
			{
				_l14990.setChallengeFriendStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_l6376 == 4) 
			{
				var _f6379:String = T1227._m18539(buff);
				_l14990.setPlayerId(_f6379);
				MemoryManagement.free(_f6379);
				continue;
			}
			T1227._m18540(buff);
		}
		return _l14990;
	}

	public function _m18427( _i13649:T1229):Serializable
	{
		var _n14998:ChallengeFriendRequest = new ChallengeFriendRequest();
		var _l13651:Int = T1227._m18538(_i13649);
		for (_v6382 in 0 ... _l13651) 
		{
			var _e6383:Int = T1227._m18538(_i13649);
			if (_e6383 == 0) 
			{
				var _x6384:String = T1227._m18539(_i13649);
				_n14998.setMessageId(_x6384);
				MemoryManagement.free(_x6384);
				continue;
			}
			if (_e6383 == 1) 
			{
				var _i6385:String = T1227._m18539(_i13649);
				_n14998.setRequestId(_i6385);
				MemoryManagement.free(_i6385);
				continue;
			}
			if (_e6383 == 3) 
			{
				var _w6386:String = T1227._m18539(_i13649);
				_n14998.setPlayerId(_w6386);
				MemoryManagement.free(_w6386);
				continue;
			}
			T1227._m18540(_i13649);
		}
		return _n14998;
	}

	public function _m18428( buff:T1229):Serializable
	{
		var _j15006:ChallengeThirdPartyFriendResponse = new ChallengeThirdPartyFriendResponse();
		var _l6388:Int = T1227._m18538(buff);
		for (_n6389 in 0 ... _l6388) 
		{
			var _i6390:Int = T1227._m18538(buff);
			if (_i6390 == 0) 
			{
				var _i6391:String = T1227._m18539(buff);
				_j15006.setMessageId(_i6391);
				MemoryManagement.free(_i6391);
				continue;
			}
			if (_i6390 == 1) 
			{
				var _l6392:String = T1227._m18539(buff);
				_j15006.setRequestId(_l6392);
				MemoryManagement.free(_l6392);
				continue;
			}
			if (_i6390 == 3) 
			{
				_j15006.setChallengeThirdPartyFriendStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_i6390 == 4) 
			{
				var _c6393:String = T1227._m18539(buff);
				_j15006.setThirdPartyId(_c6393);
				MemoryManagement.free(_c6393);
				continue;
			}
			T1227._m18540(buff);
		}
		return _j15006;
	}

	public function _m18429( buff:T1229):Serializable
	{
		var _c15014:ChallengeThirdPartyFriendRequest = new ChallengeThirdPartyFriendRequest();
		var _c6395:Int = T1227._m18538(buff);
		for (_v6396 in 0 ... _c6395) 
		{
			var _j6397:Int = T1227._m18538(buff);
			if (_j6397 == 0) 
			{
				var _c6398:String = T1227._m18539(buff);
				_c15014.setMessageId(_c6398);
				MemoryManagement.free(_c6398);
				continue;
			}
			if (_j6397 == 1) 
			{
				var _j6399:String = T1227._m18539(buff);
				_c15014.setRequestId(_j6399);
				MemoryManagement.free(_j6399);
				continue;
			}
			if (_j6397 == 3) 
			{
				var _z6400:String = T1227._m18539(buff);
				_c15014.setThirdPartyId(_z6400);
				MemoryManagement.free(_z6400);
				continue;
			}
			if (_j6397 == 4) 
			{
				var _a6401:String = T1227._m18539(buff);
				_c15014.setTitle(_a6401);
				MemoryManagement.free(_a6401);
				continue;
			}
			if (_j6397 == 5) 
			{
				var _n6402:String = T1227._m18539(buff);
				_c15014.setChallengeMessage(_n6402);
				MemoryManagement.free(_n6402);
				continue;
			}
			if (_j6397 == 6) 
			{
				var _b6403:String = T1227._m18539(buff);
				_c15014.setPictureUrl(_b6403);
				MemoryManagement.free(_b6403);
				continue;
			}
			if (_j6397 == 7) 
			{
				var _j6404:String = T1227._m18539(buff);
				_c15014.setLink(_j6404);
				MemoryManagement.free(_j6404);
				continue;
			}
			if (_j6397 == 8) 
			{
				_c15014.setThirdPartySource((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _c15014;
	}

	public function _m18430( _d13655:T1229):Serializable
	{
		var _h15026:GetFriendsResponse = new GetFriendsResponse();
		var _w13657:Int = T1227._m18538(_d13655);
		for (_k6407 in 0 ... _w13657) 
		{
			var _p6408:Int = T1227._m18538(_d13655);
			if (_p6408 == 0) 
			{
				var _e6409:String = T1227._m18539(_d13655);
				_h15026.setMessageId(_e6409);
				MemoryManagement.free(_e6409);
				continue;
			}
			if (_p6408 == 1) 
			{
				var _q6410:String = T1227._m18539(_d13655);
				_h15026.setRequestId(_q6410);
				MemoryManagement.free(_q6410);
				continue;
			}
			if (_p6408 == 3) 
			{
				_h15026.setGetFriendsStatus((cast T1227._m18252(this, _d13655)));
				continue;
			}
			if (_p6408 == 4) 
			{
				var _t15032:NList<NPlayer> = null;
				var _n15033:Int = _d13655._m17886();
				if (_n15033 != T1221._m17179) 
				{
					_d13655._m17887();
					var _d15034:Int = _d13655._m17888();
					_t15032 = new NList<NPlayer>();
					for (_s6414 in 0 ... _d15034) 
					{
						_t15032.add((cast T1227._m18252(this, _d13655)));
					}
				}
				_h15026.setFriends(_t15032);
				continue;
			}
			T1227._m18540(_d13655);
		}
		return _h15026;
	}

	public function _m18431( buff:T1229):Serializable
	{
		var _s15037:GetFriendsRequest = new GetFriendsRequest();
		var _y6416:Int = T1227._m18538(buff);
		for (_x6417 in 0 ... _y6416) 
		{
			var _s6418:Int = T1227._m18538(buff);
			if (_s6418 == 0) 
			{
				var _p6419:String = T1227._m18539(buff);
				_s15037.setMessageId(_p6419);
				MemoryManagement.free(_p6419);
				continue;
			}
			if (_s6418 == 1) 
			{
				var _h6420:String = T1227._m18539(buff);
				_s15037.setRequestId(_h6420);
				MemoryManagement.free(_h6420);
				continue;
			}
			T1227._m18540(buff);
		}
		return _s15037;
	}

	public function _m18432( buff:T1229):Serializable
	{
		var _i15044:GetFriendsByPlayerIdRequest = new GetFriendsByPlayerIdRequest();
		var _u6422:Int = T1227._m18538(buff);
		for (_g6423 in 0 ... _u6422) 
		{
			var _k6424:Int = T1227._m18538(buff);
			if (_k6424 == 0) 
			{
				var _f6425:String = T1227._m18539(buff);
				_i15044.setMessageId(_f6425);
				MemoryManagement.free(_f6425);
				continue;
			}
			if (_k6424 == 1) 
			{
				var _d6426:String = T1227._m18539(buff);
				_i15044.setRequestId(_d6426);
				MemoryManagement.free(_d6426);
				continue;
			}
			if (_k6424 == 3) 
			{
				var _j6427:String = T1227._m18539(buff);
				_i15044.setPlayerId(_j6427);
				MemoryManagement.free(_j6427);
				continue;
			}
			T1227._m18540(buff);
		}
		return _i15044;
	}

	public function _m18433( _o13661:T1229):Serializable
	{
		var _o15052:GetThirdPartyFriendsResponse = new GetThirdPartyFriendsResponse();
		var _j13663:Int = T1227._m18538(_o13661);
		for (_f6430 in 0 ... _j13663) 
		{
			var _e6431:Int = T1227._m18538(_o13661);
			if (_e6431 == 0) 
			{
				var _k6432:String = T1227._m18539(_o13661);
				_o15052.setMessageId(_k6432);
				MemoryManagement.free(_k6432);
				continue;
			}
			if (_e6431 == 1) 
			{
				var _o6433:String = T1227._m18539(_o13661);
				_o15052.setRequestId(_o6433);
				MemoryManagement.free(_o6433);
				continue;
			}
			if (_e6431 == 3) 
			{
				_o15052.setGetThirdPartyFriendsStatus((cast T1227._m18252(this, _o13661)));
				continue;
			}
			if (_e6431 == 4) 
			{
				var _i15058:NList<NPlayer> = null;
				var _u15059:Int = _o13661._m17886();
				if (_u15059 != T1221._m17179) 
				{
					_o13661._m17887();
					var _g15060:Int = _o13661._m17888();
					_i15058 = new NList<NPlayer>();
					for (_v6437 in 0 ... _g15060) 
					{
						_i15058.add((cast T1227._m18252(this, _o13661)));
					}
				}
				_o15052.setThirdPartyFriends(_i15058);
				continue;
			}
			T1227._m18540(_o13661);
		}
		return _o15052;
	}

	public function _m18434( buff:T1229):Serializable
	{
		var _e15063:GetThirdPartyFriendsRequest = new GetThirdPartyFriendsRequest();
		var _i6439:Int = T1227._m18538(buff);
		for (_d6440 in 0 ... _i6439) 
		{
			var _q6441:Int = T1227._m18538(buff);
			if (_q6441 == 0) 
			{
				var _a6442:String = T1227._m18539(buff);
				_e15063.setMessageId(_a6442);
				MemoryManagement.free(_a6442);
				continue;
			}
			if (_q6441 == 1) 
			{
				var _d6443:String = T1227._m18539(buff);
				_e15063.setRequestId(_d6443);
				MemoryManagement.free(_d6443);
				continue;
			}
			if (_q6441 == 3) 
			{
				_e15063.setThirdPartySource((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _e15063;
	}

	public function _m18435( _w13667:T1229):Serializable
	{
		var _e15070:GetPlayerInvitationsResponse = new GetPlayerInvitationsResponse();
		var _d13669:Int = T1227._m18538(_w13667);
		for (_x6446 in 0 ... _d13669) 
		{
			var _p6447:Int = T1227._m18538(_w13667);
			if (_p6447 == 0) 
			{
				var _u6448:String = T1227._m18539(_w13667);
				_e15070.setMessageId(_u6448);
				MemoryManagement.free(_u6448);
				continue;
			}
			if (_p6447 == 1) 
			{
				var _s6449:String = T1227._m18539(_w13667);
				_e15070.setRequestId(_s6449);
				MemoryManagement.free(_s6449);
				continue;
			}
			if (_p6447 == 3) 
			{
				_e15070.setGetPlayerInvitationsStatus((cast T1227._m18252(this, _w13667)));
				continue;
			}
			if (_p6447 == 4) 
			{
				var _s15076:NList<NPlayerInvitation> = null;
				var _k15077:Int = _w13667._m17886();
				if (_k15077 != T1221._m17179) 
				{
					_w13667._m17887();
					var _a15078:Int = _w13667._m17888();
					_s15076 = new NList<NPlayerInvitation>();
					for (_p6453 in 0 ... _a15078) 
					{
						_s15076.add((cast T1227._m18252(this, _w13667)));
					}
				}
				_e15070.setInvitations(_s15076);
				continue;
			}
			T1227._m18540(_w13667);
		}
		return _e15070;
	}

	public function _m18436( buff:T1229):Serializable
	{
		var _m15081:GetPlayerInvitationsRequest = new GetPlayerInvitationsRequest();
		var _f6455:Int = T1227._m18538(buff);
		for (_g6456 in 0 ... _f6455) 
		{
			var _w6457:Int = T1227._m18538(buff);
			if (_w6457 == 0) 
			{
				var _p6458:String = T1227._m18539(buff);
				_m15081.setMessageId(_p6458);
				MemoryManagement.free(_p6458);
				continue;
			}
			if (_w6457 == 1) 
			{
				var _v6459:String = T1227._m18539(buff);
				_m15081.setRequestId(_v6459);
				MemoryManagement.free(_v6459);
				continue;
			}
			T1227._m18540(buff);
		}
		return _m15081;
	}

	public function _m18437( buff:T1229):Serializable
	{
		var _p15088:AcceptPlayerInvitationResponse = new AcceptPlayerInvitationResponse();
		var _g6461:Int = T1227._m18538(buff);
		for (_f6462 in 0 ... _g6461) 
		{
			var _z6463:Int = T1227._m18538(buff);
			if (_z6463 == 0) 
			{
				var _n6464:String = T1227._m18539(buff);
				_p15088.setMessageId(_n6464);
				MemoryManagement.free(_n6464);
				continue;
			}
			if (_z6463 == 1) 
			{
				var _n6465:String = T1227._m18539(buff);
				_p15088.setRequestId(_n6465);
				MemoryManagement.free(_n6465);
				continue;
			}
			if (_z6463 == 3) 
			{
				_p15088.setAcceptPlayerInvitationStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_z6463 == 4) 
			{
				var _n6466:String = T1227._m18539(buff);
				_p15088.setPlayerInvitationId(_n6466);
				MemoryManagement.free(_n6466);
				continue;
			}
			T1227._m18540(buff);
		}
		return _p15088;
	}

	public function _m18438( _e13673:T1229):Serializable
	{
		var _d15096:AcceptPlayerInvitationRequest = new AcceptPlayerInvitationRequest();
		var _x13675:Int = T1227._m18538(_e13673);
		for (_n6469 in 0 ... _x13675) 
		{
			var _h6470:Int = T1227._m18538(_e13673);
			if (_h6470 == 0) 
			{
				var _h6471:String = T1227._m18539(_e13673);
				_d15096.setMessageId(_h6471);
				MemoryManagement.free(_h6471);
				continue;
			}
			if (_h6470 == 1) 
			{
				var _q6472:String = T1227._m18539(_e13673);
				_d15096.setRequestId(_q6472);
				MemoryManagement.free(_q6472);
				continue;
			}
			if (_h6470 == 3) 
			{
				var _n6473:String = T1227._m18539(_e13673);
				_d15096.setInvitationId(_n6473);
				MemoryManagement.free(_n6473);
				continue;
			}
			T1227._m18540(_e13673);
		}
		return _d15096;
	}

	public function _m18439( buff:T1229):Serializable
	{
		var _e15104:IgnorePlayerInvitationResponse = new IgnorePlayerInvitationResponse();
		var _r6475:Int = T1227._m18538(buff);
		for (_c6476 in 0 ... _r6475) 
		{
			var _t6477:Int = T1227._m18538(buff);
			if (_t6477 == 0) 
			{
				var _v6478:String = T1227._m18539(buff);
				_e15104.setMessageId(_v6478);
				MemoryManagement.free(_v6478);
				continue;
			}
			if (_t6477 == 1) 
			{
				var _l6479:String = T1227._m18539(buff);
				_e15104.setRequestId(_l6479);
				MemoryManagement.free(_l6479);
				continue;
			}
			if (_t6477 == 3) 
			{
				_e15104.setIgnorePlayerInvitationStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_t6477 == 4) 
			{
				var _a6480:String = T1227._m18539(buff);
				_e15104.setPlayerInvitationId(_a6480);
				MemoryManagement.free(_a6480);
				continue;
			}
			T1227._m18540(buff);
		}
		return _e15104;
	}

	public function _m18440( buff:T1229):Serializable
	{
		var _x15112:IgnorePlayerInvitationRequest = new IgnorePlayerInvitationRequest();
		var _j6482:Int = T1227._m18538(buff);
		for (_j6483 in 0 ... _j6482) 
		{
			var _f6484:Int = T1227._m18538(buff);
			if (_f6484 == 0) 
			{
				var _r6485:String = T1227._m18539(buff);
				_x15112.setMessageId(_r6485);
				MemoryManagement.free(_r6485);
				continue;
			}
			if (_f6484 == 1) 
			{
				var _l6486:String = T1227._m18539(buff);
				_x15112.setRequestId(_l6486);
				MemoryManagement.free(_l6486);
				continue;
			}
			if (_f6484 == 3) 
			{
				var _l6487:String = T1227._m18539(buff);
				_x15112.setInvitationId(_l6487);
				MemoryManagement.free(_l6487);
				continue;
			}
			T1227._m18540(buff);
		}
		return _x15112;
	}

	public function _m18441( _g13679:T1229):Serializable
	{
		var _s15120:SubmitScoreResponse = new SubmitScoreResponse();
		var _y13681:Int = T1227._m18538(_g13679);
		for (_a6490 in 0 ... _y13681) 
		{
			var _c6491:Int = T1227._m18538(_g13679);
			if (_c6491 == 0) 
			{
				var _t6492:String = T1227._m18539(_g13679);
				_s15120.setMessageId(_t6492);
				MemoryManagement.free(_t6492);
				continue;
			}
			if (_c6491 == 1) 
			{
				var _c6493:String = T1227._m18539(_g13679);
				_s15120.setRequestId(_c6493);
				MemoryManagement.free(_c6493);
				continue;
			}
			if (_c6491 == 3) 
			{
				_s15120.setSubmitScoreStatus((cast T1227._m18252(this, _g13679)));
				continue;
			}
			T1227._m18540(_g13679);
		}
		return _s15120;
	}

	public function _m18442( buff:T1229):Serializable
	{
		var _w15127:SubmitScoreRequest = new SubmitScoreRequest();
		var _d6495:Int = T1227._m18538(buff);
		for (_i6496 in 0 ... _d6495) 
		{
			var _g6497:Int = T1227._m18538(buff);
			if (_g6497 == 0) 
			{
				var _p6498:String = T1227._m18539(buff);
				_w15127.setMessageId(_p6498);
				MemoryManagement.free(_p6498);
				continue;
			}
			if (_g6497 == 1) 
			{
				var _n6499:String = T1227._m18539(buff);
				_w15127.setRequestId(_n6499);
				MemoryManagement.free(_n6499);
				continue;
			}
			if (_g6497 == 3) 
			{
				_w15127.setScore((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_g6497 == 4) 
			{
				var _o6500:String = T1227._m18539(buff);
				_w15127.setLeaderboardId(_o6500);
				MemoryManagement.free(_o6500);
				continue;
			}
			T1227._m18540(buff);
		}
		return _w15127;
	}

	public function _m18443( _j13685:T1229):Serializable
	{
		var _p15135:SubmitScoreWithPlayerNameRequest = new SubmitScoreWithPlayerNameRequest();
		var _j6502:Int = T1227._m18538(_j13685);
		for (_s6503 in 0 ... _j6502) 
		{
			var _e6504:Int = T1227._m18538(_j13685);
			if (_e6504 == 0) 
			{
				var _n6505:String = T1227._m18539(_j13685);
				_p15135.setMessageId(_n6505);
				MemoryManagement.free(_n6505);
				continue;
			}
			if (_e6504 == 1) 
			{
				var _z6506:String = T1227._m18539(_j13685);
				_p15135.setRequestId(_z6506);
				MemoryManagement.free(_z6506);
				continue;
			}
			if (_e6504 == 3) 
			{
				var _y6507:String = T1227._m18539(_j13685);
				_p15135.setName(_y6507);
				MemoryManagement.free(_y6507);
				continue;
			}
			if (_e6504 == 4) 
			{
				_p15135.setScore((cast T1227._m18252(this, _j13685)));
				continue;
			}
			if (_e6504 == 5) 
			{
				var _a6508:String = T1227._m18539(_j13685);
				_p15135.setLeaderboardId(_a6508);
				MemoryManagement.free(_a6508);
				continue;
			}
			T1227._m18540(_j13685);
		}
		return _p15135;
	}

	public function _m18444( buff:T1229):Serializable
	{
		var _y15144:GetLeaderboardResponse = new GetLeaderboardResponse();
		var _z13687:Int = T1227._m18538(buff);
		for (_t6511 in 0 ... _z13687) 
		{
			var _r6512:Int = T1227._m18538(buff);
			if (_r6512 == 0) 
			{
				var _o6513:String = T1227._m18539(buff);
				_y15144.setMessageId(_o6513);
				MemoryManagement.free(_o6513);
				continue;
			}
			if (_r6512 == 1) 
			{
				var _h6514:String = T1227._m18539(buff);
				_y15144.setRequestId(_h6514);
				MemoryManagement.free(_h6514);
				continue;
			}
			if (_r6512 == 3) 
			{
				_y15144.setGetLeaderboardStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r6512 == 4) 
			{
				_y15144.setLeaderboard((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _y15144;
	}

	public function _m18445( buff:T1229):Serializable
	{
		var _s15151:GetLeaderboardRequest = new GetLeaderboardRequest();
		var _e6516:Int = T1227._m18538(buff);
		for (_e6517 in 0 ... _e6516) 
		{
			var _v6518:Int = T1227._m18538(buff);
			if (_v6518 == 0) 
			{
				var _u6519:String = T1227._m18539(buff);
				_s15151.setMessageId(_u6519);
				MemoryManagement.free(_u6519);
				continue;
			}
			if (_v6518 == 1) 
			{
				var _r6520:String = T1227._m18539(buff);
				_s15151.setRequestId(_r6520);
				MemoryManagement.free(_r6520);
				continue;
			}
			if (_v6518 == 3) 
			{
				var _s6521:String = T1227._m18539(buff);
				_s15151.setLeaderboardId(_s6521);
				MemoryManagement.free(_s6521);
				continue;
			}
			if (_v6518 == 4) 
			{
				_s15151.setPeriod((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_v6518 == 5) 
			{
				_s15151.setStart(T1227._m18537(buff));
				continue;
			}
			if (_v6518 == 6) 
			{
				_s15151.setLimit(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _s15151;
	}

	public function _m18446( buff:T1229):Serializable
	{
		var _c15159:BuyItemResponse = new BuyItemResponse();
		var _l6523:Int = T1227._m18538(buff);
		for (_i13693 in 0 ... _l6523) 
		{
			var _r6525:Int = T1227._m18538(buff);
			if (_r6525 == 0) 
			{
				var _k6526:String = T1227._m18539(buff);
				_c15159.setMessageId(_k6526);
				MemoryManagement.free(_k6526);
				continue;
			}
			if (_r6525 == 1) 
			{
				var _k6527:String = T1227._m18539(buff);
				_c15159.setRequestId(_k6527);
				MemoryManagement.free(_k6527);
				continue;
			}
			if (_r6525 == 3) 
			{
				_c15159.setBuyItemStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r6525 == 4) 
			{
				_c15159.setBoughtItem((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_r6525 == 5) 
			{
				_c15159.setQuantity(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _c15159;
	}

	public function _m18447( buff:T1229):Serializable
	{
		var _t15166:BuyItemRequest = new BuyItemRequest();
		var _u6529:Int = T1227._m18538(buff);
		for (_g6530 in 0 ... _u6529) 
		{
			var _c6531:Int = T1227._m18538(buff);
			if (_c6531 == 0) 
			{
				var _j6532:String = T1227._m18539(buff);
				_t15166.setMessageId(_j6532);
				MemoryManagement.free(_j6532);
				continue;
			}
			if (_c6531 == 1) 
			{
				var _t6533:String = T1227._m18539(buff);
				_t15166.setRequestId(_t6533);
				MemoryManagement.free(_t6533);
				continue;
			}
			if (_c6531 == 3) 
			{
				var _f6534:String = T1227._m18539(buff);
				_t15166.setItemId(_f6534);
				MemoryManagement.free(_f6534);
				continue;
			}
			if (_c6531 == 4) 
			{
				_t15166.setQuantity(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _t15166;
	}

	public function _m18448( _c13696:T1229):Serializable
	{
		var _x15174:GetStoreResponse = new GetStoreResponse();
		var _q13698:Int = T1227._m18538(_c13696);
		for (_k6537 in 0 ... _q13698) 
		{
			var _i6538:Int = T1227._m18538(_c13696);
			if (_i6538 == 0) 
			{
				var _w6539:String = T1227._m18539(_c13696);
				_x15174.setMessageId(_w6539);
				MemoryManagement.free(_w6539);
				continue;
			}
			if (_i6538 == 1) 
			{
				var _b6540:String = T1227._m18539(_c13696);
				_x15174.setRequestId(_b6540);
				MemoryManagement.free(_b6540);
				continue;
			}
			if (_i6538 == 3) 
			{
				_x15174.setGetStoreStatus((cast T1227._m18252(this, _c13696)));
				continue;
			}
			if (_i6538 == 4) 
			{
				_x15174.setStore((cast T1227._m18252(this, _c13696)));
				continue;
			}
			T1227._m18540(_c13696);
		}
		return _x15174;
	}

	public function _m18449( buff:T1229):Serializable
	{
		var _p15181:GetStoreRequest = new GetStoreRequest();
		var _d6542:Int = T1227._m18538(buff);
		for (_e6543 in 0 ... _d6542) 
		{
			var _o6544:Int = T1227._m18538(buff);
			if (_o6544 == 0) 
			{
				var _u6545:String = T1227._m18539(buff);
				_p15181.setMessageId(_u6545);
				MemoryManagement.free(_u6545);
				continue;
			}
			if (_o6544 == 1) 
			{
				var _l6546:String = T1227._m18539(buff);
				_p15181.setRequestId(_l6546);
				MemoryManagement.free(_l6546);
				continue;
			}
			T1227._m18540(buff);
		}
		return _p15181;
	}

	public function _m18450( _f13702:T1229):Serializable
	{
		var _i15188:ConsumeItemResponse = new ConsumeItemResponse();
		var _r13704:Int = T1227._m18538(_f13702);
		for (_h6549 in 0 ... _r13704) 
		{
			var _q6550:Int = T1227._m18538(_f13702);
			if (_q6550 == 0) 
			{
				var _v6551:String = T1227._m18539(_f13702);
				_i15188.setMessageId(_v6551);
				MemoryManagement.free(_v6551);
				continue;
			}
			if (_q6550 == 1) 
			{
				var _y6552:String = T1227._m18539(_f13702);
				_i15188.setRequestId(_y6552);
				MemoryManagement.free(_y6552);
				continue;
			}
			if (_q6550 == 3) 
			{
				_i15188.setConsumeItemStatus((cast T1227._m18252(this, _f13702)));
				continue;
			}
			if (_q6550 == 4) 
			{
				_i15188.setConsumedItem((cast T1227._m18252(this, _f13702)));
				continue;
			}
			if (_q6550 == 5) 
			{
				_i15188.setQuantity(T1227._m18537(_f13702));
				continue;
			}
			T1227._m18540(_f13702);
		}
		return _i15188;
	}

	public function _m18451( buff:T1229):Serializable
	{
		var _q15195:ConsumeItemRequest = new ConsumeItemRequest();
		var _b6554:Int = T1227._m18538(buff);
		for (_q6555 in 0 ... _b6554) 
		{
			var _p6556:Int = T1227._m18538(buff);
			if (_p6556 == 0) 
			{
				var _w6557:String = T1227._m18539(buff);
				_q15195.setMessageId(_w6557);
				MemoryManagement.free(_w6557);
				continue;
			}
			if (_p6556 == 1) 
			{
				var _c6558:String = T1227._m18539(buff);
				_q15195.setRequestId(_c6558);
				MemoryManagement.free(_c6558);
				continue;
			}
			if (_p6556 == 3) 
			{
				var _l6559:String = T1227._m18539(buff);
				_q15195.setItemId(_l6559);
				MemoryManagement.free(_l6559);
				continue;
			}
			if (_p6556 == 4) 
			{
				_q15195.setQuantity(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _q15195;
	}

	public function _m18452( buff:T1229):Serializable
	{
		var _o15203:IncreasePlayerWalletResponse = new IncreasePlayerWalletResponse();
		var _g6561:Int = T1227._m18538(buff);
		for (_n6562 in 0 ... _g6561) 
		{
			var _i6563:Int = T1227._m18538(buff);
			if (_i6563 == 0) 
			{
				var _b6564:String = T1227._m18539(buff);
				_o15203.setMessageId(_b6564);
				MemoryManagement.free(_b6564);
				continue;
			}
			if (_i6563 == 1) 
			{
				var _r6565:String = T1227._m18539(buff);
				_o15203.setRequestId(_r6565);
				MemoryManagement.free(_r6565);
				continue;
			}
			if (_i6563 == 3) 
			{
				_o15203.setIncreasePlayerWalletStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_i6563 == 4) 
			{
				_o15203.setValue(T1227._m18537(buff));
				continue;
			}
			T1227._m18540(buff);
		}
		return _o15203;
	}

	public function _m18453( _h13708:T1229):Serializable
	{
		var _r15210:IncreasePlayerWalletRequest = new IncreasePlayerWalletRequest();
		var _p13710:Int = T1227._m18538(_h13708);
		for (_i6568 in 0 ... _p13710) 
		{
			var _n6569:Int = T1227._m18538(_h13708);
			if (_n6569 == 0) 
			{
				var _e6570:String = T1227._m18539(_h13708);
				_r15210.setMessageId(_e6570);
				MemoryManagement.free(_e6570);
				continue;
			}
			if (_n6569 == 1) 
			{
				var _h6571:String = T1227._m18539(_h13708);
				_r15210.setRequestId(_h6571);
				MemoryManagement.free(_h6571);
				continue;
			}
			if (_n6569 == 3) 
			{
				_r15210.setValue(T1227._m18537(_h13708));
				continue;
			}
			T1227._m18540(_h13708);
		}
		return _r15210;
	}

	public function _m18454( buff:T1229):Serializable
	{
		var _u15217:GetPlayerWalletResponse = new GetPlayerWalletResponse();
		var _b6573:Int = T1227._m18538(buff);
		for (_t6574 in 0 ... _b6573) 
		{
			var _w6575:Int = T1227._m18538(buff);
			if (_w6575 == 0) 
			{
				var _d6576:String = T1227._m18539(buff);
				_u15217.setMessageId(_d6576);
				MemoryManagement.free(_d6576);
				continue;
			}
			if (_w6575 == 1) 
			{
				var _h6577:String = T1227._m18539(buff);
				_u15217.setRequestId(_h6577);
				MemoryManagement.free(_h6577);
				continue;
			}
			if (_w6575 == 3) 
			{
				_u15217.setGetPlayerWalletStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_w6575 == 4) 
			{
				_u15217.setWallet((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15217;
	}

	public function _m18455( buff:T1229):Serializable
	{
		var _u15224:GetPlayerWalletRequest = new GetPlayerWalletRequest();
		var _g6579:Int = T1227._m18538(buff);
		for (_u6580 in 0 ... _g6579) 
		{
			var _u6581:Int = T1227._m18538(buff);
			if (_u6581 == 0) 
			{
				var _r6582:String = T1227._m18539(buff);
				_u15224.setMessageId(_r6582);
				MemoryManagement.free(_r6582);
				continue;
			}
			if (_u6581 == 1) 
			{
				var _t6583:String = T1227._m18539(buff);
				_u15224.setRequestId(_t6583);
				MemoryManagement.free(_t6583);
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15224;
	}

	public function _m18456( _e13714:T1229):Serializable
	{
		var _s15231:GetAchievementBoardResponse = new GetAchievementBoardResponse();
		var _f13716:Int = T1227._m18538(_e13714);
		for (_t6586 in 0 ... _f13716) 
		{
			var _j6587:Int = T1227._m18538(_e13714);
			if (_j6587 == 0) 
			{
				var _w6588:String = T1227._m18539(_e13714);
				_s15231.setMessageId(_w6588);
				MemoryManagement.free(_w6588);
				continue;
			}
			if (_j6587 == 1) 
			{
				var _j6589:String = T1227._m18539(_e13714);
				_s15231.setRequestId(_j6589);
				MemoryManagement.free(_j6589);
				continue;
			}
			if (_j6587 == 3) 
			{
				_s15231.setGetAchievementBoardStatus((cast T1227._m18252(this, _e13714)));
				continue;
			}
			if (_j6587 == 4) 
			{
				_s15231.setAchievementBoard((cast T1227._m18252(this, _e13714)));
				continue;
			}
			T1227._m18540(_e13714);
		}
		return _s15231;
	}

	public function _m18457( buff:T1229):Serializable
	{
		var _r15238:GetAchievementBoardRequest = new GetAchievementBoardRequest();
		var _y6591:Int = T1227._m18538(buff);
		for (_d6592 in 0 ... _y6591) 
		{
			var _f6593:Int = T1227._m18538(buff);
			if (_f6593 == 0) 
			{
				var _g6594:String = T1227._m18539(buff);
				_r15238.setMessageId(_g6594);
				MemoryManagement.free(_g6594);
				continue;
			}
			if (_f6593 == 1) 
			{
				var _b6595:String = T1227._m18539(buff);
				_r15238.setRequestId(_b6595);
				MemoryManagement.free(_b6595);
				continue;
			}
			T1227._m18540(buff);
		}
		return _r15238;
	}

	public function _m18458( buff:T1229):Serializable
	{
		var _b15245:AchieveResponse = new AchieveResponse();
		var _f6597:Int = T1227._m18538(buff);
		for (_s6598 in 0 ... _f6597) 
		{
			var _r6599:Int = T1227._m18538(buff);
			if (_r6599 == 0) 
			{
				var _m6600:String = T1227._m18539(buff);
				_b15245.setMessageId(_m6600);
				MemoryManagement.free(_m6600);
				continue;
			}
			if (_r6599 == 1) 
			{
				var _u6601:String = T1227._m18539(buff);
				_b15245.setRequestId(_u6601);
				MemoryManagement.free(_u6601);
				continue;
			}
			if (_r6599 == 3) 
			{
				_b15245.setAchieveStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _b15245;
	}

	public function _m18459( buff:T1229):Serializable
	{
		var _j15252:AchieveRequest = new AchieveRequest();
		var _m6603:Int = T1227._m18538(buff);
		for (_u6604 in 0 ... _m6603) 
		{
			var _o6605:Int = T1227._m18538(buff);
			if (_o6605 == 0) 
			{
				var _j6606:String = T1227._m18539(buff);
				_j15252.setMessageId(_j6606);
				MemoryManagement.free(_j6606);
				continue;
			}
			if (_o6605 == 1) 
			{
				var _b6607:String = T1227._m18539(buff);
				_j15252.setRequestId(_b6607);
				MemoryManagement.free(_b6607);
				continue;
			}
			if (_o6605 == 3) 
			{
				var _c6608:String = T1227._m18539(buff);
				_j15252.setAchivementId(_c6608);
				MemoryManagement.free(_c6608);
				continue;
			}
			T1227._m18540(buff);
		}
		return _j15252;
	}

	public function _m18460( _o13720:T1229):Serializable
	{
		var _g15260:SearchImmediateGameResponse = new SearchImmediateGameResponse();
		var _r13722:Int = T1227._m18538(_o13720);
		for (_t6611 in 0 ... _r13722) 
		{
			var _h6612:Int = T1227._m18538(_o13720);
			if (_h6612 == 0) 
			{
				var _f6613:String = T1227._m18539(_o13720);
				_g15260.setMessageId(_f6613);
				MemoryManagement.free(_f6613);
				continue;
			}
			if (_h6612 == 1) 
			{
				var _j6614:String = T1227._m18539(_o13720);
				_g15260.setRequestId(_j6614);
				MemoryManagement.free(_j6614);
				continue;
			}
			if (_h6612 == 3) 
			{
				_g15260.setSearchImmediateGameStatus((cast T1227._m18252(this, _o13720)));
				continue;
			}
			if (_h6612 == 4) 
			{
				_g15260.setGame((cast T1227._m18252(this, _o13720)));
				continue;
			}
			T1227._m18540(_o13720);
		}
		return _g15260;
	}

	public function _m18461( buff:T1229):Serializable
	{
		var _b15267:SearchImmediateGameRequest = new SearchImmediateGameRequest();
		var _f6616:Int = T1227._m18538(buff);
		for (_p6617 in 0 ... _f6616) 
		{
			var _p6618:Int = T1227._m18538(buff);
			if (_p6618 == 0) 
			{
				var _i6619:String = T1227._m18539(buff);
				_b15267.setMessageId(_i6619);
				MemoryManagement.free(_i6619);
				continue;
			}
			if (_p6618 == 1) 
			{
				var _j6620:String = T1227._m18539(buff);
				_b15267.setRequestId(_j6620);
				MemoryManagement.free(_j6620);
				continue;
			}
			T1227._m18540(buff);
		}
		return _b15267;
	}

	public function _m18462( _p13726:T1229):Serializable
	{
		var _d15274:SearchImmediateGameByConditionsRequest = new SearchImmediateGameByConditionsRequest();
		var _p13728:Int = T1227._m18538(_p13726);
		for (_n6623 in 0 ... _p13728) 
		{
			var _h6624:Int = T1227._m18538(_p13726);
			if (_h6624 == 0) 
			{
				var _v6625:String = T1227._m18539(_p13726);
				_d15274.setMessageId(_v6625);
				MemoryManagement.free(_v6625);
				continue;
			}
			if (_h6624 == 1) 
			{
				var _e6626:String = T1227._m18539(_p13726);
				_d15274.setRequestId(_e6626);
				MemoryManagement.free(_e6626);
				continue;
			}
			if (_h6624 == 3) 
			{
				_d15274.setQuery((cast T1227._m18252(this, _p13726)));
				continue;
			}
			if (_h6624 == 4) 
			{
				_d15274.setMatchMakingConditions((cast T1227._m18252(this, _p13726)));
				continue;
			}
			T1227._m18540(_p13726);
		}
		return _d15274;
	}

	public function _m18463( buff:T1229):Serializable
	{
		var _h15281:JoinGameResponse = new JoinGameResponse();
		var _d6628:Int = T1227._m18538(buff);
		for (_x6629 in 0 ... _d6628) 
		{
			var _n6630:Int = T1227._m18538(buff);
			if (_n6630 == 0) 
			{
				var _g6631:String = T1227._m18539(buff);
				_h15281.setMessageId(_g6631);
				MemoryManagement.free(_g6631);
				continue;
			}
			if (_n6630 == 1) 
			{
				var _h6632:String = T1227._m18539(buff);
				_h15281.setRequestId(_h6632);
				MemoryManagement.free(_h6632);
				continue;
			}
			if (_n6630 == 3) 
			{
				_h15281.setJoinGameStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_n6630 == 4) 
			{
				_h15281.setGame((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _h15281;
	}

	public function _m18464( buff:T1229):Serializable
	{
		var _c15288:JoinGameRequest = new JoinGameRequest();
		var _k6634:Int = T1227._m18538(buff);
		for (_t6635 in 0 ... _k6634) 
		{
			var _h6636:Int = T1227._m18538(buff);
			if (_h6636 == 0) 
			{
				var _t6637:String = T1227._m18539(buff);
				_c15288.setMessageId(_t6637);
				MemoryManagement.free(_t6637);
				continue;
			}
			if (_h6636 == 1) 
			{
				var _o6638:String = T1227._m18539(buff);
				_c15288.setRequestId(_o6638);
				MemoryManagement.free(_o6638);
				continue;
			}
			if (_h6636 == 3) 
			{
				var _y6639:String = T1227._m18539(buff);
				_c15288.setGameId(_y6639);
				MemoryManagement.free(_y6639);
				continue;
			}
			T1227._m18540(buff);
		}
		return _c15288;
	}

	public function _m18465( _o13732:T1229):Serializable
	{
		var _e15296:UnjoinGameResponse = new UnjoinGameResponse();
		var _t6641:Int = T1227._m18538(_o13732);
		for (_e6642 in 0 ... _t6641) 
		{
			var _r6643:Int = T1227._m18538(_o13732);
			if (_r6643 == 0) 
			{
				var _y6644:String = T1227._m18539(_o13732);
				_e15296.setMessageId(_y6644);
				MemoryManagement.free(_y6644);
				continue;
			}
			if (_r6643 == 1) 
			{
				var _j6645:String = T1227._m18539(_o13732);
				_e15296.setRequestId(_j6645);
				MemoryManagement.free(_j6645);
				continue;
			}
			if (_r6643 == 3) 
			{
				_e15296.setUnjoinGameStatus((cast T1227._m18252(this, _o13732)));
				continue;
			}
			if (_r6643 == 4) 
			{
				var _m6646:String = T1227._m18539(_o13732);
				_e15296.setGameId(_m6646);
				MemoryManagement.free(_m6646);
				continue;
			}
			T1227._m18540(_o13732);
		}
		return _e15296;
	}

	public function _m18466( buff:T1229):Serializable
	{
		var _u15304:UnjoinGameRequest = new UnjoinGameRequest();
		var _n13734:Int = T1227._m18538(buff);
		for (_d6649 in 0 ... _n13734) 
		{
			var _f6650:Int = T1227._m18538(buff);
			if (_f6650 == 0) 
			{
				var _p6651:String = T1227._m18539(buff);
				_u15304.setMessageId(_p6651);
				MemoryManagement.free(_p6651);
				continue;
			}
			if (_f6650 == 1) 
			{
				var _w6652:String = T1227._m18539(buff);
				_u15304.setRequestId(_w6652);
				MemoryManagement.free(_w6652);
				continue;
			}
			if (_f6650 == 3) 
			{
				var _q6653:String = T1227._m18539(buff);
				_u15304.setGameId(_q6653);
				MemoryManagement.free(_q6653);
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15304;
	}

	public function _m18467( _u13738:T1229):Serializable
	{
		var _z15312:AcceptFriendChallengeResponse = new AcceptFriendChallengeResponse();
		var _w13740:Int = T1227._m18538(_u13738);
		for (_r6656 in 0 ... _w13740) 
		{
			var _u6657:Int = T1227._m18538(_u13738);
			if (_u6657 == 0) 
			{
				var _t6658:String = T1227._m18539(_u13738);
				_z15312.setMessageId(_t6658);
				MemoryManagement.free(_t6658);
				continue;
			}
			if (_u6657 == 1) 
			{
				var _v6659:String = T1227._m18539(_u13738);
				_z15312.setRequestId(_v6659);
				MemoryManagement.free(_v6659);
				continue;
			}
			if (_u6657 == 3) 
			{
				_z15312.setAcceptFriendChallengeStatus((cast T1227._m18252(this, _u13738)));
				continue;
			}
			if (_u6657 == 4) 
			{
				var _w6660:String = T1227._m18539(_u13738);
				_z15312.setGameId(_w6660);
				MemoryManagement.free(_w6660);
				continue;
			}
			if (_u6657 == 5) 
			{
				var _r6661:String = T1227._m18539(_u13738);
				_z15312.setChallengeId(_r6661);
				MemoryManagement.free(_r6661);
				continue;
			}
			T1227._m18540(_u13738);
		}
		return _z15312;
	}

	public function _m18468( buff:T1229):Serializable
	{
		var _r15321:AcceptFriendChallengeRequest = new AcceptFriendChallengeRequest();
		var _h6663:Int = T1227._m18538(buff);
		for (_x6664 in 0 ... _h6663) 
		{
			var _x6665:Int = T1227._m18538(buff);
			if (_x6665 == 0) 
			{
				var _g6666:String = T1227._m18539(buff);
				_r15321.setMessageId(_g6666);
				MemoryManagement.free(_g6666);
				continue;
			}
			if (_x6665 == 1) 
			{
				var _f6667:String = T1227._m18539(buff);
				_r15321.setRequestId(_f6667);
				MemoryManagement.free(_f6667);
				continue;
			}
			if (_x6665 == 3) 
			{
				var _g6668:String = T1227._m18539(buff);
				_r15321.setChallengeId(_g6668);
				MemoryManagement.free(_g6668);
				continue;
			}
			T1227._m18540(buff);
		}
		return _r15321;
	}

	public function _m18469( buff:T1229):Serializable
	{
		var _w15329:CancelFriendChallengeResponse = new CancelFriendChallengeResponse();
		var _e6670:Int = T1227._m18538(buff);
		for (_k6671 in 0 ... _e6670) 
		{
			var _g6672:Int = T1227._m18538(buff);
			if (_g6672 == 0) 
			{
				var _k6673:String = T1227._m18539(buff);
				_w15329.setMessageId(_k6673);
				MemoryManagement.free(_k6673);
				continue;
			}
			if (_g6672 == 1) 
			{
				var _f6674:String = T1227._m18539(buff);
				_w15329.setRequestId(_f6674);
				MemoryManagement.free(_f6674);
				continue;
			}
			if (_g6672 == 3) 
			{
				_w15329.setCancelFriendChallengeStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_g6672 == 4) 
			{
				var _m6675:String = T1227._m18539(buff);
				_w15329.setChallengeId(_m6675);
				MemoryManagement.free(_m6675);
				continue;
			}
			T1227._m18540(buff);
		}
		return _w15329;
	}

	public function _m18470( _l13744:T1229):Serializable
	{
		var _g15337:CancelFriendChallengeRequest = new CancelFriendChallengeRequest();
		var _d13746:Int = T1227._m18538(_l13744);
		for (_s6678 in 0 ... _d13746) 
		{
			var _c6679:Int = T1227._m18538(_l13744);
			if (_c6679 == 0) 
			{
				var _f6680:String = T1227._m18539(_l13744);
				_g15337.setMessageId(_f6680);
				MemoryManagement.free(_f6680);
				continue;
			}
			if (_c6679 == 1) 
			{
				var _n6681:String = T1227._m18539(_l13744);
				_g15337.setRequestId(_n6681);
				MemoryManagement.free(_n6681);
				continue;
			}
			if (_c6679 == 3) 
			{
				var _c6682:String = T1227._m18539(_l13744);
				_g15337.setChallengeId(_c6682);
				MemoryManagement.free(_c6682);
				continue;
			}
			T1227._m18540(_l13744);
		}
		return _g15337;
	}

	public function _m18471( buff:T1229):Serializable
	{
		var _v15345:RefuseFriendChallengeResponse = new RefuseFriendChallengeResponse();
		var _p6684:Int = T1227._m18538(buff);
		for (_m6685 in 0 ... _p6684) 
		{
			var _s6686:Int = T1227._m18538(buff);
			if (_s6686 == 0) 
			{
				var _w6687:String = T1227._m18539(buff);
				_v15345.setMessageId(_w6687);
				MemoryManagement.free(_w6687);
				continue;
			}
			if (_s6686 == 1) 
			{
				var _l6688:String = T1227._m18539(buff);
				_v15345.setRequestId(_l6688);
				MemoryManagement.free(_l6688);
				continue;
			}
			if (_s6686 == 3) 
			{
				_v15345.setRefuseFriendChallengeStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_s6686 == 4) 
			{
				var _r6689:String = T1227._m18539(buff);
				_v15345.setChallengeId(_r6689);
				MemoryManagement.free(_r6689);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v15345;
	}

	public function _m18472( buff:T1229):Serializable
	{
		var _u15353:RefuseFriendChallengeRequest = new RefuseFriendChallengeRequest();
		var _c6691:Int = T1227._m18538(buff);
		for (_v6692 in 0 ... _c6691) 
		{
			var _c6693:Int = T1227._m18538(buff);
			if (_c6693 == 0) 
			{
				var _w6694:String = T1227._m18539(buff);
				_u15353.setMessageId(_w6694);
				MemoryManagement.free(_w6694);
				continue;
			}
			if (_c6693 == 1) 
			{
				var _k6695:String = T1227._m18539(buff);
				_u15353.setRequestId(_k6695);
				MemoryManagement.free(_k6695);
				continue;
			}
			if (_c6693 == 3) 
			{
				var _s6696:String = T1227._m18539(buff);
				_u15353.setChallengeId(_s6696);
				MemoryManagement.free(_s6696);
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15353;
	}

	public function _m18473( buff:T1229):Serializable
	{
		var _x15361:GetChallengesResponse = new GetChallengesResponse();
		var _t6698:Int = T1227._m18538(buff);
		for (_n13752 in 0 ... _t6698) 
		{
			var _q6700:Int = T1227._m18538(buff);
			if (_q6700 == 0) 
			{
				var _t6701:String = T1227._m18539(buff);
				_x15361.setMessageId(_t6701);
				MemoryManagement.free(_t6701);
				continue;
			}
			if (_q6700 == 1) 
			{
				var _q6702:String = T1227._m18539(buff);
				_x15361.setRequestId(_q6702);
				MemoryManagement.free(_q6702);
				continue;
			}
			if (_q6700 == 3) 
			{
				_x15361.setGetChallengesStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_q6700 == 4) 
			{
				var _k15367:NList<NChallenge> = null;
				var _x15368:Int = buff._m17886();
				if (_x15368 != T1221._m17179) 
				{
					buff._m17887();
					var _f15369:Int = buff._m17888();
					_k15367 = new NList<NChallenge>();
					for (_b6706 in 0 ... _f15369) 
					{
						_k15367.add((cast T1227._m18252(this, buff)));
					}
				}
				_x15361.setChallenges(_k15367);
				continue;
			}
			T1227._m18540(buff);
		}
		return _x15361;
	}

	public function _m18474( _c13755:T1229):Serializable
	{
		var _g15372:GetChallengesRequest = new GetChallengesRequest();
		var _t6708:Int = T1227._m18538(_c13755);
		for (_e6709 in 0 ... _t6708) 
		{
			var _p6710:Int = T1227._m18538(_c13755);
			if (_p6710 == 0) 
			{
				var _m6711:String = T1227._m18539(_c13755);
				_g15372.setMessageId(_m6711);
				MemoryManagement.free(_m6711);
				continue;
			}
			if (_p6710 == 1) 
			{
				var _p6712:String = T1227._m18539(_c13755);
				_g15372.setRequestId(_p6712);
				MemoryManagement.free(_p6712);
				continue;
			}
			if (_p6710 == 3) 
			{
				_g15372.setDbQuery((cast T1227._m18252(this, _c13755)));
				continue;
			}
			T1227._m18540(_c13755);
		}
		return _g15372;
	}

	public function _m18475( buff:T1229):Serializable
	{
		var _l15379:StartGameResponse = new StartGameResponse();
		var _s13757:Int = T1227._m18538(buff);
		for (_u6715 in 0 ... _s13757) 
		{
			var _b6716:Int = T1227._m18538(buff);
			if (_b6716 == 0) 
			{
				var _h6717:String = T1227._m18539(buff);
				_l15379.setMessageId(_h6717);
				MemoryManagement.free(_h6717);
				continue;
			}
			if (_b6716 == 1) 
			{
				var _f6718:String = T1227._m18539(buff);
				_l15379.setRequestId(_f6718);
				MemoryManagement.free(_f6718);
				continue;
			}
			if (_b6716 == 3) 
			{
				_l15379.setStartGameStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_b6716 == 4) 
			{
				var _e6719:String = T1227._m18539(buff);
				_l15379.setGameId(_e6719);
				MemoryManagement.free(_e6719);
				continue;
			}
			T1227._m18540(buff);
		}
		return _l15379;
	}

	public function _m18476( buff:T1229):Serializable
	{
		var _b15387:StartGameRequest = new StartGameRequest();
		var _r6721:Int = T1227._m18538(buff);
		for (_g6722 in 0 ... _r6721) 
		{
			var _v6723:Int = T1227._m18538(buff);
			if (_v6723 == 0) 
			{
				var _c6724:String = T1227._m18539(buff);
				_b15387.setMessageId(_c6724);
				MemoryManagement.free(_c6724);
				continue;
			}
			if (_v6723 == 1) 
			{
				var _e6725:String = T1227._m18539(buff);
				_b15387.setRequestId(_e6725);
				MemoryManagement.free(_e6725);
				continue;
			}
			if (_v6723 == 3) 
			{
				var _e6726:String = T1227._m18539(buff);
				_b15387.setGameId(_e6726);
				MemoryManagement.free(_e6726);
				continue;
			}
			T1227._m18540(buff);
		}
		return _b15387;
	}

	public function _m18477( _d13761:T1229):Serializable
	{
		var _c15395:StopGameResponse = new StopGameResponse();
		var _s13763:Int = T1227._m18538(_d13761);
		for (_o6729 in 0 ... _s13763) 
		{
			var _m6730:Int = T1227._m18538(_d13761);
			if (_m6730 == 0) 
			{
				var _s6731:String = T1227._m18539(_d13761);
				_c15395.setMessageId(_s6731);
				MemoryManagement.free(_s6731);
				continue;
			}
			if (_m6730 == 1) 
			{
				var _r6732:String = T1227._m18539(_d13761);
				_c15395.setRequestId(_r6732);
				MemoryManagement.free(_r6732);
				continue;
			}
			if (_m6730 == 3) 
			{
				_c15395.setStopGameStatus((cast T1227._m18252(this, _d13761)));
				continue;
			}
			if (_m6730 == 4) 
			{
				var _g6733:String = T1227._m18539(_d13761);
				_c15395.setGameId(_g6733);
				MemoryManagement.free(_g6733);
				continue;
			}
			T1227._m18540(_d13761);
		}
		return _c15395;
	}

	public function _m18478( buff:T1229):Serializable
	{
		var _v15403:StopGameRequest = new StopGameRequest();
		var _n6735:Int = T1227._m18538(buff);
		for (_z6736 in 0 ... _n6735) 
		{
			var _l6737:Int = T1227._m18538(buff);
			if (_l6737 == 0) 
			{
				var _o6738:String = T1227._m18539(buff);
				_v15403.setMessageId(_o6738);
				MemoryManagement.free(_o6738);
				continue;
			}
			if (_l6737 == 1) 
			{
				var _y6739:String = T1227._m18539(buff);
				_v15403.setRequestId(_y6739);
				MemoryManagement.free(_y6739);
				continue;
			}
			if (_l6737 == 3) 
			{
				var _p6740:String = T1227._m18539(buff);
				_v15403.setGameId(_p6740);
				MemoryManagement.free(_p6740);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v15403;
	}

	public function _m18479( _d13767:T1229):Serializable
	{
		var _a15411:CreateGameResponse = new CreateGameResponse();
		var _v6742:Int = T1227._m18538(_d13767);
		for (_v6743 in 0 ... _v6742) 
		{
			var _k6744:Int = T1227._m18538(_d13767);
			if (_k6744 == 0) 
			{
				var _x6745:String = T1227._m18539(_d13767);
				_a15411.setMessageId(_x6745);
				MemoryManagement.free(_x6745);
				continue;
			}
			if (_k6744 == 1) 
			{
				var _h6746:String = T1227._m18539(_d13767);
				_a15411.setRequestId(_h6746);
				MemoryManagement.free(_h6746);
				continue;
			}
			if (_k6744 == 3) 
			{
				_a15411.setCreateGameStatus((cast T1227._m18252(this, _d13767)));
				continue;
			}
			if (_k6744 == 4) 
			{
				var _x6747:String = T1227._m18539(_d13767);
				_a15411.setGameId(_x6747);
				MemoryManagement.free(_x6747);
				continue;
			}
			T1227._m18540(_d13767);
		}
		return _a15411;
	}

	public function _m18480( buff:T1229):Serializable
	{
		var _o15419:CreateGameRequest = new CreateGameRequest();
		var _g13769:Int = T1227._m18538(buff);
		for (_r6750 in 0 ... _g13769) 
		{
			var _t6751:Int = T1227._m18538(buff);
			if (_t6751 == 0) 
			{
				var _u6752:String = T1227._m18539(buff);
				_o15419.setMessageId(_u6752);
				MemoryManagement.free(_u6752);
				continue;
			}
			if (_t6751 == 1) 
			{
				var _h6753:String = T1227._m18539(buff);
				_o15419.setRequestId(_h6753);
				MemoryManagement.free(_h6753);
				continue;
			}
			T1227._m18540(buff);
		}
		return _o15419;
	}

	public function _m18481( buff:T1229):Serializable
	{
		var _h15426:CreateGameWithCharacteristicsRequest = new CreateGameWithCharacteristicsRequest();
		var _b6755:Int = T1227._m18538(buff);
		for (_q6756 in 0 ... _b6755) 
		{
			var _m6757:Int = T1227._m18538(buff);
			if (_m6757 == 0) 
			{
				var _x6758:String = T1227._m18539(buff);
				_h15426.setMessageId(_x6758);
				MemoryManagement.free(_x6758);
				continue;
			}
			if (_m6757 == 1) 
			{
				var _f6759:String = T1227._m18539(buff);
				_h15426.setRequestId(_f6759);
				MemoryManagement.free(_f6759);
				continue;
			}
			if (_m6757 == 3) 
			{
				_h15426.setGameCharacteristics((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _h15426;
	}

	public function _m18482( _a13773:T1229):Serializable
	{
		var _v15433:GetGamesResponse = new GetGamesResponse();
		var _h13775:Int = T1227._m18538(_a13773);
		for (_i6762 in 0 ... _h13775) 
		{
			var _u6763:Int = T1227._m18538(_a13773);
			if (_u6763 == 0) 
			{
				var _h6764:String = T1227._m18539(_a13773);
				_v15433.setMessageId(_h6764);
				MemoryManagement.free(_h6764);
				continue;
			}
			if (_u6763 == 1) 
			{
				var _b6765:String = T1227._m18539(_a13773);
				_v15433.setRequestId(_b6765);
				MemoryManagement.free(_b6765);
				continue;
			}
			if (_u6763 == 3) 
			{
				_v15433.setGetGamesStatus((cast T1227._m18252(this, _a13773)));
				continue;
			}
			if (_u6763 == 4) 
			{
				var _l15439:NList<NGame> = null;
				var _b15440:Int = _a13773._m17886();
				if (_b15440 != T1221._m17179) 
				{
					_a13773._m17887();
					var _u15441:Int = _a13773._m17888();
					_l15439 = new NList<NGame>();
					for (_d6769 in 0 ... _u15441) 
					{
						_l15439.add((cast T1227._m18252(this, _a13773)));
					}
				}
				_v15433.setGames(_l15439);
				continue;
			}
			T1227._m18540(_a13773);
		}
		return _v15433;
	}

	public function _m18483( buff:T1229):Serializable
	{
		var _l15444:GetGamesRequest = new GetGamesRequest();
		var _g6771:Int = T1227._m18538(buff);
		for (_g6772 in 0 ... _g6771) 
		{
			var _s6773:Int = T1227._m18538(buff);
			if (_s6773 == 0) 
			{
				var _p6774:String = T1227._m18539(buff);
				_l15444.setMessageId(_p6774);
				MemoryManagement.free(_p6774);
				continue;
			}
			if (_s6773 == 1) 
			{
				var _i6775:String = T1227._m18539(buff);
				_l15444.setRequestId(_i6775);
				MemoryManagement.free(_i6775);
				continue;
			}
			if (_s6773 == 3) 
			{
				_l15444.setDbQuery((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _l15444;
	}

	public function _m18484( buff:T1229):Serializable
	{
		var _n15451:SaveAsGhostResponse = new SaveAsGhostResponse();
		var _f6777:Int = T1227._m18538(buff);
		for (_c6778 in 0 ... _f6777) 
		{
			var _y6779:Int = T1227._m18538(buff);
			if (_y6779 == 0) 
			{
				var _q6780:String = T1227._m18539(buff);
				_n15451.setMessageId(_q6780);
				MemoryManagement.free(_q6780);
				continue;
			}
			if (_y6779 == 1) 
			{
				var _u6781:String = T1227._m18539(buff);
				_n15451.setRequestId(_u6781);
				MemoryManagement.free(_u6781);
				continue;
			}
			if (_y6779 == 3) 
			{
				_n15451.setSaveAsGhostStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _n15451;
	}

	public function _m18485( buff:T1229):Serializable
	{
		var _p15458:SaveAsGhostRequest = new SaveAsGhostRequest();
		var _s6783:Int = T1227._m18538(buff);
		for (_t6784 in 0 ... _s6783) 
		{
			var _n6785:Int = T1227._m18538(buff);
			if (_n6785 == 0) 
			{
				var _e6786:String = T1227._m18539(buff);
				_p15458.setMessageId(_e6786);
				MemoryManagement.free(_e6786);
				continue;
			}
			if (_n6785 == 1) 
			{
				var _u6787:String = T1227._m18539(buff);
				_p15458.setRequestId(_u6787);
				MemoryManagement.free(_u6787);
				continue;
			}
			if (_n6785 == 3) 
			{
				_p15458.setGame((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _p15458;
	}

	public function _m18486( buff:T1229):Serializable
	{
		var _l15465:GetGhostsResponse = new GetGhostsResponse();
		var _i6789:Int = T1227._m18538(buff);
		for (_d13781 in 0 ... _i6789) 
		{
			var _c6791:Int = T1227._m18538(buff);
			if (_c6791 == 0) 
			{
				var _r6792:String = T1227._m18539(buff);
				_l15465.setMessageId(_r6792);
				MemoryManagement.free(_r6792);
				continue;
			}
			if (_c6791 == 1) 
			{
				var _s6793:String = T1227._m18539(buff);
				_l15465.setRequestId(_s6793);
				MemoryManagement.free(_s6793);
				continue;
			}
			if (_c6791 == 3) 
			{
				_l15465.setGetGhostsStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_c6791 == 4) 
			{
				var _d15471:NList<NGame> = null;
				var _z15472:Int = buff._m17886();
				if (_z15472 != T1221._m17179) 
				{
					buff._m17887();
					var _l15473:Int = buff._m17888();
					_d15471 = new NList<NGame>();
					for (_s6797 in 0 ... _l15473) 
					{
						_d15471.add((cast T1227._m18252(this, buff)));
					}
				}
				_l15465.setGhosts(_d15471);
				continue;
			}
			T1227._m18540(buff);
		}
		return _l15465;
	}

	public function _m18487( _a13784:T1229):Serializable
	{
		var _e15476:GetGhostsRequest = new GetGhostsRequest();
		var _w13786:Int = T1227._m18538(_a13784);
		for (_x6800 in 0 ... _w13786) 
		{
			var _j6801:Int = T1227._m18538(_a13784);
			if (_j6801 == 0) 
			{
				var _b6802:String = T1227._m18539(_a13784);
				_e15476.setMessageId(_b6802);
				MemoryManagement.free(_b6802);
				continue;
			}
			if (_j6801 == 1) 
			{
				var _r6803:String = T1227._m18539(_a13784);
				_e15476.setRequestId(_r6803);
				MemoryManagement.free(_r6803);
				continue;
			}
			if (_j6801 == 3) 
			{
				_e15476.setDbQuery((cast T1227._m18252(this, _a13784)));
				continue;
			}
			T1227._m18540(_a13784);
		}
		return _e15476;
	}

	public function _m18488( buff:T1229):Serializable
	{
		var _f15483:LoadGhostResponse = new LoadGhostResponse();
		var _t6805:Int = T1227._m18538(buff);
		for (_k6806 in 0 ... _t6805) 
		{
			var _n6807:Int = T1227._m18538(buff);
			if (_n6807 == 0) 
			{
				var _o6808:String = T1227._m18539(buff);
				_f15483.setMessageId(_o6808);
				MemoryManagement.free(_o6808);
				continue;
			}
			if (_n6807 == 1) 
			{
				var _a6809:String = T1227._m18539(buff);
				_f15483.setRequestId(_a6809);
				MemoryManagement.free(_a6809);
				continue;
			}
			if (_n6807 == 3) 
			{
				_f15483.setLoadGhostStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_n6807 == 4) 
			{
				_f15483.setGame((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _f15483;
	}

	public function _m18489( _b13790:T1229):Serializable
	{
		var _y15490:LoadGhostRequest = new LoadGhostRequest();
		var _t6811:Int = T1227._m18538(_b13790);
		for (_q6812 in 0 ... _t6811) 
		{
			var _x6813:Int = T1227._m18538(_b13790);
			if (_x6813 == 0) 
			{
				var _a6814:String = T1227._m18539(_b13790);
				_y15490.setMessageId(_a6814);
				MemoryManagement.free(_a6814);
				continue;
			}
			if (_x6813 == 1) 
			{
				var _g6815:String = T1227._m18539(_b13790);
				_y15490.setRequestId(_g6815);
				MemoryManagement.free(_g6815);
				continue;
			}
			if (_x6813 == 3) 
			{
				var _q6816:String = T1227._m18539(_b13790);
				_y15490.setGameId(_q6816);
				MemoryManagement.free(_q6816);
				continue;
			}
			T1227._m18540(_b13790);
		}
		return _y15490;
	}

	public function _m18490( buff:T1229):Serializable
	{
		var _u15498:SendGameChatResponse = new SendGameChatResponse();
		var _j13792:Int = T1227._m18538(buff);
		for (_i6819 in 0 ... _j13792) 
		{
			var _r6820:Int = T1227._m18538(buff);
			if (_r6820 == 0) 
			{
				var _f6821:String = T1227._m18539(buff);
				_u15498.setMessageId(_f6821);
				MemoryManagement.free(_f6821);
				continue;
			}
			if (_r6820 == 1) 
			{
				var _n6822:String = T1227._m18539(buff);
				_u15498.setRequestId(_n6822);
				MemoryManagement.free(_n6822);
				continue;
			}
			if (_r6820 == 3) 
			{
				_u15498.setSendGameChatStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15498;
	}

	public function _m18491( buff:T1229):Serializable
	{
		var _s15505:SendGameChatRequest = new SendGameChatRequest();
		var _w6824:Int = T1227._m18538(buff);
		for (_z6825 in 0 ... _w6824) 
		{
			var _r6826:Int = T1227._m18538(buff);
			if (_r6826 == 0) 
			{
				var _o6827:String = T1227._m18539(buff);
				_s15505.setMessageId(_o6827);
				MemoryManagement.free(_o6827);
				continue;
			}
			if (_r6826 == 1) 
			{
				var _y6828:String = T1227._m18539(buff);
				_s15505.setRequestId(_y6828);
				MemoryManagement.free(_y6828);
				continue;
			}
			if (_r6826 == 3) 
			{
				var _n6829:String = T1227._m18539(buff);
				_s15505.setGameId(_n6829);
				MemoryManagement.free(_n6829);
				continue;
			}
			if (_r6826 == 4) 
			{
				var _m6830:String = T1227._m18539(buff);
				_s15505.setMessage(_m6830);
				MemoryManagement.free(_m6830);
				continue;
			}
			T1227._m18540(buff);
		}
		return _s15505;
	}

	public function _m18492( _j13796:T1229):Serializable
	{
		var _g15514:SendGameChatToPlayerRequest = new SendGameChatToPlayerRequest();
		var _x6832:Int = T1227._m18538(_j13796);
		for (_a6833 in 0 ... _x6832) 
		{
			var _n6834:Int = T1227._m18538(_j13796);
			if (_n6834 == 0) 
			{
				var _s6835:String = T1227._m18539(_j13796);
				_g15514.setMessageId(_s6835);
				MemoryManagement.free(_s6835);
				continue;
			}
			if (_n6834 == 1) 
			{
				var _u6836:String = T1227._m18539(_j13796);
				_g15514.setRequestId(_u6836);
				MemoryManagement.free(_u6836);
				continue;
			}
			if (_n6834 == 3) 
			{
				var _v6837:String = T1227._m18539(_j13796);
				_g15514.setGameId(_v6837);
				MemoryManagement.free(_v6837);
				continue;
			}
			if (_n6834 == 4) 
			{
				var _y6838:String = T1227._m18539(_j13796);
				_g15514.setPlayerId(_y6838);
				MemoryManagement.free(_y6838);
				continue;
			}
			if (_n6834 == 5) 
			{
				var _l6839:String = T1227._m18539(_j13796);
				_g15514.setMessage(_l6839);
				MemoryManagement.free(_l6839);
				continue;
			}
			T1227._m18540(_j13796);
		}
		return _g15514;
	}

	public function _m18493( buff:T1229):Serializable
	{
		var _s15524:SendGameChatToPlayerListRequest = new SendGameChatToPlayerListRequest();
		var _n13798:Int = T1227._m18538(buff);
		for (_l6842 in 0 ... _n13798) 
		{
			var _i6843:Int = T1227._m18538(buff);
			if (_i6843 == 0) 
			{
				var _t6844:String = T1227._m18539(buff);
				_s15524.setMessageId(_t6844);
				MemoryManagement.free(_t6844);
				continue;
			}
			if (_i6843 == 1) 
			{
				var _q6845:String = T1227._m18539(buff);
				_s15524.setRequestId(_q6845);
				MemoryManagement.free(_q6845);
				continue;
			}
			if (_i6843 == 3) 
			{
				var _e6846:String = T1227._m18539(buff);
				_s15524.setGameId(_e6846);
				MemoryManagement.free(_e6846);
				continue;
			}
			if (_i6843 == 4) 
			{
				var _w6847:String = T1227._m18539(buff);
				_s15524.setMessage(_w6847);
				MemoryManagement.free(_w6847);
				continue;
			}
			T1227._m18540(buff);
		}
		return _s15524;
	}

	public function _m18494( _m13802:T1229):Serializable
	{
		var _k15533:GetStorablesResponse = new GetStorablesResponse();
		var _v6849:Int = T1227._m18538(_m13802);
		for (_l6850 in 0 ... _v6849) 
		{
			var _y6851:Int = T1227._m18538(_m13802);
			if (_y6851 == 0) 
			{
				var _k6852:String = T1227._m18539(_m13802);
				_k15533.setMessageId(_k6852);
				MemoryManagement.free(_k6852);
				continue;
			}
			if (_y6851 == 1) 
			{
				var _t6853:String = T1227._m18539(_m13802);
				_k15533.setRequestId(_t6853);
				MemoryManagement.free(_t6853);
				continue;
			}
			if (_y6851 == 3) 
			{
				_k15533.setGetStorablesStatus((cast T1227._m18252(this, _m13802)));
				continue;
			}
			if (_y6851 == 4) 
			{
				var _f15539:NList<Storable> = null;
				var _n15540:Int = _m13802._m17886();
				if (_n15540 != T1221._m17179) 
				{
					_m13802._m17887();
					var _j15541:Int = _m13802._m17888();
					_f15539 = new NList<Storable>();
					for (_q6857 in 0 ... _j15541) 
					{
						_f15539.add((cast T1227._m18252(this, _m13802)));
					}
				}
				_k15533.setStorables(_f15539);
				continue;
			}
			T1227._m18540(_m13802);
		}
		return _k15533;
	}

	public function _m18495( buff:T1229):Serializable
	{
		var _l15544:GetStorablesRequest = new GetStorablesRequest();
		var _f13804:Int = T1227._m18538(buff);
		for (_e6860 in 0 ... _f13804) 
		{
			var _k6861:Int = T1227._m18538(buff);
			if (_k6861 == 0) 
			{
				var _f6862:String = T1227._m18539(buff);
				_l15544.setMessageId(_f6862);
				MemoryManagement.free(_f6862);
				continue;
			}
			if (_k6861 == 1) 
			{
				var _u6863:String = T1227._m18539(buff);
				_l15544.setRequestId(_u6863);
				MemoryManagement.free(_u6863);
				continue;
			}
			if (_k6861 == 3) 
			{
				_l15544.setDbQuery((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _l15544;
	}

	public function _m18496( buff:T1229):Serializable
	{
		var _s15551:SaveStorableResponse = new SaveStorableResponse();
		var _c6865:Int = T1227._m18538(buff);
		for (_i6866 in 0 ... _c6865) 
		{
			var _n6867:Int = T1227._m18538(buff);
			if (_n6867 == 0) 
			{
				var _q6868:String = T1227._m18539(buff);
				_s15551.setMessageId(_q6868);
				MemoryManagement.free(_q6868);
				continue;
			}
			if (_n6867 == 1) 
			{
				var _p6869:String = T1227._m18539(buff);
				_s15551.setRequestId(_p6869);
				MemoryManagement.free(_p6869);
				continue;
			}
			if (_n6867 == 3) 
			{
				_s15551.setSaveStorableStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _s15551;
	}

	public function _m18497( _g13808:T1229):Serializable
	{
		var _u15558:SaveStorableRequest = new SaveStorableRequest();
		var _w13810:Int = T1227._m18538(_g13808);
		for (_i6872 in 0 ... _w13810) 
		{
			var _k6873:Int = T1227._m18538(_g13808);
			if (_k6873 == 0) 
			{
				var _r6874:String = T1227._m18539(_g13808);
				_u15558.setMessageId(_r6874);
				MemoryManagement.free(_r6874);
				continue;
			}
			if (_k6873 == 1) 
			{
				var _m6875:String = T1227._m18539(_g13808);
				_u15558.setRequestId(_m6875);
				MemoryManagement.free(_m6875);
				continue;
			}
			if (_k6873 == 3) 
			{
				_u15558.setStorable((cast T1227._m18252(this, _g13808)));
				continue;
			}
			T1227._m18540(_g13808);
		}
		return _u15558;
	}

	public function _m18498( buff:T1229):Serializable
	{
		var _v15565:SaveStorableListRequest = new SaveStorableListRequest();
		var _f6877:Int = T1227._m18538(buff);
		for (_s6878 in 0 ... _f6877) 
		{
			var _d6879:Int = T1227._m18538(buff);
			if (_d6879 == 0) 
			{
				var _g6880:String = T1227._m18539(buff);
				_v15565.setMessageId(_g6880);
				MemoryManagement.free(_g6880);
				continue;
			}
			if (_d6879 == 1) 
			{
				var _y6881:String = T1227._m18539(buff);
				_v15565.setRequestId(_y6881);
				MemoryManagement.free(_y6881);
				continue;
			}
			if (_d6879 == 3) 
			{
				var _q15571:NList<Storable> = null;
				var _z15572:Int = buff._m17886();
				if (_z15572 != T1221._m17179) 
				{
					buff._m17887();
					var _c15573:Int = buff._m17888();
					_q15571 = new NList<Storable>();
					for (_p6885 in 0 ... _c15573) 
					{
						_q15571.add((cast T1227._m18252(this, buff)));
					}
				}
				_v15565.setStorables(_q15571);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v15565;
	}

	public function _m18499( buff:T1229):Serializable
	{
		var _e15576:NextPlayerTurnResponse = new NextPlayerTurnResponse();
		var _d6887:Int = T1227._m18538(buff);
		for (_k6888 in 0 ... _d6887) 
		{
			var _l6889:Int = T1227._m18538(buff);
			if (_l6889 == 0) 
			{
				var _r6890:String = T1227._m18539(buff);
				_e15576.setMessageId(_r6890);
				MemoryManagement.free(_r6890);
				continue;
			}
			if (_l6889 == 1) 
			{
				var _m6891:String = T1227._m18539(buff);
				_e15576.setRequestId(_m6891);
				MemoryManagement.free(_m6891);
				continue;
			}
			if (_l6889 == 3) 
			{
				_e15576.setNextPlayerTurnStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _e15576;
	}

	public function _m18500( _u13814:T1229):Serializable
	{
		var _t15583:NextPlayerTurnRequest = new NextPlayerTurnRequest();
		var _n6893:Int = T1227._m18538(_u13814);
		for (_s6894 in 0 ... _n6893) 
		{
			var _d6895:Int = T1227._m18538(_u13814);
			if (_d6895 == 0) 
			{
				var _j6896:String = T1227._m18539(_u13814);
				_t15583.setMessageId(_j6896);
				MemoryManagement.free(_j6896);
				continue;
			}
			if (_d6895 == 1) 
			{
				var _j6897:String = T1227._m18539(_u13814);
				_t15583.setRequestId(_j6897);
				MemoryManagement.free(_j6897);
				continue;
			}
			if (_d6895 == 3) 
			{
				var _d6898:String = T1227._m18539(_u13814);
				_t15583.setGameId(_d6898);
				MemoryManagement.free(_d6898);
				continue;
			}
			T1227._m18540(_u13814);
		}
		return _t15583;
	}

	public function _m18501( buff:T1229):Serializable
	{
		var _i15591:SetPlayerNameResponse = new SetPlayerNameResponse();
		var _l13816:Int = T1227._m18538(buff);
		for (_g6901 in 0 ... _l13816) 
		{
			var _u6902:Int = T1227._m18538(buff);
			if (_u6902 == 0) 
			{
				var _q6903:String = T1227._m18539(buff);
				_i15591.setMessageId(_q6903);
				MemoryManagement.free(_q6903);
				continue;
			}
			if (_u6902 == 1) 
			{
				var _a6904:String = T1227._m18539(buff);
				_i15591.setRequestId(_a6904);
				MemoryManagement.free(_a6904);
				continue;
			}
			if (_u6902 == 3) 
			{
				_i15591.setSetPlayerNameStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _i15591;
	}

	public function _m18502( buff:T1229):Serializable
	{
		var _b15598:SetPlayerNameRequest = new SetPlayerNameRequest();
		var _k6906:Int = T1227._m18538(buff);
		for (_k6907 in 0 ... _k6906) 
		{
			var _l6908:Int = T1227._m18538(buff);
			if (_l6908 == 0) 
			{
				var _y6909:String = T1227._m18539(buff);
				_b15598.setMessageId(_y6909);
				MemoryManagement.free(_y6909);
				continue;
			}
			if (_l6908 == 1) 
			{
				var _d6910:String = T1227._m18539(buff);
				_b15598.setRequestId(_d6910);
				MemoryManagement.free(_d6910);
				continue;
			}
			if (_l6908 == 3) 
			{
				var _n6911:String = T1227._m18539(buff);
				_b15598.setName(_n6911);
				MemoryManagement.free(_n6911);
				continue;
			}
			T1227._m18540(buff);
		}
		return _b15598;
	}

	public function _m18503( buff:T1229):Serializable
	{
		var _e15606:UpdateStorableResponse = new UpdateStorableResponse();
		var _p6913:Int = T1227._m18538(buff);
		for (_i6914 in 0 ... _p6913) 
		{
			var _v6915:Int = T1227._m18538(buff);
			if (_v6915 == 0) 
			{
				var _m6916:String = T1227._m18539(buff);
				_e15606.setMessageId(_m6916);
				MemoryManagement.free(_m6916);
				continue;
			}
			if (_v6915 == 1) 
			{
				var _p6917:String = T1227._m18539(buff);
				_e15606.setRequestId(_p6917);
				MemoryManagement.free(_p6917);
				continue;
			}
			if (_v6915 == 3) 
			{
				_e15606.setUpdateStorableStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _e15606;
	}

	public function _m18504( buff:T1229):Serializable
	{
		var _u15613:UpdateStorableRequest = new UpdateStorableRequest();
		var _e6919:Int = T1227._m18538(buff);
		for (_l6920 in 0 ... _e6919) 
		{
			var _r6921:Int = T1227._m18538(buff);
			if (_r6921 == 0) 
			{
				var _d6922:String = T1227._m18539(buff);
				_u15613.setMessageId(_d6922);
				MemoryManagement.free(_d6922);
				continue;
			}
			if (_r6921 == 1) 
			{
				var _s6923:String = T1227._m18539(buff);
				_u15613.setRequestId(_s6923);
				MemoryManagement.free(_s6923);
				continue;
			}
			if (_r6921 == 3) 
			{
				_u15613.setStorable((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15613;
	}

	public function _m18505( _u13820:T1229):Serializable
	{
		var _f15620:UpdateStorableListRequest = new UpdateStorableListRequest();
		var _j13822:Int = T1227._m18538(_u13820);
		for (_s6926 in 0 ... _j13822) 
		{
			var _o6927:Int = T1227._m18538(_u13820);
			if (_o6927 == 0) 
			{
				var _w6928:String = T1227._m18539(_u13820);
				_f15620.setMessageId(_w6928);
				MemoryManagement.free(_w6928);
				continue;
			}
			if (_o6927 == 1) 
			{
				var _a6929:String = T1227._m18539(_u13820);
				_f15620.setRequestId(_a6929);
				MemoryManagement.free(_a6929);
				continue;
			}
			if (_o6927 == 3) 
			{
				var _i15626:NList<Storable> = null;
				var _l15627:Int = _u13820._m17886();
				if (_l15627 != T1221._m17179) 
				{
					_u13820._m17887();
					var _v15628:Int = _u13820._m17888();
					_i15626 = new NList<Storable>();
					for (_h6933 in 0 ... _v15628) 
					{
						_i15626.add((cast T1227._m18252(this, _u13820)));
					}
				}
				_f15620.setStorables(_i15626);
				continue;
			}
			T1227._m18540(_u13820);
		}
		return _f15620;
	}

	public function _m18506( buff:T1229):Serializable
	{
		var _k15631:RemoveStorableResponse = new RemoveStorableResponse();
		var _i6935:Int = T1227._m18538(buff);
		for (_a6936 in 0 ... _i6935) 
		{
			var _l6937:Int = T1227._m18538(buff);
			if (_l6937 == 0) 
			{
				var _b6938:String = T1227._m18539(buff);
				_k15631.setMessageId(_b6938);
				MemoryManagement.free(_b6938);
				continue;
			}
			if (_l6937 == 1) 
			{
				var _d6939:String = T1227._m18539(buff);
				_k15631.setRequestId(_d6939);
				MemoryManagement.free(_d6939);
				continue;
			}
			if (_l6937 == 3) 
			{
				_k15631.setRemoveStorableStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _k15631;
	}

	public function _m18507( buff:T1229):Serializable
	{
		var _v15638:RemoveStorableRequest = new RemoveStorableRequest();
		var _w6941:Int = T1227._m18538(buff);
		for (_u6942 in 0 ... _w6941) 
		{
			var _r6943:Int = T1227._m18538(buff);
			if (_r6943 == 0) 
			{
				var _x6944:String = T1227._m18539(buff);
				_v15638.setMessageId(_x6944);
				MemoryManagement.free(_x6944);
				continue;
			}
			if (_r6943 == 1) 
			{
				var _q6945:String = T1227._m18539(buff);
				_v15638.setRequestId(_q6945);
				MemoryManagement.free(_q6945);
				continue;
			}
			if (_r6943 == 3) 
			{
				_v15638.setStorable((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _v15638;
	}

	public function _m18508( _x13826:T1229):Serializable
	{
		var _b15645:RemoveStorableListRequest = new RemoveStorableListRequest();
		var _k13828:Int = T1227._m18538(_x13826);
		for (_d6948 in 0 ... _k13828) 
		{
			var _p6949:Int = T1227._m18538(_x13826);
			if (_p6949 == 0) 
			{
				var _v6950:String = T1227._m18539(_x13826);
				_b15645.setMessageId(_v6950);
				MemoryManagement.free(_v6950);
				continue;
			}
			if (_p6949 == 1) 
			{
				var _i6951:String = T1227._m18539(_x13826);
				_b15645.setRequestId(_i6951);
				MemoryManagement.free(_i6951);
				continue;
			}
			if (_p6949 == 3) 
			{
				var _w15651:NList<Storable> = null;
				var _k15652:Int = _x13826._m17886();
				if (_k15652 != T1221._m17179) 
				{
					_x13826._m17887();
					var _t15653:Int = _x13826._m17888();
					_w15651 = new NList<Storable>();
					for (_m6955 in 0 ... _t15653) 
					{
						_w15651.add((cast T1227._m18252(this, _x13826)));
					}
				}
				_b15645.setStorables(_w15651);
				continue;
			}
			T1227._m18540(_x13826);
		}
		return _b15645;
	}

	public function _m18509( buff:T1229):Serializable
	{
		var _a15656:InviteThirdPartyFriendResponse = new InviteThirdPartyFriendResponse();
		var _f6957:Int = T1227._m18538(buff);
		for (_q6958 in 0 ... _f6957) 
		{
			var _v6959:Int = T1227._m18538(buff);
			if (_v6959 == 0) 
			{
				var _e6960:String = T1227._m18539(buff);
				_a15656.setMessageId(_e6960);
				MemoryManagement.free(_e6960);
				continue;
			}
			if (_v6959 == 1) 
			{
				var _s6961:String = T1227._m18539(buff);
				_a15656.setRequestId(_s6961);
				MemoryManagement.free(_s6961);
				continue;
			}
			if (_v6959 == 3) 
			{
				_a15656.setInviteThirdPartyFriendStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _a15656;
	}

	public function _m18510( buff:T1229):Serializable
	{
		var _f15663:InviteThirdPartyFriendRequest = new InviteThirdPartyFriendRequest();
		var _d6963:Int = T1227._m18538(buff);
		for (_x13834 in 0 ... _d6963) 
		{
			var _v6965:Int = T1227._m18538(buff);
			if (_v6965 == 0) 
			{
				var _l6966:String = T1227._m18539(buff);
				_f15663.setMessageId(_l6966);
				MemoryManagement.free(_l6966);
				continue;
			}
			if (_v6965 == 1) 
			{
				var _i6967:String = T1227._m18539(buff);
				_f15663.setRequestId(_i6967);
				MemoryManagement.free(_i6967);
				continue;
			}
			if (_v6965 == 3) 
			{
				var _g6968:String = T1227._m18539(buff);
				_f15663.setThirdPartyId(_g6968);
				MemoryManagement.free(_g6968);
				continue;
			}
			if (_v6965 == 4) 
			{
				var _y6969:String = T1227._m18539(buff);
				_f15663.setTitle(_y6969);
				MemoryManagement.free(_y6969);
				continue;
			}
			if (_v6965 == 5) 
			{
				var _j6970:String = T1227._m18539(buff);
				_f15663.setInviteMessage(_j6970);
				MemoryManagement.free(_j6970);
				continue;
			}
			if (_v6965 == 6) 
			{
				var _y6971:String = T1227._m18539(buff);
				_f15663.setPictureUrl(_y6971);
				MemoryManagement.free(_y6971);
				continue;
			}
			if (_v6965 == 7) 
			{
				var _z6972:String = T1227._m18539(buff);
				_f15663.setLink(_z6972);
				MemoryManagement.free(_z6972);
				continue;
			}
			if (_v6965 == 8) 
			{
				_f15663.setThirdPartySource((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _f15663;
	}

	public function _m18511( buff:T1229):Serializable
	{
		var _o15675:PublishThirdPartyMessageResponse = new PublishThirdPartyMessageResponse();
		var _e6974:Int = T1227._m18538(buff);
		for (_r6975 in 0 ... _e6974) 
		{
			var _e6976:Int = T1227._m18538(buff);
			if (_e6976 == 0) 
			{
				var _i6977:String = T1227._m18539(buff);
				_o15675.setMessageId(_i6977);
				MemoryManagement.free(_i6977);
				continue;
			}
			if (_e6976 == 1) 
			{
				var _y6978:String = T1227._m18539(buff);
				_o15675.setRequestId(_y6978);
				MemoryManagement.free(_y6978);
				continue;
			}
			if (_e6976 == 3) 
			{
				_o15675.setPublishThirdPartyMessageStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _o15675;
	}

	public function _m18512( _v13837:T1229):Serializable
	{
		var _a15682:PublishThirdPartyMessageRequest = new PublishThirdPartyMessageRequest();
		var _b13839:Int = T1227._m18538(_v13837);
		for (_u6981 in 0 ... _b13839) 
		{
			var _r6982:Int = T1227._m18538(_v13837);
			if (_r6982 == 0) 
			{
				var _b6983:String = T1227._m18539(_v13837);
				_a15682.setMessageId(_b6983);
				MemoryManagement.free(_b6983);
				continue;
			}
			if (_r6982 == 1) 
			{
				var _c6984:String = T1227._m18539(_v13837);
				_a15682.setRequestId(_c6984);
				MemoryManagement.free(_c6984);
				continue;
			}
			if (_r6982 == 3) 
			{
				var _g6985:String = T1227._m18539(_v13837);
				_a15682.setTitle(_g6985);
				MemoryManagement.free(_g6985);
				continue;
			}
			if (_r6982 == 4) 
			{
				var _u6986:String = T1227._m18539(_v13837);
				_a15682.setMessage(_u6986);
				MemoryManagement.free(_u6986);
				continue;
			}
			if (_r6982 == 5) 
			{
				var _q6987:String = T1227._m18539(_v13837);
				_a15682.setPictureUrl(_q6987);
				MemoryManagement.free(_q6987);
				continue;
			}
			if (_r6982 == 6) 
			{
				var _u6988:String = T1227._m18539(_v13837);
				_a15682.setLink(_u6988);
				MemoryManagement.free(_u6988);
				continue;
			}
			if (_r6982 == 7) 
			{
				_a15682.setThirdPartySource((cast T1227._m18252(this, _v13837)));
				continue;
			}
			T1227._m18540(_v13837);
		}
		return _a15682;
	}

	public function _m18513( buff:T1229):Serializable
	{
		var _b15693:ThirdPartyLoginResponse = new ThirdPartyLoginResponse();
		var _y6990:Int = T1227._m18538(buff);
		for (_d6991 in 0 ... _y6990) 
		{
			var _a6992:Int = T1227._m18538(buff);
			if (_a6992 == 0) 
			{
				var _t6993:String = T1227._m18539(buff);
				_b15693.setMessageId(_t6993);
				MemoryManagement.free(_t6993);
				continue;
			}
			if (_a6992 == 1) 
			{
				var _x6994:String = T1227._m18539(buff);
				_b15693.setRequestId(_x6994);
				MemoryManagement.free(_x6994);
				continue;
			}
			if (_a6992 == 3) 
			{
				_b15693.setThirdPartyLoginStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_a6992 == 4) 
			{
				_b15693.setPlayer((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _b15693;
	}

	public function _m18514( _r13843:T1229):Serializable
	{
		var _h15700:ThirdPartyLoginRequest = new ThirdPartyLoginRequest();
		var _e13845:Int = T1227._m18538(_r13843);
		for (_y6997 in 0 ... _e13845) 
		{
			var _v6998:Int = T1227._m18538(_r13843);
			if (_v6998 == 0) 
			{
				var _v6999:String = T1227._m18539(_r13843);
				_h15700.setMessageId(_v6999);
				MemoryManagement.free(_v6999);
				continue;
			}
			if (_v6998 == 1) 
			{
				var _d7000:String = T1227._m18539(_r13843);
				_h15700.setRequestId(_d7000);
				MemoryManagement.free(_d7000);
				continue;
			}
			if (_v6998 == 3) 
			{
				_h15700.setThirdPartySource((cast T1227._m18252(this, _r13843)));
				continue;
			}
			T1227._m18540(_r13843);
		}
		return _h15700;
	}

	public function _m18515( buff:T1229):Serializable
	{
		var _i15707:ThirdPartyLoginWithTokenRequest = new ThirdPartyLoginWithTokenRequest();
		var _u7002:Int = T1227._m18538(buff);
		for (_w7003 in 0 ... _u7002) 
		{
			var _a7004:Int = T1227._m18538(buff);
			if (_a7004 == 0) 
			{
				var _v7005:String = T1227._m18539(buff);
				_i15707.setMessageId(_v7005);
				MemoryManagement.free(_v7005);
				continue;
			}
			if (_a7004 == 1) 
			{
				var _p7006:String = T1227._m18539(buff);
				_i15707.setRequestId(_p7006);
				MemoryManagement.free(_p7006);
				continue;
			}
			if (_a7004 == 3) 
			{
				_i15707.setThirdPartySource((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_a7004 == 4) 
			{
				var _t7007:String = T1227._m18539(buff);
				_i15707.setAccessToken(_t7007);
				MemoryManagement.free(_t7007);
				continue;
			}
			T1227._m18540(buff);
		}
		return _i15707;
	}

	public function _m18516( _y13849:T1229):Serializable
	{
		var _f15715:SaveGameResponse = new SaveGameResponse();
		var _d7009:Int = T1227._m18538(_y13849);
		for (_m7010 in 0 ... _d7009) 
		{
			var _s7011:Int = T1227._m18538(_y13849);
			if (_s7011 == 0) 
			{
				var _m7012:String = T1227._m18539(_y13849);
				_f15715.setMessageId(_m7012);
				MemoryManagement.free(_m7012);
				continue;
			}
			if (_s7011 == 1) 
			{
				var _f7013:String = T1227._m18539(_y13849);
				_f15715.setRequestId(_f7013);
				MemoryManagement.free(_f7013);
				continue;
			}
			if (_s7011 == 3) 
			{
				_f15715.setSaveGameStatus((cast T1227._m18252(this, _y13849)));
				continue;
			}
			if (_s7011 == 4) 
			{
				var _d7014:String = T1227._m18539(_y13849);
				_f15715.setGameId(_d7014);
				MemoryManagement.free(_d7014);
				continue;
			}
			T1227._m18540(_y13849);
		}
		return _f15715;
	}

	public function _m18517( buff:T1229):Serializable
	{
		var _c15723:SaveGameRequest = new SaveGameRequest();
		var _p13851:Int = T1227._m18538(buff);
		for (_b7017 in 0 ... _p13851) 
		{
			var _k7018:Int = T1227._m18538(buff);
			if (_k7018 == 0) 
			{
				var _b7019:String = T1227._m18539(buff);
				_c15723.setMessageId(_b7019);
				MemoryManagement.free(_b7019);
				continue;
			}
			if (_k7018 == 1) 
			{
				var _t7020:String = T1227._m18539(buff);
				_c15723.setRequestId(_t7020);
				MemoryManagement.free(_t7020);
				continue;
			}
			if (_k7018 == 3) 
			{
				_c15723.setGame((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _c15723;
	}

	public function _m18518( buff:T1229):Serializable
	{
		var _p15730:LoadGameResponse = new LoadGameResponse();
		var _s7022:Int = T1227._m18538(buff);
		for (_q7023 in 0 ... _s7022) 
		{
			var _m7024:Int = T1227._m18538(buff);
			if (_m7024 == 0) 
			{
				var _o7025:String = T1227._m18539(buff);
				_p15730.setMessageId(_o7025);
				MemoryManagement.free(_o7025);
				continue;
			}
			if (_m7024 == 1) 
			{
				var _r7026:String = T1227._m18539(buff);
				_p15730.setRequestId(_r7026);
				MemoryManagement.free(_r7026);
				continue;
			}
			if (_m7024 == 3) 
			{
				_p15730.setLoadGameStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_m7024 == 4) 
			{
				_p15730.setGame((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _p15730;
	}

	public function _m18519( _i13855:T1229):Serializable
	{
		var _l15737:LoadGameRequest = new LoadGameRequest();
		var _j13857:Int = T1227._m18538(_i13855);
		for (_g7029 in 0 ... _j13857) 
		{
			var _d7030:Int = T1227._m18538(_i13855);
			if (_d7030 == 0) 
			{
				var _g7031:String = T1227._m18539(_i13855);
				_l15737.setMessageId(_g7031);
				MemoryManagement.free(_g7031);
				continue;
			}
			if (_d7030 == 1) 
			{
				var _h7032:String = T1227._m18539(_i13855);
				_l15737.setRequestId(_h7032);
				MemoryManagement.free(_h7032);
				continue;
			}
			if (_d7030 == 3) 
			{
				var _g7033:String = T1227._m18539(_i13855);
				_l15737.setGameId(_g7033);
				MemoryManagement.free(_g7033);
				continue;
			}
			T1227._m18540(_i13855);
		}
		return _l15737;
	}

	public function _m18520( buff:T1229):Serializable
	{
		var _t15745:SavePlayerStorableResponse = new SavePlayerStorableResponse();
		var _p7035:Int = T1227._m18538(buff);
		for (_x7036 in 0 ... _p7035) 
		{
			var _f7037:Int = T1227._m18538(buff);
			if (_f7037 == 0) 
			{
				var _s7038:String = T1227._m18539(buff);
				_t15745.setMessageId(_s7038);
				MemoryManagement.free(_s7038);
				continue;
			}
			if (_f7037 == 1) 
			{
				var _f7039:String = T1227._m18539(buff);
				_t15745.setRequestId(_f7039);
				MemoryManagement.free(_f7039);
				continue;
			}
			if (_f7037 == 3) 
			{
				_t15745.setSavePlayerStorableStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _t15745;
	}

	public function _m18521( buff:T1229):Serializable
	{
		var _l15752:SavePlayerStorableRequest = new SavePlayerStorableRequest();
		var _u7041:Int = T1227._m18538(buff);
		for (_z7042 in 0 ... _u7041) 
		{
			var _i7043:Int = T1227._m18538(buff);
			if (_i7043 == 0) 
			{
				var _w7044:String = T1227._m18539(buff);
				_l15752.setMessageId(_w7044);
				MemoryManagement.free(_w7044);
				continue;
			}
			if (_i7043 == 1) 
			{
				var _o7045:String = T1227._m18539(buff);
				_l15752.setRequestId(_o7045);
				MemoryManagement.free(_o7045);
				continue;
			}
			if (_i7043 == 3) 
			{
				_l15752.setStorable((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _l15752;
	}

	public function _m18522( buff:T1229):Serializable
	{
		var _i15759:SavePlayerStorableListRequest = new SavePlayerStorableListRequest();
		var _t7047:Int = T1227._m18538(buff);
		for (_l13863 in 0 ... _t7047) 
		{
			var _p7049:Int = T1227._m18538(buff);
			if (_p7049 == 0) 
			{
				var _e7050:String = T1227._m18539(buff);
				_i15759.setMessageId(_e7050);
				MemoryManagement.free(_e7050);
				continue;
			}
			if (_p7049 == 1) 
			{
				var _h7051:String = T1227._m18539(buff);
				_i15759.setRequestId(_h7051);
				MemoryManagement.free(_h7051);
				continue;
			}
			if (_p7049 == 3) 
			{
				var _c15765:NList<Storable> = null;
				var _f15766:Int = buff._m17886();
				if (_f15766 != T1221._m17179) 
				{
					buff._m17887();
					var _c15767:Int = buff._m17888();
					_c15765 = new NList<Storable>();
					for (_c7055 in 0 ... _c15767) 
					{
						_c15765.add((cast T1227._m18252(this, buff)));
					}
				}
				_i15759.setStorables(_c15765);
				continue;
			}
			T1227._m18540(buff);
		}
		return _i15759;
	}

	public function _m18523( _y13866:T1229):Serializable
	{
		var _w15770:UpdatePlayerStorableResponse = new UpdatePlayerStorableResponse();
		var _j7057:Int = T1227._m18538(_y13866);
		for (_f7058 in 0 ... _j7057) 
		{
			var _t7059:Int = T1227._m18538(_y13866);
			if (_t7059 == 0) 
			{
				var _d7060:String = T1227._m18539(_y13866);
				_w15770.setMessageId(_d7060);
				MemoryManagement.free(_d7060);
				continue;
			}
			if (_t7059 == 1) 
			{
				var _t7061:String = T1227._m18539(_y13866);
				_w15770.setRequestId(_t7061);
				MemoryManagement.free(_t7061);
				continue;
			}
			if (_t7059 == 3) 
			{
				_w15770.setUpdatePlayerStorableStatus((cast T1227._m18252(this, _y13866)));
				continue;
			}
			T1227._m18540(_y13866);
		}
		return _w15770;
	}

	public function _m18524( buff:T1229):Serializable
	{
		var _c15777:UpdatePlayerStorableRequest = new UpdatePlayerStorableRequest();
		var _s13868:Int = T1227._m18538(buff);
		for (_f7064 in 0 ... _s13868) 
		{
			var _m7065:Int = T1227._m18538(buff);
			if (_m7065 == 0) 
			{
				var _f7066:String = T1227._m18539(buff);
				_c15777.setMessageId(_f7066);
				MemoryManagement.free(_f7066);
				continue;
			}
			if (_m7065 == 1) 
			{
				var _a7067:String = T1227._m18539(buff);
				_c15777.setRequestId(_a7067);
				MemoryManagement.free(_a7067);
				continue;
			}
			if (_m7065 == 3) 
			{
				_c15777.setStorable((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _c15777;
	}

	public function _m18525( buff:T1229):Serializable
	{
		var _h15784:UpdatePlayerStorableListRequest = new UpdatePlayerStorableListRequest();
		var _m7069:Int = T1227._m18538(buff);
		for (_v7070 in 0 ... _m7069) 
		{
			var _n7071:Int = T1227._m18538(buff);
			if (_n7071 == 0) 
			{
				var _o7072:String = T1227._m18539(buff);
				_h15784.setMessageId(_o7072);
				MemoryManagement.free(_o7072);
				continue;
			}
			if (_n7071 == 1) 
			{
				var _x7073:String = T1227._m18539(buff);
				_h15784.setRequestId(_x7073);
				MemoryManagement.free(_x7073);
				continue;
			}
			if (_n7071 == 3) 
			{
				var _s15790:NList<Storable> = null;
				var _z15791:Int = buff._m17886();
				if (_z15791 != T1221._m17179) 
				{
					buff._m17887();
					var _u15792:Int = buff._m17888();
					_s15790 = new NList<Storable>();
					for (_y7077 in 0 ... _u15792) 
					{
						_s15790.add((cast T1227._m18252(this, buff)));
					}
				}
				_h15784.setStorables(_s15790);
				continue;
			}
			T1227._m18540(buff);
		}
		return _h15784;
	}

	public function _m18526( _m13872:T1229):Serializable
	{
		var _o15795:RemovePlayerStorableResponse = new RemovePlayerStorableResponse();
		var _d13874:Int = T1227._m18538(_m13872);
		for (_h7080 in 0 ... _d13874) 
		{
			var _w7081:Int = T1227._m18538(_m13872);
			if (_w7081 == 0) 
			{
				var _y7082:String = T1227._m18539(_m13872);
				_o15795.setMessageId(_y7082);
				MemoryManagement.free(_y7082);
				continue;
			}
			if (_w7081 == 1) 
			{
				var _b7083:String = T1227._m18539(_m13872);
				_o15795.setRequestId(_b7083);
				MemoryManagement.free(_b7083);
				continue;
			}
			if (_w7081 == 3) 
			{
				_o15795.setRemovePlayerStorableStatus((cast T1227._m18252(this, _m13872)));
				continue;
			}
			T1227._m18540(_m13872);
		}
		return _o15795;
	}

	public function _m18527( buff:T1229):Serializable
	{
		var _w15802:RemovePlayerStorableRequest = new RemovePlayerStorableRequest();
		var _r7085:Int = T1227._m18538(buff);
		for (_f7086 in 0 ... _r7085) 
		{
			var _k7087:Int = T1227._m18538(buff);
			if (_k7087 == 0) 
			{
				var _h7088:String = T1227._m18539(buff);
				_w15802.setMessageId(_h7088);
				MemoryManagement.free(_h7088);
				continue;
			}
			if (_k7087 == 1) 
			{
				var _j7089:String = T1227._m18539(buff);
				_w15802.setRequestId(_j7089);
				MemoryManagement.free(_j7089);
				continue;
			}
			if (_k7087 == 3) 
			{
				_w15802.setStorable((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _w15802;
	}

	public function _m18528( _h13878:T1229):Serializable
	{
		var _c15809:RemovePlayerStorableListRequest = new RemovePlayerStorableListRequest();
		var _f13880:Int = T1227._m18538(_h13878);
		for (_q7092 in 0 ... _f13880) 
		{
			var _d7093:Int = T1227._m18538(_h13878);
			if (_d7093 == 0) 
			{
				var _r7094:String = T1227._m18539(_h13878);
				_c15809.setMessageId(_r7094);
				MemoryManagement.free(_r7094);
				continue;
			}
			if (_d7093 == 1) 
			{
				var _p7095:String = T1227._m18539(_h13878);
				_c15809.setRequestId(_p7095);
				MemoryManagement.free(_p7095);
				continue;
			}
			if (_d7093 == 3) 
			{
				var _w15815:NList<Storable> = null;
				var _b15816:Int = _h13878._m17886();
				if (_b15816 != T1221._m17179) 
				{
					_h13878._m17887();
					var _a15817:Int = _h13878._m17888();
					_w15815 = new NList<Storable>();
					for (_b7099 in 0 ... _a15817) 
					{
						_w15815.add((cast T1227._m18252(this, _h13878)));
					}
				}
				_c15809.setStorables(_w15815);
				continue;
			}
			T1227._m18540(_h13878);
		}
		return _c15809;
	}

	public function _m18529( buff:T1229):Serializable
	{
		var _u15820:GetPlayerStorablesResponse = new GetPlayerStorablesResponse();
		var _m7101:Int = T1227._m18538(buff);
		for (_u7102 in 0 ... _m7101) 
		{
			var _u7103:Int = T1227._m18538(buff);
			if (_u7103 == 0) 
			{
				var _g7104:String = T1227._m18539(buff);
				_u15820.setMessageId(_g7104);
				MemoryManagement.free(_g7104);
				continue;
			}
			if (_u7103 == 1) 
			{
				var _h7105:String = T1227._m18539(buff);
				_u15820.setRequestId(_h7105);
				MemoryManagement.free(_h7105);
				continue;
			}
			if (_u7103 == 3) 
			{
				_u15820.setGetPlayerStorablesStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			if (_u7103 == 4) 
			{
				var _l15826:NList<Storable> = null;
				var _c15827:Int = buff._m17886();
				if (_c15827 != T1221._m17179) 
				{
					buff._m17887();
					var _e15828:Int = buff._m17888();
					_l15826 = new NList<Storable>();
					for (_x15829 in 0 ... _e15828) 
					{
						_l15826.add((cast T1227._m18252(this, buff)));
					}
				}
				_u15820.setStorables(_l15826);
				continue;
			}
			T1227._m18540(buff);
		}
		return _u15820;
	}

	public function _m18530( _k13884:T1229):Serializable
	{
		var _o15831:GetPlayerStorablesRequest = new GetPlayerStorablesRequest();
		var _z7111:Int = T1227._m18538(_k13884);
		for (_g7112 in 0 ... _z7111) 
		{
			var _a7113:Int = T1227._m18538(_k13884);
			if (_a7113 == 0) 
			{
				var _f7114:String = T1227._m18539(_k13884);
				_o15831.setMessageId(_f7114);
				MemoryManagement.free(_f7114);
				continue;
			}
			if (_a7113 == 1) 
			{
				var _f7115:String = T1227._m18539(_k13884);
				_o15831.setRequestId(_f7115);
				MemoryManagement.free(_f7115);
				continue;
			}
			if (_a7113 == 3) 
			{
				_o15831.setDbQuery((cast T1227._m18252(this, _k13884)));
				continue;
			}
			T1227._m18540(_k13884);
		}
		return _o15831;
	}

	public function _m18531( buff:T1229):Serializable
	{
		var _e15838:PauseSessionMonitoringResponse = new PauseSessionMonitoringResponse();
		var _d13886:Int = T1227._m18538(buff);
		for (_v7118 in 0 ... _d13886) 
		{
			var _s7119:Int = T1227._m18538(buff);
			if (_s7119 == 0) 
			{
				var _n7120:String = T1227._m18539(buff);
				_e15838.setMessageId(_n7120);
				MemoryManagement.free(_n7120);
				continue;
			}
			if (_s7119 == 1) 
			{
				var _u7121:String = T1227._m18539(buff);
				_e15838.setRequestId(_u7121);
				MemoryManagement.free(_u7121);
				continue;
			}
			if (_s7119 == 3) 
			{
				_e15838.setPauseSessionMonitoringStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _e15838;
	}

	public function _m18532( buff:T1229):Serializable
	{
		var _g15845:PauseSessionMonitoringRequest = new PauseSessionMonitoringRequest();
		var _v7123:Int = T1227._m18538(buff);
		for (_r7124 in 0 ... _v7123) 
		{
			var _y7125:Int = T1227._m18538(buff);
			if (_y7125 == 0) 
			{
				var _b7126:String = T1227._m18539(buff);
				_g15845.setMessageId(_b7126);
				MemoryManagement.free(_b7126);
				continue;
			}
			if (_y7125 == 1) 
			{
				var _e7127:String = T1227._m18539(buff);
				_g15845.setRequestId(_e7127);
				MemoryManagement.free(_e7127);
				continue;
			}
			T1227._m18540(buff);
		}
		return _g15845;
	}

	public function _m18533( _z13890:T1229):Serializable
	{
		var _t15852:ResumeSessionMonitoringResponse = new ResumeSessionMonitoringResponse();
		var _j7129:Int = T1227._m18538(_z13890);
		for (_x7130 in 0 ... _j7129) 
		{
			var _o7131:Int = T1227._m18538(_z13890);
			if (_o7131 == 0) 
			{
				var _s7132:String = T1227._m18539(_z13890);
				_t15852.setMessageId(_s7132);
				MemoryManagement.free(_s7132);
				continue;
			}
			if (_o7131 == 1) 
			{
				var _a7133:String = T1227._m18539(_z13890);
				_t15852.setRequestId(_a7133);
				MemoryManagement.free(_a7133);
				continue;
			}
			if (_o7131 == 3) 
			{
				_t15852.setResumeSessionMonitoringStatus((cast T1227._m18252(this, _z13890)));
				continue;
			}
			T1227._m18540(_z13890);
		}
		return _t15852;
	}

	public function _m18534( buff:T1229):Serializable
	{
		var _v15859:ResumeSessionMonitoringRequest = new ResumeSessionMonitoringRequest();
		var _k13892:Int = T1227._m18538(buff);
		for (_f7136 in 0 ... _k13892) 
		{
			var _w7137:Int = T1227._m18538(buff);
			if (_w7137 == 0) 
			{
				var _w7138:String = T1227._m18539(buff);
				_v15859.setMessageId(_w7138);
				MemoryManagement.free(_w7138);
				continue;
			}
			if (_w7137 == 1) 
			{
				var _d7139:String = T1227._m18539(buff);
				_v15859.setRequestId(_d7139);
				MemoryManagement.free(_d7139);
				continue;
			}
			T1227._m18540(buff);
		}
		return _v15859;
	}

	public function _m18535( buff:T1229):Serializable
	{
		var _p15866:PublishFriendThirdPartyMessageResponse = new PublishFriendThirdPartyMessageResponse();
		var _c7141:Int = T1227._m18538(buff);
		for (_d7142 in 0 ... _c7141) 
		{
			var _v7143:Int = T1227._m18538(buff);
			if (_v7143 == 0) 
			{
				var _j7144:String = T1227._m18539(buff);
				_p15866.setMessageId(_j7144);
				MemoryManagement.free(_j7144);
				continue;
			}
			if (_v7143 == 1) 
			{
				var _q7145:String = T1227._m18539(buff);
				_p15866.setRequestId(_q7145);
				MemoryManagement.free(_q7145);
				continue;
			}
			if (_v7143 == 3) 
			{
				_p15866.setPublishFriendThirdPartyMessageStatus((cast T1227._m18252(this, buff)));
				continue;
			}
			T1227._m18540(buff);
		}
		return _p15866;
	}

	public function _m18536( _f15872:T1229):Serializable
	{
		var _x15873:PublishFriendThirdPartyMessageRequest = new PublishFriendThirdPartyMessageRequest();
		var _z15874:Int = T1227._m18538(_f15872);
		for (_p15875 in 0 ... _z15874) 
		{
			var _f15876:Int = T1227._m18538(_f15872);
			if (_f15876 == 0) 
			{
				var _u15877:String = T1227._m18539(_f15872);
				_x15873.setMessageId(_u15877);
				MemoryManagement.free(_u15877);
				continue;
			}
			if (_f15876 == 1) 
			{
				var _w15878:String = T1227._m18539(_f15872);
				_x15873.setRequestId(_w15878);
				MemoryManagement.free(_w15878);
				continue;
			}
			if (_f15876 == 3) 
			{
				var _o15879:String = T1227._m18539(_f15872);
				_x15873.setTitle(_o15879);
				MemoryManagement.free(_o15879);
				continue;
			}
			if (_f15876 == 4) 
			{
				var _p15880:String = T1227._m18539(_f15872);
				_x15873.setMessage(_p15880);
				MemoryManagement.free(_p15880);
				continue;
			}
			if (_f15876 == 5) 
			{
				var _u15881:String = T1227._m18539(_f15872);
				_x15873.setPictureUrl(_u15881);
				MemoryManagement.free(_u15881);
				continue;
			}
			if (_f15876 == 6) 
			{
				var _g15882:String = T1227._m18539(_f15872);
				_x15873.setLink(_g15882);
				MemoryManagement.free(_g15882);
				continue;
			}
			if (_f15876 == 7) 
			{
				var _l15883:String = T1227._m18539(_f15872);
				_x15873.setThirdPartyId(_l15883);
				MemoryManagement.free(_l15883);
				continue;
			}
			if (_f15876 == 8) 
			{
				_x15873.setThirdPartySource((cast T1227._m18252(this, _f15872)));
				continue;
			}
			T1227._m18540(_f15872);
		}
		return _x15873;
	}
}
