package com.nuggeta.temp.k.l.m;
import com.nuggeta.mimics.utils.Utils;
import com.nuggeta.network.Serializable;
import com.nuggeta.network.Message;
import com.nuggeta.database.Storable;
import com.nuggeta.NError;
import com.nuggeta.temp.a.b.f.g.T1220;
import com.nuggeta.temp.a.b.h.T1222;
import com.nuggeta.temp.a.b.f.h.T1221;
import com.nuggeta.temp.a.b.h.i.T1224;
import com.nuggeta.temp.a.b.h.i.T1225;
import com.nuggeta.temp.a.b.h.i.T1223;
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
import com.nuggeta.temp.a.b.h.i.T1223;
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

class T1230 implements T1222
{

	public function new()
	{
	}

	public function _m17286( _y8266:Serializable,  _f8267:T1220):Void
	{
		var _s8268:T1223 = (cast _f8267);
		if (_y8266.getSerializerID() == -1) 
		{
			_m17287(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -2) 
		{
			_m17288(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3) 
		{
			_m17289(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -4) 
		{
			_m17290(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -5) 
		{
			_m17291(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -6) 
		{
			_m17292(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -7) 
		{
			_m17293(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -8) 
		{
			_m17294(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -9) 
		{
			_m17295(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10) 
		{
			_m17296(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11) 
		{
			_m17297(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -12) 
		{
			_m17298(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -13) 
		{
			_m17299(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -14) 
		{
			_m17300(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -15) 
		{
			_m17301(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -16) 
		{
			_m17302(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -17) 
		{
			_m17303(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -18) 
		{
			_m17304(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -19) 
		{
			_m17305(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -20) 
		{
			_m17306(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -21) 
		{
			_m17307(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -22) 
		{
			_m17308(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -23) 
		{
			_m17309(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -24) 
		{
			_m17310(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -26) 
		{
			_m17311(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -27) 
		{
			_m17312(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -28) 
		{
			_m17313(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -29) 
		{
			_m17314(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -30) 
		{
			_m17315(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -31) 
		{
			_m17316(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -32) 
		{
			_m17317(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -33) 
		{
			_m17318(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -34) 
		{
			_m17319(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -35) 
		{
			_m17320(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10018) 
		{
			_m17321(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10038) 
		{
			_m17322(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10058) 
		{
			_m17323(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10078) 
		{
			_m17324(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10098) 
		{
			_m17325(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10118) 
		{
			_m17326(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10138) 
		{
			_m17327(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10158) 
		{
			_m17328(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10178) 
		{
			_m17329(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10198) 
		{
			_m17330(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10218) 
		{
			_m17331(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10238) 
		{
			_m17332(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10258) 
		{
			_m17333(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10278) 
		{
			_m17334(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10298) 
		{
			_m17335(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10318) 
		{
			_m17336(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10338) 
		{
			_m17337(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10358) 
		{
			_m17338(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10378) 
		{
			_m17339(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10398) 
		{
			_m17340(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10418) 
		{
			_m17341(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10438) 
		{
			_m17342(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10458) 
		{
			_m17343(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10478) 
		{
			_m17344(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10498) 
		{
			_m17345(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10518) 
		{
			_m17346(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10538) 
		{
			_m17347(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10558) 
		{
			_m17348(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10578) 
		{
			_m17349(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10598) 
		{
			_m17350(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10618) 
		{
			_m17351(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10638) 
		{
			_m17352(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10658) 
		{
			_m17353(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10678) 
		{
			_m17354(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10698) 
		{
			_m17355(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10718) 
		{
			_m17356(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10738) 
		{
			_m17357(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10758) 
		{
			_m17358(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10778) 
		{
			_m17359(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10798) 
		{
			_m17360(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10818) 
		{
			_m17361(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10838) 
		{
			_m17362(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10858) 
		{
			_m17363(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10878) 
		{
			_m17364(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10898) 
		{
			_m17365(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10918) 
		{
			_m17366(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10938) 
		{
			_m17367(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10958) 
		{
			_m17368(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10978) 
		{
			_m17369(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10998) 
		{
			_m17370(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11018) 
		{
			_m17371(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11038) 
		{
			_m17372(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11058) 
		{
			_m17373(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11078) 
		{
			_m17374(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11098) 
		{
			_m17375(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11118) 
		{
			_m17376(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3000) 
		{
			_m17377(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3001) 
		{
			_m17378(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3002) 
		{
			_m17379(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3003) 
		{
			_m17380(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3004) 
		{
			_m17381(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3005) 
		{
			_m17382(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3006) 
		{
			_m17383(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3008) 
		{
			_m17384(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3009) 
		{
			_m17385(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3010) 
		{
			_m17386(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3011) 
		{
			_m17387(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3012) 
		{
			_m17388(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3013) 
		{
			_m17389(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3017) 
		{
			_m17390(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3019) 
		{
			_m17391(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3020) 
		{
			_m17392(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3021) 
		{
			_m17393(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3042) 
		{
			_m17394(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3077) 
		{
			_m17395(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3078) 
		{
			_m17396(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3084) 
		{
			_m17397(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3088) 
		{
			_m17398(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3089) 
		{
			_m17399(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3090) 
		{
			_m17400(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3093) 
		{
			_m17401(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3098) 
		{
			_m17402(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3099) 
		{
			_m17403(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3100) 
		{
			_m17404(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3101) 
		{
			_m17405(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3103) 
		{
			_m17406(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3105) 
		{
			_m17407(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3106) 
		{
			_m17408(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3107) 
		{
			_m17409(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3109) 
		{
			_m17410(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3111) 
		{
			_m17411(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3112) 
		{
			_m17412(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3113) 
		{
			_m17413(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3115) 
		{
			_m17414(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3116) 
		{
			_m17415(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3118) 
		{
			_m17416(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3119) 
		{
			_m17417(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3121) 
		{
			_m17418(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3122) 
		{
			_m17419(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3124) 
		{
			_m17420(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3127) 
		{
			_m17421(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3129) 
		{
			_m17422(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3130) 
		{
			_m17423(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3135) 
		{
			_m17424(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3136) 
		{
			_m17425(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3137) 
		{
			_m17426(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3139) 
		{
			_m17427(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3140) 
		{
			_m17428(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3142) 
		{
			_m17429(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3143) 
		{
			_m17430(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3145) 
		{
			_m17431(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3156) 
		{
			_m17432(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3157) 
		{
			_m17433(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3158) 
		{
			_m17434(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3159) 
		{
			_m17435(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3164) 
		{
			_m17436(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3174) 
		{
			_m17437(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3175) 
		{
			_m17438(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3178) 
		{
			_m17439(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3179) 
		{
			_m17440(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3180) 
		{
			_m17441(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -3181) 
		{
			_m17442(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10019) 
		{
			_m17443(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10017) 
		{
			_m17444(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10016) 
		{
			_m17445(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10039) 
		{
			_m17446(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10037) 
		{
			_m17447(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10059) 
		{
			_m17448(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10057) 
		{
			_m17449(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10056) 
		{
			_m17450(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10079) 
		{
			_m17451(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10077) 
		{
			_m17452(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10099) 
		{
			_m17453(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10097) 
		{
			_m17454(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10119) 
		{
			_m17455(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10117) 
		{
			_m17456(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10116) 
		{
			_m17457(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10139) 
		{
			_m17458(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10137) 
		{
			_m17459(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10159) 
		{
			_m17460(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10157) 
		{
			_m17461(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10179) 
		{
			_m17462(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10177) 
		{
			_m17463(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10199) 
		{
			_m17464(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10197) 
		{
			_m17465(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10196) 
		{
			_m17466(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10219) 
		{
			_m17467(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10217) 
		{
			_m17468(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10239) 
		{
			_m17469(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10237) 
		{
			_m17470(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10259) 
		{
			_m17471(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10257) 
		{
			_m17472(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10279) 
		{
			_m17473(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10277) 
		{
			_m17474(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10299) 
		{
			_m17475(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10297) 
		{
			_m17476(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10296) 
		{
			_m17477(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10319) 
		{
			_m17478(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10317) 
		{
			_m17479(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10339) 
		{
			_m17480(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10337) 
		{
			_m17481(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10359) 
		{
			_m17482(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10357) 
		{
			_m17483(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10379) 
		{
			_m17484(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10377) 
		{
			_m17485(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10399) 
		{
			_m17486(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10397) 
		{
			_m17487(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10419) 
		{
			_m17488(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10417) 
		{
			_m17489(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10439) 
		{
			_m17490(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10437) 
		{
			_m17491(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10459) 
		{
			_m17492(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10457) 
		{
			_m17493(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10479) 
		{
			_m17494(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10477) 
		{
			_m17495(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10476) 
		{
			_m17496(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10499) 
		{
			_m17497(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10497) 
		{
			_m17498(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10519) 
		{
			_m17499(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10517) 
		{
			_m17500(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10539) 
		{
			_m17501(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10537) 
		{
			_m17502(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10559) 
		{
			_m17503(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10557) 
		{
			_m17504(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10579) 
		{
			_m17505(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10577) 
		{
			_m17506(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10599) 
		{
			_m17507(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10597) 
		{
			_m17508(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10619) 
		{
			_m17509(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10617) 
		{
			_m17510(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10639) 
		{
			_m17511(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10637) 
		{
			_m17512(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10659) 
		{
			_m17513(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10657) 
		{
			_m17514(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10656) 
		{
			_m17515(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10679) 
		{
			_m17516(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10677) 
		{
			_m17517(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10699) 
		{
			_m17518(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10697) 
		{
			_m17519(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10719) 
		{
			_m17520(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10717) 
		{
			_m17521(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10739) 
		{
			_m17522(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10737) 
		{
			_m17523(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10759) 
		{
			_m17524(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10757) 
		{
			_m17525(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10756) 
		{
			_m17526(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10755) 
		{
			_m17527(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10779) 
		{
			_m17528(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10777) 
		{
			_m17529(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10799) 
		{
			_m17530(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10797) 
		{
			_m17531(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10796) 
		{
			_m17532(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10819) 
		{
			_m17533(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10817) 
		{
			_m17534(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10839) 
		{
			_m17535(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10837) 
		{
			_m17536(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10859) 
		{
			_m17537(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10857) 
		{
			_m17538(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10856) 
		{
			_m17539(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10879) 
		{
			_m17540(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10877) 
		{
			_m17541(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10876) 
		{
			_m17542(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10899) 
		{
			_m17543(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10897) 
		{
			_m17544(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10919) 
		{
			_m17545(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10917) 
		{
			_m17546(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10939) 
		{
			_m17547(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10937) 
		{
			_m17548(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10936) 
		{
			_m17549(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10959) 
		{
			_m17550(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10957) 
		{
			_m17551(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10979) 
		{
			_m17552(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10977) 
		{
			_m17553(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10999) 
		{
			_m17554(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10997) 
		{
			_m17555(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -10996) 
		{
			_m17556(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11019) 
		{
			_m17557(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11017) 
		{
			_m17558(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11016) 
		{
			_m17559(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11039) 
		{
			_m17560(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11037) 
		{
			_m17561(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11036) 
		{
			_m17562(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11059) 
		{
			_m17563(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11057) 
		{
			_m17564(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11079) 
		{
			_m17565(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11077) 
		{
			_m17566(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11099) 
		{
			_m17567(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11097) 
		{
			_m17568(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11119) 
		{
			_m17569(_y8266, _s8268);
			return;
		}
		if (_y8266.getSerializerID() == -11117) 
		{
			_m17570(_y8266, _s8268);
			return;
		}
	}

	public function _m17287( serializable:Serializable,  buff:T1223):Void
	{
		var _q8271:DnsStatus = (cast serializable);
		T1225._m17571(_q8271.getValue(), buff);
	}

	public function _m17288( serializable:Serializable,  buff:T1223):Void
	{
		var _z8274:MatchMakingType = (cast serializable);
		T1225._m17571(_z8274.getValue(), buff);
	}

	public function _m17289( serializable:Serializable,  buff:T1223):Void
	{
		var _i8277:LeaderboardOrder = (cast serializable);
		T1225._m17571(_i8277.getValue(), buff);
	}

	public function _m17290( serializable:Serializable,  buff:T1223):Void
	{
		var _t8280:LeaderboardPeriod = (cast serializable);
		T1225._m17571(_t8280.getValue(), buff);
	}

	public function _m17291( serializable:Serializable,  buff:T1223):Void
	{
		var _s8283:DeveloperGameType = (cast serializable);
		T1225._m17571(_s8283.getValue(), buff);
	}

	public function _m17292( serializable:Serializable,  buff:T1223):Void
	{
		var _u8286:GameLoadingType = (cast serializable);
		T1225._m17571(_u8286.getValue(), buff);
	}

	public function _m17293( serializable:Serializable,  buff:T1223):Void
	{
		var _f8289:DeveloperGameMode = (cast serializable);
		T1225._m17571(_f8289.getValue(), buff);
	}

	public function _m17294( serializable:Serializable,  buff:T1223):Void
	{
		var _b8292:ErrorCode = (cast serializable);
		T1225._m17571(_b8292.getValue(), buff);
	}

	public function _m17295( serializable:Serializable,  buff:T1223):Void
	{
		var _p8295:ThirdPartySource = (cast serializable);
		T1225._m17571(_p8295.getValue(), buff);
	}

	public function _m17296( serializable:Serializable,  buff:T1223):Void
	{
		var _r8298:ChallengeStatus = (cast serializable);
		T1225._m17571(_r8298.getValue(), buff);
	}

	public function _m17297( serializable:Serializable,  buff:T1223):Void
	{
		var _k8301:PlayerDisconnectionReason = (cast serializable);
		T1225._m17571(_k8301.getValue(), buff);
	}

	public function _m17298( serializable:Serializable,  buff:T1223):Void
	{
		var _o8304:LogLevel = (cast serializable);
		T1225._m17571(_o8304.getValue(), buff);
	}

	public function _m17299( serializable:Serializable,  buff:T1223):Void
	{
		var _h8307:EntityType = (cast serializable);
		T1225._m17571(_h8307.getValue(), buff);
	}

	public function _m17300( serializable:Serializable,  buff:T1223):Void
	{
		var _p8310:Gender = (cast serializable);
		T1225._m17571(_p8310.getValue(), buff);
	}

	public function _m17301( serializable:Serializable,  buff:T1223):Void
	{
		var _z8313:RedirectStrategyType = (cast serializable);
		T1225._m17571(_z8313.getValue(), buff);
	}

	public function _m17302( serializable:Serializable,  buff:T1223):Void
	{
		var _v8316:JobStatus = (cast serializable);
		T1225._m17571(_v8316.getValue(), buff);
	}

	public function _m17303( serializable:Serializable,  buff:T1223):Void
	{
		var _f8319:Environment = (cast serializable);
		T1225._m17571(_f8319.getValue(), buff);
	}

	public function _m17304( serializable:Serializable,  buff:T1223):Void
	{
		var _k8322:HandshakeState = (cast serializable);
		T1225._m17571(_k8322.getValue(), buff);
	}

	public function _m17305( serializable:Serializable,  buff:T1223):Void
	{
		var _h8325:PlayerState = (cast serializable);
		T1225._m17571(_h8325.getValue(), buff);
	}

	public function _m17306( serializable:Serializable,  buff:T1223):Void
	{
		var _w8328:ClientApplication = (cast serializable);
		T1225._m17571(_w8328.getValue(), buff);
	}

	public function _m17307( serializable:Serializable,  buff:T1223):Void
	{
		var _n8331:GameRunningState = (cast serializable);
		T1225._m17571(_n8331.getValue(), buff);
	}

	public function _m17308( serializable:Serializable,  buff:T1223):Void
	{
		var _s8334:Period = (cast serializable);
		T1225._m17571(_s8334.getValue(), buff);
	}

	public function _m17309( serializable:Serializable,  buff:T1223):Void
	{
		var _b8337:PlayerInvitationStatus = (cast serializable);
		T1225._m17571(_b8337.getValue(), buff);
	}

	public function _m17310( serializable:Serializable,  buff:T1223):Void
	{
		var _x8340:ExecutionStatus = (cast serializable);
		T1225._m17571(_x8340.getValue(), buff);
	}

	public function _m17311( serializable:Serializable,  buff:T1223):Void
	{
		var _m8343:NebulaPlayerStatus = (cast serializable);
		T1225._m17571(_m8343.getValue(), buff);
	}

	public function _m17312( serializable:Serializable,  buff:T1223):Void
	{
		var _c8346:GameServerStatus = (cast serializable);
		T1225._m17571(_c8346.getValue(), buff);
	}

	public function _m17313( serializable:Serializable,  buff:T1223):Void
	{
		var _g8349:DeveloperStatus = (cast serializable);
		T1225._m17571(_g8349.getValue(), buff);
	}

	public function _m17314( serializable:Serializable,  buff:T1223):Void
	{
		var _s8352:DeveloperGamePlan = (cast serializable);
		T1225._m17571(_s8352.getValue(), buff);
	}

	public function _m17315( serializable:Serializable,  buff:T1223):Void
	{
		var _w8355:LocationZone = (cast serializable);
		T1225._m17571(_w8355.getValue(), buff);
	}

	public function _m17316( serializable:Serializable,  buff:T1223):Void
	{
		var _y8358:ThirdPartyMethodType = (cast serializable);
		T1225._m17571(_y8358.getValue(), buff);
	}

	public function _m17317( serializable:Serializable,  buff:T1223):Void
	{
		var _t8361:ForumTopicStatus = (cast serializable);
		T1225._m17571(_t8361.getValue(), buff);
	}

	public function _m17318( serializable:Serializable,  buff:T1223):Void
	{
		var _l8364:DeveloperGameVersionStatus = (cast serializable);
		T1225._m17571(_l8364.getValue(), buff);
	}

	public function _m17319( serializable:Serializable,  buff:T1223):Void
	{
		var _k8367:StartStatus = (cast serializable);
		T1225._m17571(_k8367.getValue(), buff);
	}

	public function _m17320( serializable:Serializable,  buff:T1223):Void
	{
		var _h8370:EmailCampaignState = (cast serializable);
		T1225._m17571(_h8370.getValue(), buff);
	}

	public function _m17321( serializable:Serializable,  buff:T1223):Void
	{
		var _q8373:InvitePlayerStatus = (cast serializable);
		T1225._m17571(_q8373.getValue(), buff);
	}

	public function _m17322( serializable:Serializable,  buff:T1223):Void
	{
		var _e8376:SignUpStatus = (cast serializable);
		T1225._m17571(_e8376.getValue(), buff);
	}

	public function _m17323( serializable:Serializable,  buff:T1223):Void
	{
		var _n8379:ForgotPasswordStatus = (cast serializable);
		T1225._m17571(_n8379.getValue(), buff);
	}

	public function _m17324( serializable:Serializable,  buff:T1223):Void
	{
		var _w8382:LoginStatus = (cast serializable);
		T1225._m17571(_w8382.getValue(), buff);
	}

	public function _m17325( serializable:Serializable,  buff:T1223):Void
	{
		var _n8385:SavePlayerProfileStatus = (cast serializable);
		T1225._m17571(_n8385.getValue(), buff);
	}

	public function _m17326( serializable:Serializable,  buff:T1223):Void
	{
		var _d8388:GetPlayerProfileStatus = (cast serializable);
		T1225._m17571(_d8388.getValue(), buff);
	}

	public function _m17327( serializable:Serializable,  buff:T1223):Void
	{
		var _w8391:LogoutStatus = (cast serializable);
		T1225._m17571(_w8391.getValue(), buff);
	}

	public function _m17328( serializable:Serializable,  buff:T1223):Void
	{
		var _n8394:ChallengeFriendStatus = (cast serializable);
		T1225._m17571(_n8394.getValue(), buff);
	}

	public function _m17329( serializable:Serializable,  buff:T1223):Void
	{
		var _x8397:ChallengeThirdPartyFriendStatus = (cast serializable);
		T1225._m17571(_x8397.getValue(), buff);
	}

	public function _m17330( serializable:Serializable,  buff:T1223):Void
	{
		var _c8400:GetFriendsStatus = (cast serializable);
		T1225._m17571(_c8400.getValue(), buff);
	}

	public function _m17331( serializable:Serializable,  buff:T1223):Void
	{
		var _u8403:GetThirdPartyFriendsStatus = (cast serializable);
		T1225._m17571(_u8403.getValue(), buff);
	}

	public function _m17332( serializable:Serializable,  buff:T1223):Void
	{
		var _h8406:GetPlayerInvitationsStatus = (cast serializable);
		T1225._m17571(_h8406.getValue(), buff);
	}

	public function _m17333( serializable:Serializable,  buff:T1223):Void
	{
		var _u8409:AcceptPlayerInvitationStatus = (cast serializable);
		T1225._m17571(_u8409.getValue(), buff);
	}

	public function _m17334( serializable:Serializable,  buff:T1223):Void
	{
		var _e8412:IgnorePlayerInvitationStatus = (cast serializable);
		T1225._m17571(_e8412.getValue(), buff);
	}

	public function _m17335( serializable:Serializable,  buff:T1223):Void
	{
		var _z8415:SubmitScoreStatus = (cast serializable);
		T1225._m17571(_z8415.getValue(), buff);
	}

	public function _m17336( serializable:Serializable,  buff:T1223):Void
	{
		var _a8418:GetLeaderboardStatus = (cast serializable);
		T1225._m17571(_a8418.getValue(), buff);
	}

	public function _m17337( serializable:Serializable,  buff:T1223):Void
	{
		var _b8421:BuyItemStatus = (cast serializable);
		T1225._m17571(_b8421.getValue(), buff);
	}

	public function _m17338( serializable:Serializable,  buff:T1223):Void
	{
		var _i8424:GetStoreStatus = (cast serializable);
		T1225._m17571(_i8424.getValue(), buff);
	}

	public function _m17339( serializable:Serializable,  buff:T1223):Void
	{
		var _z8427:ConsumeItemStatus = (cast serializable);
		T1225._m17571(_z8427.getValue(), buff);
	}

	public function _m17340( serializable:Serializable,  buff:T1223):Void
	{
		var _z8430:IncreasePlayerWalletStatus = (cast serializable);
		T1225._m17571(_z8430.getValue(), buff);
	}

	public function _m17341( serializable:Serializable,  buff:T1223):Void
	{
		var _b8433:GetPlayerWalletStatus = (cast serializable);
		T1225._m17571(_b8433.getValue(), buff);
	}

	public function _m17342( serializable:Serializable,  buff:T1223):Void
	{
		var _f8436:GetAchievementBoardStatus = (cast serializable);
		T1225._m17571(_f8436.getValue(), buff);
	}

	public function _m17343( serializable:Serializable,  buff:T1223):Void
	{
		var _i8439:AchieveStatus = (cast serializable);
		T1225._m17571(_i8439.getValue(), buff);
	}

	public function _m17344( serializable:Serializable,  buff:T1223):Void
	{
		var _h8442:SearchImmediateGameStatus = (cast serializable);
		T1225._m17571(_h8442.getValue(), buff);
	}

	public function _m17345( serializable:Serializable,  buff:T1223):Void
	{
		var _g8445:JoinGameStatus = (cast serializable);
		T1225._m17571(_g8445.getValue(), buff);
	}

	public function _m17346( serializable:Serializable,  buff:T1223):Void
	{
		var _k8448:UnjoinGameStatus = (cast serializable);
		T1225._m17571(_k8448.getValue(), buff);
	}

	public function _m17347( serializable:Serializable,  buff:T1223):Void
	{
		var _t8451:AcceptFriendChallengeStatus = (cast serializable);
		T1225._m17571(_t8451.getValue(), buff);
	}

	public function _m17348( serializable:Serializable,  buff:T1223):Void
	{
		var _m8454:CancelFriendChallengeStatus = (cast serializable);
		T1225._m17571(_m8454.getValue(), buff);
	}

	public function _m17349( serializable:Serializable,  buff:T1223):Void
	{
		var _g8457:RefuseFriendChallengeStatus = (cast serializable);
		T1225._m17571(_g8457.getValue(), buff);
	}

	public function _m17350( serializable:Serializable,  buff:T1223):Void
	{
		var _m8460:GetChallengesStatus = (cast serializable);
		T1225._m17571(_m8460.getValue(), buff);
	}

	public function _m17351( serializable:Serializable,  buff:T1223):Void
	{
		var _m8463:StartGameStatus = (cast serializable);
		T1225._m17571(_m8463.getValue(), buff);
	}

	public function _m17352( serializable:Serializable,  buff:T1223):Void
	{
		var _q8466:StopGameStatus = (cast serializable);
		T1225._m17571(_q8466.getValue(), buff);
	}

	public function _m17353( serializable:Serializable,  buff:T1223):Void
	{
		var _o8469:CreateGameStatus = (cast serializable);
		T1225._m17571(_o8469.getValue(), buff);
	}

	public function _m17354( serializable:Serializable,  buff:T1223):Void
	{
		var _z8472:GetGamesStatus = (cast serializable);
		T1225._m17571(_z8472.getValue(), buff);
	}

	public function _m17355( serializable:Serializable,  buff:T1223):Void
	{
		var _k8475:SaveAsGhostStatus = (cast serializable);
		T1225._m17571(_k8475.getValue(), buff);
	}

	public function _m17356( serializable:Serializable,  buff:T1223):Void
	{
		var _f8478:GetGhostsStatus = (cast serializable);
		T1225._m17571(_f8478.getValue(), buff);
	}

	public function _m17357( serializable:Serializable,  buff:T1223):Void
	{
		var _v8481:LoadGhostStatus = (cast serializable);
		T1225._m17571(_v8481.getValue(), buff);
	}

	public function _m17358( serializable:Serializable,  buff:T1223):Void
	{
		var _o8484:SendGameChatStatus = (cast serializable);
		T1225._m17571(_o8484.getValue(), buff);
	}

	public function _m17359( serializable:Serializable,  buff:T1223):Void
	{
		var _m8487:GetStorablesStatus = (cast serializable);
		T1225._m17571(_m8487.getValue(), buff);
	}

	public function _m17360( serializable:Serializable,  buff:T1223):Void
	{
		var _d8490:SaveStorableStatus = (cast serializable);
		T1225._m17571(_d8490.getValue(), buff);
	}

	public function _m17361( serializable:Serializable,  buff:T1223):Void
	{
		var _q8493:NextPlayerTurnStatus = (cast serializable);
		T1225._m17571(_q8493.getValue(), buff);
	}

	public function _m17362( serializable:Serializable,  buff:T1223):Void
	{
		var _o8496:SetPlayerNameStatus = (cast serializable);
		T1225._m17571(_o8496.getValue(), buff);
	}

	public function _m17363( serializable:Serializable,  buff:T1223):Void
	{
		var _w8499:UpdateStorableStatus = (cast serializable);
		T1225._m17571(_w8499.getValue(), buff);
	}

	public function _m17364( serializable:Serializable,  buff:T1223):Void
	{
		var _o8502:RemoveStorableStatus = (cast serializable);
		T1225._m17571(_o8502.getValue(), buff);
	}

	public function _m17365( serializable:Serializable,  buff:T1223):Void
	{
		var _s8505:InviteThirdPartyFriendStatus = (cast serializable);
		T1225._m17571(_s8505.getValue(), buff);
	}

	public function _m17366( serializable:Serializable,  buff:T1223):Void
	{
		var _b8508:PublishThirdPartyMessageStatus = (cast serializable);
		T1225._m17571(_b8508.getValue(), buff);
	}

	public function _m17367( serializable:Serializable,  buff:T1223):Void
	{
		var _g8511:ThirdPartyLoginStatus = (cast serializable);
		T1225._m17571(_g8511.getValue(), buff);
	}

	public function _m17368( serializable:Serializable,  buff:T1223):Void
	{
		var _e8514:SaveGameStatus = (cast serializable);
		T1225._m17571(_e8514.getValue(), buff);
	}

	public function _m17369( serializable:Serializable,  buff:T1223):Void
	{
		var _y8517:LoadGameStatus = (cast serializable);
		T1225._m17571(_y8517.getValue(), buff);
	}

	public function _m17370( serializable:Serializable,  buff:T1223):Void
	{
		var _p8520:SavePlayerStorableStatus = (cast serializable);
		T1225._m17571(_p8520.getValue(), buff);
	}

	public function _m17371( serializable:Serializable,  buff:T1223):Void
	{
		var _i8523:UpdatePlayerStorableStatus = (cast serializable);
		T1225._m17571(_i8523.getValue(), buff);
	}

	public function _m17372( serializable:Serializable,  buff:T1223):Void
	{
		var _o8526:RemovePlayerStorableStatus = (cast serializable);
		T1225._m17571(_o8526.getValue(), buff);
	}

	public function _m17373( serializable:Serializable,  buff:T1223):Void
	{
		var _u8529:GetPlayerStorablesStatus = (cast serializable);
		T1225._m17571(_u8529.getValue(), buff);
	}

	public function _m17374( serializable:Serializable,  buff:T1223):Void
	{
		var _a8532:PauseSessionMonitoringStatus = (cast serializable);
		T1225._m17571(_a8532.getValue(), buff);
	}

	public function _m17375( serializable:Serializable,  buff:T1223):Void
	{
		var _c8535:ResumeSessionMonitoringStatus = (cast serializable);
		T1225._m17571(_c8535.getValue(), buff);
	}

	public function _m17376( serializable:Serializable,  buff:T1223):Void
	{
		var _m8538:PublishFriendThirdPartyMessageStatus = (cast serializable);
		T1225._m17571(_m8538.getValue(), buff);
	}

	public function _m17377( serializable:Serializable,  buff:T1223):Void
	{
		var _h1382:Int = buff._m17572();
		buff._m17573(2);
		var _h1383:Int = 0;
		var _m1384:Bool = false;
		var _n8544:Handshake = (cast serializable);
		if (_n8544.isMessageIdSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getMessageId(), (cast 0), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.isRequestIdSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getRequestId(), (cast 1), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.isVersionSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getVersion(), (cast 3), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.isReasonSet() == true) 
		{
			_m1384 = T1225._m17575(this, _n8544.getReason(), (cast 4), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.isdataPlayerIdSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getDataPlayerId(), (cast 5), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.issessionIdSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getSessionId(), (cast 6), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		if (_n8544.isplatformSet() == true) 
		{
			_m1384 = T1225._m17574(_n8544.getPlatform(), (cast 7), buff);
			if (_m1384) 
			{
				_h1383++;
			}
		}
		buff._m17576(_h1382, _h1383);
	}

	public function _m17378( serializable:Serializable,  buff:T1223):Void
	{
		var _h1386:Int = buff._m17572();
		buff._m17573(2);
		var _p1387:Int = 0;
		var _w1388:Bool = false;
		var _q8550:HandshakeResponse = (cast serializable);
		if (_q8550.isMessageIdSet() == true) 
		{
			_w1388 = T1225._m17574(_q8550.getMessageId(), (cast 0), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		if (_q8550.isRequestIdSet() == true) 
		{
			_w1388 = T1225._m17574(_q8550.getRequestId(), (cast 1), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		if (_q8550.isExecutionStatusSet() == true) 
		{
			_w1388 = T1225._m17575(this, _q8550.getExecutionStatus(), (cast 3), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		if (_q8550.isReasonSet() == true) 
		{
			_w1388 = T1225._m17575(this, _q8550.getReason(), (cast 4), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		if (_q8550.isdataPlayerIdSet() == true) 
		{
			_w1388 = T1225._m17574(_q8550.getDataPlayerId(), (cast 5), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		if (_q8550.issessionIdSet() == true) 
		{
			_w1388 = T1225._m17574(_q8550.getSessionId(), (cast 6), buff);
			if (_w1388) 
			{
				_p1387++;
			}
		}
		buff._m17576(_h1386, _p1387);
	}

	public function _m17379( serializable:Serializable,  buff:T1223):Void
	{
		var _o1390:Int = buff._m17572();
		buff._m17573(2);
		var _d1391:Int = 0;
		var _o1392:Bool = false;
		var _n8556:InvalidVersion = (cast serializable);
		if (_n8556.isMessageIdSet() == true) 
		{
			_o1392 = T1225._m17574(_n8556.getMessageId(), (cast 0), buff);
			if (_o1392) 
			{
				_d1391++;
			}
		}
		if (_n8556.isRequestIdSet() == true) 
		{
			_o1392 = T1225._m17574(_n8556.getRequestId(), (cast 1), buff);
			if (_o1392) 
			{
				_d1391++;
			}
		}
		buff._m17576(_o1390, _d1391);
	}

	public function _m17380( serializable:Serializable,  buff:T1223):Void
	{
		var _c1394:Int = buff._m17572();
		buff._m17573(2);
		var _b1395:Int = 0;
		var _p1396:Bool = false;
		var _t8562:NPlayer = (cast serializable);
		if (_t8562.isstoreIdSet() == true) 
		{
			_p1396 = T1225._m17574(_t8562.getStoreId(), (cast 0), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isIDSet() == true) 
		{
			_p1396 = T1225._m17574(_t8562.getID(), (cast 2), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isAccessTokenSet() == true) 
		{
			_p1396 = T1225._m17574(_t8562.getAccessToken(), (cast 5), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isNameSet() == true) 
		{
			_p1396 = T1225._m17574(_t8562.getName(), (cast 6), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isConnectedSet() == true) 
		{
			_p1396 = T1225._m17577(_t8562.isConnected(), (cast 7), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isLoginSourceSet() == true) 
		{
			_p1396 = T1225._m17575(this, _t8562.getLoginSource(), (cast 8), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		if (_t8562.isThirdPartyIdSet() == true) 
		{
			_p1396 = T1225._m17574(_t8562.getThirdPartyId(), (cast 9), buff);
			if (_p1396) 
			{
				_b1395++;
			}
		}
		buff._m17576(_c1394, _b1395);
	}

	public function _m17381( serializable:Serializable,  buff:T1223):Void
	{
		var _g1398:Int = buff._m17572();
		buff._m17573(2);
		var _v1399:Int = 0;
		var _u1400:Bool = false;
		var _r8568:GameStateChange = (cast serializable);
		if (_r8568.isMessageIdSet() == true) 
		{
			_u1400 = T1225._m17574(_r8568.getMessageId(), (cast 0), buff);
			if (_u1400) 
			{
				_v1399++;
			}
		}
		if (_r8568.isRequestIdSet() == true) 
		{
			_u1400 = T1225._m17574(_r8568.getRequestId(), (cast 1), buff);
			if (_u1400) 
			{
				_v1399++;
			}
		}
		if (_r8568.isGameIdSet() == true) 
		{
			_u1400 = T1225._m17574(_r8568.getGameId(), (cast 3), buff);
			if (_u1400) 
			{
				_v1399++;
			}
		}
		if (_r8568.isGameRunningStateSet() == true) 
		{
			_u1400 = T1225._m17575(this, _r8568.getGameRunningState(), (cast 4), buff);
			if (_u1400) 
			{
				_v1399++;
			}
		}
		buff._m17576(_g1398, _v1399);
	}

	public function _m17382( serializable:Serializable,  buff:T1223):Void
	{
		var _o1402:Int = buff._m17572();
		buff._m17573(2);
		var _q1403:Int = 0;
		var _u1404:Bool = false;
		var _x8574:NPlayerInvitation = (cast serializable);
		if (_x8574.isstoreIdSet() == true) 
		{
			_u1404 = T1225._m17574(_x8574.getStoreId(), (cast 0), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		if (_x8574.isEmitterSet() == true) 
		{
			_u1404 = T1225._m17575(this, _x8574.getEmitter(), (cast 2), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		if (_x8574.isReceiverIdSet() == true) 
		{
			_u1404 = T1225._m17574(_x8574.getReceiverId(), (cast 3), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		if (_x8574.isCustomMessageSet() == true) 
		{
			_u1404 = T1225._m17574(_x8574.getCustomMessage(), (cast 4), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		if (_x8574.isPlayerInvitationStatusSet() == true) 
		{
			_u1404 = T1225._m17575(this, _x8574.getPlayerInvitationStatus(), (cast 5), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		if (_x8574.isPlayerInvitationIdSet() == true) 
		{
			_u1404 = T1225._m17574(_x8574.getPlayerInvitationId(), (cast 6), buff);
			if (_u1404) 
			{
				_q1403++;
			}
		}
		buff._m17576(_o1402, _q1403);
	}

	public function _m17383( serializable:Serializable,  buff:T1223):Void
	{
		var _o1406:Int = buff._m17572();
		buff._m17573(2);
		var _b1407:Int = 0;
		var _x1408:Bool = false;
		var _y8580:NScore = (cast serializable);
		if (_y8580.isstoreIdSet() == true) 
		{
			_x1408 = T1225._m17574(_y8580.getStoreId(), (cast 0), buff);
			if (_x1408) 
			{
				_b1407++;
			}
		}
		if (_y8580.isValueSet() == true) 
		{
			_x1408 = T1225._m17578(_y8580.getValue(), (cast 2), buff);
			if (_x1408) 
			{
				_b1407++;
			}
		}
		buff._m17576(_o1406, _b1407);
	}

	public function _m17384( serializable:Serializable,  buff:T1223):Void
	{
		var _b1410:Int = buff._m17572();
		buff._m17573(2);
		var _b1411:Int = 0;
		var _c1412:Bool = false;
		var _g8586:NRoom = (cast serializable);
		if (_g8586.isstoreIdSet() == true) 
		{
			_c1412 = T1225._m17574(_g8586.getStoreId(), (cast 0), buff);
			if (_c1412) 
			{
				_b1411++;
			}
		}
		if (_g8586.isIdSet() == true) 
		{
			_c1412 = T1225._m17574(_g8586.getId(), (cast 2), buff);
			if (_c1412) 
			{
				_b1411++;
			}
		}
		if (_g8586.isNameSet() == true) 
		{
			_c1412 = T1225._m17574(_g8586.getName(), (cast 3), buff);
			if (_c1412) 
			{
				_b1411++;
			}
		}
		if (_g8586.isPlayersSet() == true) 
		{
			var _q8587:NList<NPlayer> = _g8586.getPlayers();
			if (_q8587 == null) 
			{
				_c1412 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _q8588:Int = buff._m17572();
				buff._m17573(4);
				var _d8589:Int = _q8587.size();
				buff._m17579((cast _d8589));
				for (_h1417 in 0 ... _d8589) 
				{
					var _x1418:NPlayer = _q8587.get(_h1417);
					if (_x1418 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _x1418, buff);
					}
				}
				buff._m17582(_q8588, buff._m17572() - _q8588);
				_c1412 = true;
			}
			if (_c1412) 
			{
				_b1411++;
			}
		}
		buff._m17576(_b1410, _b1411);
	}

	public function _m17385( serializable:Serializable,  buff:T1223):Void
	{
		var _p1419:Int = buff._m17572();
		buff._m17573(2);
		var _k1420:Int = 0;
		var _n1421:Bool = false;
		var _z8597:NGame = (cast serializable);
		if (_z8597.isstoreIdSet() == true) 
		{
			_n1421 = T1225._m17574(_z8597.getStoreId(), (cast 0), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isIdSet() == true) 
		{
			_n1421 = T1225._m17574(_z8597.getId(), (cast 2), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isNameSet() == true) 
		{
			_n1421 = T1225._m17574(_z8597.getName(), (cast 3), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isPlayersSet() == true) 
		{
			var _s8598:NList<NPlayer> = _z8597.getPlayers();
			if (_s8598 == null) 
			{
				_n1421 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _x8599:Int = buff._m17572();
				buff._m17573(4);
				var _t8600:Int = _s8598.size();
				buff._m17579((cast _t8600));
				for (_o1426 in 0 ... _t8600) 
				{
					var _e1427:NPlayer = _s8598.get(_o1426);
					if (_e1427 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _e1427, buff);
					}
				}
				buff._m17582(_x8599, buff._m17572() - _x8599);
				_n1421 = true;
			}
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isGameRunningStateSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getGameRunningState(), (cast 2502), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isGameCharacteristicsSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getGameCharacteristics(), (cast 2503), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isGameStateSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getGameState(), (cast 2504), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isMatchMakingConditionsSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getMatchMakingConditions(), (cast 2505), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isTurnBasedContextSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getTurnBasedContext(), (cast 2506), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isDisconnectedContextSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getDisconnectedContext(), (cast 2507), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		if (_z8597.isOwnerSet() == true) 
		{
			_n1421 = T1225._m17575(this, _z8597.getOwner(), (cast 2508), buff);
			if (_n1421) 
			{
				_k1420++;
			}
		}
		buff._m17576(_p1419, _k1420);
	}

	public function _m17386( serializable:Serializable,  buff:T1223):Void
	{
		var _z1428:Int = buff._m17572();
		buff._m17573(2);
		var _t1429:Int = 0;
		var _d1430:Bool = false;
		var _t8608:NGameCharacteristics = (cast serializable);
		if (_t8608.isstoreIdSet() == true) 
		{
			_d1430 = T1225._m17574(_t8608.getStoreId(), (cast 0), buff);
			if (_d1430) 
			{
				_t1429++;
			}
		}
		if (_t8608.isMinPlayerSet() == true) 
		{
			_d1430 = T1225._m17583(_t8608.getMinPlayer(), (cast 2), buff);
			if (_d1430) 
			{
				_t1429++;
			}
		}
		if (_t8608.isMaxPlayerSet() == true) 
		{
			_d1430 = T1225._m17583(_t8608.getMaxPlayer(), (cast 3), buff);
			if (_d1430) 
			{
				_t1429++;
			}
		}
		if (_t8608.isAutoStopSet() == true) 
		{
			_d1430 = T1225._m17577(_t8608.isAutoStop(), (cast 4), buff);
			if (_d1430) 
			{
				_t1429++;
			}
		}
		if (_t8608.isAutoStartSet() == true) 
		{
			_d1430 = T1225._m17577(_t8608.isAutoStart(), (cast 5), buff);
			if (_d1430) 
			{
				_t1429++;
			}
		}
		buff._m17576(_z1428, _t1429);
	}

	public function _m17387( serializable:Serializable,  buff:T1223):Void
	{
		var _a1432:Int = buff._m17572();
		buff._m17573(2);
		var _r1433:Int = 0;
		var _h1434:Bool = false;
		var _q8614:PlayerEnterGame = (cast serializable);
		if (_q8614.isMessageIdSet() == true) 
		{
			_h1434 = T1225._m17574(_q8614.getMessageId(), (cast 0), buff);
			if (_h1434) 
			{
				_r1433++;
			}
		}
		if (_q8614.isRequestIdSet() == true) 
		{
			_h1434 = T1225._m17574(_q8614.getRequestId(), (cast 1), buff);
			if (_h1434) 
			{
				_r1433++;
			}
		}
		if (_q8614.isGameIdSet() == true) 
		{
			_h1434 = T1225._m17574(_q8614.getGameId(), (cast 3), buff);
			if (_h1434) 
			{
				_r1433++;
			}
		}
		if (_q8614.isPlayerSet() == true) 
		{
			_h1434 = T1225._m17575(this, _q8614.getPlayer(), (cast 4), buff);
			if (_h1434) 
			{
				_r1433++;
			}
		}
		buff._m17576(_a1432, _r1433);
	}

	public function _m17388( serializable:Serializable,  buff:T1223):Void
	{
		var _j1436:Int = buff._m17572();
		buff._m17573(2);
		var _a1437:Int = 0;
		var _d1438:Bool = false;
		var _x8620:AdminPublicMessage = (cast serializable);
		if (_x8620.isMessageIdSet() == true) 
		{
			_d1438 = T1225._m17574(_x8620.getMessageId(), (cast 0), buff);
			if (_d1438) 
			{
				_a1437++;
			}
		}
		if (_x8620.isRequestIdSet() == true) 
		{
			_d1438 = T1225._m17574(_x8620.getRequestId(), (cast 1), buff);
			if (_d1438) 
			{
				_a1437++;
			}
		}
		if (_x8620.isPlayerIdSet() == true) 
		{
			_d1438 = T1225._m17574(_x8620.getPlayerId(), (cast 4), buff);
			if (_d1438) 
			{
				_a1437++;
			}
		}
		if (_x8620.isMessageSet() == true) 
		{
			_d1438 = T1225._m17574(_x8620.getMessage(), (cast 5), buff);
			if (_d1438) 
			{
				_a1437++;
			}
		}
		buff._m17576(_j1436, _a1437);
	}

	public function _m17389( serializable:Serializable,  buff:T1223):Void
	{
		var _v1440:Int = buff._m17572();
		buff._m17573(2);
		var _k1441:Int = 0;
		var _m1442:Bool = false;
		var _l8626:FriendshipNotification = (cast serializable);
		if (_l8626.isMessageIdSet() == true) 
		{
			_m1442 = T1225._m17574(_l8626.getMessageId(), (cast 0), buff);
			if (_m1442) 
			{
				_k1441++;
			}
		}
		if (_l8626.isRequestIdSet() == true) 
		{
			_m1442 = T1225._m17574(_l8626.getRequestId(), (cast 1), buff);
			if (_m1442) 
			{
				_k1441++;
			}
		}
		if (_l8626.isFriendSet() == true) 
		{
			_m1442 = T1225._m17575(this, _l8626.getFriend(), (cast 4), buff);
			if (_m1442) 
			{
				_k1441++;
			}
		}
		buff._m17576(_v1440, _k1441);
	}

	public function _m17390( serializable:Serializable,  buff:T1223):Void
	{
		var _h1444:Int = buff._m17572();
		buff._m17573(2);
		var _x1445:Int = 0;
		var _v1446:Bool = false;
		var _v8632:PlayerUnjoinGame = (cast serializable);
		if (_v8632.isMessageIdSet() == true) 
		{
			_v1446 = T1225._m17574(_v8632.getMessageId(), (cast 0), buff);
			if (_v1446) 
			{
				_x1445++;
			}
		}
		if (_v8632.isRequestIdSet() == true) 
		{
			_v1446 = T1225._m17574(_v8632.getRequestId(), (cast 1), buff);
			if (_v1446) 
			{
				_x1445++;
			}
		}
		if (_v8632.isGameIdSet() == true) 
		{
			_v1446 = T1225._m17574(_v8632.getGameId(), (cast 3), buff);
			if (_v1446) 
			{
				_x1445++;
			}
		}
		if (_v8632.isPlayerSet() == true) 
		{
			_v1446 = T1225._m17575(this, _v8632.getPlayer(), (cast 4), buff);
			if (_v1446) 
			{
				_x1445++;
			}
		}
		buff._m17576(_h1444, _x1445);
	}

	public function _m17391( serializable:Serializable,  buff:T1223):Void
	{
		var _j1448:Int = buff._m17572();
		buff._m17573(2);
		var _u1449:Int = 0;
		var _q1450:Bool = false;
		var _n8638:DnsRequest = (cast serializable);
		if (_n8638.isMessageIdSet() == true) 
		{
			_q1450 = T1225._m17574(_n8638.getMessageId(), (cast 0), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		if (_n8638.isRequestIdSet() == true) 
		{
			_q1450 = T1225._m17574(_n8638.getRequestId(), (cast 1), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		if (_n8638.isGameIdSet() == true) 
		{
			_q1450 = T1225._m17574(_n8638.getGameId(), (cast 3), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		if (_n8638.isGameVersionSet() == true) 
		{
			_q1450 = T1225._m17583(_n8638.getGameVersion(), (cast 4), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		if (_n8638.isGameDeployedVersionSet() == true) 
		{
			_q1450 = T1225._m17583(_n8638.getGameDeployedVersion(), (cast 5), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		if (_n8638.isPlatformSet() == true) 
		{
			_q1450 = T1225._m17574(_n8638.getPlatform(), (cast 6), buff);
			if (_q1450) 
			{
				_u1449++;
			}
		}
		buff._m17576(_j1448, _u1449);
	}

	public function _m17392( serializable:Serializable,  buff:T1223):Void
	{
		var _m1452:Int = buff._m17572();
		buff._m17573(2);
		var _t1453:Int = 0;
		var _w1454:Bool = false;
		var _w8644:DnsResponse = (cast serializable);
		if (_w8644.isMessageIdSet() == true) 
		{
			_w1454 = T1225._m17574(_w8644.getMessageId(), (cast 0), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		if (_w8644.isRequestIdSet() == true) 
		{
			_w1454 = T1225._m17574(_w8644.getRequestId(), (cast 1), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		if (_w8644.isIpAddressSet() == true) 
		{
			_w1454 = T1225._m17574(_w8644.getIpAddress(), (cast 3), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		if (_w8644.isTcpPortSet() == true) 
		{
			_w1454 = T1225._m17583(_w8644.getTcpPort(), (cast 4), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		if (_w8644.isDnsStatusSet() == true) 
		{
			_w1454 = T1225._m17575(this, _w8644.getDnsStatus(), (cast 5), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		if (_w8644.isStartDetailsSet() == true) 
		{
			_w1454 = T1225._m17575(this, _w8644.getStartDetails(), (cast 6), buff);
			if (_w1454) 
			{
				_t1453++;
			}
		}
		buff._m17576(_m1452, _t1453);
	}

	public function _m17393( serializable:Serializable,  buff:T1223):Void
	{
		var _i1456:Int = buff._m17572();
		buff._m17573(2);
		var _o1457:Int = 0;
		var _k1458:Bool = false;
		var _b8650:ConnectionLost = (cast serializable);
		if (_b8650.isMessageIdSet() == true) 
		{
			_k1458 = T1225._m17574(_b8650.getMessageId(), (cast 0), buff);
			if (_k1458) 
			{
				_o1457++;
			}
		}
		if (_b8650.isRequestIdSet() == true) 
		{
			_k1458 = T1225._m17574(_b8650.getRequestId(), (cast 1), buff);
			if (_k1458) 
			{
				_o1457++;
			}
		}
		buff._m17576(_i1456, _o1457);
	}

	public function _m17394( _w8281:Serializable,  _w8282:T1223):Void
	{
		var _s1460:Int = _w8282._m17572();
		_w8282._m17573(2);
		var _m1461:Int = 0;
		var _d1462:Bool = false;
		var _i8656:NWorldUpdate = (cast _w8281);
		if (_i8656.isstoreIdSet() == true) 
		{
			_d1462 = T1225._m17574(_i8656.getStoreId(), (cast 0), _w8282);
			if (_d1462) 
			{
				_m1461++;
			}
		}
		if (_i8656.isUpdateSet() == true) 
		{
			_d1462 = T1225._m17583(_i8656.getUpdate(), (cast 2), _w8282);
			if (_d1462) 
			{
				_m1461++;
			}
		}
		if (_i8656.isValuesSet() == true) 
		{
			var _v8657:NList<Message> = _i8656.getValues();
			if (_v8657 == null) 
			{
				_d1462 = false;
			} else 
			{
				_w8282._m17579((cast 3));
				_w8282._m17580(T1221._l17181);
				var _c8658:Int = _w8282._m17572();
				_w8282._m17573(4);
				var _s8659:Int = _v8657.size();
				_w8282._m17579((cast _s8659));
				for (_n1467 in 0 ... _s8659) 
				{
					var _k1468:Message = _v8657.get(_n1467);
					if (_k1468 == null) 
					{
						_w8282._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _k1468, _w8282);
					}
				}
				_w8282._m17582(_c8658, _w8282._m17572() - _c8658);
				_d1462 = true;
			}
			if (_d1462) 
			{
				_m1461++;
			}
		}
		_w8282._m17576(_s1460, _m1461);
	}

	public function _m17395( _a8290:Serializable,  _v8291:T1223):Void
	{
		var _i1469:Int = _v8291._m17572();
		_v8291._m17573(2);
		var _k1470:Int = 0;
		var _p1471:Bool = false;
		var _y8667:StopPlugConnectionRequest = (cast _a8290);
		if (_y8667.isMessageIdSet() == true) 
		{
			_p1471 = T1225._m17574(_y8667.getMessageId(), (cast 0), _v8291);
			if (_p1471) 
			{
				_k1470++;
			}
		}
		if (_y8667.isRequestIdSet() == true) 
		{
			_p1471 = T1225._m17574(_y8667.getRequestId(), (cast 1), _v8291);
			if (_p1471) 
			{
				_k1470++;
			}
		}
		_v8291._m17576(_i1469, _k1470);
	}

	public function _m17396( _n8296:Serializable,  _j8297:T1223):Void
	{
		var _j1473:Int = _j8297._m17572();
		_j8297._m17573(2);
		var _s1474:Int = 0;
		var _b1475:Bool = false;
		var _j8673:StopPlugConnectionResponse = (cast _n8296);
		if (_j8673.isMessageIdSet() == true) 
		{
			_b1475 = T1225._m17574(_j8673.getMessageId(), (cast 0), _j8297);
			if (_b1475) 
			{
				_s1474++;
			}
		}
		if (_j8673.isRequestIdSet() == true) 
		{
			_b1475 = T1225._m17574(_j8673.getRequestId(), (cast 1), _j8297);
			if (_b1475) 
			{
				_s1474++;
			}
		}
		_j8297._m17576(_j1473, _s1474);
	}

	public function _m17397( _v8317:Serializable,  _e8318:T1223):Void
	{
		var _g1477:Int = _e8318._m17572();
		_e8318._m17573(2);
		var _f1478:Int = 0;
		var _d1479:Bool = false;
		var _u8679:NChallenge = (cast _v8317);
		if (_u8679.isstoreIdSet() == true) 
		{
			_d1479 = T1225._m17574(_u8679.getStoreId(), (cast 0), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		if (_u8679.isIdSet() == true) 
		{
			_d1479 = T1225._m17574(_u8679.getId(), (cast 2), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		if (_u8679.isRequesterSet() == true) 
		{
			_d1479 = T1225._m17575(this, _u8679.getRequester(), (cast 3), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		if (_u8679.isTargetSet() == true) 
		{
			_d1479 = T1225._m17575(this, _u8679.getTarget(), (cast 4), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		if (_u8679.isStatusSet() == true) 
		{
			_d1479 = T1225._m17575(this, _u8679.getStatus(), (cast 5), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		if (_u8679.isDateSet() == true) 
		{
			_d1479 = T1225._m17584(_u8679.getDate(), (cast 6), _e8318);
			if (_d1479) 
			{
				_f1478++;
			}
		}
		_e8318._m17576(_g1477, _f1478);
	}

	public function _m17398( _q8323:Serializable,  _h8324:T1223):Void
	{
		var _o1481:Int = _h8324._m17572();
		_h8324._m17573(2);
		var _t1482:Int = 0;
		var _i1483:Bool = false;
		var _h8685:ConnectionInterrupted = (cast _q8323);
		if (_h8685.isMessageIdSet() == true) 
		{
			_i1483 = T1225._m17574(_h8685.getMessageId(), (cast 0), _h8324);
			if (_i1483) 
			{
				_t1482++;
			}
		}
		if (_h8685.isRequestIdSet() == true) 
		{
			_i1483 = T1225._m17574(_h8685.getRequestId(), (cast 1), _h8324);
			if (_i1483) 
			{
				_t1482++;
			}
		}
		_h8324._m17576(_o1481, _t1482);
	}

	public function _m17399( _e8332:Serializable,  _n8333:T1223):Void
	{
		var _v1485:Int = _n8333._m17572();
		_n8333._m17573(2);
		var _q1486:Int = 0;
		var _t1487:Bool = false;
		var _v8691:ConnectionResumed = (cast _e8332);
		if (_v8691.isMessageIdSet() == true) 
		{
			_t1487 = T1225._m17574(_v8691.getMessageId(), (cast 0), _n8333);
			if (_t1487) 
			{
				_q1486++;
			}
		}
		if (_v8691.isRequestIdSet() == true) 
		{
			_t1487 = T1225._m17574(_v8691.getRequestId(), (cast 1), _n8333);
			if (_t1487) 
			{
				_q1486++;
			}
		}
		_n8333._m17576(_v1485, _q1486);
	}

	public function _m17400( _m8338:Serializable,  _l8339:T1223):Void
	{
		var _e1489:Int = _l8339._m17572();
		_l8339._m17573(2);
		var _w1490:Int = 0;
		var _s1491:Bool = false;
		var _s8697:ConnectionStop = (cast _m8338);
		if (_s8697.isMessageIdSet() == true) 
		{
			_s1491 = T1225._m17574(_s8697.getMessageId(), (cast 0), _l8339);
			if (_s1491) 
			{
				_w1490++;
			}
		}
		if (_s8697.isRequestIdSet() == true) 
		{
			_s1491 = T1225._m17574(_s8697.getRequestId(), (cast 1), _l8339);
			if (_s1491) 
			{
				_w1490++;
			}
		}
		_l8339._m17576(_e1489, _w1490);
	}

	public function _m17401( _f8353:Serializable,  _j8354:T1223):Void
	{
		var _g1493:Int = _j8354._m17572();
		_j8354._m17573(2);
		var _v1494:Int = 0;
		var _o1495:Bool = false;
		var _c8703:NuggetaQuery = (cast _f8353);
		if (_c8703.isdomainSet() == true) 
		{
			_o1495 = T1225._m17574(_c8703.getDomain(), (cast 0), _j8354);
			if (_o1495) 
			{
				_v1494++;
			}
		}
		if (_c8703.isstartSet() == true) 
		{
			_o1495 = T1225._m17583(_c8703.getStart(), (cast 1), _j8354);
			if (_o1495) 
			{
				_v1494++;
			}
		}
		if (_c8703.islimitSet() == true) 
		{
			_o1495 = T1225._m17583(_c8703.getLimit(), (cast 2), _j8354);
			if (_o1495) 
			{
				_v1494++;
			}
		}
		if (_c8703.isquerySet() == true) 
		{
			_o1495 = T1225._m17574(_c8703.getQuery(), (cast 3), _j8354);
			if (_o1495) 
			{
				_v1494++;
			}
		}
		_j8354._m17576(_g1493, _v1494);
	}

	public function _m17402( _e8362:Serializable,  _t8363:T1223):Void
	{
		var _x1497:Int = _t8363._m17572();
		_t8363._m17573(2);
		var _r1498:Int = 0;
		var _t1499:Bool = false;
		var _x8709:FriendConnectedNotification = (cast _e8362);
		if (_x8709.isMessageIdSet() == true) 
		{
			_t1499 = T1225._m17574(_x8709.getMessageId(), (cast 0), _t8363);
			if (_t1499) 
			{
				_r1498++;
			}
		}
		if (_x8709.isRequestIdSet() == true) 
		{
			_t1499 = T1225._m17574(_x8709.getRequestId(), (cast 1), _t8363);
			if (_t1499) 
			{
				_r1498++;
			}
		}
		if (_x8709.isfriendSet() == true) 
		{
			_t1499 = T1225._m17575(this, _x8709.getFriend(), (cast 3), _t8363);
			if (_t1499) 
			{
				_r1498++;
			}
		}
		_t8363._m17576(_x1497, _r1498);
	}

	public function _m17403( _n8374:Serializable,  _h8375:T1223):Void
	{
		var _r1501:Int = _h8375._m17572();
		_h8375._m17573(2);
		var _d1502:Int = 0;
		var _w1503:Bool = false;
		var _e8715:FriendDisconnectedNotification = (cast _n8374);
		if (_e8715.isMessageIdSet() == true) 
		{
			_w1503 = T1225._m17574(_e8715.getMessageId(), (cast 0), _h8375);
			if (_w1503) 
			{
				_d1502++;
			}
		}
		if (_e8715.isRequestIdSet() == true) 
		{
			_w1503 = T1225._m17574(_e8715.getRequestId(), (cast 1), _h8375);
			if (_w1503) 
			{
				_d1502++;
			}
		}
		if (_e8715.isfriendSet() == true) 
		{
			_w1503 = T1225._m17575(this, _e8715.getFriend(), (cast 3), _h8375);
			if (_w1503) 
			{
				_d1502++;
			}
		}
		_h8375._m17576(_r1501, _d1502);
	}

	public function _m17404( _j8380:Serializable,  _p8381:T1223):Void
	{
		var _b1505:Int = _p8381._m17572();
		_p8381._m17573(2);
		var _k1506:Int = 0;
		var _m1507:Bool = false;
		var _l8721:NPlayerWallet = (cast _j8380);
		if (_l8721.isstoreIdSet() == true) 
		{
			_m1507 = T1225._m17574(_l8721.getStoreId(), (cast 0), _p8381);
			if (_m1507) 
			{
				_k1506++;
			}
		}
		if (_l8721.isNbCoinsSet() == true) 
		{
			_m1507 = T1225._m17583(_l8721.getNbCoins(), (cast 3), _p8381);
			if (_m1507) 
			{
				_k1506++;
			}
		}
		_p8381._m17576(_b1505, _k1506);
	}

	public function _m17405( _w8401:Serializable,  _e8402:T1223):Void
	{
		var _j1509:Int = _e8402._m17572();
		_e8402._m17573(2);
		var _f1510:Int = 0;
		var _r1511:Bool = false;
		var _l8727:NItem = (cast _w8401);
		if (_l8727.isstoreIdSet() == true) 
		{
			_r1511 = T1225._m17574(_l8727.getStoreId(), (cast 0), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		if (_l8727.isIdSet() == true) 
		{
			_r1511 = T1225._m17574(_l8727.getId(), (cast 2), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		if (_l8727.isNameSet() == true) 
		{
			_r1511 = T1225._m17574(_l8727.getName(), (cast 3), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		if (_l8727.isPriceSet() == true) 
		{
			_r1511 = T1225._m17583(_l8727.getPrice(), (cast 4), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		if (_l8727.isBoughtSet() == true) 
		{
			_r1511 = T1225._m17577(_l8727.isBought(), (cast 5), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		if (_l8727.isCountSet() == true) 
		{
			_r1511 = T1225._m17583(_l8727.getCount(), (cast 6), _e8402);
			if (_r1511) 
			{
				_f1510++;
			}
		}
		_e8402._m17576(_j1509, _f1510);
	}

	public function _m17406( _s8413:Serializable,  _s8414:T1223):Void
	{
		var _u1513:Int = _s8414._m17572();
		_s8414._m17573(2);
		var _l1514:Int = 0;
		var _z1515:Bool = false;
		var _k8733:NAchievement = (cast _s8413);
		if (_k8733.isstoreIdSet() == true) 
		{
			_z1515 = T1225._m17574(_k8733.getStoreId(), (cast 0), _s8414);
			if (_z1515) 
			{
				_l1514++;
			}
		}
		if (_k8733.isIdSet() == true) 
		{
			_z1515 = T1225._m17574(_k8733.getId(), (cast 2), _s8414);
			if (_z1515) 
			{
				_l1514++;
			}
		}
		if (_k8733.isNameSet() == true) 
		{
			_z1515 = T1225._m17574(_k8733.getName(), (cast 3), _s8414);
			if (_z1515) 
			{
				_l1514++;
			}
		}
		if (_k8733.isAchievedSet() == true) 
		{
			_z1515 = T1225._m17577(_k8733.isAchieved(), (cast 4), _s8414);
			if (_z1515) 
			{
				_l1514++;
			}
		}
		_s8414._m17576(_u1513, _l1514);
	}

	public function _m17407( _l8428:Serializable,  _m8429:T1223):Void
	{
		var _r1517:Int = _m8429._m17572();
		_m8429._m17573(2);
		var _v1518:Int = 0;
		var _j1519:Bool = false;
		var _f8739:NGameState = (cast _l8428);
		if (_f8739.isstoreIdSet() == true) 
		{
			_j1519 = T1225._m17574(_f8739.getStoreId(), (cast 0), _m8429);
			if (_j1519) 
			{
				_v1518++;
			}
		}
		if (_f8739.isUpdatesSet() == true) 
		{
			var _j8740:NList<NWorldUpdate> = _f8739.getUpdates();
			if (_j8740 == null) 
			{
				_j1519 = false;
			} else 
			{
				_m8429._m17579((cast 2));
				_m8429._m17580(T1221._l17181);
				var _i8741:Int = _m8429._m17572();
				_m8429._m17573(4);
				var _t8742:Int = _j8740.size();
				_m8429._m17579((cast _t8742));
				for (_j1524 in 0 ... _t8742) 
				{
					var _i1525:NWorldUpdate = _j8740.get(_j1524);
					if (_i1525 == null) 
					{
						_m8429._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _i1525, _m8429);
					}
				}
				_m8429._m17582(_i8741, _m8429._m17572() - _i8741);
				_j1519 = true;
			}
			if (_j1519) 
			{
				_v1518++;
			}
		}
		_m8429._m17576(_r1517, _v1518);
	}

	public function _m17408( _u8443:Serializable,  _u8444:T1223):Void
	{
		var _p1526:Int = _u8444._m17572();
		_u8444._m17573(2);
		var _w1527:Int = 0;
		var _j1528:Bool = false;
		var _e8750:NuggetaException = (cast _u8443);
		if (_e8750.isMessageIdSet() == true) 
		{
			_j1528 = T1225._m17574(_e8750.getMessageId(), (cast 0), _u8444);
			if (_j1528) 
			{
				_w1527++;
			}
		}
		if (_e8750.isRequestIdSet() == true) 
		{
			_j1528 = T1225._m17574(_e8750.getRequestId(), (cast 1), _u8444);
			if (_j1528) 
			{
				_w1527++;
			}
		}
		if (_e8750.isErrorCodeSet() == true) 
		{
			_j1528 = T1225._m17575(this, _e8750.getErrorCode(), (cast 3), _u8444);
			if (_j1528) 
			{
				_w1527++;
			}
		}
		if (_e8750.isReasonSet() == true) 
		{
			_j1528 = T1225._m17574(_e8750.getReason(), (cast 4), _u8444);
			if (_j1528) 
			{
				_w1527++;
			}
		}
		_u8444._m17576(_p1526, _w1527);
	}

	public function _m17409( _y8455:Serializable,  _y8456:T1223):Void
	{
		var _x1530:Int = _y8456._m17572();
		_y8456._m17573(2);
		var _x1531:Int = 0;
		var _j1532:Bool = false;
		var _f8756:NCoinPackage = (cast _y8455);
		if (_f8756.isstoreIdSet() == true) 
		{
			_j1532 = T1225._m17574(_f8756.getStoreId(), (cast 0), _y8456);
			if (_j1532) 
			{
				_x1531++;
			}
		}
		if (_f8756.isCoinPackageIdSet() == true) 
		{
			_j1532 = T1225._m17574(_f8756.getCoinPackageId(), (cast 2), _y8456);
			if (_j1532) 
			{
				_x1531++;
			}
		}
		if (_f8756.isVirtualValueSet() == true) 
		{
			_j1532 = T1225._m17585(_f8756.getVirtualValue(), (cast 3), _y8456);
			if (_j1532) 
			{
				_x1531++;
			}
		}
		if (_f8756.isProductIdSet() == true) 
		{
			_j1532 = T1225._m17574(_f8756.getProductId(), (cast 4), _y8456);
			if (_j1532) 
			{
				_x1531++;
			}
		}
		_y8456._m17576(_x1530, _x1531);
	}

	public function _m17410( _h8467:Serializable,  _x8468:T1223):Void
	{
		var _f1534:Int = _x8468._m17572();
		_x8468._m17573(2);
		var _j1535:Int = 0;
		var _p1536:Bool = false;
		var _x8762:BuyProductUrl = (cast _h8467);
		if (_x8762.isMessageIdSet() == true) 
		{
			_p1536 = T1225._m17574(_x8762.getMessageId(), (cast 0), _x8468);
			if (_p1536) 
			{
				_j1535++;
			}
		}
		if (_x8762.isRequestIdSet() == true) 
		{
			_p1536 = T1225._m17574(_x8762.getRequestId(), (cast 1), _x8468);
			if (_p1536) 
			{
				_j1535++;
			}
		}
		if (_x8762.isurlSet() == true) 
		{
			_p1536 = T1225._m17574(_x8762.getUrl(), (cast 3), _x8468);
			if (_p1536) 
			{
				_j1535++;
			}
		}
		_x8468._m17576(_f1534, _j1535);
	}

	public function _m17411( _z8473:Serializable,  _b8474:T1223):Void
	{
		var _r1538:Int = _b8474._m17572();
		_b8474._m17573(2);
		var _k1539:Int = 0;
		var _n1540:Bool = false;
		var _x8768:BuyProductNotification = (cast _z8473);
		if (_x8768.isMessageIdSet() == true) 
		{
			_n1540 = T1225._m17574(_x8768.getMessageId(), (cast 0), _b8474);
			if (_n1540) 
			{
				_k1539++;
			}
		}
		if (_x8768.isRequestIdSet() == true) 
		{
			_n1540 = T1225._m17574(_x8768.getRequestId(), (cast 1), _b8474);
			if (_n1540) 
			{
				_k1539++;
			}
		}
		_b8474._m17576(_r1538, _k1539);
	}

	public function _m17412( _m8482:Serializable,  _h8483:T1223):Void
	{
		var _g1542:Int = _h8483._m17572();
		_h8483._m17573(2);
		var _x1543:Int = 0;
		var _d1544:Bool = false;
		var _h8774:NMatchMakingConditions = (cast _m8482);
		if (_h8774.isstoreIdSet() == true) 
		{
			_d1544 = T1225._m17574(_h8774.getStoreId(), (cast 0), _h8483);
			if (_d1544) 
			{
				_x1543++;
			}
		}
		if (_h8774.isMatchMakingTypeSet() == true) 
		{
			_d1544 = T1225._m17575(this, _h8774.getMatchMakingType(), (cast 2), _h8483);
			if (_d1544) 
			{
				_x1543++;
			}
		}
		_h8483._m17576(_g1542, _x1543);
	}

	public function _m17413( _b8494:Serializable,  _b8495:T1223):Void
	{
		var _w1546:Int = _b8495._m17572();
		_b8495._m17573(2);
		var _m1547:Int = 0;
		var _x1548:Bool = false;
		var _v8780:OpenConnection = (cast _b8494);
		if (_v8780.isMessageIdSet() == true) 
		{
			_x1548 = T1225._m17574(_v8780.getMessageId(), (cast 0), _b8495);
			if (_x1548) 
			{
				_m1547++;
			}
		}
		if (_v8780.isRequestIdSet() == true) 
		{
			_x1548 = T1225._m17574(_v8780.getRequestId(), (cast 1), _b8495);
			if (_x1548) 
			{
				_m1547++;
			}
		}
		if (_v8780.isIpAddressSet() == true) 
		{
			_x1548 = T1225._m17574(_v8780.getIpAddress(), (cast 3), _b8495);
			if (_x1548) 
			{
				_m1547++;
			}
		}
		if (_v8780.isTcpPortSet() == true) 
		{
			_x1548 = T1225._m17583(_v8780.getTcpPort(), (cast 4), _b8495);
			if (_x1548) 
			{
				_m1547++;
			}
		}
		_b8495._m17576(_w1546, _m1547);
	}

	public function _m17414( _r8509:Serializable,  _e8510:T1223):Void
	{
		var _v1550:Int = _e8510._m17572();
		_e8510._m17573(2);
		var _g1551:Int = 0;
		var _o1552:Bool = false;
		var _l8786:ChallengeAccepted = (cast _r8509);
		if (_l8786.isMessageIdSet() == true) 
		{
			_o1552 = T1225._m17574(_l8786.getMessageId(), (cast 0), _e8510);
			if (_o1552) 
			{
				_g1551++;
			}
		}
		if (_l8786.isRequestIdSet() == true) 
		{
			_o1552 = T1225._m17574(_l8786.getRequestId(), (cast 1), _e8510);
			if (_o1552) 
			{
				_g1551++;
			}
		}
		if (_l8786.isChallengeIdSet() == true) 
		{
			_o1552 = T1225._m17574(_l8786.getChallengeId(), (cast 3), _e8510);
			if (_o1552) 
			{
				_g1551++;
			}
		}
		if (_l8786.isgameIdSet() == true) 
		{
			_o1552 = T1225._m17574(_l8786.getGameId(), (cast 4), _e8510);
			if (_o1552) 
			{
				_g1551++;
			}
		}
		_e8510._m17576(_v1550, _g1551);
	}

	public function _m17415( _b8524:Serializable,  _i8525:T1223):Void
	{
		var _u1554:Int = _i8525._m17572();
		_i8525._m17573(2);
		var _i1555:Int = 0;
		var _f1556:Bool = false;
		var _c8792:ChallengeRefused = (cast _b8524);
		if (_c8792.isMessageIdSet() == true) 
		{
			_f1556 = T1225._m17574(_c8792.getMessageId(), (cast 0), _i8525);
			if (_f1556) 
			{
				_i1555++;
			}
		}
		if (_c8792.isstoreIdSet() == true) 
		{
			_f1556 = T1225._m17574(_c8792.getStoreId(), (cast 1), _i8525);
			if (_f1556) 
			{
				_i1555++;
			}
		}
		if (_c8792.isRequestIdSet() == true) 
		{
			_f1556 = T1225._m17574(_c8792.getRequestId(), (cast 6), _i8525);
			if (_f1556) 
			{
				_i1555++;
			}
		}
		if (_c8792.isChallengeIdSet() == true) 
		{
			_f1556 = T1225._m17574(_c8792.getChallengeId(), (cast 9), _i8525);
			if (_f1556) 
			{
				_i1555++;
			}
		}
		if (_c8792.isReasonSet() == true) 
		{
			_f1556 = T1225._m17574(_c8792.getReason(), (cast 10), _i8525);
			if (_f1556) 
			{
				_i1555++;
			}
		}
		_i8525._m17576(_u1554, _i1555);
	}

	public function _m17416( _y8539:Serializable,  _y8540:T1223):Void
	{
		var _e8541:Int = _y8540._m17572();
		_y8540._m17573(2);
		var _z8542:Int = 0;
		var _j8543:Bool = false;
		var _f8798:PlayerMessage = (cast _y8539);
		if (_f8798.isMessageIdSet() == true) 
		{
			_j8543 = T1225._m17574(_f8798.getMessageId(), (cast 0), _y8540);
			if (_j8543) 
			{
				_z8542++;
			}
		}
		if (_f8798.isstoreIdSet() == true) 
		{
			_j8543 = T1225._m17574(_f8798.getStoreId(), (cast 1), _y8540);
			if (_j8543) 
			{
				_z8542++;
			}
		}
		if (_f8798.isRequestIdSet() == true) 
		{
			_j8543 = T1225._m17574(_f8798.getRequestId(), (cast 6), _y8540);
			if (_j8543) 
			{
				_z8542++;
			}
		}
		if (_f8798.isplayerIdSet() == true) 
		{
			_j8543 = T1225._m17574(_f8798.getPlayerId(), (cast 9), _y8540);
			if (_j8543) 
			{
				_z8542++;
			}
		}
		if (_f8798.ismessageSet() == true) 
		{
			_j8543 = T1225._m17575(this, _f8798.getMessage(), (cast 10), _y8540);
			if (_j8543) 
			{
				_z8542++;
			}
		}
		_y8540._m17576(_e8541, _z8542);
	}

	public function _m17417( serializable:Serializable,  buff:T1223):Void
	{
		var _o1562:Int = buff._m17572();
		buff._m17573(2);
		var _x1563:Int = 0;
		var _d1564:Bool = false;
		var _j8804:NRawMessage = (cast serializable);
		if (_j8804.isMessageIdSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getMessageId(), (cast 0), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		if (_j8804.isSenderIdSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getSenderId(), (cast 1), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		if (_j8804.isstoreIdSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getStoreId(), (cast 2), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		if (_j8804.isRequestIdSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getRequestId(), (cast 7), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		if (_j8804.isgameIdSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getGameId(), (cast 10), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		if (_j8804.iscontentSet() == true) 
		{
			_d1564 = T1225._m17574(_j8804.getContent(), (cast 11), buff);
			if (_d1564) 
			{
				_x1563++;
			}
		}
		buff._m17576(_o1562, _x1563);
	}

	public function _m17418( serializable:Serializable,  buff:T1223):Void
	{
		var _h1566:Int = buff._m17572();
		buff._m17573(2);
		var _u1567:Int = 0;
		var _k1568:Bool = false;
		var _x8810:SessionExpired = (cast serializable);
		if (_x8810.isMessageIdSet() == true) 
		{
			_k1568 = T1225._m17574(_x8810.getMessageId(), (cast 0), buff);
			if (_k1568) 
			{
				_u1567++;
			}
		}
		if (_x8810.isRequestIdSet() == true) 
		{
			_k1568 = T1225._m17574(_x8810.getRequestId(), (cast 1), buff);
			if (_k1568) 
			{
				_u1567++;
			}
		}
		if (_x8810.issessionIdSet() == true) 
		{
			_k1568 = T1225._m17574(_x8810.getSessionId(), (cast 3), buff);
			if (_k1568) 
			{
				_u1567++;
			}
		}
		buff._m17576(_h1566, _u1567);
	}

	public function _m17419( serializable:Serializable,  buff:T1223):Void
	{
		var _b1570:Int = buff._m17572();
		buff._m17573(2);
		var _n1571:Int = 0;
		var _t1572:Bool = false;
		var _x8816:GameMessageError = (cast serializable);
		if (_x8816.isMessageIdSet() == true) 
		{
			_t1572 = T1225._m17574(_x8816.getMessageId(), (cast 0), buff);
			if (_t1572) 
			{
				_n1571++;
			}
		}
		if (_x8816.isRequestIdSet() == true) 
		{
			_t1572 = T1225._m17574(_x8816.getRequestId(), (cast 1), buff);
			if (_t1572) 
			{
				_n1571++;
			}
		}
		if (_x8816.isReasonSet() == true) 
		{
			_t1572 = T1225._m17574(_x8816.getReason(), (cast 3), buff);
			if (_t1572) 
			{
				_n1571++;
			}
		}
		buff._m17576(_b1570, _n1571);
	}

	public function _m17420( _d8545:Serializable,  _s8546:T1223):Void
	{
		var _h8547:Int = _s8546._m17572();
		_s8546._m17573(2);
		var _y8548:Int = 0;
		var _j8549:Bool = false;
		var _o8822:AdDisplayedNotification = (cast _d8545);
		if (_o8822.isMessageIdSet() == true) 
		{
			_j8549 = T1225._m17574(_o8822.getMessageId(), (cast 0), _s8546);
			if (_j8549) 
			{
				_y8548++;
			}
		}
		if (_o8822.isRequestIdSet() == true) 
		{
			_j8549 = T1225._m17574(_o8822.getRequestId(), (cast 1), _s8546);
			if (_j8549) 
			{
				_y8548++;
			}
		}
		_s8546._m17576(_h8547, _y8548);
	}

	public function _m17421( serializable:Serializable,  buff:T1223):Void
	{
		var _k1578:Int = buff._m17572();
		buff._m17573(2);
		var _h1579:Int = 0;
		var _b1580:Bool = false;
		var _o8828:NPlayerProfile = (cast serializable);
		if (_o8828.isstoreIdSet() == true) 
		{
			_b1580 = T1225._m17574(_o8828.getStoreId(), (cast 0), buff);
			if (_b1580) 
			{
				_h1579++;
			}
		}
		if (_o8828.isAvatarSet() == true) 
		{
			_b1580 = T1225._m17574(_o8828.getAvatar(), (cast 2), buff);
			if (_b1580) 
			{
				_h1579++;
			}
		}
		if (_o8828.isPlayerIdSet() == true) 
		{
			_b1580 = T1225._m17574(_o8828.getPlayerId(), (cast 3), buff);
			if (_b1580) 
			{
				_h1579++;
			}
		}
		if (_o8828.isEmailSet() == true) 
		{
			_b1580 = T1225._m17574(_o8828.getEmail(), (cast 4), buff);
			if (_b1580) 
			{
				_h1579++;
			}
		}
		if (_o8828.isCountrySet() == true) 
		{
			_b1580 = T1225._m17574(_o8828.getCountry(), (cast 5), buff);
			if (_b1580) 
			{
				_h1579++;
			}
		}
		if (_o8828.isFriendsSet() == true) 
		{
			var _t8829:NList<NPlayer> = _o8828.getFriends();
			if (_t8829 == null) 
			{
				_b1580 = false;
			} else 
			{
				buff._m17579((cast 7));
				buff._m17580(T1221._l17181);
				var _q8830:Int = buff._m17572();
				buff._m17573(4);
				var _m8831:Int = _t8829.size();
				buff._m17579((cast _m8831));
				for (_e1585 in 0 ... _m8831) 
				{
					var _r1586:NPlayer = _t8829.get(_e1585);
					if (_r1586 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _r1586, buff);
					}
				}
				buff._m17582(_q8830, buff._m17572() - _q8830);
				_b1580 = true;
			}
			if (_b1580) 
			{
				_h1579++;
			}
		}
		buff._m17576(_k1578, _h1579);
	}

	public function _m17422( _e8551:Serializable,  _v8552:T1223):Void
	{
		var _q8553:Int = _v8552._m17572();
		_v8552._m17573(2);
		var _l8554:Int = 0;
		var _f8555:Bool = false;
		var _w8839:PlayerInvitationNotification = (cast _e8551);
		if (_w8839.isMessageIdSet() == true) 
		{
			_f8555 = T1225._m17574(_w8839.getMessageId(), (cast 0), _v8552);
			if (_f8555) 
			{
				_l8554++;
			}
		}
		if (_w8839.isRequestIdSet() == true) 
		{
			_f8555 = T1225._m17574(_w8839.getRequestId(), (cast 1), _v8552);
			if (_f8555) 
			{
				_l8554++;
			}
		}
		if (_w8839.isPlayerInvitationSet() == true) 
		{
			_f8555 = T1225._m17575(this, _w8839.getPlayerInvitation(), (cast 3), _v8552);
			if (_f8555) 
			{
				_l8554++;
			}
		}
		_v8552._m17576(_q8553, _l8554);
	}

	public function _m17423( _b8557:Serializable,  _p8558:T1223):Void
	{
		var _u1591:Int = _p8558._m17572();
		_p8558._m17573(2);
		var _h1592:Int = 0;
		var _l1593:Bool = false;
		var _b8845:FriendChallengeNotification = (cast _b8557);
		if (_b8845.isMessageIdSet() == true) 
		{
			_l1593 = T1225._m17574(_b8845.getMessageId(), (cast 0), _p8558);
			if (_l1593) 
			{
				_h1592++;
			}
		}
		if (_b8845.isRequestIdSet() == true) 
		{
			_l1593 = T1225._m17574(_b8845.getRequestId(), (cast 1), _p8558);
			if (_l1593) 
			{
				_h1592++;
			}
		}
		if (_b8845.isChallengeSet() == true) 
		{
			_l1593 = T1225._m17575(this, _b8845.getChallenge(), (cast 3), _p8558);
			if (_l1593) 
			{
				_h1592++;
			}
		}
		_p8558._m17576(_u1591, _h1592);
	}

	public function _m17424( serializable:Serializable,  buff:T1223):Void
	{
		var _f8559:Int = buff._m17572();
		buff._m17573(2);
		var _h8560:Int = 0;
		var _q8561:Bool = false;
		var _c8851:GameChatNotification = (cast serializable);
		if (_c8851.isMessageIdSet() == true) 
		{
			_q8561 = T1225._m17574(_c8851.getMessageId(), (cast 0), buff);
			if (_q8561) 
			{
				_h8560++;
			}
		}
		if (_c8851.isRequestIdSet() == true) 
		{
			_q8561 = T1225._m17574(_c8851.getRequestId(), (cast 1), buff);
			if (_q8561) 
			{
				_h8560++;
			}
		}
		if (_c8851.isplayerSet() == true) 
		{
			_q8561 = T1225._m17575(this, _c8851.getPlayer(), (cast 3), buff);
			if (_q8561) 
			{
				_h8560++;
			}
		}
		if (_c8851.ismessageSet() == true) 
		{
			_q8561 = T1225._m17574(_c8851.getMessage(), (cast 4), buff);
			if (_q8561) 
			{
				_h8560++;
			}
		}
		buff._m17576(_f8559, _h8560);
	}

	public function _m17425( serializable:Serializable,  buff:T1223):Void
	{
		var _s1599:Int = buff._m17572();
		buff._m17573(2);
		var _v1600:Int = 0;
		var _z1601:Bool = false;
		var _b8857:PublicServer = (cast serializable);
		if (_b8857.isstoreIdSet() == true) 
		{
			_z1601 = T1225._m17574(_b8857.getStoreId(), (cast 0), buff);
			if (_z1601) 
			{
				_v1600++;
			}
		}
		if (_b8857.isIdSet() == true) 
		{
			_z1601 = T1225._m17574(_b8857.getId(), (cast 3), buff);
			if (_z1601) 
			{
				_v1600++;
			}
		}
		if (_b8857.isLocationSet() == true) 
		{
			_z1601 = T1225._m17574(_b8857.getLocation(), (cast 4), buff);
			if (_z1601) 
			{
				_v1600++;
			}
		}
		if (_b8857.isPingSet() == true) 
		{
			_z1601 = T1225._m17585(_b8857.getPing(), (cast 5), buff);
			if (_z1601) 
			{
				_v1600++;
			}
		}
		buff._m17576(_s1599, _v1600);
	}

	public function _m17426( serializable:Serializable,  buff:T1223):Void
	{
		var _m1603:Int = buff._m17572();
		buff._m17573(2);
		var _p1604:Int = 0;
		var _j1605:Bool = false;
		var _p8863:SwitchToServerInformation = (cast serializable);
		if (_p8863.isMessageIdSet() == true) 
		{
			_j1605 = T1225._m17574(_p8863.getMessageId(), (cast 0), buff);
			if (_j1605) 
			{
				_p1604++;
			}
		}
		if (_p8863.isRequestIdSet() == true) 
		{
			_j1605 = T1225._m17574(_p8863.getRequestId(), (cast 1), buff);
			if (_j1605) 
			{
				_p1604++;
			}
		}
		if (_p8863.isAddressSet() == true) 
		{
			_j1605 = T1225._m17574(_p8863.getAddress(), (cast 3), buff);
			if (_j1605) 
			{
				_p1604++;
			}
		}
		buff._m17576(_m1603, _p1604);
	}

	public function _m17427( _p8563:Serializable,  _w8564:T1223):Void
	{
		var _f8565:Int = _w8564._m17572();
		_w8564._m17573(2);
		var _m8566:Int = 0;
		var _g8567:Bool = false;
		var _j8869:MyTurnNotification = (cast _p8563);
		if (_j8869.isMessageIdSet() == true) 
		{
			_g8567 = T1225._m17574(_j8869.getMessageId(), (cast 0), _w8564);
			if (_g8567) 
			{
				_m8566++;
			}
		}
		if (_j8869.isRequestIdSet() == true) 
		{
			_g8567 = T1225._m17574(_j8869.getRequestId(), (cast 1), _w8564);
			if (_g8567) 
			{
				_m8566++;
			}
		}
		if (_j8869.isGameIdSet() == true) 
		{
			_g8567 = T1225._m17574(_j8869.getGameId(), (cast 3), _w8564);
			if (_g8567) 
			{
				_m8566++;
			}
		}
		_w8564._m17576(_f8565, _m8566);
	}

	public function _m17428( serializable:Serializable,  buff:T1223):Void
	{
		var _t1611:Int = buff._m17572();
		buff._m17573(2);
		var _h1612:Int = 0;
		var _s1613:Bool = false;
		var _q8875:PlayerTurnNotification = (cast serializable);
		if (_q8875.isMessageIdSet() == true) 
		{
			_s1613 = T1225._m17574(_q8875.getMessageId(), (cast 0), buff);
			if (_s1613) 
			{
				_h1612++;
			}
		}
		if (_q8875.isRequestIdSet() == true) 
		{
			_s1613 = T1225._m17574(_q8875.getRequestId(), (cast 1), buff);
			if (_s1613) 
			{
				_h1612++;
			}
		}
		if (_q8875.isCurrentPlayerSet() == true) 
		{
			_s1613 = T1225._m17575(this, _q8875.getCurrentPlayer(), (cast 3), buff);
			if (_s1613) 
			{
				_h1612++;
			}
		}
		if (_q8875.isGameIdSet() == true) 
		{
			_s1613 = T1225._m17574(_q8875.getGameId(), (cast 4), buff);
			if (_s1613) 
			{
				_h1612++;
			}
		}
		buff._m17576(_t1611, _h1612);
	}

	public function _m17429( _b8569:Serializable,  _a8570:T1223):Void
	{
		var _m8571:Int = _a8570._m17572();
		_a8570._m17573(2);
		var _z8572:Int = 0;
		var _v8573:Bool = false;
		var _k8881:NStore = (cast _b8569);
		if (_k8881.isstoreIdSet() == true) 
		{
			_v8573 = T1225._m17574(_k8881.getStoreId(), (cast 1), _a8570);
			if (_v8573) 
			{
				_z8572++;
			}
		}
		if (_k8881.isItemsSet() == true) 
		{
			var _o8882:NList<NItem> = _k8881.getItems();
			if (_o8882 == null) 
			{
				_v8573 = false;
			} else 
			{
				_a8570._m17579((cast 2));
				_a8570._m17580(T1221._l17181);
				var _u8883:Int = _a8570._m17572();
				_a8570._m17573(4);
				var _m8884:Int = _o8882.size();
				_a8570._m17579((cast _m8884));
				for (_g1622 in 0 ... _m8884) 
				{
					var _k1623:NItem = _o8882.get(_g1622);
					if (_k1623 == null) 
					{
						_a8570._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _k1623, _a8570);
					}
				}
				_a8570._m17582(_u8883, _a8570._m17572() - _u8883);
				_v8573 = true;
			}
			if (_v8573) 
			{
				_z8572++;
			}
		}
		_a8570._m17576(_m8571, _z8572);
	}

	public function _m17430( serializable:Serializable,  buff:T1223):Void
	{
		var _l1624:Int = buff._m17572();
		buff._m17573(2);
		var _y1625:Int = 0;
		var _y1626:Bool = false;
		var _f8892:NAchievementBoard = (cast serializable);
		if (_f8892.isstoreIdSet() == true) 
		{
			_y1626 = T1225._m17574(_f8892.getStoreId(), (cast 1), buff);
			if (_y1626) 
			{
				_y1625++;
			}
		}
		if (_f8892.isachievementsSet() == true) 
		{
			var _h8893:NList<NAchievement> = _f8892.getAchievements();
			if (_h8893 == null) 
			{
				_y1626 = false;
			} else 
			{
				buff._m17579((cast 2));
				buff._m17580(T1221._l17181);
				var _i8894:Int = buff._m17572();
				buff._m17573(4);
				var _w8895:Int = _h8893.size();
				buff._m17579((cast _w8895));
				for (_z1631 in 0 ... _w8895) 
				{
					var _r1632:NAchievement = _h8893.get(_z1631);
					if (_r1632 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _r1632, buff);
					}
				}
				buff._m17582(_i8894, buff._m17572() - _i8894);
				_y1626 = true;
			}
			if (_y1626) 
			{
				_y1625++;
			}
		}
		buff._m17576(_l1624, _y1625);
	}

	public function _m17431( serializable:Serializable,  buff:T1223):Void
	{
		var _j1633:Int = buff._m17572();
		buff._m17573(2);
		var _u1634:Int = 0;
		var _a1635:Bool = false;
		var _o8903:NLeaderboard = (cast serializable);
		if (_o8903.isIdSet() == true) 
		{
			_a1635 = T1225._m17574(_o8903.getId(), (cast 2), buff);
			if (_a1635) 
			{
				_u1634++;
			}
		}
		if (_o8903.isNameSet() == true) 
		{
			_a1635 = T1225._m17574(_o8903.getName(), (cast 3), buff);
			if (_a1635) 
			{
				_u1634++;
			}
		}
		if (_o8903.isleaderboardEntriesSet() == true) 
		{
			var _x8904:NList<NLeaderboardEntry> = _o8903.getLeaderboardEntries();
			if (_x8904 == null) 
			{
				_a1635 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _t8905:Int = buff._m17572();
				buff._m17573(4);
				var _w8906:Int = _x8904.size();
				buff._m17579((cast _w8906));
				for (_k8590 in 0 ... _w8906) 
				{
					var _i8591:NLeaderboardEntry = _x8904.get(_k8590);
					if (_i8591 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _i8591, buff);
					}
				}
				buff._m17582(_t8905, buff._m17572() - _t8905);
				_a1635 = true;
			}
			if (_a1635) 
			{
				_u1634++;
			}
		}
		buff._m17576(_j1633, _u1634);
	}

	public function _m17432( _x8581:Serializable,  _h8582:T1223):Void
	{
		var _y8583:Int = _h8582._m17572();
		_h8582._m17573(2);
		var _w8584:Int = 0;
		var _g8585:Bool = false;
		var _w8914:TestPrimitiveList = (cast _x8581);
		if (_w8914.isMessageIdSet() == true) 
		{
			_g8585 = T1225._m17574(_w8914.getMessageId(), (cast 0), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isRequestIdSet() == true) 
		{
			_g8585 = T1225._m17574(_w8914.getRequestId(), (cast 1), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isStringListSet() == true) 
		{
			_g8585 = T1225._m17586(this, _w8914.getStringList(), (cast 3), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isIntegerListSet() == true) 
		{
			_g8585 = T1225._m17587(this, _w8914.getIntegerList(), (cast 4), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isShortListSet() == true) 
		{
			_g8585 = T1225._m17588(this, _w8914.getShortList(), (cast 5), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isLongListSet() == true) 
		{
			_g8585 = T1225._m17589(this, _w8914.getLongList(), (cast 6), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isFloatListSet() == true) 
		{
			_g8585 = T1225._m17590(this, _w8914.getFloatList(), (cast 7), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isDoubleListSet() == true) 
		{
			_g8585 = T1225._m17591(this, _w8914.getDoubleList(), (cast 8), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isBooleanListSet() == true) 
		{
			_g8585 = T1225._m17592(this, _w8914.getBooleanList(), (cast 9), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		if (_w8914.isPlayerMatrix2Set() == true) 
		{
			_g8585 = T1225._m17593(this, _w8914.getPlayerMatrix2(), (cast 14), _h8582);
			if (_g8585) 
			{
				_w8584++;
			}
		}
		_h8582._m17576(_y8583, _w8584);
	}

	public function _m17433( serializable:Serializable,  buff:T1223):Void
	{
		var _i1646:Int = buff._m17572();
		buff._m17573(2);
		var _u1647:Int = 0;
		var _a1648:Bool = false;
		var _j8920:OpenUrl = (cast serializable);
		if (_j8920.isMessageIdSet() == true) 
		{
			_a1648 = T1225._m17574(_j8920.getMessageId(), (cast 0), buff);
			if (_a1648) 
			{
				_u1647++;
			}
		}
		if (_j8920.isRequestIdSet() == true) 
		{
			_a1648 = T1225._m17574(_j8920.getRequestId(), (cast 1), buff);
			if (_a1648) 
			{
				_u1647++;
			}
		}
		if (_j8920.isurlSet() == true) 
		{
			_a1648 = T1225._m17574(_j8920.getUrl(), (cast 3), buff);
			if (_a1648) 
			{
				_u1647++;
			}
		}
		buff._m17576(_i1646, _u1647);
	}

	public function _m17434( serializable:Serializable,  buff:T1223):Void
	{
		var _p1650:Int = buff._m17572();
		buff._m17573(2);
		var _j1651:Int = 0;
		var _g1652:Bool = false;
		var _o8926:TurnBasedContext = (cast serializable);
		if (_o8926.isMessageIdSet() == true) 
		{
			_g1652 = T1225._m17574(_o8926.getMessageId(), (cast 0), buff);
			if (_g1652) 
			{
				_j1651++;
			}
		}
		if (_o8926.isRequestIdSet() == true) 
		{
			_g1652 = T1225._m17574(_o8926.getRequestId(), (cast 1), buff);
			if (_g1652) 
			{
				_j1651++;
			}
		}
		if (_o8926.isCurrentPlayerSet() == true) 
		{
			_g1652 = T1225._m17575(this, _o8926.getCurrentPlayer(), (cast 3), buff);
			if (_g1652) 
			{
				_j1651++;
			}
		}
		buff._m17576(_p1650, _j1651);
	}

	public function _m17435( _e8592:Serializable,  _r8593:T1223):Void
	{
		var _i8594:Int = _r8593._m17572();
		_r8593._m17573(2);
		var _v8595:Int = 0;
		var _z8596:Bool = false;
		var _k8932:DisconnectedContext = (cast _e8592);
		if (_k8932.isMessageIdSet() == true) 
		{
			_z8596 = T1225._m17574(_k8932.getMessageId(), (cast 0), _r8593);
			if (_z8596) 
			{
				_v8595++;
			}
		}
		if (_k8932.isRequestIdSet() == true) 
		{
			_z8596 = T1225._m17574(_k8932.getRequestId(), (cast 1), _r8593);
			if (_z8596) 
			{
				_v8595++;
			}
		}
		if (_k8932.isParticipantsSet() == true) 
		{
			var _g8933:NList<NPlayer> = _k8932.getParticipants();
			if (_g8933 == null) 
			{
				_z8596 = false;
			} else 
			{
				_r8593._m17579((cast 3));
				_r8593._m17580(T1221._l17181);
				var _n8934:Int = _r8593._m17572();
				_r8593._m17573(4);
				var _f8935:Int = _g8933.size();
				_r8593._m17579((cast _f8935));
				for (_c8660 in 0 ... _f8935) 
				{
					var _i8661:NPlayer = _g8933.get(_c8660);
					if (_i8661 == null) 
					{
						_r8593._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _i8661, _r8593);
					}
				}
				_r8593._m17582(_n8934, _r8593._m17572() - _n8934);
				_z8596 = true;
			}
			if (_z8596) 
			{
				_v8595++;
			}
		}
		_r8593._m17576(_i8594, _v8595);
	}

	public function _m17436( serializable:Serializable,  buff:T1223):Void
	{
		var _w1663:Int = buff._m17572();
		buff._m17573(2);
		var _t1664:Int = 0;
		var _b1665:Bool = false;
		var _j8943:OpenUrlData = (cast serializable);
		if (_j8943.isMessageIdSet() == true) 
		{
			_b1665 = T1225._m17574(_j8943.getMessageId(), (cast 0), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		if (_j8943.isRequestIdSet() == true) 
		{
			_b1665 = T1225._m17574(_j8943.getRequestId(), (cast 1), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		if (_j8943.isSessionIdSet() == true) 
		{
			_b1665 = T1225._m17574(_j8943.getSessionId(), (cast 3), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		if (_j8943.isCallbackIdSet() == true) 
		{
			_b1665 = T1225._m17574(_j8943.getCallbackId(), (cast 4), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		if (_j8943.isCallbackUrlSet() == true) 
		{
			_b1665 = T1225._m17574(_j8943.getCallbackUrl(), (cast 5), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		if (_j8943.isThirdPartySourceSet() == true) 
		{
			_b1665 = T1225._m17575(this, _j8943.getThirdPartySource(), (cast 6), buff);
			if (_b1665) 
			{
				_t1664++;
			}
		}
		buff._m17576(_w1663, _t1664);
	}

	public function _m17437( serializable:Serializable,  buff:T1223):Void
	{
		var _r1667:Int = buff._m17572();
		buff._m17573(2);
		var _g1668:Int = 0;
		var _g1669:Bool = false;
		var _x8949:HeartBeatRequest = (cast serializable);
		if (_x8949.isMessageIdSet() == true) 
		{
			_g1669 = T1225._m17574(_x8949.getMessageId(), (cast 0), buff);
			if (_g1669) 
			{
				_g1668++;
			}
		}
		if (_x8949.isRequestIdSet() == true) 
		{
			_g1669 = T1225._m17574(_x8949.getRequestId(), (cast 1), buff);
			if (_g1669) 
			{
				_g1668++;
			}
		}
		if (_x8949.isCounterSet() == true) 
		{
			_g1669 = T1225._m17583(_x8949.getCounter(), (cast 3), buff);
			if (_g1669) 
			{
				_g1668++;
			}
		}
		buff._m17576(_r1667, _g1668);
	}

	public function _m17438( serializable:Serializable,  buff:T1223):Void
	{
		var _x1671:Int = buff._m17572();
		buff._m17573(2);
		var _s1672:Int = 0;
		var _d1673:Bool = false;
		var _s8955:HeartBeatResponse = (cast serializable);
		if (_s8955.isMessageIdSet() == true) 
		{
			_d1673 = T1225._m17574(_s8955.getMessageId(), (cast 0), buff);
			if (_d1673) 
			{
				_s1672++;
			}
		}
		if (_s8955.isRequestIdSet() == true) 
		{
			_d1673 = T1225._m17574(_s8955.getRequestId(), (cast 1), buff);
			if (_d1673) 
			{
				_s1672++;
			}
		}
		if (_s8955.isCounterSet() == true) 
		{
			_d1673 = T1225._m17583(_s8955.getCounter(), (cast 3), buff);
			if (_d1673) 
			{
				_s1672++;
			}
		}
		buff._m17576(_x1671, _s1672);
	}

	public function _m17439( serializable:Serializable,  buff:T1223):Void
	{
		var _i1675:Int = buff._m17572();
		buff._m17573(2);
		var _i1676:Int = 0;
		var _o1677:Bool = false;
		var _s8961:NLeaderboardEntry = (cast serializable);
		if (_s8961.isstoreIdSet() == true) 
		{
			_o1677 = T1225._m17574(_s8961.getStoreId(), (cast 1), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		if (_s8961.isDataSet() == true) 
		{
			_o1677 = T1225._m17574(_s8961.getData(), (cast 2), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		if (_s8961.isIdSet() == true) 
		{
			_o1677 = T1225._m17574(_s8961.getId(), (cast 3), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		if (_s8961.isTimestampSet() == true) 
		{
			_o1677 = T1225._m17578(_s8961.getTimestamp(), (cast 4), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		if (_s8961.isPlayerSet() == true) 
		{
			_o1677 = T1225._m17575(this, _s8961.getPlayer(), (cast 5), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		if (_s8961.isScoreSet() == true) 
		{
			_o1677 = T1225._m17575(this, _s8961.getScore(), (cast 6), buff);
			if (_o1677) 
			{
				_i1676++;
			}
		}
		buff._m17576(_i1675, _i1676);
	}

	public function _m17440( _z8603:Serializable,  _d8604:T1223):Void
	{
		var _p8605:Int = _d8604._m17572();
		_d8604._m17573(2);
		var _y8606:Int = 0;
		var _j8607:Bool = false;
		var _n8967:StartDetails = (cast _z8603);
		if (_n8967.isstoreIdSet() == true) 
		{
			_j8607 = T1225._m17574(_n8967.getStoreId(), (cast 1), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isDataSet() == true) 
		{
			_j8607 = T1225._m17574(_n8967.getData(), (cast 2), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isUseDefaultImplSet() == true) 
		{
			_j8607 = T1225._m17577(_n8967.isUseDefaultImpl(), (cast 3), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isCurrentVersionSet() == true) 
		{
			_j8607 = T1225._m17583(_n8967.getCurrentVersion(), (cast 4), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isNextVersionSet() == true) 
		{
			_j8607 = T1225._m17583(_n8967.getNextVersion(), (cast 5), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isTitleSet() == true) 
		{
			_j8607 = T1225._m17574(_n8967.getTitle(), (cast 6), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isTextSet() == true) 
		{
			_j8607 = T1225._m17574(_n8967.getText(), (cast 7), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		if (_n8967.isUrlSet() == true) 
		{
			_j8607 = T1225._m17574(_n8967.getUrl(), (cast 8), _d8604);
			if (_j8607) 
			{
				_y8606++;
			}
		}
		_d8604._m17576(_p8605, _y8606);
	}

	public function _m17441( serializable:Serializable,  buff:T1223):Void
	{
		var _p1683:Int = buff._m17572();
		buff._m17573(2);
		var _r1684:Int = 0;
		var _o1685:Bool = false;
		var _k8973:StartRequest = (cast serializable);
		if (_k8973.isMessageIdSet() == true) 
		{
			_o1685 = T1225._m17574(_k8973.getMessageId(), (cast 0), buff);
			if (_o1685) 
			{
				_r1684++;
			}
		}
		if (_k8973.isRequestIdSet() == true) 
		{
			_o1685 = T1225._m17574(_k8973.getRequestId(), (cast 1), buff);
			if (_o1685) 
			{
				_r1684++;
			}
		}
		buff._m17576(_p1683, _r1684);
	}

	public function _m17442( _e8609:Serializable,  _v8610:T1223):Void
	{
		var _k8611:Int = _v8610._m17572();
		_v8610._m17573(2);
		var _m8612:Int = 0;
		var _h8613:Bool = false;
		var _x8979:StartResponse = (cast _e8609);
		if (_x8979.isMessageIdSet() == true) 
		{
			_h8613 = T1225._m17574(_x8979.getMessageId(), (cast 0), _v8610);
			if (_h8613) 
			{
				_m8612++;
			}
		}
		if (_x8979.isRequestIdSet() == true) 
		{
			_h8613 = T1225._m17574(_x8979.getRequestId(), (cast 1), _v8610);
			if (_h8613) 
			{
				_m8612++;
			}
		}
		if (_x8979.isStartStatusSet() == true) 
		{
			_h8613 = T1225._m17575(this, _x8979.getStartStatus(), (cast 3), _v8610);
			if (_h8613) 
			{
				_m8612++;
			}
		}
		if (_x8979.isStartDetailsSet() == true) 
		{
			_h8613 = T1225._m17575(this, _x8979.getStartDetails(), (cast 4), _v8610);
			if (_h8613) 
			{
				_m8612++;
			}
		}
		_v8610._m17576(_k8611, _m8612);
	}

	public function _m17443( serializable:Serializable,  buff:T1223):Void
	{
		var _m1691:Int = buff._m17572();
		buff._m17573(2);
		var _f1692:Int = 0;
		var _k1693:Bool = false;
		var _b8985:InvitePlayerResponse = (cast serializable);
		if (_b8985.isMessageIdSet() == true) 
		{
			_k1693 = T1225._m17574(_b8985.getMessageId(), (cast 0), buff);
			if (_k1693) 
			{
				_f1692++;
			}
		}
		if (_b8985.isRequestIdSet() == true) 
		{
			_k1693 = T1225._m17574(_b8985.getRequestId(), (cast 1), buff);
			if (_k1693) 
			{
				_f1692++;
			}
		}
		if (_b8985.isInvitePlayerStatusSet() == true) 
		{
			_k1693 = T1225._m17575(this, _b8985.getInvitePlayerStatus(), (cast 3), buff);
			if (_k1693) 
			{
				_f1692++;
			}
		}
		buff._m17576(_m1691, _f1692);
	}

	public function _m17444( serializable:Serializable,  buff:T1223):Void
	{
		var _y1695:Int = buff._m17572();
		buff._m17573(2);
		var _v1696:Int = 0;
		var _t1697:Bool = false;
		var _t8991:InvitePlayerByIdRequest = (cast serializable);
		if (_t8991.isMessageIdSet() == true) 
		{
			_t1697 = T1225._m17574(_t8991.getMessageId(), (cast 0), buff);
			if (_t1697) 
			{
				_v1696++;
			}
		}
		if (_t8991.isRequestIdSet() == true) 
		{
			_t1697 = T1225._m17574(_t8991.getRequestId(), (cast 1), buff);
			if (_t1697) 
			{
				_v1696++;
			}
		}
		if (_t8991.isIdSet() == true) 
		{
			_t1697 = T1225._m17574(_t8991.getId(), (cast 3), buff);
			if (_t1697) 
			{
				_v1696++;
			}
		}
		buff._m17576(_y1695, _v1696);
	}

	public function _m17445( _m8615:Serializable,  _t8616:T1223):Void
	{
		var _j8617:Int = _t8616._m17572();
		_t8616._m17573(2);
		var _l8618:Int = 0;
		var _z8619:Bool = false;
		var _b8997:InvitePlayerByLoginRequest = (cast _m8615);
		if (_b8997.isMessageIdSet() == true) 
		{
			_z8619 = T1225._m17574(_b8997.getMessageId(), (cast 0), _t8616);
			if (_z8619) 
			{
				_l8618++;
			}
		}
		if (_b8997.isRequestIdSet() == true) 
		{
			_z8619 = T1225._m17574(_b8997.getRequestId(), (cast 1), _t8616);
			if (_z8619) 
			{
				_l8618++;
			}
		}
		if (_b8997.isLoginSet() == true) 
		{
			_z8619 = T1225._m17574(_b8997.getLogin(), (cast 3), _t8616);
			if (_z8619) 
			{
				_l8618++;
			}
		}
		_t8616._m17576(_j8617, _l8618);
	}

	public function _m17446( serializable:Serializable,  buff:T1223):Void
	{
		var _l1703:Int = buff._m17572();
		buff._m17573(2);
		var _t1704:Int = 0;
		var _v1705:Bool = false;
		var _i9003:SignUpResponse = (cast serializable);
		if (_i9003.isMessageIdSet() == true) 
		{
			_v1705 = T1225._m17574(_i9003.getMessageId(), (cast 0), buff);
			if (_v1705) 
			{
				_t1704++;
			}
		}
		if (_i9003.isRequestIdSet() == true) 
		{
			_v1705 = T1225._m17574(_i9003.getRequestId(), (cast 1), buff);
			if (_v1705) 
			{
				_t1704++;
			}
		}
		if (_i9003.isSignUpStatusSet() == true) 
		{
			_v1705 = T1225._m17575(this, _i9003.getSignUpStatus(), (cast 3), buff);
			if (_v1705) 
			{
				_t1704++;
			}
		}
		if (_i9003.isPlayerSet() == true) 
		{
			_v1705 = T1225._m17575(this, _i9003.getPlayer(), (cast 4), buff);
			if (_v1705) 
			{
				_t1704++;
			}
		}
		buff._m17576(_l1703, _t1704);
	}

	public function _m17447( _r8621:Serializable,  _d8622:T1223):Void
	{
		var _r8623:Int = _d8622._m17572();
		_d8622._m17573(2);
		var _y8624:Int = 0;
		var _z8625:Bool = false;
		var _n9009:SignUpRequest = (cast _r8621);
		if (_n9009.isMessageIdSet() == true) 
		{
			_z8625 = T1225._m17574(_n9009.getMessageId(), (cast 0), _d8622);
			if (_z8625) 
			{
				_y8624++;
			}
		}
		if (_n9009.isRequestIdSet() == true) 
		{
			_z8625 = T1225._m17574(_n9009.getRequestId(), (cast 1), _d8622);
			if (_z8625) 
			{
				_y8624++;
			}
		}
		if (_n9009.isLoginSet() == true) 
		{
			_z8625 = T1225._m17574(_n9009.getLogin(), (cast 3), _d8622);
			if (_z8625) 
			{
				_y8624++;
			}
		}
		if (_n9009.isPasswordSet() == true) 
		{
			_z8625 = T1225._m17574(_n9009.getPassword(), (cast 4), _d8622);
			if (_z8625) 
			{
				_y8624++;
			}
		}
		if (_n9009.isPlayerProfileSet() == true) 
		{
			_z8625 = T1225._m17575(this, _n9009.getPlayerProfile(), (cast 5), _d8622);
			if (_z8625) 
			{
				_y8624++;
			}
		}
		_d8622._m17576(_r8623, _y8624);
	}

	public function _m17448( serializable:Serializable,  buff:T1223):Void
	{
		var _s1711:Int = buff._m17572();
		buff._m17573(2);
		var _n1712:Int = 0;
		var _i1713:Bool = false;
		var _l9015:ForgotPasswordResponse = (cast serializable);
		if (_l9015.isMessageIdSet() == true) 
		{
			_i1713 = T1225._m17574(_l9015.getMessageId(), (cast 0), buff);
			if (_i1713) 
			{
				_n1712++;
			}
		}
		if (_l9015.isRequestIdSet() == true) 
		{
			_i1713 = T1225._m17574(_l9015.getRequestId(), (cast 1), buff);
			if (_i1713) 
			{
				_n1712++;
			}
		}
		if (_l9015.isForgotPasswordStatusSet() == true) 
		{
			_i1713 = T1225._m17575(this, _l9015.getForgotPasswordStatus(), (cast 3), buff);
			if (_i1713) 
			{
				_n1712++;
			}
		}
		buff._m17576(_s1711, _n1712);
	}

	public function _m17449( _y8627:Serializable,  _t8628:T1223):Void
	{
		var _v8629:Int = _t8628._m17572();
		_t8628._m17573(2);
		var _f8630:Int = 0;
		var _h8631:Bool = false;
		var _w9021:ForgotPasswordByLoginRequest = (cast _y8627);
		if (_w9021.isMessageIdSet() == true) 
		{
			_h8631 = T1225._m17574(_w9021.getMessageId(), (cast 0), _t8628);
			if (_h8631) 
			{
				_f8630++;
			}
		}
		if (_w9021.isRequestIdSet() == true) 
		{
			_h8631 = T1225._m17574(_w9021.getRequestId(), (cast 1), _t8628);
			if (_h8631) 
			{
				_f8630++;
			}
		}
		if (_w9021.isLoginSet() == true) 
		{
			_h8631 = T1225._m17574(_w9021.getLogin(), (cast 3), _t8628);
			if (_h8631) 
			{
				_f8630++;
			}
		}
		_t8628._m17576(_v8629, _f8630);
	}

	public function _m17450( serializable:Serializable,  buff:T1223):Void
	{
		var _a1719:Int = buff._m17572();
		buff._m17573(2);
		var _s1720:Int = 0;
		var _v1721:Bool = false;
		var _s9027:ForgotPasswordByEmailRequest = (cast serializable);
		if (_s9027.isMessageIdSet() == true) 
		{
			_v1721 = T1225._m17574(_s9027.getMessageId(), (cast 0), buff);
			if (_v1721) 
			{
				_s1720++;
			}
		}
		if (_s9027.isRequestIdSet() == true) 
		{
			_v1721 = T1225._m17574(_s9027.getRequestId(), (cast 1), buff);
			if (_v1721) 
			{
				_s1720++;
			}
		}
		if (_s9027.isEmailSet() == true) 
		{
			_v1721 = T1225._m17574(_s9027.getEmail(), (cast 3), buff);
			if (_v1721) 
			{
				_s1720++;
			}
		}
		buff._m17576(_a1719, _s1720);
	}

	public function _m17451( _q8633:Serializable,  _k8634:T1223):Void
	{
		var _n8635:Int = _k8634._m17572();
		_k8634._m17573(2);
		var _v8636:Int = 0;
		var _f8637:Bool = false;
		var _n9033:LoginResponse = (cast _q8633);
		if (_n9033.isMessageIdSet() == true) 
		{
			_f8637 = T1225._m17574(_n9033.getMessageId(), (cast 0), _k8634);
			if (_f8637) 
			{
				_v8636++;
			}
		}
		if (_n9033.isRequestIdSet() == true) 
		{
			_f8637 = T1225._m17574(_n9033.getRequestId(), (cast 1), _k8634);
			if (_f8637) 
			{
				_v8636++;
			}
		}
		if (_n9033.isLoginStatusSet() == true) 
		{
			_f8637 = T1225._m17575(this, _n9033.getLoginStatus(), (cast 3), _k8634);
			if (_f8637) 
			{
				_v8636++;
			}
		}
		if (_n9033.isPlayerSet() == true) 
		{
			_f8637 = T1225._m17575(this, _n9033.getPlayer(), (cast 4), _k8634);
			if (_f8637) 
			{
				_v8636++;
			}
		}
		_k8634._m17576(_n8635, _v8636);
	}

	public function _m17452( serializable:Serializable,  buff:T1223):Void
	{
		var _u1727:Int = buff._m17572();
		buff._m17573(2);
		var _f1728:Int = 0;
		var _o1729:Bool = false;
		var _k9039:LoginRequest = (cast serializable);
		if (_k9039.isMessageIdSet() == true) 
		{
			_o1729 = T1225._m17574(_k9039.getMessageId(), (cast 0), buff);
			if (_o1729) 
			{
				_f1728++;
			}
		}
		if (_k9039.isRequestIdSet() == true) 
		{
			_o1729 = T1225._m17574(_k9039.getRequestId(), (cast 1), buff);
			if (_o1729) 
			{
				_f1728++;
			}
		}
		if (_k9039.isLoginSet() == true) 
		{
			_o1729 = T1225._m17574(_k9039.getLogin(), (cast 3), buff);
			if (_o1729) 
			{
				_f1728++;
			}
		}
		if (_k9039.isPasswordSet() == true) 
		{
			_o1729 = T1225._m17574(_k9039.getPassword(), (cast 4), buff);
			if (_o1729) 
			{
				_f1728++;
			}
		}
		if (_k9039.isClientApplicationSet() == true) 
		{
			_o1729 = T1225._m17575(this, _k9039.getClientApplication(), (cast 5), buff);
			if (_o1729) 
			{
				_f1728++;
			}
		}
		buff._m17576(_u1727, _f1728);
	}

	public function _m17453( serializable:Serializable,  buff:T1223):Void
	{
		var _j1731:Int = buff._m17572();
		buff._m17573(2);
		var _q1732:Int = 0;
		var _b1733:Bool = false;
		var _m9045:SavePlayerProfileResponse = (cast serializable);
		if (_m9045.isMessageIdSet() == true) 
		{
			_b1733 = T1225._m17574(_m9045.getMessageId(), (cast 0), buff);
			if (_b1733) 
			{
				_q1732++;
			}
		}
		if (_m9045.isRequestIdSet() == true) 
		{
			_b1733 = T1225._m17574(_m9045.getRequestId(), (cast 1), buff);
			if (_b1733) 
			{
				_q1732++;
			}
		}
		if (_m9045.isSavePlayerProfileStatusSet() == true) 
		{
			_b1733 = T1225._m17575(this, _m9045.getSavePlayerProfileStatus(), (cast 3), buff);
			if (_b1733) 
			{
				_q1732++;
			}
		}
		buff._m17576(_j1731, _q1732);
	}

	public function _m17454( _q8639:Serializable,  _o8640:T1223):Void
	{
		var _y8641:Int = _o8640._m17572();
		_o8640._m17573(2);
		var _h8642:Int = 0;
		var _k8643:Bool = false;
		var _l9051:SavePlayerProfileRequest = (cast _q8639);
		if (_l9051.isMessageIdSet() == true) 
		{
			_k8643 = T1225._m17574(_l9051.getMessageId(), (cast 0), _o8640);
			if (_k8643) 
			{
				_h8642++;
			}
		}
		if (_l9051.isRequestIdSet() == true) 
		{
			_k8643 = T1225._m17574(_l9051.getRequestId(), (cast 1), _o8640);
			if (_k8643) 
			{
				_h8642++;
			}
		}
		if (_l9051.isProfileSet() == true) 
		{
			_k8643 = T1225._m17575(this, _l9051.getProfile(), (cast 3), _o8640);
			if (_k8643) 
			{
				_h8642++;
			}
		}
		_o8640._m17576(_y8641, _h8642);
	}

	public function _m17455( serializable:Serializable,  buff:T1223):Void
	{
		var _p1739:Int = buff._m17572();
		buff._m17573(2);
		var _f1740:Int = 0;
		var _u1741:Bool = false;
		var _g9057:GetPlayerProfileResponse = (cast serializable);
		if (_g9057.isMessageIdSet() == true) 
		{
			_u1741 = T1225._m17574(_g9057.getMessageId(), (cast 0), buff);
			if (_u1741) 
			{
				_f1740++;
			}
		}
		if (_g9057.isRequestIdSet() == true) 
		{
			_u1741 = T1225._m17574(_g9057.getRequestId(), (cast 1), buff);
			if (_u1741) 
			{
				_f1740++;
			}
		}
		if (_g9057.isGetPlayerProfileStatusSet() == true) 
		{
			_u1741 = T1225._m17575(this, _g9057.getGetPlayerProfileStatus(), (cast 3), buff);
			if (_u1741) 
			{
				_f1740++;
			}
		}
		if (_g9057.isProfileSet() == true) 
		{
			_u1741 = T1225._m17575(this, _g9057.getProfile(), (cast 4), buff);
			if (_u1741) 
			{
				_f1740++;
			}
		}
		buff._m17576(_p1739, _f1740);
	}

	public function _m17456( serializable:Serializable,  buff:T1223):Void
	{
		var _o1743:Int = buff._m17572();
		buff._m17573(2);
		var _k1744:Int = 0;
		var _h1745:Bool = false;
		var _f9063:GetPlayerProfileRequest = (cast serializable);
		if (_f9063.isMessageIdSet() == true) 
		{
			_h1745 = T1225._m17574(_f9063.getMessageId(), (cast 0), buff);
			if (_h1745) 
			{
				_k1744++;
			}
		}
		if (_f9063.isRequestIdSet() == true) 
		{
			_h1745 = T1225._m17574(_f9063.getRequestId(), (cast 1), buff);
			if (_h1745) 
			{
				_k1744++;
			}
		}
		buff._m17576(_o1743, _k1744);
	}

	public function _m17457( serializable:Serializable,  buff:T1223):Void
	{
		var _d1747:Int = buff._m17572();
		buff._m17573(2);
		var _q1748:Int = 0;
		var _q1749:Bool = false;
		var _t9069:GetPlayerProfileByPlayerIdRequest = (cast serializable);
		if (_t9069.isMessageIdSet() == true) 
		{
			_q1749 = T1225._m17574(_t9069.getMessageId(), (cast 0), buff);
			if (_q1749) 
			{
				_q1748++;
			}
		}
		if (_t9069.isRequestIdSet() == true) 
		{
			_q1749 = T1225._m17574(_t9069.getRequestId(), (cast 1), buff);
			if (_q1749) 
			{
				_q1748++;
			}
		}
		if (_t9069.isPlayerIdSet() == true) 
		{
			_q1749 = T1225._m17574(_t9069.getPlayerId(), (cast 3), buff);
			if (_q1749) 
			{
				_q1748++;
			}
		}
		buff._m17576(_d1747, _q1748);
	}

	public function _m17458( _v8645:Serializable,  _x8646:T1223):Void
	{
		var _s8647:Int = _x8646._m17572();
		_x8646._m17573(2);
		var _l8648:Int = 0;
		var _j8649:Bool = false;
		var _w9075:LogoutResponse = (cast _v8645);
		if (_w9075.isMessageIdSet() == true) 
		{
			_j8649 = T1225._m17574(_w9075.getMessageId(), (cast 0), _x8646);
			if (_j8649) 
			{
				_l8648++;
			}
		}
		if (_w9075.isRequestIdSet() == true) 
		{
			_j8649 = T1225._m17574(_w9075.getRequestId(), (cast 1), _x8646);
			if (_j8649) 
			{
				_l8648++;
			}
		}
		if (_w9075.isLogoutStatusSet() == true) 
		{
			_j8649 = T1225._m17575(this, _w9075.getLogoutStatus(), (cast 3), _x8646);
			if (_j8649) 
			{
				_l8648++;
			}
		}
		if (_w9075.isPlayerSet() == true) 
		{
			_j8649 = T1225._m17575(this, _w9075.getPlayer(), (cast 4), _x8646);
			if (_j8649) 
			{
				_l8648++;
			}
		}
		_x8646._m17576(_s8647, _l8648);
	}

	public function _m17459( _s8651:Serializable,  _n8652:T1223):Void
	{
		var _w8653:Int = _n8652._m17572();
		_n8652._m17573(2);
		var _u8654:Int = 0;
		var _f8655:Bool = false;
		var _s9081:LogoutRequest = (cast _s8651);
		if (_s9081.isMessageIdSet() == true) 
		{
			_f8655 = T1225._m17574(_s9081.getMessageId(), (cast 0), _n8652);
			if (_f8655) 
			{
				_u8654++;
			}
		}
		if (_s9081.isRequestIdSet() == true) 
		{
			_f8655 = T1225._m17574(_s9081.getRequestId(), (cast 1), _n8652);
			if (_f8655) 
			{
				_u8654++;
			}
		}
		_n8652._m17576(_w8653, _u8654);
	}

	public function _m17460( serializable:Serializable,  buff:T1223):Void
	{
		var _j1759:Int = buff._m17572();
		buff._m17573(2);
		var _x1760:Int = 0;
		var _x1761:Bool = false;
		var _e9087:ChallengeFriendResponse = (cast serializable);
		if (_e9087.isMessageIdSet() == true) 
		{
			_x1761 = T1225._m17574(_e9087.getMessageId(), (cast 0), buff);
			if (_x1761) 
			{
				_x1760++;
			}
		}
		if (_e9087.isRequestIdSet() == true) 
		{
			_x1761 = T1225._m17574(_e9087.getRequestId(), (cast 1), buff);
			if (_x1761) 
			{
				_x1760++;
			}
		}
		if (_e9087.isChallengeFriendStatusSet() == true) 
		{
			_x1761 = T1225._m17575(this, _e9087.getChallengeFriendStatus(), (cast 3), buff);
			if (_x1761) 
			{
				_x1760++;
			}
		}
		if (_e9087.isPlayerIdSet() == true) 
		{
			_x1761 = T1225._m17574(_e9087.getPlayerId(), (cast 4), buff);
			if (_x1761) 
			{
				_x1760++;
			}
		}
		buff._m17576(_j1759, _x1760);
	}

	public function _m17461( serializable:Serializable,  buff:T1223):Void
	{
		var _r1763:Int = buff._m17572();
		buff._m17573(2);
		var _p1764:Int = 0;
		var _e1765:Bool = false;
		var _y9093:ChallengeFriendRequest = (cast serializable);
		if (_y9093.isMessageIdSet() == true) 
		{
			_e1765 = T1225._m17574(_y9093.getMessageId(), (cast 0), buff);
			if (_e1765) 
			{
				_p1764++;
			}
		}
		if (_y9093.isRequestIdSet() == true) 
		{
			_e1765 = T1225._m17574(_y9093.getRequestId(), (cast 1), buff);
			if (_e1765) 
			{
				_p1764++;
			}
		}
		if (_y9093.isPlayerIdSet() == true) 
		{
			_e1765 = T1225._m17574(_y9093.getPlayerId(), (cast 3), buff);
			if (_e1765) 
			{
				_p1764++;
			}
		}
		buff._m17576(_r1763, _p1764);
	}

	public function _m17462( _f8662:Serializable,  _h8663:T1223):Void
	{
		var _n8664:Int = _h8663._m17572();
		_h8663._m17573(2);
		var _t8665:Int = 0;
		var _p8666:Bool = false;
		var _g9099:ChallengeThirdPartyFriendResponse = (cast _f8662);
		if (_g9099.isMessageIdSet() == true) 
		{
			_p8666 = T1225._m17574(_g9099.getMessageId(), (cast 0), _h8663);
			if (_p8666) 
			{
				_t8665++;
			}
		}
		if (_g9099.isRequestIdSet() == true) 
		{
			_p8666 = T1225._m17574(_g9099.getRequestId(), (cast 1), _h8663);
			if (_p8666) 
			{
				_t8665++;
			}
		}
		if (_g9099.isChallengeThirdPartyFriendStatusSet() == true) 
		{
			_p8666 = T1225._m17575(this, _g9099.getChallengeThirdPartyFriendStatus(), (cast 3), _h8663);
			if (_p8666) 
			{
				_t8665++;
			}
		}
		if (_g9099.isThirdPartyIdSet() == true) 
		{
			_p8666 = T1225._m17574(_g9099.getThirdPartyId(), (cast 4), _h8663);
			if (_p8666) 
			{
				_t8665++;
			}
		}
		_h8663._m17576(_n8664, _t8665);
	}

	public function _m17463( _t8674:Serializable,  _a8675:T1223):Void
	{
		var _q8670:Int = _a8675._m17572();
		_a8675._m17573(2);
		var _h8671:Int = 0;
		var _u8672:Bool = false;
		var _v9105:ChallengeThirdPartyFriendRequest = (cast _t8674);
		if (_v9105.isMessageIdSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getMessageId(), (cast 0), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isRequestIdSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getRequestId(), (cast 1), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isThirdPartyIdSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getThirdPartyId(), (cast 3), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isTitleSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getTitle(), (cast 4), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isChallengeMessageSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getChallengeMessage(), (cast 5), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isPictureUrlSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getPictureUrl(), (cast 6), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isLinkSet() == true) 
		{
			_u8672 = T1225._m17574(_v9105.getLink(), (cast 7), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		if (_v9105.isThirdPartySourceSet() == true) 
		{
			_u8672 = T1225._m17575(this, _v9105.getThirdPartySource(), (cast 8), _a8675);
			if (_u8672) 
			{
				_h8671++;
			}
		}
		_a8675._m17576(_q8670, _h8671);
	}

	public function _m17464( serializable:Serializable,  buff:T1223):Void
	{
		var _k8676:Int = buff._m17572();
		buff._m17573(2);
		var _r8677:Int = 0;
		var _r8678:Bool = false;
		var _d9111:GetFriendsResponse = (cast serializable);
		if (_d9111.isMessageIdSet() == true) 
		{
			_r8678 = T1225._m17574(_d9111.getMessageId(), (cast 0), buff);
			if (_r8678) 
			{
				_r8677++;
			}
		}
		if (_d9111.isRequestIdSet() == true) 
		{
			_r8678 = T1225._m17574(_d9111.getRequestId(), (cast 1), buff);
			if (_r8678) 
			{
				_r8677++;
			}
		}
		if (_d9111.isGetFriendsStatusSet() == true) 
		{
			_r8678 = T1225._m17575(this, _d9111.getGetFriendsStatus(), (cast 3), buff);
			if (_r8678) 
			{
				_r8677++;
			}
		}
		if (_d9111.isFriendsSet() == true) 
		{
			var _b9112:NList<NPlayer> = _d9111.getFriends();
			if (_b9112 == null) 
			{
				_r8678 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _x9113:Int = buff._m17572();
				buff._m17573(4);
				var _r9114:Int = _b9112.size();
				buff._m17579((cast _r9114));
				for (_w1782 in 0 ... _r9114) 
				{
					var _g1783:NPlayer = _b9112.get(_w1782);
					if (_g1783 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _g1783, buff);
					}
				}
				buff._m17582(_x9113, buff._m17572() - _x9113);
				_r8678 = true;
			}
			if (_r8678) 
			{
				_r8677++;
			}
		}
		buff._m17576(_k8676, _r8677);
	}

	public function _m17465( serializable:Serializable,  buff:T1223):Void
	{
		var _f1784:Int = buff._m17572();
		buff._m17573(2);
		var _w1785:Int = 0;
		var _q1786:Bool = false;
		var _d9122:GetFriendsRequest = (cast serializable);
		if (_d9122.isMessageIdSet() == true) 
		{
			_q1786 = T1225._m17574(_d9122.getMessageId(), (cast 0), buff);
			if (_q1786) 
			{
				_w1785++;
			}
		}
		if (_d9122.isRequestIdSet() == true) 
		{
			_q1786 = T1225._m17574(_d9122.getRequestId(), (cast 1), buff);
			if (_q1786) 
			{
				_w1785++;
			}
		}
		buff._m17576(_f1784, _w1785);
	}

	public function _m17466( _q8680:Serializable,  _e8681:T1223):Void
	{
		var _a1788:Int = _e8681._m17572();
		_e8681._m17573(2);
		var _p1789:Int = 0;
		var _x1790:Bool = false;
		var _k9128:GetFriendsByPlayerIdRequest = (cast _q8680);
		if (_k9128.isMessageIdSet() == true) 
		{
			_x1790 = T1225._m17574(_k9128.getMessageId(), (cast 0), _e8681);
			if (_x1790) 
			{
				_p1789++;
			}
		}
		if (_k9128.isRequestIdSet() == true) 
		{
			_x1790 = T1225._m17574(_k9128.getRequestId(), (cast 1), _e8681);
			if (_x1790) 
			{
				_p1789++;
			}
		}
		if (_k9128.isPlayerIdSet() == true) 
		{
			_x1790 = T1225._m17574(_k9128.getPlayerId(), (cast 3), _e8681);
			if (_x1790) 
			{
				_p1789++;
			}
		}
		_e8681._m17576(_a1788, _p1789);
	}

	public function _m17467( _k8686:Serializable,  _t8687:T1223):Void
	{
		var _h8688:Int = _t8687._m17572();
		_t8687._m17573(2);
		var _f8689:Int = 0;
		var _o8690:Bool = false;
		var _u9134:GetThirdPartyFriendsResponse = (cast _k8686);
		if (_u9134.isMessageIdSet() == true) 
		{
			_o8690 = T1225._m17574(_u9134.getMessageId(), (cast 0), _t8687);
			if (_o8690) 
			{
				_f8689++;
			}
		}
		if (_u9134.isRequestIdSet() == true) 
		{
			_o8690 = T1225._m17574(_u9134.getRequestId(), (cast 1), _t8687);
			if (_o8690) 
			{
				_f8689++;
			}
		}
		if (_u9134.isGetThirdPartyFriendsStatusSet() == true) 
		{
			_o8690 = T1225._m17575(this, _u9134.getGetThirdPartyFriendsStatus(), (cast 3), _t8687);
			if (_o8690) 
			{
				_f8689++;
			}
		}
		if (_u9134.isThirdPartyFriendsSet() == true) 
		{
			var _d9135:NList<NPlayer> = _u9134.getThirdPartyFriends();
			if (_d9135 == null) 
			{
				_o8690 = false;
			} else 
			{
				_t8687._m17579((cast 4));
				_t8687._m17580(T1221._l17181);
				var _l9136:Int = _t8687._m17572();
				_t8687._m17573(4);
				var _c9137:Int = _d9135.size();
				_t8687._m17579((cast _c9137));
				for (_y1799 in 0 ... _c9137) 
				{
					var _q1800:NPlayer = _d9135.get(_y1799);
					if (_q1800 == null) 
					{
						_t8687._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _q1800, _t8687);
					}
				}
				_t8687._m17582(_l9136, _t8687._m17572() - _l9136);
				_o8690 = true;
			}
			if (_o8690) 
			{
				_f8689++;
			}
		}
		_t8687._m17576(_h8688, _f8689);
	}

	public function _m17468( _x8692:Serializable,  _f8693:T1223):Void
	{
		var _r8694:Int = _f8693._m17572();
		_f8693._m17573(2);
		var _l8695:Int = 0;
		var _t8696:Bool = false;
		var _e9145:GetThirdPartyFriendsRequest = (cast _x8692);
		if (_e9145.isMessageIdSet() == true) 
		{
			_t8696 = T1225._m17574(_e9145.getMessageId(), (cast 0), _f8693);
			if (_t8696) 
			{
				_l8695++;
			}
		}
		if (_e9145.isRequestIdSet() == true) 
		{
			_t8696 = T1225._m17574(_e9145.getRequestId(), (cast 1), _f8693);
			if (_t8696) 
			{
				_l8695++;
			}
		}
		if (_e9145.isThirdPartySourceSet() == true) 
		{
			_t8696 = T1225._m17575(this, _e9145.getThirdPartySource(), (cast 3), _f8693);
			if (_t8696) 
			{
				_l8695++;
			}
		}
		_f8693._m17576(_r8694, _l8695);
	}

	public function _m17469( _u8698:Serializable,  _h8699:T1223):Void
	{
		var _b8700:Int = _h8699._m17572();
		_h8699._m17573(2);
		var _d8701:Int = 0;
		var _b8702:Bool = false;
		var _y9151:GetPlayerInvitationsResponse = (cast _u8698);
		if (_y9151.isMessageIdSet() == true) 
		{
			_b8702 = T1225._m17574(_y9151.getMessageId(), (cast 0), _h8699);
			if (_b8702) 
			{
				_d8701++;
			}
		}
		if (_y9151.isRequestIdSet() == true) 
		{
			_b8702 = T1225._m17574(_y9151.getRequestId(), (cast 1), _h8699);
			if (_b8702) 
			{
				_d8701++;
			}
		}
		if (_y9151.isGetPlayerInvitationsStatusSet() == true) 
		{
			_b8702 = T1225._m17575(this, _y9151.getGetPlayerInvitationsStatus(), (cast 3), _h8699);
			if (_b8702) 
			{
				_d8701++;
			}
		}
		if (_y9151.isInvitationsSet() == true) 
		{
			var _r9152:NList<NPlayerInvitation> = _y9151.getInvitations();
			if (_r9152 == null) 
			{
				_b8702 = false;
			} else 
			{
				_h8699._m17579((cast 4));
				_h8699._m17580(T1221._l17181);
				var _l9153:Int = _h8699._m17572();
				_h8699._m17573(4);
				var _d9154:Int = _r9152.size();
				_h8699._m17579((cast _d9154));
				for (_e8743 in 0 ... _d9154) 
				{
					var _c8744:NPlayerInvitation = _r9152.get(_e8743);
					if (_c8744 == null) 
					{
						_h8699._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _c8744, _h8699);
					}
				}
				_h8699._m17582(_l9153, _h8699._m17572() - _l9153);
				_b8702 = true;
			}
			if (_b8702) 
			{
				_d8701++;
			}
		}
		_h8699._m17576(_b8700, _d8701);
	}

	public function _m17470( serializable:Serializable,  buff:T1223):Void
	{
		var _k1814:Int = buff._m17572();
		buff._m17573(2);
		var _m1815:Int = 0;
		var _n1816:Bool = false;
		var _i9162:GetPlayerInvitationsRequest = (cast serializable);
		if (_i9162.isMessageIdSet() == true) 
		{
			_n1816 = T1225._m17574(_i9162.getMessageId(), (cast 0), buff);
			if (_n1816) 
			{
				_m1815++;
			}
		}
		if (_i9162.isRequestIdSet() == true) 
		{
			_n1816 = T1225._m17574(_i9162.getRequestId(), (cast 1), buff);
			if (_n1816) 
			{
				_m1815++;
			}
		}
		buff._m17576(_k1814, _m1815);
	}

	public function _m17471( _g8704:Serializable,  _v8705:T1223):Void
	{
		var _o8706:Int = _v8705._m17572();
		_v8705._m17573(2);
		var _y8707:Int = 0;
		var _o8708:Bool = false;
		var _m9168:AcceptPlayerInvitationResponse = (cast _g8704);
		if (_m9168.isMessageIdSet() == true) 
		{
			_o8708 = T1225._m17574(_m9168.getMessageId(), (cast 0), _v8705);
			if (_o8708) 
			{
				_y8707++;
			}
		}
		if (_m9168.isRequestIdSet() == true) 
		{
			_o8708 = T1225._m17574(_m9168.getRequestId(), (cast 1), _v8705);
			if (_o8708) 
			{
				_y8707++;
			}
		}
		if (_m9168.isAcceptPlayerInvitationStatusSet() == true) 
		{
			_o8708 = T1225._m17575(this, _m9168.getAcceptPlayerInvitationStatus(), (cast 3), _v8705);
			if (_o8708) 
			{
				_y8707++;
			}
		}
		if (_m9168.isPlayerInvitationIdSet() == true) 
		{
			_o8708 = T1225._m17574(_m9168.getPlayerInvitationId(), (cast 4), _v8705);
			if (_o8708) 
			{
				_y8707++;
			}
		}
		_v8705._m17576(_o8706, _y8707);
	}

	public function _m17472( serializable:Serializable,  buff:T1223):Void
	{
		var _z1822:Int = buff._m17572();
		buff._m17573(2);
		var _w1823:Int = 0;
		var _m1824:Bool = false;
		var _h9174:AcceptPlayerInvitationRequest = (cast serializable);
		if (_h9174.isMessageIdSet() == true) 
		{
			_m1824 = T1225._m17574(_h9174.getMessageId(), (cast 0), buff);
			if (_m1824) 
			{
				_w1823++;
			}
		}
		if (_h9174.isRequestIdSet() == true) 
		{
			_m1824 = T1225._m17574(_h9174.getRequestId(), (cast 1), buff);
			if (_m1824) 
			{
				_w1823++;
			}
		}
		if (_h9174.isInvitationIdSet() == true) 
		{
			_m1824 = T1225._m17574(_h9174.getInvitationId(), (cast 3), buff);
			if (_m1824) 
			{
				_w1823++;
			}
		}
		buff._m17576(_z1822, _w1823);
	}

	public function _m17473( _a8710:Serializable,  _y8711:T1223):Void
	{
		var _e8712:Int = _y8711._m17572();
		_y8711._m17573(2);
		var _o8713:Int = 0;
		var _d8714:Bool = false;
		var _a9180:IgnorePlayerInvitationResponse = (cast _a8710);
		if (_a9180.isMessageIdSet() == true) 
		{
			_d8714 = T1225._m17574(_a9180.getMessageId(), (cast 0), _y8711);
			if (_d8714) 
			{
				_o8713++;
			}
		}
		if (_a9180.isRequestIdSet() == true) 
		{
			_d8714 = T1225._m17574(_a9180.getRequestId(), (cast 1), _y8711);
			if (_d8714) 
			{
				_o8713++;
			}
		}
		if (_a9180.isIgnorePlayerInvitationStatusSet() == true) 
		{
			_d8714 = T1225._m17575(this, _a9180.getIgnorePlayerInvitationStatus(), (cast 3), _y8711);
			if (_d8714) 
			{
				_o8713++;
			}
		}
		if (_a9180.isPlayerInvitationIdSet() == true) 
		{
			_d8714 = T1225._m17574(_a9180.getPlayerInvitationId(), (cast 4), _y8711);
			if (_d8714) 
			{
				_o8713++;
			}
		}
		_y8711._m17576(_e8712, _o8713);
	}

	public function _m17474( serializable:Serializable,  buff:T1223):Void
	{
		var _k1830:Int = buff._m17572();
		buff._m17573(2);
		var _t1831:Int = 0;
		var _t1832:Bool = false;
		var _b9186:IgnorePlayerInvitationRequest = (cast serializable);
		if (_b9186.isMessageIdSet() == true) 
		{
			_t1832 = T1225._m17574(_b9186.getMessageId(), (cast 0), buff);
			if (_t1832) 
			{
				_t1831++;
			}
		}
		if (_b9186.isRequestIdSet() == true) 
		{
			_t1832 = T1225._m17574(_b9186.getRequestId(), (cast 1), buff);
			if (_t1832) 
			{
				_t1831++;
			}
		}
		if (_b9186.isInvitationIdSet() == true) 
		{
			_t1832 = T1225._m17574(_b9186.getInvitationId(), (cast 3), buff);
			if (_t1832) 
			{
				_t1831++;
			}
		}
		buff._m17576(_k1830, _t1831);
	}

	public function _m17475( _f8716:Serializable,  _f8717:T1223):Void
	{
		var _k8718:Int = _f8717._m17572();
		_f8717._m17573(2);
		var _q8719:Int = 0;
		var _f8720:Bool = false;
		var _c9192:SubmitScoreResponse = (cast _f8716);
		if (_c9192.isMessageIdSet() == true) 
		{
			_f8720 = T1225._m17574(_c9192.getMessageId(), (cast 0), _f8717);
			if (_f8720) 
			{
				_q8719++;
			}
		}
		if (_c9192.isRequestIdSet() == true) 
		{
			_f8720 = T1225._m17574(_c9192.getRequestId(), (cast 1), _f8717);
			if (_f8720) 
			{
				_q8719++;
			}
		}
		if (_c9192.isSubmitScoreStatusSet() == true) 
		{
			_f8720 = T1225._m17575(this, _c9192.getSubmitScoreStatus(), (cast 3), _f8717);
			if (_f8720) 
			{
				_q8719++;
			}
		}
		_f8717._m17576(_k8718, _q8719);
	}

	public function _m17476( _u8722:Serializable,  _c8723:T1223):Void
	{
		var _g8724:Int = _c8723._m17572();
		_c8723._m17573(2);
		var _j8725:Int = 0;
		var _q8726:Bool = false;
		var _h9198:SubmitScoreRequest = (cast _u8722);
		if (_h9198.isMessageIdSet() == true) 
		{
			_q8726 = T1225._m17574(_h9198.getMessageId(), (cast 0), _c8723);
			if (_q8726) 
			{
				_j8725++;
			}
		}
		if (_h9198.isRequestIdSet() == true) 
		{
			_q8726 = T1225._m17574(_h9198.getRequestId(), (cast 1), _c8723);
			if (_q8726) 
			{
				_j8725++;
			}
		}
		if (_h9198.isScoreSet() == true) 
		{
			_q8726 = T1225._m17575(this, _h9198.getScore(), (cast 3), _c8723);
			if (_q8726) 
			{
				_j8725++;
			}
		}
		if (_h9198.isLeaderboardIdSet() == true) 
		{
			_q8726 = T1225._m17574(_h9198.getLeaderboardId(), (cast 4), _c8723);
			if (_q8726) 
			{
				_j8725++;
			}
		}
		_c8723._m17576(_g8724, _j8725);
	}

	public function _m17477( serializable:Serializable,  buff:T1223):Void
	{
		var _t1842:Int = buff._m17572();
		buff._m17573(2);
		var _z1843:Int = 0;
		var _r1844:Bool = false;
		var _x9204:SubmitScoreWithPlayerNameRequest = (cast serializable);
		if (_x9204.isMessageIdSet() == true) 
		{
			_r1844 = T1225._m17574(_x9204.getMessageId(), (cast 0), buff);
			if (_r1844) 
			{
				_z1843++;
			}
		}
		if (_x9204.isRequestIdSet() == true) 
		{
			_r1844 = T1225._m17574(_x9204.getRequestId(), (cast 1), buff);
			if (_r1844) 
			{
				_z1843++;
			}
		}
		if (_x9204.isNameSet() == true) 
		{
			_r1844 = T1225._m17574(_x9204.getName(), (cast 3), buff);
			if (_r1844) 
			{
				_z1843++;
			}
		}
		if (_x9204.isScoreSet() == true) 
		{
			_r1844 = T1225._m17575(this, _x9204.getScore(), (cast 4), buff);
			if (_r1844) 
			{
				_z1843++;
			}
		}
		if (_x9204.isLeaderboardIdSet() == true) 
		{
			_r1844 = T1225._m17574(_x9204.getLeaderboardId(), (cast 5), buff);
			if (_r1844) 
			{
				_z1843++;
			}
		}
		buff._m17576(_t1842, _z1843);
	}

	public function _m17478( serializable:Serializable,  buff:T1223):Void
	{
		var _r1846:Int = buff._m17572();
		buff._m17573(2);
		var _y1847:Int = 0;
		var _h1848:Bool = false;
		var _r9210:GetLeaderboardResponse = (cast serializable);
		if (_r9210.isMessageIdSet() == true) 
		{
			_h1848 = T1225._m17574(_r9210.getMessageId(), (cast 0), buff);
			if (_h1848) 
			{
				_y1847++;
			}
		}
		if (_r9210.isRequestIdSet() == true) 
		{
			_h1848 = T1225._m17574(_r9210.getRequestId(), (cast 1), buff);
			if (_h1848) 
			{
				_y1847++;
			}
		}
		if (_r9210.isGetLeaderboardStatusSet() == true) 
		{
			_h1848 = T1225._m17575(this, _r9210.getGetLeaderboardStatus(), (cast 3), buff);
			if (_h1848) 
			{
				_y1847++;
			}
		}
		if (_r9210.isLeaderboardSet() == true) 
		{
			_h1848 = T1225._m17575(this, _r9210.getLeaderboard(), (cast 4), buff);
			if (_h1848) 
			{
				_y1847++;
			}
		}
		buff._m17576(_r1846, _y1847);
	}

	public function _m17479( _y8728:Serializable,  _p8729:T1223):Void
	{
		var _h8730:Int = _p8729._m17572();
		_p8729._m17573(2);
		var _z8731:Int = 0;
		var _l8732:Bool = false;
		var _f9216:GetLeaderboardRequest = (cast _y8728);
		if (_f9216.isMessageIdSet() == true) 
		{
			_l8732 = T1225._m17574(_f9216.getMessageId(), (cast 0), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		if (_f9216.isRequestIdSet() == true) 
		{
			_l8732 = T1225._m17574(_f9216.getRequestId(), (cast 1), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		if (_f9216.isLeaderboardIdSet() == true) 
		{
			_l8732 = T1225._m17574(_f9216.getLeaderboardId(), (cast 3), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		if (_f9216.isPeriodSet() == true) 
		{
			_l8732 = T1225._m17575(this, _f9216.getPeriod(), (cast 4), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		if (_f9216.isStartSet() == true) 
		{
			_l8732 = T1225._m17583(_f9216.getStart(), (cast 5), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		if (_f9216.isLimitSet() == true) 
		{
			_l8732 = T1225._m17583(_f9216.getLimit(), (cast 6), _p8729);
			if (_l8732) 
			{
				_z8731++;
			}
		}
		_p8729._m17576(_h8730, _z8731);
	}

	public function _m17480( _v8734:Serializable,  _p8735:T1223):Void
	{
		var _s8736:Int = _p8735._m17572();
		_p8735._m17573(2);
		var _q8737:Int = 0;
		var _v8738:Bool = false;
		var _v9222:BuyItemResponse = (cast _v8734);
		if (_v9222.isMessageIdSet() == true) 
		{
			_v8738 = T1225._m17574(_v9222.getMessageId(), (cast 0), _p8735);
			if (_v8738) 
			{
				_q8737++;
			}
		}
		if (_v9222.isRequestIdSet() == true) 
		{
			_v8738 = T1225._m17574(_v9222.getRequestId(), (cast 1), _p8735);
			if (_v8738) 
			{
				_q8737++;
			}
		}
		if (_v9222.isBuyItemStatusSet() == true) 
		{
			_v8738 = T1225._m17575(this, _v9222.getBuyItemStatus(), (cast 3), _p8735);
			if (_v8738) 
			{
				_q8737++;
			}
		}
		if (_v9222.isBoughtItemSet() == true) 
		{
			_v8738 = T1225._m17575(this, _v9222.getBoughtItem(), (cast 4), _p8735);
			if (_v8738) 
			{
				_q8737++;
			}
		}
		if (_v9222.isQuantitySet() == true) 
		{
			_v8738 = T1225._m17583(_v9222.getQuantity(), (cast 5), _p8735);
			if (_v8738) 
			{
				_q8737++;
			}
		}
		_p8735._m17576(_s8736, _q8737);
	}

	public function _m17481( serializable:Serializable,  buff:T1223):Void
	{
		var _l1858:Int = buff._m17572();
		buff._m17573(2);
		var _q1859:Int = 0;
		var _t1860:Bool = false;
		var _x9228:BuyItemRequest = (cast serializable);
		if (_x9228.isMessageIdSet() == true) 
		{
			_t1860 = T1225._m17574(_x9228.getMessageId(), (cast 0), buff);
			if (_t1860) 
			{
				_q1859++;
			}
		}
		if (_x9228.isRequestIdSet() == true) 
		{
			_t1860 = T1225._m17574(_x9228.getRequestId(), (cast 1), buff);
			if (_t1860) 
			{
				_q1859++;
			}
		}
		if (_x9228.isItemIdSet() == true) 
		{
			_t1860 = T1225._m17574(_x9228.getItemId(), (cast 3), buff);
			if (_t1860) 
			{
				_q1859++;
			}
		}
		if (_x9228.isQuantitySet() == true) 
		{
			_t1860 = T1225._m17583(_x9228.getQuantity(), (cast 4), buff);
			if (_t1860) 
			{
				_q1859++;
			}
		}
		buff._m17576(_l1858, _q1859);
	}

	public function _m17482( _d8745:Serializable,  _h8746:T1223):Void
	{
		var _t1862:Int = _h8746._m17572();
		_h8746._m17573(2);
		var _x1863:Int = 0;
		var _n1864:Bool = false;
		var _n9234:GetStoreResponse = (cast _d8745);
		if (_n9234.isMessageIdSet() == true) 
		{
			_n1864 = T1225._m17574(_n9234.getMessageId(), (cast 0), _h8746);
			if (_n1864) 
			{
				_x1863++;
			}
		}
		if (_n9234.isRequestIdSet() == true) 
		{
			_n1864 = T1225._m17574(_n9234.getRequestId(), (cast 1), _h8746);
			if (_n1864) 
			{
				_x1863++;
			}
		}
		if (_n9234.isGetStoreStatusSet() == true) 
		{
			_n1864 = T1225._m17575(this, _n9234.getGetStoreStatus(), (cast 3), _h8746);
			if (_n1864) 
			{
				_x1863++;
			}
		}
		if (_n9234.isStoreSet() == true) 
		{
			_n1864 = T1225._m17575(this, _n9234.getStore(), (cast 4), _h8746);
			if (_n1864) 
			{
				_x1863++;
			}
		}
		_h8746._m17576(_t1862, _x1863);
	}

	public function _m17483( serializable:Serializable,  buff:T1223):Void
	{
		var _r8747:Int = buff._m17572();
		buff._m17573(2);
		var _d8748:Int = 0;
		var _u8749:Bool = false;
		var _u9240:GetStoreRequest = (cast serializable);
		if (_u9240.isMessageIdSet() == true) 
		{
			_u8749 = T1225._m17574(_u9240.getMessageId(), (cast 0), buff);
			if (_u8749) 
			{
				_d8748++;
			}
		}
		if (_u9240.isRequestIdSet() == true) 
		{
			_u8749 = T1225._m17574(_u9240.getRequestId(), (cast 1), buff);
			if (_u8749) 
			{
				_d8748++;
			}
		}
		buff._m17576(_r8747, _d8748);
	}

	public function _m17484( serializable:Serializable,  buff:T1223):Void
	{
		var _i1870:Int = buff._m17572();
		buff._m17573(2);
		var _w1871:Int = 0;
		var _s1872:Bool = false;
		var _c9246:ConsumeItemResponse = (cast serializable);
		if (_c9246.isMessageIdSet() == true) 
		{
			_s1872 = T1225._m17574(_c9246.getMessageId(), (cast 0), buff);
			if (_s1872) 
			{
				_w1871++;
			}
		}
		if (_c9246.isRequestIdSet() == true) 
		{
			_s1872 = T1225._m17574(_c9246.getRequestId(), (cast 1), buff);
			if (_s1872) 
			{
				_w1871++;
			}
		}
		if (_c9246.isConsumeItemStatusSet() == true) 
		{
			_s1872 = T1225._m17575(this, _c9246.getConsumeItemStatus(), (cast 3), buff);
			if (_s1872) 
			{
				_w1871++;
			}
		}
		if (_c9246.isConsumedItemSet() == true) 
		{
			_s1872 = T1225._m17575(this, _c9246.getConsumedItem(), (cast 4), buff);
			if (_s1872) 
			{
				_w1871++;
			}
		}
		if (_c9246.isQuantitySet() == true) 
		{
			_s1872 = T1225._m17583(_c9246.getQuantity(), (cast 5), buff);
			if (_s1872) 
			{
				_w1871++;
			}
		}
		buff._m17576(_i1870, _w1871);
	}

	public function _m17485( _l8751:Serializable,  _u8752:T1223):Void
	{
		var _i8753:Int = _u8752._m17572();
		_u8752._m17573(2);
		var _u8754:Int = 0;
		var _u8755:Bool = false;
		var _b9252:ConsumeItemRequest = (cast _l8751);
		if (_b9252.isMessageIdSet() == true) 
		{
			_u8755 = T1225._m17574(_b9252.getMessageId(), (cast 0), _u8752);
			if (_u8755) 
			{
				_u8754++;
			}
		}
		if (_b9252.isRequestIdSet() == true) 
		{
			_u8755 = T1225._m17574(_b9252.getRequestId(), (cast 1), _u8752);
			if (_u8755) 
			{
				_u8754++;
			}
		}
		if (_b9252.isItemIdSet() == true) 
		{
			_u8755 = T1225._m17574(_b9252.getItemId(), (cast 3), _u8752);
			if (_u8755) 
			{
				_u8754++;
			}
		}
		if (_b9252.isQuantitySet() == true) 
		{
			_u8755 = T1225._m17583(_b9252.getQuantity(), (cast 4), _u8752);
			if (_u8755) 
			{
				_u8754++;
			}
		}
		_u8752._m17576(_i8753, _u8754);
	}

	public function _m17486( serializable:Serializable,  buff:T1223):Void
	{
		var _g1878:Int = buff._m17572();
		buff._m17573(2);
		var _z1879:Int = 0;
		var _z1880:Bool = false;
		var _g9258:IncreasePlayerWalletResponse = (cast serializable);
		if (_g9258.isMessageIdSet() == true) 
		{
			_z1880 = T1225._m17574(_g9258.getMessageId(), (cast 0), buff);
			if (_z1880) 
			{
				_z1879++;
			}
		}
		if (_g9258.isRequestIdSet() == true) 
		{
			_z1880 = T1225._m17574(_g9258.getRequestId(), (cast 1), buff);
			if (_z1880) 
			{
				_z1879++;
			}
		}
		if (_g9258.isIncreasePlayerWalletStatusSet() == true) 
		{
			_z1880 = T1225._m17575(this, _g9258.getIncreasePlayerWalletStatus(), (cast 3), buff);
			if (_z1880) 
			{
				_z1879++;
			}
		}
		if (_g9258.isValueSet() == true) 
		{
			_z1880 = T1225._m17583(_g9258.getValue(), (cast 4), buff);
			if (_z1880) 
			{
				_z1879++;
			}
		}
		buff._m17576(_g1878, _z1879);
	}

	public function _m17487( _y8757:Serializable,  _n8758:T1223):Void
	{
		var _i8759:Int = _n8758._m17572();
		_n8758._m17573(2);
		var _q8760:Int = 0;
		var _i8761:Bool = false;
		var _c9264:IncreasePlayerWalletRequest = (cast _y8757);
		if (_c9264.isMessageIdSet() == true) 
		{
			_i8761 = T1225._m17574(_c9264.getMessageId(), (cast 0), _n8758);
			if (_i8761) 
			{
				_q8760++;
			}
		}
		if (_c9264.isRequestIdSet() == true) 
		{
			_i8761 = T1225._m17574(_c9264.getRequestId(), (cast 1), _n8758);
			if (_i8761) 
			{
				_q8760++;
			}
		}
		if (_c9264.isValueSet() == true) 
		{
			_i8761 = T1225._m17583(_c9264.getValue(), (cast 3), _n8758);
			if (_i8761) 
			{
				_q8760++;
			}
		}
		_n8758._m17576(_i8759, _q8760);
	}

	public function _m17488( _a8763:Serializable,  _s8764:T1223):Void
	{
		var _q1886:Int = _s8764._m17572();
		_s8764._m17573(2);
		var _f1887:Int = 0;
		var _w1888:Bool = false;
		var _k9270:GetPlayerWalletResponse = (cast _a8763);
		if (_k9270.isMessageIdSet() == true) 
		{
			_w1888 = T1225._m17574(_k9270.getMessageId(), (cast 0), _s8764);
			if (_w1888) 
			{
				_f1887++;
			}
		}
		if (_k9270.isRequestIdSet() == true) 
		{
			_w1888 = T1225._m17574(_k9270.getRequestId(), (cast 1), _s8764);
			if (_w1888) 
			{
				_f1887++;
			}
		}
		if (_k9270.isGetPlayerWalletStatusSet() == true) 
		{
			_w1888 = T1225._m17575(this, _k9270.getGetPlayerWalletStatus(), (cast 3), _s8764);
			if (_w1888) 
			{
				_f1887++;
			}
		}
		if (_k9270.isWalletSet() == true) 
		{
			_w1888 = T1225._m17575(this, _k9270.getWallet(), (cast 4), _s8764);
			if (_w1888) 
			{
				_f1887++;
			}
		}
		_s8764._m17576(_q1886, _f1887);
	}

	public function _m17489( serializable:Serializable,  buff:T1223):Void
	{
		var _f8765:Int = buff._m17572();
		buff._m17573(2);
		var _d8766:Int = 0;
		var _j8767:Bool = false;
		var _i9276:GetPlayerWalletRequest = (cast serializable);
		if (_i9276.isMessageIdSet() == true) 
		{
			_j8767 = T1225._m17574(_i9276.getMessageId(), (cast 0), buff);
			if (_j8767) 
			{
				_d8766++;
			}
		}
		if (_i9276.isRequestIdSet() == true) 
		{
			_j8767 = T1225._m17574(_i9276.getRequestId(), (cast 1), buff);
			if (_j8767) 
			{
				_d8766++;
			}
		}
		buff._m17576(_f8765, _d8766);
	}

	public function _m17490( _i8769:Serializable,  _w8770:T1223):Void
	{
		var _v8771:Int = _w8770._m17572();
		_w8770._m17573(2);
		var _i8772:Int = 0;
		var _t8773:Bool = false;
		var _v9282:GetAchievementBoardResponse = (cast _i8769);
		if (_v9282.isMessageIdSet() == true) 
		{
			_t8773 = T1225._m17574(_v9282.getMessageId(), (cast 0), _w8770);
			if (_t8773) 
			{
				_i8772++;
			}
		}
		if (_v9282.isRequestIdSet() == true) 
		{
			_t8773 = T1225._m17574(_v9282.getRequestId(), (cast 1), _w8770);
			if (_t8773) 
			{
				_i8772++;
			}
		}
		if (_v9282.isGetAchievementBoardStatusSet() == true) 
		{
			_t8773 = T1225._m17575(this, _v9282.getGetAchievementBoardStatus(), (cast 3), _w8770);
			if (_t8773) 
			{
				_i8772++;
			}
		}
		if (_v9282.isAchievementBoardSet() == true) 
		{
			_t8773 = T1225._m17575(this, _v9282.getAchievementBoard(), (cast 4), _w8770);
			if (_t8773) 
			{
				_i8772++;
			}
		}
		_w8770._m17576(_v8771, _i8772);
	}

	public function _m17491( serializable:Serializable,  buff:T1223):Void
	{
		var _t1898:Int = buff._m17572();
		buff._m17573(2);
		var _d1899:Int = 0;
		var _u1900:Bool = false;
		var _e9288:GetAchievementBoardRequest = (cast serializable);
		if (_e9288.isMessageIdSet() == true) 
		{
			_u1900 = T1225._m17574(_e9288.getMessageId(), (cast 0), buff);
			if (_u1900) 
			{
				_d1899++;
			}
		}
		if (_e9288.isRequestIdSet() == true) 
		{
			_u1900 = T1225._m17574(_e9288.getRequestId(), (cast 1), buff);
			if (_u1900) 
			{
				_d1899++;
			}
		}
		buff._m17576(_t1898, _d1899);
	}

	public function _m17492( _r8775:Serializable,  _p8776:T1223):Void
	{
		var _y8777:Int = _p8776._m17572();
		_p8776._m17573(2);
		var _w8778:Int = 0;
		var _r8779:Bool = false;
		var _h9294:AchieveResponse = (cast _r8775);
		if (_h9294.isMessageIdSet() == true) 
		{
			_r8779 = T1225._m17574(_h9294.getMessageId(), (cast 0), _p8776);
			if (_r8779) 
			{
				_w8778++;
			}
		}
		if (_h9294.isRequestIdSet() == true) 
		{
			_r8779 = T1225._m17574(_h9294.getRequestId(), (cast 1), _p8776);
			if (_r8779) 
			{
				_w8778++;
			}
		}
		if (_h9294.isAchieveStatusSet() == true) 
		{
			_r8779 = T1225._m17575(this, _h9294.getAchieveStatus(), (cast 3), _p8776);
			if (_r8779) 
			{
				_w8778++;
			}
		}
		_p8776._m17576(_y8777, _w8778);
	}

	public function _m17493( serializable:Serializable,  buff:T1223):Void
	{
		var _i1906:Int = buff._m17572();
		buff._m17573(2);
		var _a1907:Int = 0;
		var _q1908:Bool = false;
		var _q9300:AchieveRequest = (cast serializable);
		if (_q9300.isMessageIdSet() == true) 
		{
			_q1908 = T1225._m17574(_q9300.getMessageId(), (cast 0), buff);
			if (_q1908) 
			{
				_a1907++;
			}
		}
		if (_q9300.isRequestIdSet() == true) 
		{
			_q1908 = T1225._m17574(_q9300.getRequestId(), (cast 1), buff);
			if (_q1908) 
			{
				_a1907++;
			}
		}
		if (_q9300.isAchivementIdSet() == true) 
		{
			_q1908 = T1225._m17574(_q9300.getAchivementId(), (cast 3), buff);
			if (_q1908) 
			{
				_a1907++;
			}
		}
		buff._m17576(_i1906, _a1907);
	}

	public function _m17494( _z8781:Serializable,  _d8782:T1223):Void
	{
		var _w8783:Int = _d8782._m17572();
		_d8782._m17573(2);
		var _w8784:Int = 0;
		var _e8785:Bool = false;
		var _k9306:SearchImmediateGameResponse = (cast _z8781);
		if (_k9306.isMessageIdSet() == true) 
		{
			_e8785 = T1225._m17574(_k9306.getMessageId(), (cast 0), _d8782);
			if (_e8785) 
			{
				_w8784++;
			}
		}
		if (_k9306.isRequestIdSet() == true) 
		{
			_e8785 = T1225._m17574(_k9306.getRequestId(), (cast 1), _d8782);
			if (_e8785) 
			{
				_w8784++;
			}
		}
		if (_k9306.isSearchImmediateGameStatusSet() == true) 
		{
			_e8785 = T1225._m17575(this, _k9306.getSearchImmediateGameStatus(), (cast 3), _d8782);
			if (_e8785) 
			{
				_w8784++;
			}
		}
		if (_k9306.isGameSet() == true) 
		{
			_e8785 = T1225._m17575(this, _k9306.getGame(), (cast 4), _d8782);
			if (_e8785) 
			{
				_w8784++;
			}
		}
		_d8782._m17576(_w8783, _w8784);
	}

	public function _m17495( serializable:Serializable,  buff:T1223):Void
	{
		var _d1914:Int = buff._m17572();
		buff._m17573(2);
		var _f1915:Int = 0;
		var _p1916:Bool = false;
		var _x9312:SearchImmediateGameRequest = (cast serializable);
		if (_x9312.isMessageIdSet() == true) 
		{
			_p1916 = T1225._m17574(_x9312.getMessageId(), (cast 0), buff);
			if (_p1916) 
			{
				_f1915++;
			}
		}
		if (_x9312.isRequestIdSet() == true) 
		{
			_p1916 = T1225._m17574(_x9312.getRequestId(), (cast 1), buff);
			if (_p1916) 
			{
				_f1915++;
			}
		}
		buff._m17576(_d1914, _f1915);
	}

	public function _m17496( _n8787:Serializable,  _l8788:T1223):Void
	{
		var _y1918:Int = _l8788._m17572();
		_l8788._m17573(2);
		var _k1919:Int = 0;
		var _s1920:Bool = false;
		var _h9318:SearchImmediateGameByConditionsRequest = (cast _n8787);
		if (_h9318.isMessageIdSet() == true) 
		{
			_s1920 = T1225._m17574(_h9318.getMessageId(), (cast 0), _l8788);
			if (_s1920) 
			{
				_k1919++;
			}
		}
		if (_h9318.isRequestIdSet() == true) 
		{
			_s1920 = T1225._m17574(_h9318.getRequestId(), (cast 1), _l8788);
			if (_s1920) 
			{
				_k1919++;
			}
		}
		if (_h9318.isQuerySet() == true) 
		{
			_s1920 = T1225._m17575(this, _h9318.getQuery(), (cast 3), _l8788);
			if (_s1920) 
			{
				_k1919++;
			}
		}
		if (_h9318.isMatchMakingConditionsSet() == true) 
		{
			_s1920 = T1225._m17575(this, _h9318.getMatchMakingConditions(), (cast 4), _l8788);
			if (_s1920) 
			{
				_k1919++;
			}
		}
		_l8788._m17576(_y1918, _k1919);
	}

	public function _m17497( serializable:Serializable,  buff:T1223):Void
	{
		var _s8789:Int = buff._m17572();
		buff._m17573(2);
		var _x8790:Int = 0;
		var _x8791:Bool = false;
		var _w9324:JoinGameResponse = (cast serializable);
		if (_w9324.isMessageIdSet() == true) 
		{
			_x8791 = T1225._m17574(_w9324.getMessageId(), (cast 0), buff);
			if (_x8791) 
			{
				_x8790++;
			}
		}
		if (_w9324.isRequestIdSet() == true) 
		{
			_x8791 = T1225._m17574(_w9324.getRequestId(), (cast 1), buff);
			if (_x8791) 
			{
				_x8790++;
			}
		}
		if (_w9324.isJoinGameStatusSet() == true) 
		{
			_x8791 = T1225._m17575(this, _w9324.getJoinGameStatus(), (cast 3), buff);
			if (_x8791) 
			{
				_x8790++;
			}
		}
		if (_w9324.isGameSet() == true) 
		{
			_x8791 = T1225._m17575(this, _w9324.getGame(), (cast 4), buff);
			if (_x8791) 
			{
				_x8790++;
			}
		}
		buff._m17576(_s8789, _x8790);
	}

	public function _m17498( serializable:Serializable,  buff:T1223):Void
	{
		var _n1926:Int = buff._m17572();
		buff._m17573(2);
		var _b1927:Int = 0;
		var _f1928:Bool = false;
		var _z9330:JoinGameRequest = (cast serializable);
		if (_z9330.isMessageIdSet() == true) 
		{
			_f1928 = T1225._m17574(_z9330.getMessageId(), (cast 0), buff);
			if (_f1928) 
			{
				_b1927++;
			}
		}
		if (_z9330.isRequestIdSet() == true) 
		{
			_f1928 = T1225._m17574(_z9330.getRequestId(), (cast 1), buff);
			if (_f1928) 
			{
				_b1927++;
			}
		}
		if (_z9330.isGameIdSet() == true) 
		{
			_f1928 = T1225._m17574(_z9330.getGameId(), (cast 3), buff);
			if (_f1928) 
			{
				_b1927++;
			}
		}
		buff._m17576(_n1926, _b1927);
	}

	public function _m17499( _k8793:Serializable,  _b8794:T1223):Void
	{
		var _o8795:Int = _b8794._m17572();
		_b8794._m17573(2);
		var _g8796:Int = 0;
		var _q8797:Bool = false;
		var _u9336:UnjoinGameResponse = (cast _k8793);
		if (_u9336.isMessageIdSet() == true) 
		{
			_q8797 = T1225._m17574(_u9336.getMessageId(), (cast 0), _b8794);
			if (_q8797) 
			{
				_g8796++;
			}
		}
		if (_u9336.isRequestIdSet() == true) 
		{
			_q8797 = T1225._m17574(_u9336.getRequestId(), (cast 1), _b8794);
			if (_q8797) 
			{
				_g8796++;
			}
		}
		if (_u9336.isUnjoinGameStatusSet() == true) 
		{
			_q8797 = T1225._m17575(this, _u9336.getUnjoinGameStatus(), (cast 3), _b8794);
			if (_q8797) 
			{
				_g8796++;
			}
		}
		if (_u9336.isGameIdSet() == true) 
		{
			_q8797 = T1225._m17574(_u9336.getGameId(), (cast 4), _b8794);
			if (_q8797) 
			{
				_g8796++;
			}
		}
		_b8794._m17576(_o8795, _g8796);
	}

	public function _m17500( serializable:Serializable,  buff:T1223):Void
	{
		var _e1934:Int = buff._m17572();
		buff._m17573(2);
		var _t1935:Int = 0;
		var _v1936:Bool = false;
		var _x9342:UnjoinGameRequest = (cast serializable);
		if (_x9342.isMessageIdSet() == true) 
		{
			_v1936 = T1225._m17574(_x9342.getMessageId(), (cast 0), buff);
			if (_v1936) 
			{
				_t1935++;
			}
		}
		if (_x9342.isRequestIdSet() == true) 
		{
			_v1936 = T1225._m17574(_x9342.getRequestId(), (cast 1), buff);
			if (_v1936) 
			{
				_t1935++;
			}
		}
		if (_x9342.isGameIdSet() == true) 
		{
			_v1936 = T1225._m17574(_x9342.getGameId(), (cast 3), buff);
			if (_v1936) 
			{
				_t1935++;
			}
		}
		buff._m17576(_e1934, _t1935);
	}

	public function _m17501( serializable:Serializable,  buff:T1223):Void
	{
		var _h1938:Int = buff._m17572();
		buff._m17573(2);
		var _f1939:Int = 0;
		var _x1940:Bool = false;
		var _f9348:AcceptFriendChallengeResponse = (cast serializable);
		if (_f9348.isMessageIdSet() == true) 
		{
			_x1940 = T1225._m17574(_f9348.getMessageId(), (cast 0), buff);
			if (_x1940) 
			{
				_f1939++;
			}
		}
		if (_f9348.isRequestIdSet() == true) 
		{
			_x1940 = T1225._m17574(_f9348.getRequestId(), (cast 1), buff);
			if (_x1940) 
			{
				_f1939++;
			}
		}
		if (_f9348.isAcceptFriendChallengeStatusSet() == true) 
		{
			_x1940 = T1225._m17575(this, _f9348.getAcceptFriendChallengeStatus(), (cast 3), buff);
			if (_x1940) 
			{
				_f1939++;
			}
		}
		if (_f9348.isGameIdSet() == true) 
		{
			_x1940 = T1225._m17574(_f9348.getGameId(), (cast 4), buff);
			if (_x1940) 
			{
				_f1939++;
			}
		}
		if (_f9348.isChallengeIdSet() == true) 
		{
			_x1940 = T1225._m17574(_f9348.getChallengeId(), (cast 5), buff);
			if (_x1940) 
			{
				_f1939++;
			}
		}
		buff._m17576(_h1938, _f1939);
	}

	public function _m17502( _r8799:Serializable,  _j8800:T1223):Void
	{
		var _r8801:Int = _j8800._m17572();
		_j8800._m17573(2);
		var _n8802:Int = 0;
		var _p8803:Bool = false;
		var _n9354:AcceptFriendChallengeRequest = (cast _r8799);
		if (_n9354.isMessageIdSet() == true) 
		{
			_p8803 = T1225._m17574(_n9354.getMessageId(), (cast 0), _j8800);
			if (_p8803) 
			{
				_n8802++;
			}
		}
		if (_n9354.isRequestIdSet() == true) 
		{
			_p8803 = T1225._m17574(_n9354.getRequestId(), (cast 1), _j8800);
			if (_p8803) 
			{
				_n8802++;
			}
		}
		if (_n9354.isChallengeIdSet() == true) 
		{
			_p8803 = T1225._m17574(_n9354.getChallengeId(), (cast 3), _j8800);
			if (_p8803) 
			{
				_n8802++;
			}
		}
		_j8800._m17576(_r8801, _n8802);
	}

	public function _m17503( serializable:Serializable,  buff:T1223):Void
	{
		var _h1946:Int = buff._m17572();
		buff._m17573(2);
		var _v1947:Int = 0;
		var _x1948:Bool = false;
		var _k9360:CancelFriendChallengeResponse = (cast serializable);
		if (_k9360.isMessageIdSet() == true) 
		{
			_x1948 = T1225._m17574(_k9360.getMessageId(), (cast 0), buff);
			if (_x1948) 
			{
				_v1947++;
			}
		}
		if (_k9360.isRequestIdSet() == true) 
		{
			_x1948 = T1225._m17574(_k9360.getRequestId(), (cast 1), buff);
			if (_x1948) 
			{
				_v1947++;
			}
		}
		if (_k9360.isCancelFriendChallengeStatusSet() == true) 
		{
			_x1948 = T1225._m17575(this, _k9360.getCancelFriendChallengeStatus(), (cast 3), buff);
			if (_x1948) 
			{
				_v1947++;
			}
		}
		if (_k9360.isChallengeIdSet() == true) 
		{
			_x1948 = T1225._m17574(_k9360.getChallengeId(), (cast 4), buff);
			if (_x1948) 
			{
				_v1947++;
			}
		}
		buff._m17576(_h1946, _v1947);
	}

	public function _m17504( serializable:Serializable,  buff:T1223):Void
	{
		var _e1950:Int = buff._m17572();
		buff._m17573(2);
		var _a1951:Int = 0;
		var _l1952:Bool = false;
		var _z9366:CancelFriendChallengeRequest = (cast serializable);
		if (_z9366.isMessageIdSet() == true) 
		{
			_l1952 = T1225._m17574(_z9366.getMessageId(), (cast 0), buff);
			if (_l1952) 
			{
				_a1951++;
			}
		}
		if (_z9366.isRequestIdSet() == true) 
		{
			_l1952 = T1225._m17574(_z9366.getRequestId(), (cast 1), buff);
			if (_l1952) 
			{
				_a1951++;
			}
		}
		if (_z9366.isChallengeIdSet() == true) 
		{
			_l1952 = T1225._m17574(_z9366.getChallengeId(), (cast 3), buff);
			if (_l1952) 
			{
				_a1951++;
			}
		}
		buff._m17576(_e1950, _a1951);
	}

	public function _m17505( _n8805:Serializable,  _c8806:T1223):Void
	{
		var _f8807:Int = _c8806._m17572();
		_c8806._m17573(2);
		var _w8808:Int = 0;
		var _v8809:Bool = false;
		var _x9372:RefuseFriendChallengeResponse = (cast _n8805);
		if (_x9372.isMessageIdSet() == true) 
		{
			_v8809 = T1225._m17574(_x9372.getMessageId(), (cast 0), _c8806);
			if (_v8809) 
			{
				_w8808++;
			}
		}
		if (_x9372.isRequestIdSet() == true) 
		{
			_v8809 = T1225._m17574(_x9372.getRequestId(), (cast 1), _c8806);
			if (_v8809) 
			{
				_w8808++;
			}
		}
		if (_x9372.isRefuseFriendChallengeStatusSet() == true) 
		{
			_v8809 = T1225._m17575(this, _x9372.getRefuseFriendChallengeStatus(), (cast 3), _c8806);
			if (_v8809) 
			{
				_w8808++;
			}
		}
		if (_x9372.isChallengeIdSet() == true) 
		{
			_v8809 = T1225._m17574(_x9372.getChallengeId(), (cast 4), _c8806);
			if (_v8809) 
			{
				_w8808++;
			}
		}
		_c8806._m17576(_f8807, _w8808);
	}

	public function _m17506( serializable:Serializable,  buff:T1223):Void
	{
		var _r1958:Int = buff._m17572();
		buff._m17573(2);
		var _q1959:Int = 0;
		var _y1960:Bool = false;
		var _h9378:RefuseFriendChallengeRequest = (cast serializable);
		if (_h9378.isMessageIdSet() == true) 
		{
			_y1960 = T1225._m17574(_h9378.getMessageId(), (cast 0), buff);
			if (_y1960) 
			{
				_q1959++;
			}
		}
		if (_h9378.isRequestIdSet() == true) 
		{
			_y1960 = T1225._m17574(_h9378.getRequestId(), (cast 1), buff);
			if (_y1960) 
			{
				_q1959++;
			}
		}
		if (_h9378.isChallengeIdSet() == true) 
		{
			_y1960 = T1225._m17574(_h9378.getChallengeId(), (cast 3), buff);
			if (_y1960) 
			{
				_q1959++;
			}
		}
		buff._m17576(_r1958, _q1959);
	}

	public function _m17507( _w8811:Serializable,  _s8812:T1223):Void
	{
		var _v8813:Int = _s8812._m17572();
		_s8812._m17573(2);
		var _p8814:Int = 0;
		var _i8815:Bool = false;
		var _g9384:GetChallengesResponse = (cast _w8811);
		if (_g9384.isMessageIdSet() == true) 
		{
			_i8815 = T1225._m17574(_g9384.getMessageId(), (cast 0), _s8812);
			if (_i8815) 
			{
				_p8814++;
			}
		}
		if (_g9384.isRequestIdSet() == true) 
		{
			_i8815 = T1225._m17574(_g9384.getRequestId(), (cast 1), _s8812);
			if (_i8815) 
			{
				_p8814++;
			}
		}
		if (_g9384.isGetChallengesStatusSet() == true) 
		{
			_i8815 = T1225._m17575(this, _g9384.getGetChallengesStatus(), (cast 3), _s8812);
			if (_i8815) 
			{
				_p8814++;
			}
		}
		if (_g9384.isChallengesSet() == true) 
		{
			var _b9385:NList<NChallenge> = _g9384.getChallenges();
			if (_b9385 == null) 
			{
				_i8815 = false;
			} else 
			{
				_s8812._m17579((cast 4));
				_s8812._m17580(T1221._l17181);
				var _l9386:Int = _s8812._m17572();
				_s8812._m17573(4);
				var _f9387:Int = _b9385.size();
				_s8812._m17579((cast _f9387));
				for (_x8832 in 0 ... _f9387) 
				{
					var _t8833:NChallenge = _b9385.get(_x8832);
					if (_t8833 == null) 
					{
						_s8812._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _t8833, _s8812);
					}
				}
				_s8812._m17582(_l9386, _s8812._m17572() - _l9386);
				_i8815 = true;
			}
			if (_i8815) 
			{
				_p8814++;
			}
		}
		_s8812._m17576(_v8813, _p8814);
	}

	public function _m17508( _m8817:Serializable,  _s8818:T1223):Void
	{
		var _y8819:Int = _s8818._m17572();
		_s8818._m17573(2);
		var _r8820:Int = 0;
		var _t8821:Bool = false;
		var _t9395:GetChallengesRequest = (cast _m8817);
		if (_t9395.isMessageIdSet() == true) 
		{
			_t8821 = T1225._m17574(_t9395.getMessageId(), (cast 0), _s8818);
			if (_t8821) 
			{
				_r8820++;
			}
		}
		if (_t9395.isRequestIdSet() == true) 
		{
			_t8821 = T1225._m17574(_t9395.getRequestId(), (cast 1), _s8818);
			if (_t8821) 
			{
				_r8820++;
			}
		}
		if (_t9395.isDbQuerySet() == true) 
		{
			_t8821 = T1225._m17575(this, _t9395.getDbQuery(), (cast 3), _s8818);
			if (_t8821) 
			{
				_r8820++;
			}
		}
		_s8818._m17576(_y8819, _r8820);
	}

	public function _m17509( _h8823:Serializable,  _p8824:T1223):Void
	{
		var _p8825:Int = _p8824._m17572();
		_p8824._m17573(2);
		var _v8826:Int = 0;
		var _l8827:Bool = false;
		var _s9401:StartGameResponse = (cast _h8823);
		if (_s9401.isMessageIdSet() == true) 
		{
			_l8827 = T1225._m17574(_s9401.getMessageId(), (cast 0), _p8824);
			if (_l8827) 
			{
				_v8826++;
			}
		}
		if (_s9401.isRequestIdSet() == true) 
		{
			_l8827 = T1225._m17574(_s9401.getRequestId(), (cast 1), _p8824);
			if (_l8827) 
			{
				_v8826++;
			}
		}
		if (_s9401.isStartGameStatusSet() == true) 
		{
			_l8827 = T1225._m17575(this, _s9401.getStartGameStatus(), (cast 3), _p8824);
			if (_l8827) 
			{
				_v8826++;
			}
		}
		if (_s9401.isGameIdSet() == true) 
		{
			_l8827 = T1225._m17574(_s9401.getGameId(), (cast 4), _p8824);
			if (_l8827) 
			{
				_v8826++;
			}
		}
		_p8824._m17576(_p8825, _v8826);
	}

	public function _m17510( serializable:Serializable,  buff:T1223):Void
	{
		var _f1979:Int = buff._m17572();
		buff._m17573(2);
		var _n1980:Int = 0;
		var _c1981:Bool = false;
		var _g9407:StartGameRequest = (cast serializable);
		if (_g9407.isMessageIdSet() == true) 
		{
			_c1981 = T1225._m17574(_g9407.getMessageId(), (cast 0), buff);
			if (_c1981) 
			{
				_n1980++;
			}
		}
		if (_g9407.isRequestIdSet() == true) 
		{
			_c1981 = T1225._m17574(_g9407.getRequestId(), (cast 1), buff);
			if (_c1981) 
			{
				_n1980++;
			}
		}
		if (_g9407.isGameIdSet() == true) 
		{
			_c1981 = T1225._m17574(_g9407.getGameId(), (cast 3), buff);
			if (_c1981) 
			{
				_n1980++;
			}
		}
		buff._m17576(_f1979, _n1980);
	}

	public function _m17511( serializable:Serializable,  buff:T1223):Void
	{
		var _x1983:Int = buff._m17572();
		buff._m17573(2);
		var _x1984:Int = 0;
		var _p1985:Bool = false;
		var _n9413:StopGameResponse = (cast serializable);
		if (_n9413.isMessageIdSet() == true) 
		{
			_p1985 = T1225._m17574(_n9413.getMessageId(), (cast 0), buff);
			if (_p1985) 
			{
				_x1984++;
			}
		}
		if (_n9413.isRequestIdSet() == true) 
		{
			_p1985 = T1225._m17574(_n9413.getRequestId(), (cast 1), buff);
			if (_p1985) 
			{
				_x1984++;
			}
		}
		if (_n9413.isStopGameStatusSet() == true) 
		{
			_p1985 = T1225._m17575(this, _n9413.getStopGameStatus(), (cast 3), buff);
			if (_p1985) 
			{
				_x1984++;
			}
		}
		if (_n9413.isGameIdSet() == true) 
		{
			_p1985 = T1225._m17574(_n9413.getGameId(), (cast 4), buff);
			if (_p1985) 
			{
				_x1984++;
			}
		}
		buff._m17576(_x1983, _x1984);
	}

	public function _m17512( serializable:Serializable,  buff:T1223):Void
	{
		var _e1987:Int = buff._m17572();
		buff._m17573(2);
		var _k1988:Int = 0;
		var _g1989:Bool = false;
		var _a9419:StopGameRequest = (cast serializable);
		if (_a9419.isMessageIdSet() == true) 
		{
			_g1989 = T1225._m17574(_a9419.getMessageId(), (cast 0), buff);
			if (_g1989) 
			{
				_k1988++;
			}
		}
		if (_a9419.isRequestIdSet() == true) 
		{
			_g1989 = T1225._m17574(_a9419.getRequestId(), (cast 1), buff);
			if (_g1989) 
			{
				_k1988++;
			}
		}
		if (_a9419.isGameIdSet() == true) 
		{
			_g1989 = T1225._m17574(_a9419.getGameId(), (cast 3), buff);
			if (_g1989) 
			{
				_k1988++;
			}
		}
		buff._m17576(_e1987, _k1988);
	}

	public function _m17513( _u8834:Serializable,  _g8835:T1223):Void
	{
		var _c1991:Int = _g8835._m17572();
		_g8835._m17573(2);
		var _b1992:Int = 0;
		var _l1993:Bool = false;
		var _p9425:CreateGameResponse = (cast _u8834);
		if (_p9425.isMessageIdSet() == true) 
		{
			_l1993 = T1225._m17574(_p9425.getMessageId(), (cast 0), _g8835);
			if (_l1993) 
			{
				_b1992++;
			}
		}
		if (_p9425.isRequestIdSet() == true) 
		{
			_l1993 = T1225._m17574(_p9425.getRequestId(), (cast 1), _g8835);
			if (_l1993) 
			{
				_b1992++;
			}
		}
		if (_p9425.isCreateGameStatusSet() == true) 
		{
			_l1993 = T1225._m17575(this, _p9425.getCreateGameStatus(), (cast 3), _g8835);
			if (_l1993) 
			{
				_b1992++;
			}
		}
		if (_p9425.isGameIdSet() == true) 
		{
			_l1993 = T1225._m17574(_p9425.getGameId(), (cast 4), _g8835);
			if (_l1993) 
			{
				_b1992++;
			}
		}
		_g8835._m17576(_c1991, _b1992);
	}

	public function _m17514( serializable:Serializable,  buff:T1223):Void
	{
		var _c8836:Int = buff._m17572();
		buff._m17573(2);
		var _l8837:Int = 0;
		var _a8838:Bool = false;
		var _a9431:CreateGameRequest = (cast serializable);
		if (_a9431.isMessageIdSet() == true) 
		{
			_a8838 = T1225._m17574(_a9431.getMessageId(), (cast 0), buff);
			if (_a8838) 
			{
				_l8837++;
			}
		}
		if (_a9431.isRequestIdSet() == true) 
		{
			_a8838 = T1225._m17574(_a9431.getRequestId(), (cast 1), buff);
			if (_a8838) 
			{
				_l8837++;
			}
		}
		buff._m17576(_c8836, _l8837);
	}

	public function _m17515( serializable:Serializable,  buff:T1223):Void
	{
		var _s1999:Int = buff._m17572();
		buff._m17573(2);
		var _c2000:Int = 0;
		var _q2001:Bool = false;
		var _z9437:CreateGameWithCharacteristicsRequest = (cast serializable);
		if (_z9437.isMessageIdSet() == true) 
		{
			_q2001 = T1225._m17574(_z9437.getMessageId(), (cast 0), buff);
			if (_q2001) 
			{
				_c2000++;
			}
		}
		if (_z9437.isRequestIdSet() == true) 
		{
			_q2001 = T1225._m17574(_z9437.getRequestId(), (cast 1), buff);
			if (_q2001) 
			{
				_c2000++;
			}
		}
		if (_z9437.isGameCharacteristicsSet() == true) 
		{
			_q2001 = T1225._m17575(this, _z9437.getGameCharacteristics(), (cast 3), buff);
			if (_q2001) 
			{
				_c2000++;
			}
		}
		buff._m17576(_s1999, _c2000);
	}

	public function _m17516( _d8840:Serializable,  _u8841:T1223):Void
	{
		var _p8842:Int = _u8841._m17572();
		_u8841._m17573(2);
		var _u8843:Int = 0;
		var _j8844:Bool = false;
		var _d9443:GetGamesResponse = (cast _d8840);
		if (_d9443.isMessageIdSet() == true) 
		{
			_j8844 = T1225._m17574(_d9443.getMessageId(), (cast 0), _u8841);
			if (_j8844) 
			{
				_u8843++;
			}
		}
		if (_d9443.isRequestIdSet() == true) 
		{
			_j8844 = T1225._m17574(_d9443.getRequestId(), (cast 1), _u8841);
			if (_j8844) 
			{
				_u8843++;
			}
		}
		if (_d9443.isGetGamesStatusSet() == true) 
		{
			_j8844 = T1225._m17575(this, _d9443.getGetGamesStatus(), (cast 3), _u8841);
			if (_j8844) 
			{
				_u8843++;
			}
		}
		if (_d9443.isGamesSet() == true) 
		{
			var _g9444:NList<NGame> = _d9443.getGames();
			if (_g9444 == null) 
			{
				_j8844 = false;
			} else 
			{
				_u8841._m17579((cast 4));
				_u8841._m17580(T1221._l17181);
				var _e9445:Int = _u8841._m17572();
				_u8841._m17573(4);
				var _w9446:Int = _g9444.size();
				_u8841._m17579((cast _w9446));
				for (_e2010 in 0 ... _w9446) 
				{
					var _w2011:NGame = _g9444.get(_e2010);
					if (_w2011 == null) 
					{
						_u8841._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _w2011, _u8841);
					}
				}
				_u8841._m17582(_e9445, _u8841._m17572() - _e9445);
				_j8844 = true;
			}
			if (_j8844) 
			{
				_u8843++;
			}
		}
		_u8841._m17576(_p8842, _u8843);
	}

	public function _m17517( _r8846:Serializable,  _d8847:T1223):Void
	{
		var _a8848:Int = _d8847._m17572();
		_d8847._m17573(2);
		var _n8849:Int = 0;
		var _s8850:Bool = false;
		var _h9454:GetGamesRequest = (cast _r8846);
		if (_h9454.isMessageIdSet() == true) 
		{
			_s8850 = T1225._m17574(_h9454.getMessageId(), (cast 0), _d8847);
			if (_s8850) 
			{
				_n8849++;
			}
		}
		if (_h9454.isRequestIdSet() == true) 
		{
			_s8850 = T1225._m17574(_h9454.getRequestId(), (cast 1), _d8847);
			if (_s8850) 
			{
				_n8849++;
			}
		}
		if (_h9454.isDbQuerySet() == true) 
		{
			_s8850 = T1225._m17575(this, _h9454.getDbQuery(), (cast 3), _d8847);
			if (_s8850) 
			{
				_n8849++;
			}
		}
		_d8847._m17576(_a8848, _n8849);
	}

	public function _m17518( serializable:Serializable,  buff:T1223):Void
	{
		var _o2016:Int = buff._m17572();
		buff._m17573(2);
		var _u2017:Int = 0;
		var _w2018:Bool = false;
		var _z9460:SaveAsGhostResponse = (cast serializable);
		if (_z9460.isMessageIdSet() == true) 
		{
			_w2018 = T1225._m17574(_z9460.getMessageId(), (cast 0), buff);
			if (_w2018) 
			{
				_u2017++;
			}
		}
		if (_z9460.isRequestIdSet() == true) 
		{
			_w2018 = T1225._m17574(_z9460.getRequestId(), (cast 1), buff);
			if (_w2018) 
			{
				_u2017++;
			}
		}
		if (_z9460.isSaveAsGhostStatusSet() == true) 
		{
			_w2018 = T1225._m17575(this, _z9460.getSaveAsGhostStatus(), (cast 3), buff);
			if (_w2018) 
			{
				_u2017++;
			}
		}
		buff._m17576(_o2016, _u2017);
	}

	public function _m17519( _s8852:Serializable,  _h8853:T1223):Void
	{
		var _n8854:Int = _h8853._m17572();
		_h8853._m17573(2);
		var _q8855:Int = 0;
		var _m8856:Bool = false;
		var _x9466:SaveAsGhostRequest = (cast _s8852);
		if (_x9466.isMessageIdSet() == true) 
		{
			_m8856 = T1225._m17574(_x9466.getMessageId(), (cast 0), _h8853);
			if (_m8856) 
			{
				_q8855++;
			}
		}
		if (_x9466.isRequestIdSet() == true) 
		{
			_m8856 = T1225._m17574(_x9466.getRequestId(), (cast 1), _h8853);
			if (_m8856) 
			{
				_q8855++;
			}
		}
		if (_x9466.isGameSet() == true) 
		{
			_m8856 = T1225._m17575(this, _x9466.getGame(), (cast 3), _h8853);
			if (_m8856) 
			{
				_q8855++;
			}
		}
		_h8853._m17576(_n8854, _q8855);
	}

	public function _m17520( serializable:Serializable,  buff:T1223):Void
	{
		var _y2024:Int = buff._m17572();
		buff._m17573(2);
		var _b2025:Int = 0;
		var _n2026:Bool = false;
		var _s9472:GetGhostsResponse = (cast serializable);
		if (_s9472.isMessageIdSet() == true) 
		{
			_n2026 = T1225._m17574(_s9472.getMessageId(), (cast 0), buff);
			if (_n2026) 
			{
				_b2025++;
			}
		}
		if (_s9472.isRequestIdSet() == true) 
		{
			_n2026 = T1225._m17574(_s9472.getRequestId(), (cast 1), buff);
			if (_n2026) 
			{
				_b2025++;
			}
		}
		if (_s9472.isGetGhostsStatusSet() == true) 
		{
			_n2026 = T1225._m17575(this, _s9472.getGetGhostsStatus(), (cast 3), buff);
			if (_n2026) 
			{
				_b2025++;
			}
		}
		if (_s9472.isGhostsSet() == true) 
		{
			var _c9473:NList<NGame> = _s9472.getGhosts();
			if (_c9473 == null) 
			{
				_n2026 = false;
			} else 
			{
				buff._m17579((cast 4));
				buff._m17580(T1221._l17181);
				var _b9474:Int = buff._m17572();
				buff._m17573(4);
				var _m9475:Int = _c9473.size();
				buff._m17579((cast _m9475));
				for (_t8885 in 0 ... _m9475) 
				{
					var _p8886:NGame = _c9473.get(_t8885);
					if (_p8886 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _p8886, buff);
					}
				}
				buff._m17582(_b9474, buff._m17572() - _b9474);
				_n2026 = true;
			}
			if (_n2026) 
			{
				_b2025++;
			}
		}
		buff._m17576(_y2024, _b2025);
	}

	public function _m17521( _z8858:Serializable,  _o8859:T1223):Void
	{
		var _j8860:Int = _o8859._m17572();
		_o8859._m17573(2);
		var _n8861:Int = 0;
		var _y8862:Bool = false;
		var _q2036:GetGhostsRequest = (cast _z8858);
		if (_q2036.isMessageIdSet() == true) 
		{
			_y8862 = T1225._m17574(_q2036.getMessageId(), (cast 0), _o8859);
			if (_y8862) 
			{
				_n8861++;
			}
		}
		if (_q2036.isRequestIdSet() == true) 
		{
			_y8862 = T1225._m17574(_q2036.getRequestId(), (cast 1), _o8859);
			if (_y8862) 
			{
				_n8861++;
			}
		}
		if (_q2036.isDbQuerySet() == true) 
		{
			_y8862 = T1225._m17575(this, _q2036.getDbQuery(), (cast 3), _o8859);
			if (_y8862) 
			{
				_n8861++;
			}
		}
		_o8859._m17576(_j8860, _n8861);
	}

	public function _m17522( serializable:Serializable,  buff:T1223):Void
	{
		var _y2037:Int = buff._m17572();
		buff._m17573(2);
		var _i2038:Int = 0;
		var _g2039:Bool = false;
		var _p2040:LoadGhostResponse = (cast serializable);
		if (_p2040.isMessageIdSet() == true) 
		{
			_g2039 = T1225._m17574(_p2040.getMessageId(), (cast 0), buff);
			if (_g2039) 
			{
				_i2038++;
			}
		}
		if (_p2040.isRequestIdSet() == true) 
		{
			_g2039 = T1225._m17574(_p2040.getRequestId(), (cast 1), buff);
			if (_g2039) 
			{
				_i2038++;
			}
		}
		if (_p2040.isLoadGhostStatusSet() == true) 
		{
			_g2039 = T1225._m17575(this, _p2040.getLoadGhostStatus(), (cast 3), buff);
			if (_g2039) 
			{
				_i2038++;
			}
		}
		if (_p2040.isGameSet() == true) 
		{
			_g2039 = T1225._m17575(this, _p2040.getGame(), (cast 4), buff);
			if (_g2039) 
			{
				_i2038++;
			}
		}
		buff._m17576(_y2037, _i2038);
	}

	public function _m17523( _i8864:Serializable,  _h8865:T1223):Void
	{
		var _z8866:Int = _h8865._m17572();
		_h8865._m17573(2);
		var _k8867:Int = 0;
		var _f8868:Bool = false;
		var _j2044:LoadGhostRequest = (cast _i8864);
		if (_j2044.isMessageIdSet() == true) 
		{
			_f8868 = T1225._m17574(_j2044.getMessageId(), (cast 0), _h8865);
			if (_f8868) 
			{
				_k8867++;
			}
		}
		if (_j2044.isRequestIdSet() == true) 
		{
			_f8868 = T1225._m17574(_j2044.getRequestId(), (cast 1), _h8865);
			if (_f8868) 
			{
				_k8867++;
			}
		}
		if (_j2044.isGameIdSet() == true) 
		{
			_f8868 = T1225._m17574(_j2044.getGameId(), (cast 3), _h8865);
			if (_f8868) 
			{
				_k8867++;
			}
		}
		_h8865._m17576(_z8866, _k8867);
	}

	public function _m17524( serializable:Serializable,  buff:T1223):Void
	{
		var _n2045:Int = buff._m17572();
		buff._m17573(2);
		var _p2046:Int = 0;
		var _k2047:Bool = false;
		var _q2048:SendGameChatResponse = (cast serializable);
		if (_q2048.isMessageIdSet() == true) 
		{
			_k2047 = T1225._m17574(_q2048.getMessageId(), (cast 0), buff);
			if (_k2047) 
			{
				_p2046++;
			}
		}
		if (_q2048.isRequestIdSet() == true) 
		{
			_k2047 = T1225._m17574(_q2048.getRequestId(), (cast 1), buff);
			if (_k2047) 
			{
				_p2046++;
			}
		}
		if (_q2048.isSendGameChatStatusSet() == true) 
		{
			_k2047 = T1225._m17575(this, _q2048.getSendGameChatStatus(), (cast 3), buff);
			if (_k2047) 
			{
				_p2046++;
			}
		}
		buff._m17576(_n2045, _p2046);
	}

	public function _m17525( _o8870:Serializable,  _b8871:T1223):Void
	{
		var _e8872:Int = _b8871._m17572();
		_b8871._m17573(2);
		var _o8873:Int = 0;
		var _e8874:Bool = false;
		var _f2052:SendGameChatRequest = (cast _o8870);
		if (_f2052.isMessageIdSet() == true) 
		{
			_e8874 = T1225._m17574(_f2052.getMessageId(), (cast 0), _b8871);
			if (_e8874) 
			{
				_o8873++;
			}
		}
		if (_f2052.isRequestIdSet() == true) 
		{
			_e8874 = T1225._m17574(_f2052.getRequestId(), (cast 1), _b8871);
			if (_e8874) 
			{
				_o8873++;
			}
		}
		if (_f2052.isGameIdSet() == true) 
		{
			_e8874 = T1225._m17574(_f2052.getGameId(), (cast 3), _b8871);
			if (_e8874) 
			{
				_o8873++;
			}
		}
		if (_f2052.isMessageSet() == true) 
		{
			_e8874 = T1225._m17574(_f2052.getMessage(), (cast 4), _b8871);
			if (_e8874) 
			{
				_o8873++;
			}
		}
		_b8871._m17576(_e8872, _o8873);
	}

	public function _m17526( _v8876:Serializable,  _x8877:T1223):Void
	{
		var _g8878:Int = _x8877._m17572();
		_x8877._m17573(2);
		var _m8879:Int = 0;
		var _f8880:Bool = false;
		var _q2056:SendGameChatToPlayerRequest = (cast _v8876);
		if (_q2056.isMessageIdSet() == true) 
		{
			_f8880 = T1225._m17574(_q2056.getMessageId(), (cast 0), _x8877);
			if (_f8880) 
			{
				_m8879++;
			}
		}
		if (_q2056.isRequestIdSet() == true) 
		{
			_f8880 = T1225._m17574(_q2056.getRequestId(), (cast 1), _x8877);
			if (_f8880) 
			{
				_m8879++;
			}
		}
		if (_q2056.isGameIdSet() == true) 
		{
			_f8880 = T1225._m17574(_q2056.getGameId(), (cast 3), _x8877);
			if (_f8880) 
			{
				_m8879++;
			}
		}
		if (_q2056.isPlayerIdSet() == true) 
		{
			_f8880 = T1225._m17574(_q2056.getPlayerId(), (cast 4), _x8877);
			if (_f8880) 
			{
				_m8879++;
			}
		}
		if (_q2056.isMessageSet() == true) 
		{
			_f8880 = T1225._m17574(_q2056.getMessage(), (cast 5), _x8877);
			if (_f8880) 
			{
				_m8879++;
			}
		}
		_x8877._m17576(_g8878, _m8879);
	}

	public function _m17527( serializable:Serializable,  buff:T1223):Void
	{
		var _c2057:Int = buff._m17572();
		buff._m17573(2);
		var _j2058:Int = 0;
		var _c2059:Bool = false;
		var _w2060:SendGameChatToPlayerListRequest = (cast serializable);
		if (_w2060.isMessageIdSet() == true) 
		{
			_c2059 = T1225._m17574(_w2060.getMessageId(), (cast 0), buff);
			if (_c2059) 
			{
				_j2058++;
			}
		}
		if (_w2060.isRequestIdSet() == true) 
		{
			_c2059 = T1225._m17574(_w2060.getRequestId(), (cast 1), buff);
			if (_c2059) 
			{
				_j2058++;
			}
		}
		if (_w2060.isGameIdSet() == true) 
		{
			_c2059 = T1225._m17574(_w2060.getGameId(), (cast 3), buff);
			if (_c2059) 
			{
				_j2058++;
			}
		}
		if (_w2060.isMessageSet() == true) 
		{
			_c2059 = T1225._m17574(_w2060.getMessage(), (cast 4), buff);
			if (_c2059) 
			{
				_j2058++;
			}
		}
		buff._m17576(_c2057, _j2058);
	}

	public function _m17528( _j8887:Serializable,  _x8888:T1223):Void
	{
		var _k8889:Int = _x8888._m17572();
		_x8888._m17573(2);
		var _p8890:Int = 0;
		var _p8891:Bool = false;
		var _t2064:GetStorablesResponse = (cast _j8887);
		if (_t2064.isMessageIdSet() == true) 
		{
			_p8891 = T1225._m17574(_t2064.getMessageId(), (cast 0), _x8888);
			if (_p8891) 
			{
				_p8890++;
			}
		}
		if (_t2064.isRequestIdSet() == true) 
		{
			_p8891 = T1225._m17574(_t2064.getRequestId(), (cast 1), _x8888);
			if (_p8891) 
			{
				_p8890++;
			}
		}
		if (_t2064.isGetStorablesStatusSet() == true) 
		{
			_p8891 = T1225._m17575(this, _t2064.getGetStorablesStatus(), (cast 3), _x8888);
			if (_p8891) 
			{
				_p8890++;
			}
		}
		if (_t2064.isStorablesSet() == true) 
		{
			var _s9526:NList<Storable> = _t2064.getStorables();
			if (_s9526 == null) 
			{
				_p8891 = false;
			} else 
			{
				_x8888._m17579((cast 4));
				_x8888._m17580(T1221._l17181);
				var _f9527:Int = _x8888._m17572();
				_x8888._m17573(4);
				var _o9528:Int = _s9526.size();
				_x8888._m17579((cast _o9528));
				for (_y8896 in 0 ... _o9528) 
				{
					var _j8897:Storable = _s9526.get(_y8896);
					if (_j8897 == null) 
					{
						_x8888._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _j8897, _x8888);
					}
				}
				_x8888._m17582(_f9527, _x8888._m17572() - _f9527);
				_p8891 = true;
			}
			if (_p8891) 
			{
				_p8890++;
			}
		}
		_x8888._m17576(_k8889, _p8890);
	}

	public function _m17529( serializable:Serializable,  buff:T1223):Void
	{
		var _b2070:Int = buff._m17572();
		buff._m17573(2);
		var _i2071:Int = 0;
		var _a2072:Bool = false;
		var _d2073:GetStorablesRequest = (cast serializable);
		if (_d2073.isMessageIdSet() == true) 
		{
			_a2072 = T1225._m17574(_d2073.getMessageId(), (cast 0), buff);
			if (_a2072) 
			{
				_i2071++;
			}
		}
		if (_d2073.isRequestIdSet() == true) 
		{
			_a2072 = T1225._m17574(_d2073.getRequestId(), (cast 1), buff);
			if (_a2072) 
			{
				_i2071++;
			}
		}
		if (_d2073.isDbQuerySet() == true) 
		{
			_a2072 = T1225._m17575(this, _d2073.getDbQuery(), (cast 3), buff);
			if (_a2072) 
			{
				_i2071++;
			}
		}
		buff._m17576(_b2070, _i2071);
	}

	public function _m17530( serializable:Serializable,  buff:T1223):Void
	{
		var _z2074:Int = buff._m17572();
		buff._m17573(2);
		var _m2075:Int = 0;
		var _x2076:Bool = false;
		var _h2077:SaveStorableResponse = (cast serializable);
		if (_h2077.isMessageIdSet() == true) 
		{
			_x2076 = T1225._m17574(_h2077.getMessageId(), (cast 0), buff);
			if (_x2076) 
			{
				_m2075++;
			}
		}
		if (_h2077.isRequestIdSet() == true) 
		{
			_x2076 = T1225._m17574(_h2077.getRequestId(), (cast 1), buff);
			if (_x2076) 
			{
				_m2075++;
			}
		}
		if (_h2077.isSaveStorableStatusSet() == true) 
		{
			_x2076 = T1225._m17575(this, _h2077.getSaveStorableStatus(), (cast 3), buff);
			if (_x2076) 
			{
				_m2075++;
			}
		}
		buff._m17576(_z2074, _m2075);
	}

	public function _m17531( _o8898:Serializable,  _r8899:T1223):Void
	{
		var _l8900:Int = _r8899._m17572();
		_r8899._m17573(2);
		var _d8901:Int = 0;
		var _m8902:Bool = false;
		var _p2081:SaveStorableRequest = (cast _o8898);
		if (_p2081.isMessageIdSet() == true) 
		{
			_m8902 = T1225._m17574(_p2081.getMessageId(), (cast 0), _r8899);
			if (_m8902) 
			{
				_d8901++;
			}
		}
		if (_p2081.isRequestIdSet() == true) 
		{
			_m8902 = T1225._m17574(_p2081.getRequestId(), (cast 1), _r8899);
			if (_m8902) 
			{
				_d8901++;
			}
		}
		if (_p2081.isStorableSet() == true) 
		{
			_m8902 = T1225._m17575(this, _p2081.getStorable(), (cast 3), _r8899);
			if (_m8902) 
			{
				_d8901++;
			}
		}
		_r8899._m17576(_l8900, _d8901);
	}

	public function _m17532( serializable:Serializable,  buff:T1223):Void
	{
		var _p2082:Int = buff._m17572();
		buff._m17573(2);
		var _y2083:Int = 0;
		var _r2084:Bool = false;
		var _k2085:SaveStorableListRequest = (cast serializable);
		if (_k2085.isMessageIdSet() == true) 
		{
			_r2084 = T1225._m17574(_k2085.getMessageId(), (cast 0), buff);
			if (_r2084) 
			{
				_y2083++;
			}
		}
		if (_k2085.isRequestIdSet() == true) 
		{
			_r2084 = T1225._m17574(_k2085.getRequestId(), (cast 1), buff);
			if (_r2084) 
			{
				_y2083++;
			}
		}
		if (_k2085.isStorablesSet() == true) 
		{
			var _v9555:NList<Storable> = _k2085.getStorables();
			if (_v9555 == null) 
			{
				_r2084 = false;
			} else 
			{
				buff._m17579((cast 3));
				buff._m17580(T1221._l17181);
				var _x9556:Int = buff._m17572();
				buff._m17573(4);
				var _v9557:Int = _v9555.size();
				buff._m17579((cast _v9557));
				for (_v8907 in 0 ... _v9557) 
				{
					var _l8908:Storable = _v9555.get(_v8907);
					if (_l8908 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _l8908, buff);
					}
				}
				buff._m17582(_x9556, buff._m17572() - _x9556);
				_r2084 = true;
			}
			if (_r2084) 
			{
				_y2083++;
			}
		}
		buff._m17576(_p2082, _y2083);
	}

	public function _m17533( _i8909:Serializable,  _m8910:T1223):Void
	{
		var _h2091:Int = _m8910._m17572();
		_m8910._m17573(2);
		var _w2092:Int = 0;
		var _f2093:Bool = false;
		var _f2094:NextPlayerTurnResponse = (cast _i8909);
		if (_f2094.isMessageIdSet() == true) 
		{
			_f2093 = T1225._m17574(_f2094.getMessageId(), (cast 0), _m8910);
			if (_f2093) 
			{
				_w2092++;
			}
		}
		if (_f2094.isRequestIdSet() == true) 
		{
			_f2093 = T1225._m17574(_f2094.getRequestId(), (cast 1), _m8910);
			if (_f2093) 
			{
				_w2092++;
			}
		}
		if (_f2094.isNextPlayerTurnStatusSet() == true) 
		{
			_f2093 = T1225._m17575(this, _f2094.getNextPlayerTurnStatus(), (cast 3), _m8910);
			if (_f2093) 
			{
				_w2092++;
			}
		}
		_m8910._m17576(_h2091, _w2092);
	}

	public function _m17534( serializable:Serializable,  buff:T1223):Void
	{
		var _m8911:Int = buff._m17572();
		buff._m17573(2);
		var _v8912:Int = 0;
		var _g8913:Bool = false;
		var _h2098:NextPlayerTurnRequest = (cast serializable);
		if (_h2098.isMessageIdSet() == true) 
		{
			_g8913 = T1225._m17574(_h2098.getMessageId(), (cast 0), buff);
			if (_g8913) 
			{
				_v8912++;
			}
		}
		if (_h2098.isRequestIdSet() == true) 
		{
			_g8913 = T1225._m17574(_h2098.getRequestId(), (cast 1), buff);
			if (_g8913) 
			{
				_v8912++;
			}
		}
		if (_h2098.isGameIdSet() == true) 
		{
			_g8913 = T1225._m17574(_h2098.getGameId(), (cast 3), buff);
			if (_g8913) 
			{
				_v8912++;
			}
		}
		buff._m17576(_m8911, _v8912);
	}

	public function _m17535( serializable:Serializable,  buff:T1223):Void
	{
		var _w2099:Int = buff._m17572();
		buff._m17573(2);
		var _h2100:Int = 0;
		var _a2101:Bool = false;
		var _h2102:SetPlayerNameResponse = (cast serializable);
		if (_h2102.isMessageIdSet() == true) 
		{
			_a2101 = T1225._m17574(_h2102.getMessageId(), (cast 0), buff);
			if (_a2101) 
			{
				_h2100++;
			}
		}
		if (_h2102.isRequestIdSet() == true) 
		{
			_a2101 = T1225._m17574(_h2102.getRequestId(), (cast 1), buff);
			if (_a2101) 
			{
				_h2100++;
			}
		}
		if (_h2102.isSetPlayerNameStatusSet() == true) 
		{
			_a2101 = T1225._m17575(this, _h2102.getSetPlayerNameStatus(), (cast 3), buff);
			if (_a2101) 
			{
				_h2100++;
			}
		}
		buff._m17576(_w2099, _h2100);
	}

	public function _m17536( serializable:Serializable,  buff:T1223):Void
	{
		var _d2103:Int = buff._m17572();
		buff._m17573(2);
		var _i2104:Int = 0;
		var _c2105:Bool = false;
		var _j2106:SetPlayerNameRequest = (cast serializable);
		if (_j2106.isMessageIdSet() == true) 
		{
			_c2105 = T1225._m17574(_j2106.getMessageId(), (cast 0), buff);
			if (_c2105) 
			{
				_i2104++;
			}
		}
		if (_j2106.isRequestIdSet() == true) 
		{
			_c2105 = T1225._m17574(_j2106.getRequestId(), (cast 1), buff);
			if (_c2105) 
			{
				_i2104++;
			}
		}
		if (_j2106.isNameSet() == true) 
		{
			_c2105 = T1225._m17574(_j2106.getName(), (cast 3), buff);
			if (_c2105) 
			{
				_i2104++;
			}
		}
		buff._m17576(_d2103, _i2104);
	}

	public function _m17537( serializable:Serializable,  buff:T1223):Void
	{
		var _j2107:Int = buff._m17572();
		buff._m17573(2);
		var _v2108:Int = 0;
		var _j2109:Bool = false;
		var _u2110:UpdateStorableResponse = (cast serializable);
		if (_u2110.isMessageIdSet() == true) 
		{
			_j2109 = T1225._m17574(_u2110.getMessageId(), (cast 0), buff);
			if (_j2109) 
			{
				_v2108++;
			}
		}
		if (_u2110.isRequestIdSet() == true) 
		{
			_j2109 = T1225._m17574(_u2110.getRequestId(), (cast 1), buff);
			if (_j2109) 
			{
				_v2108++;
			}
		}
		if (_u2110.isUpdateStorableStatusSet() == true) 
		{
			_j2109 = T1225._m17575(this, _u2110.getUpdateStorableStatus(), (cast 3), buff);
			if (_j2109) 
			{
				_v2108++;
			}
		}
		buff._m17576(_j2107, _v2108);
	}

	public function _m17538( serializable:Serializable,  buff:T1223):Void
	{
		var _f2111:Int = buff._m17572();
		buff._m17573(2);
		var _i2112:Int = 0;
		var _d2113:Bool = false;
		var _y2114:UpdateStorableRequest = (cast serializable);
		if (_y2114.isMessageIdSet() == true) 
		{
			_d2113 = T1225._m17574(_y2114.getMessageId(), (cast 0), buff);
			if (_d2113) 
			{
				_i2112++;
			}
		}
		if (_y2114.isRequestIdSet() == true) 
		{
			_d2113 = T1225._m17574(_y2114.getRequestId(), (cast 1), buff);
			if (_d2113) 
			{
				_i2112++;
			}
		}
		if (_y2114.isStorableSet() == true) 
		{
			_d2113 = T1225._m17575(this, _y2114.getStorable(), (cast 3), buff);
			if (_d2113) 
			{
				_i2112++;
			}
		}
		buff._m17576(_f2111, _i2112);
	}

	public function _m17539( _h8915:Serializable,  _l8916:T1223):Void
	{
		var _m8917:Int = _l8916._m17572();
		_l8916._m17573(2);
		var _f8918:Int = 0;
		var _o8919:Bool = false;
		var _p2118:UpdateStorableListRequest = (cast _h8915);
		if (_p2118.isMessageIdSet() == true) 
		{
			_o8919 = T1225._m17574(_p2118.getMessageId(), (cast 0), _l8916);
			if (_o8919) 
			{
				_f8918++;
			}
		}
		if (_p2118.isRequestIdSet() == true) 
		{
			_o8919 = T1225._m17574(_p2118.getRequestId(), (cast 1), _l8916);
			if (_o8919) 
			{
				_f8918++;
			}
		}
		if (_p2118.isStorablesSet() == true) 
		{
			var _l9602:NList<Storable> = _p2118.getStorables();
			if (_l9602 == null) 
			{
				_o8919 = false;
			} else 
			{
				_l8916._m17579((cast 3));
				_l8916._m17580(T1221._l17181);
				var _k9603:Int = _l8916._m17572();
				_l8916._m17573(4);
				var _y9604:Int = _l9602.size();
				_l8916._m17579((cast _y9604));
				for (_m2122 in 0 ... _y9604) 
				{
					var _f2123:Storable = _l9602.get(_m2122);
					if (_f2123 == null) 
					{
						_l8916._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _f2123, _l8916);
					}
				}
				_l8916._m17582(_k9603, _l8916._m17572() - _k9603);
				_o8919 = true;
			}
			if (_o8919) 
			{
				_f8918++;
			}
		}
		_l8916._m17576(_m8917, _f8918);
	}

	public function _m17540( serializable:Serializable,  buff:T1223):Void
	{
		var _b2124:Int = buff._m17572();
		buff._m17573(2);
		var _v2125:Int = 0;
		var _j2126:Bool = false;
		var _t2127:RemoveStorableResponse = (cast serializable);
		if (_t2127.isMessageIdSet() == true) 
		{
			_j2126 = T1225._m17574(_t2127.getMessageId(), (cast 0), buff);
			if (_j2126) 
			{
				_v2125++;
			}
		}
		if (_t2127.isRequestIdSet() == true) 
		{
			_j2126 = T1225._m17574(_t2127.getRequestId(), (cast 1), buff);
			if (_j2126) 
			{
				_v2125++;
			}
		}
		if (_t2127.isRemoveStorableStatusSet() == true) 
		{
			_j2126 = T1225._m17575(this, _t2127.getRemoveStorableStatus(), (cast 3), buff);
			if (_j2126) 
			{
				_v2125++;
			}
		}
		buff._m17576(_b2124, _v2125);
	}

	public function _m17541( _p8921:Serializable,  _c8922:T1223):Void
	{
		var _d8923:Int = _c8922._m17572();
		_c8922._m17573(2);
		var _r8924:Int = 0;
		var _m8925:Bool = false;
		var _f2131:RemoveStorableRequest = (cast _p8921);
		if (_f2131.isMessageIdSet() == true) 
		{
			_m8925 = T1225._m17574(_f2131.getMessageId(), (cast 0), _c8922);
			if (_m8925) 
			{
				_r8924++;
			}
		}
		if (_f2131.isRequestIdSet() == true) 
		{
			_m8925 = T1225._m17574(_f2131.getRequestId(), (cast 1), _c8922);
			if (_m8925) 
			{
				_r8924++;
			}
		}
		if (_f2131.isStorableSet() == true) 
		{
			_m8925 = T1225._m17575(this, _f2131.getStorable(), (cast 3), _c8922);
			if (_m8925) 
			{
				_r8924++;
			}
		}
		_c8922._m17576(_d8923, _r8924);
	}

	public function _m17542( _e8927:Serializable,  _c8928:T1223):Void
	{
		var _b8929:Int = _c8928._m17572();
		_c8928._m17573(2);
		var _w8930:Int = 0;
		var _b8931:Bool = false;
		var _y2135:RemoveStorableListRequest = (cast _e8927);
		if (_y2135.isMessageIdSet() == true) 
		{
			_b8931 = T1225._m17574(_y2135.getMessageId(), (cast 0), _c8928);
			if (_b8931) 
			{
				_w8930++;
			}
		}
		if (_y2135.isRequestIdSet() == true) 
		{
			_b8931 = T1225._m17574(_y2135.getRequestId(), (cast 1), _c8928);
			if (_b8931) 
			{
				_w8930++;
			}
		}
		if (_y2135.isStorablesSet() == true) 
		{
			var _m9625:NList<Storable> = _y2135.getStorables();
			if (_m9625 == null) 
			{
				_b8931 = false;
			} else 
			{
				_c8928._m17579((cast 3));
				_c8928._m17580(T1221._l17181);
				var _k9626:Int = _c8928._m17572();
				_c8928._m17573(4);
				var _m9627:Int = _m9625.size();
				_c8928._m17579((cast _m9627));
				for (_m8936 in 0 ... _m9627) 
				{
					var _t8937:Storable = _m9625.get(_m8936);
					if (_t8937 == null) 
					{
						_c8928._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _t8937, _c8928);
					}
				}
				_c8928._m17582(_k9626, _c8928._m17572() - _k9626);
				_b8931 = true;
			}
			if (_b8931) 
			{
				_w8930++;
			}
		}
		_c8928._m17576(_b8929, _w8930);
	}

	public function _m17543( serializable:Serializable,  buff:T1223):Void
	{
		var _d2141:Int = buff._m17572();
		buff._m17573(2);
		var _y2142:Int = 0;
		var _l2143:Bool = false;
		var _k2144:InviteThirdPartyFriendResponse = (cast serializable);
		if (_k2144.isMessageIdSet() == true) 
		{
			_l2143 = T1225._m17574(_k2144.getMessageId(), (cast 0), buff);
			if (_l2143) 
			{
				_y2142++;
			}
		}
		if (_k2144.isRequestIdSet() == true) 
		{
			_l2143 = T1225._m17574(_k2144.getRequestId(), (cast 1), buff);
			if (_l2143) 
			{
				_y2142++;
			}
		}
		if (_k2144.isInviteThirdPartyFriendStatusSet() == true) 
		{
			_l2143 = T1225._m17575(this, _k2144.getInviteThirdPartyFriendStatus(), (cast 3), buff);
			if (_l2143) 
			{
				_y2142++;
			}
		}
		buff._m17576(_d2141, _y2142);
	}

	public function _m17544( _f8938:Serializable,  _q8939:T1223):Void
	{
		var _k8940:Int = _q8939._m17572();
		_q8939._m17573(2);
		var _b8941:Int = 0;
		var _l8942:Bool = false;
		var _c2148:InviteThirdPartyFriendRequest = (cast _f8938);
		if (_c2148.isMessageIdSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getMessageId(), (cast 0), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isRequestIdSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getRequestId(), (cast 1), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isThirdPartyIdSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getThirdPartyId(), (cast 3), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isTitleSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getTitle(), (cast 4), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isInviteMessageSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getInviteMessage(), (cast 5), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isPictureUrlSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getPictureUrl(), (cast 6), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isLinkSet() == true) 
		{
			_l8942 = T1225._m17574(_c2148.getLink(), (cast 7), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		if (_c2148.isThirdPartySourceSet() == true) 
		{
			_l8942 = T1225._m17575(this, _c2148.getThirdPartySource(), (cast 8), _q8939);
			if (_l8942) 
			{
				_b8941++;
			}
		}
		_q8939._m17576(_k8940, _b8941);
	}

	public function _m17545( serializable:Serializable,  buff:T1223):Void
	{
		var _w2149:Int = buff._m17572();
		buff._m17573(2);
		var _q2150:Int = 0;
		var _e2151:Bool = false;
		var _l2152:PublishThirdPartyMessageResponse = (cast serializable);
		if (_l2152.isMessageIdSet() == true) 
		{
			_e2151 = T1225._m17574(_l2152.getMessageId(), (cast 0), buff);
			if (_e2151) 
			{
				_q2150++;
			}
		}
		if (_l2152.isRequestIdSet() == true) 
		{
			_e2151 = T1225._m17574(_l2152.getRequestId(), (cast 1), buff);
			if (_e2151) 
			{
				_q2150++;
			}
		}
		if (_l2152.isPublishThirdPartyMessageStatusSet() == true) 
		{
			_e2151 = T1225._m17575(this, _l2152.getPublishThirdPartyMessageStatus(), (cast 3), buff);
			if (_e2151) 
			{
				_q2150++;
			}
		}
		buff._m17576(_w2149, _q2150);
	}

	public function _m17546( serializable:Serializable,  buff:T1223):Void
	{
		var _w2153:Int = buff._m17572();
		buff._m17573(2);
		var _t2154:Int = 0;
		var _n2155:Bool = false;
		var _v2156:PublishThirdPartyMessageRequest = (cast serializable);
		if (_v2156.isMessageIdSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getMessageId(), (cast 0), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isRequestIdSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getRequestId(), (cast 1), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isTitleSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getTitle(), (cast 3), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isMessageSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getMessage(), (cast 4), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isPictureUrlSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getPictureUrl(), (cast 5), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isLinkSet() == true) 
		{
			_n2155 = T1225._m17574(_v2156.getLink(), (cast 6), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		if (_v2156.isThirdPartySourceSet() == true) 
		{
			_n2155 = T1225._m17575(this, _v2156.getThirdPartySource(), (cast 7), buff);
			if (_n2155) 
			{
				_t2154++;
			}
		}
		buff._m17576(_w2153, _t2154);
	}

	public function _m17547( _k8944:Serializable,  _s8945:T1223):Void
	{
		var _b8946:Int = _s8945._m17572();
		_s8945._m17573(2);
		var _g8947:Int = 0;
		var _e8948:Bool = false;
		var _u2160:ThirdPartyLoginResponse = (cast _k8944);
		if (_u2160.isMessageIdSet() == true) 
		{
			_e8948 = T1225._m17574(_u2160.getMessageId(), (cast 0), _s8945);
			if (_e8948) 
			{
				_g8947++;
			}
		}
		if (_u2160.isRequestIdSet() == true) 
		{
			_e8948 = T1225._m17574(_u2160.getRequestId(), (cast 1), _s8945);
			if (_e8948) 
			{
				_g8947++;
			}
		}
		if (_u2160.isThirdPartyLoginStatusSet() == true) 
		{
			_e8948 = T1225._m17575(this, _u2160.getThirdPartyLoginStatus(), (cast 3), _s8945);
			if (_e8948) 
			{
				_g8947++;
			}
		}
		if (_u2160.isPlayerSet() == true) 
		{
			_e8948 = T1225._m17575(this, _u2160.getPlayer(), (cast 4), _s8945);
			if (_e8948) 
			{
				_g8947++;
			}
		}
		_s8945._m17576(_b8946, _g8947);
	}

	public function _m17548( _a8950:Serializable,  _j8951:T1223):Void
	{
		var _c8952:Int = _j8951._m17572();
		_j8951._m17573(2);
		var _n8953:Int = 0;
		var _w8954:Bool = false;
		var _p2164:ThirdPartyLoginRequest = (cast _a8950);
		if (_p2164.isMessageIdSet() == true) 
		{
			_w8954 = T1225._m17574(_p2164.getMessageId(), (cast 0), _j8951);
			if (_w8954) 
			{
				_n8953++;
			}
		}
		if (_p2164.isRequestIdSet() == true) 
		{
			_w8954 = T1225._m17574(_p2164.getRequestId(), (cast 1), _j8951);
			if (_w8954) 
			{
				_n8953++;
			}
		}
		if (_p2164.isThirdPartySourceSet() == true) 
		{
			_w8954 = T1225._m17575(this, _p2164.getThirdPartySource(), (cast 3), _j8951);
			if (_w8954) 
			{
				_n8953++;
			}
		}
		_j8951._m17576(_c8952, _n8953);
	}

	public function _m17549( serializable:Serializable,  buff:T1223):Void
	{
		var _p2165:Int = buff._m17572();
		buff._m17573(2);
		var _p2166:Int = 0;
		var _q2167:Bool = false;
		var _p2168:ThirdPartyLoginWithTokenRequest = (cast serializable);
		if (_p2168.isMessageIdSet() == true) 
		{
			_q2167 = T1225._m17574(_p2168.getMessageId(), (cast 0), buff);
			if (_q2167) 
			{
				_p2166++;
			}
		}
		if (_p2168.isRequestIdSet() == true) 
		{
			_q2167 = T1225._m17574(_p2168.getRequestId(), (cast 1), buff);
			if (_q2167) 
			{
				_p2166++;
			}
		}
		if (_p2168.isThirdPartySourceSet() == true) 
		{
			_q2167 = T1225._m17575(this, _p2168.getThirdPartySource(), (cast 3), buff);
			if (_q2167) 
			{
				_p2166++;
			}
		}
		if (_p2168.isAccessTokenSet() == true) 
		{
			_q2167 = T1225._m17574(_p2168.getAccessToken(), (cast 4), buff);
			if (_q2167) 
			{
				_p2166++;
			}
		}
		buff._m17576(_p2165, _p2166);
	}

	public function _m17550( _e8956:Serializable,  _r8957:T1223):Void
	{
		var _n8958:Int = _r8957._m17572();
		_r8957._m17573(2);
		var _y8959:Int = 0;
		var _e8960:Bool = false;
		var _c2172:SaveGameResponse = (cast _e8956);
		if (_c2172.isMessageIdSet() == true) 
		{
			_e8960 = T1225._m17574(_c2172.getMessageId(), (cast 0), _r8957);
			if (_e8960) 
			{
				_y8959++;
			}
		}
		if (_c2172.isRequestIdSet() == true) 
		{
			_e8960 = T1225._m17574(_c2172.getRequestId(), (cast 1), _r8957);
			if (_e8960) 
			{
				_y8959++;
			}
		}
		if (_c2172.isSaveGameStatusSet() == true) 
		{
			_e8960 = T1225._m17575(this, _c2172.getSaveGameStatus(), (cast 3), _r8957);
			if (_e8960) 
			{
				_y8959++;
			}
		}
		if (_c2172.isGameIdSet() == true) 
		{
			_e8960 = T1225._m17574(_c2172.getGameId(), (cast 4), _r8957);
			if (_e8960) 
			{
				_y8959++;
			}
		}
		_r8957._m17576(_n8958, _y8959);
	}

	public function _m17551( serializable:Serializable,  buff:T1223):Void
	{
		var _a2173:Int = buff._m17572();
		buff._m17573(2);
		var _o2174:Int = 0;
		var _q2175:Bool = false;
		var _j2176:SaveGameRequest = (cast serializable);
		if (_j2176.isMessageIdSet() == true) 
		{
			_q2175 = T1225._m17574(_j2176.getMessageId(), (cast 0), buff);
			if (_q2175) 
			{
				_o2174++;
			}
		}
		if (_j2176.isRequestIdSet() == true) 
		{
			_q2175 = T1225._m17574(_j2176.getRequestId(), (cast 1), buff);
			if (_q2175) 
			{
				_o2174++;
			}
		}
		if (_j2176.isGameSet() == true) 
		{
			_q2175 = T1225._m17575(this, _j2176.getGame(), (cast 3), buff);
			if (_q2175) 
			{
				_o2174++;
			}
		}
		buff._m17576(_a2173, _o2174);
	}

	public function _m17552( serializable:Serializable,  buff:T1223):Void
	{
		var _p2177:Int = buff._m17572();
		buff._m17573(2);
		var _q2178:Int = 0;
		var _b2179:Bool = false;
		var _n2180:LoadGameResponse = (cast serializable);
		if (_n2180.isMessageIdSet() == true) 
		{
			_b2179 = T1225._m17574(_n2180.getMessageId(), (cast 0), buff);
			if (_b2179) 
			{
				_q2178++;
			}
		}
		if (_n2180.isRequestIdSet() == true) 
		{
			_b2179 = T1225._m17574(_n2180.getRequestId(), (cast 1), buff);
			if (_b2179) 
			{
				_q2178++;
			}
		}
		if (_n2180.isLoadGameStatusSet() == true) 
		{
			_b2179 = T1225._m17575(this, _n2180.getLoadGameStatus(), (cast 3), buff);
			if (_b2179) 
			{
				_q2178++;
			}
		}
		if (_n2180.isGameSet() == true) 
		{
			_b2179 = T1225._m17575(this, _n2180.getGame(), (cast 4), buff);
			if (_b2179) 
			{
				_q2178++;
			}
		}
		buff._m17576(_p2177, _q2178);
	}

	public function _m17553( _p8962:Serializable,  _d8963:T1223):Void
	{
		var _y8964:Int = _d8963._m17572();
		_d8963._m17573(2);
		var _k8965:Int = 0;
		var _s8966:Bool = false;
		var _c2184:LoadGameRequest = (cast _p8962);
		if (_c2184.isMessageIdSet() == true) 
		{
			_s8966 = T1225._m17574(_c2184.getMessageId(), (cast 0), _d8963);
			if (_s8966) 
			{
				_k8965++;
			}
		}
		if (_c2184.isRequestIdSet() == true) 
		{
			_s8966 = T1225._m17574(_c2184.getRequestId(), (cast 1), _d8963);
			if (_s8966) 
			{
				_k8965++;
			}
		}
		if (_c2184.isGameIdSet() == true) 
		{
			_s8966 = T1225._m17574(_c2184.getGameId(), (cast 3), _d8963);
			if (_s8966) 
			{
				_k8965++;
			}
		}
		_d8963._m17576(_y8964, _k8965);
	}

	public function _m17554( serializable:Serializable,  buff:T1223):Void
	{
		var _t2185:Int = buff._m17572();
		buff._m17573(2);
		var _l2186:Int = 0;
		var _j2187:Bool = false;
		var _y2188:SavePlayerStorableResponse = (cast serializable);
		if (_y2188.isMessageIdSet() == true) 
		{
			_j2187 = T1225._m17574(_y2188.getMessageId(), (cast 0), buff);
			if (_j2187) 
			{
				_l2186++;
			}
		}
		if (_y2188.isRequestIdSet() == true) 
		{
			_j2187 = T1225._m17574(_y2188.getRequestId(), (cast 1), buff);
			if (_j2187) 
			{
				_l2186++;
			}
		}
		if (_y2188.isSavePlayerStorableStatusSet() == true) 
		{
			_j2187 = T1225._m17575(this, _y2188.getSavePlayerStorableStatus(), (cast 3), buff);
			if (_j2187) 
			{
				_l2186++;
			}
		}
		buff._m17576(_t2185, _l2186);
	}

	public function _m17555( serializable:Serializable,  buff:T1223):Void
	{
		var _e2189:Int = buff._m17572();
		buff._m17573(2);
		var _y2190:Int = 0;
		var _u2191:Bool = false;
		var _e2192:SavePlayerStorableRequest = (cast serializable);
		if (_e2192.isMessageIdSet() == true) 
		{
			_u2191 = T1225._m17574(_e2192.getMessageId(), (cast 0), buff);
			if (_u2191) 
			{
				_y2190++;
			}
		}
		if (_e2192.isRequestIdSet() == true) 
		{
			_u2191 = T1225._m17574(_e2192.getRequestId(), (cast 1), buff);
			if (_u2191) 
			{
				_y2190++;
			}
		}
		if (_e2192.isStorableSet() == true) 
		{
			_u2191 = T1225._m17575(this, _e2192.getStorable(), (cast 3), buff);
			if (_u2191) 
			{
				_y2190++;
			}
		}
		buff._m17576(_e2189, _y2190);
	}

	public function _m17556( serializable:Serializable,  buff:T1223):Void
	{
		var _f2193:Int = buff._m17572();
		buff._m17573(2);
		var _q2194:Int = 0;
		var _z2195:Bool = false;
		var _y2196:SavePlayerStorableListRequest = (cast serializable);
		if (_y2196.isMessageIdSet() == true) 
		{
			_z2195 = T1225._m17574(_y2196.getMessageId(), (cast 0), buff);
			if (_z2195) 
			{
				_q2194++;
			}
		}
		if (_y2196.isRequestIdSet() == true) 
		{
			_z2195 = T1225._m17574(_y2196.getRequestId(), (cast 1), buff);
			if (_z2195) 
			{
				_q2194++;
			}
		}
		if (_y2196.isStorablesSet() == true) 
		{
			var _d9714:NList<Storable> = _y2196.getStorables();
			if (_d9714 == null) 
			{
				_z2195 = false;
			} else 
			{
				buff._m17579((cast 3));
				buff._m17580(T1221._l17181);
				var _n9715:Int = buff._m17572();
				buff._m17573(4);
				var _f9716:Int = _d9714.size();
				buff._m17579((cast _f9716));
				for (_l2200 in 0 ... _f9716) 
				{
					var _y2201:Storable = _d9714.get(_l2200);
					if (_y2201 == null) 
					{
						buff._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _y2201, buff);
					}
				}
				buff._m17582(_n9715, buff._m17572() - _n9715);
				_z2195 = true;
			}
			if (_z2195) 
			{
				_q2194++;
			}
		}
		buff._m17576(_f2193, _q2194);
	}

	public function _m17557( _g8968:Serializable,  _k8969:T1223):Void
	{
		var _j8970:Int = _k8969._m17572();
		_k8969._m17573(2);
		var _x8971:Int = 0;
		var _y8972:Bool = false;
		var _t2205:UpdatePlayerStorableResponse = (cast _g8968);
		if (_t2205.isMessageIdSet() == true) 
		{
			_y8972 = T1225._m17574(_t2205.getMessageId(), (cast 0), _k8969);
			if (_y8972) 
			{
				_x8971++;
			}
		}
		if (_t2205.isRequestIdSet() == true) 
		{
			_y8972 = T1225._m17574(_t2205.getRequestId(), (cast 1), _k8969);
			if (_y8972) 
			{
				_x8971++;
			}
		}
		if (_t2205.isUpdatePlayerStorableStatusSet() == true) 
		{
			_y8972 = T1225._m17575(this, _t2205.getUpdatePlayerStorableStatus(), (cast 3), _k8969);
			if (_y8972) 
			{
				_x8971++;
			}
		}
		_k8969._m17576(_j8970, _x8971);
	}

	public function _m17558( serializable:Serializable,  buff:T1223):Void
	{
		var _t2206:Int = buff._m17572();
		buff._m17573(2);
		var _n2207:Int = 0;
		var _s2208:Bool = false;
		var _q2209:UpdatePlayerStorableRequest = (cast serializable);
		if (_q2209.isMessageIdSet() == true) 
		{
			_s2208 = T1225._m17574(_q2209.getMessageId(), (cast 0), buff);
			if (_s2208) 
			{
				_n2207++;
			}
		}
		if (_q2209.isRequestIdSet() == true) 
		{
			_s2208 = T1225._m17574(_q2209.getRequestId(), (cast 1), buff);
			if (_s2208) 
			{
				_n2207++;
			}
		}
		if (_q2209.isStorableSet() == true) 
		{
			_s2208 = T1225._m17575(this, _q2209.getStorable(), (cast 3), buff);
			if (_s2208) 
			{
				_n2207++;
			}
		}
		buff._m17576(_t2206, _n2207);
	}

	public function _m17559( _a8974:Serializable,  _z8975:T1223):Void
	{
		var _k8976:Int = _z8975._m17572();
		_z8975._m17573(2);
		var _t8977:Int = 0;
		var _i8978:Bool = false;
		var _v2213:UpdatePlayerStorableListRequest = (cast _a8974);
		if (_v2213.isMessageIdSet() == true) 
		{
			_i8978 = T1225._m17574(_v2213.getMessageId(), (cast 0), _z8975);
			if (_i8978) 
			{
				_t8977++;
			}
		}
		if (_v2213.isRequestIdSet() == true) 
		{
			_i8978 = T1225._m17574(_v2213.getRequestId(), (cast 1), _z8975);
			if (_i8978) 
			{
				_t8977++;
			}
		}
		if (_v2213.isStorablesSet() == true) 
		{
			var _v9737:NList<Storable> = _v2213.getStorables();
			if (_v9737 == null) 
			{
				_i8978 = false;
			} else 
			{
				_z8975._m17579((cast 3));
				_z8975._m17580(T1221._l17181);
				var _e9738:Int = _z8975._m17572();
				_z8975._m17573(4);
				var _v9739:Int = _v9737.size();
				_z8975._m17579((cast _v9739));
				for (_d2217 in 0 ... _v9739) 
				{
					var _i2218:Storable = _v9737.get(_d2217);
					if (_i2218 == null) 
					{
						_z8975._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _i2218, _z8975);
					}
				}
				_z8975._m17582(_e9738, _z8975._m17572() - _e9738);
				_i8978 = true;
			}
			if (_i8978) 
			{
				_t8977++;
			}
		}
		_z8975._m17576(_k8976, _t8977);
	}

	public function _m17560( serializable:Serializable,  buff:T1223):Void
	{
		var _d2219:Int = buff._m17572();
		buff._m17573(2);
		var _s2220:Int = 0;
		var _k2221:Bool = false;
		var _s2222:RemovePlayerStorableResponse = (cast serializable);
		if (_s2222.isMessageIdSet() == true) 
		{
			_k2221 = T1225._m17574(_s2222.getMessageId(), (cast 0), buff);
			if (_k2221) 
			{
				_s2220++;
			}
		}
		if (_s2222.isRequestIdSet() == true) 
		{
			_k2221 = T1225._m17574(_s2222.getRequestId(), (cast 1), buff);
			if (_k2221) 
			{
				_s2220++;
			}
		}
		if (_s2222.isRemovePlayerStorableStatusSet() == true) 
		{
			_k2221 = T1225._m17575(this, _s2222.getRemovePlayerStorableStatus(), (cast 3), buff);
			if (_k2221) 
			{
				_s2220++;
			}
		}
		buff._m17576(_d2219, _s2220);
	}

	public function _m17561( _j8980:Serializable,  _w8981:T1223):Void
	{
		var _p8982:Int = _w8981._m17572();
		_w8981._m17573(2);
		var _w8983:Int = 0;
		var _v8984:Bool = false;
		var _r2226:RemovePlayerStorableRequest = (cast _j8980);
		if (_r2226.isMessageIdSet() == true) 
		{
			_v8984 = T1225._m17574(_r2226.getMessageId(), (cast 0), _w8981);
			if (_v8984) 
			{
				_w8983++;
			}
		}
		if (_r2226.isRequestIdSet() == true) 
		{
			_v8984 = T1225._m17574(_r2226.getRequestId(), (cast 1), _w8981);
			if (_v8984) 
			{
				_w8983++;
			}
		}
		if (_r2226.isStorableSet() == true) 
		{
			_v8984 = T1225._m17575(this, _r2226.getStorable(), (cast 3), _w8981);
			if (_v8984) 
			{
				_w8983++;
			}
		}
		_w8981._m17576(_p8982, _w8983);
	}

	public function _m17562( _s8986:Serializable,  _p8987:T1223):Void
	{
		var _c8988:Int = _p8987._m17572();
		_p8987._m17573(2);
		var _q8989:Int = 0;
		var _j8990:Bool = false;
		var _c2230:RemovePlayerStorableListRequest = (cast _s8986);
		if (_c2230.isMessageIdSet() == true) 
		{
			_j8990 = T1225._m17574(_c2230.getMessageId(), (cast 0), _p8987);
			if (_j8990) 
			{
				_q8989++;
			}
		}
		if (_c2230.isRequestIdSet() == true) 
		{
			_j8990 = T1225._m17574(_c2230.getRequestId(), (cast 1), _p8987);
			if (_j8990) 
			{
				_q8989++;
			}
		}
		if (_c2230.isStorablesSet() == true) 
		{
			var _d9760:NList<Storable> = _c2230.getStorables();
			if (_d9760 == null) 
			{
				_j8990 = false;
			} else 
			{
				_p8987._m17579((cast 3));
				_p8987._m17580(T1221._l17181);
				var _s9761:Int = _p8987._m17572();
				_p8987._m17573(4);
				var _s9762:Int = _d9760.size();
				_p8987._m17579((cast _s9762));
				for (_c2234 in 0 ... _s9762) 
				{
					var _g2235:Storable = _d9760.get(_c2234);
					if (_g2235 == null) 
					{
						_p8987._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _g2235, _p8987);
					}
				}
				_p8987._m17582(_s9761, _p8987._m17572() - _s9761);
				_j8990 = true;
			}
			if (_j8990) 
			{
				_q8989++;
			}
		}
		_p8987._m17576(_c8988, _q8989);
	}

	public function _m17563( _j8992:Serializable,  _j8993:T1223):Void
	{
		var _v8994:Int = _j8993._m17572();
		_j8993._m17573(2);
		var _j8995:Int = 0;
		var _o8996:Bool = false;
		var _b2239:GetPlayerStorablesResponse = (cast _j8992);
		if (_b2239.isMessageIdSet() == true) 
		{
			_o8996 = T1225._m17574(_b2239.getMessageId(), (cast 0), _j8993);
			if (_o8996) 
			{
				_j8995++;
			}
		}
		if (_b2239.isRequestIdSet() == true) 
		{
			_o8996 = T1225._m17574(_b2239.getRequestId(), (cast 1), _j8993);
			if (_o8996) 
			{
				_j8995++;
			}
		}
		if (_b2239.isGetPlayerStorablesStatusSet() == true) 
		{
			_o8996 = T1225._m17575(this, _b2239.getGetPlayerStorablesStatus(), (cast 3), _j8993);
			if (_o8996) 
			{
				_j8995++;
			}
		}
		if (_b2239.isStorablesSet() == true) 
		{
			var _w9771:NList<Storable> = _b2239.getStorables();
			if (_w9771 == null) 
			{
				_o8996 = false;
			} else 
			{
				_j8993._m17579((cast 4));
				_j8993._m17580(T1221._l17181);
				var _i9772:Int = _j8993._m17572();
				_j8993._m17573(4);
				var _k9773:Int = _w9771.size();
				_j8993._m17579((cast _k9773));
				for (_s9155 in 0 ... _k9773) 
				{
					var _h9775:Storable = _w9771.get(_s9155);
					if (_h9775 == null) 
					{
						_j8993._m17580(T1221._m17179);
					} else 
					{
						T1225._m17581(this, _h9775, _j8993);
					}
				}
				_j8993._m17582(_i9772, _j8993._m17572() - _i9772);
				_o8996 = true;
			}
			if (_o8996) 
			{
				_j8995++;
			}
		}
		_j8993._m17576(_v8994, _j8995);
	}

	public function _m17564( serializable:Serializable,  buff:T1223):Void
	{
		var _x2245:Int = buff._m17572();
		buff._m17573(2);
		var _g2246:Int = 0;
		var _j2247:Bool = false;
		var _k2248:GetPlayerStorablesRequest = (cast serializable);
		if (_k2248.isMessageIdSet() == true) 
		{
			_j2247 = T1225._m17574(_k2248.getMessageId(), (cast 0), buff);
			if (_j2247) 
			{
				_g2246++;
			}
		}
		if (_k2248.isRequestIdSet() == true) 
		{
			_j2247 = T1225._m17574(_k2248.getRequestId(), (cast 1), buff);
			if (_j2247) 
			{
				_g2246++;
			}
		}
		if (_k2248.isDbQuerySet() == true) 
		{
			_j2247 = T1225._m17575(this, _k2248.getDbQuery(), (cast 3), buff);
			if (_j2247) 
			{
				_g2246++;
			}
		}
		buff._m17576(_x2245, _g2246);
	}

	public function _m17565( _l8998:Serializable,  _o8999:T1223):Void
	{
		var _d9000:Int = _o8999._m17572();
		_o8999._m17573(2);
		var _k9001:Int = 0;
		var _d9002:Bool = false;
		var _l2252:PauseSessionMonitoringResponse = (cast _l8998);
		if (_l2252.isMessageIdSet() == true) 
		{
			_d9002 = T1225._m17574(_l2252.getMessageId(), (cast 0), _o8999);
			if (_d9002) 
			{
				_k9001++;
			}
		}
		if (_l2252.isRequestIdSet() == true) 
		{
			_d9002 = T1225._m17574(_l2252.getRequestId(), (cast 1), _o8999);
			if (_d9002) 
			{
				_k9001++;
			}
		}
		if (_l2252.isPauseSessionMonitoringStatusSet() == true) 
		{
			_d9002 = T1225._m17575(this, _l2252.getPauseSessionMonitoringStatus(), (cast 3), _o8999);
			if (_d9002) 
			{
				_k9001++;
			}
		}
		_o8999._m17576(_d9000, _k9001);
	}

	public function _m17566( serializable:Serializable,  buff:T1223):Void
	{
		var _z2253:Int = buff._m17572();
		buff._m17573(2);
		var _l2254:Int = 0;
		var _s2255:Bool = false;
		var _q2256:PauseSessionMonitoringRequest = (cast serializable);
		if (_q2256.isMessageIdSet() == true) 
		{
			_s2255 = T1225._m17574(_q2256.getMessageId(), (cast 0), buff);
			if (_s2255) 
			{
				_l2254++;
			}
		}
		if (_q2256.isRequestIdSet() == true) 
		{
			_s2255 = T1225._m17574(_q2256.getRequestId(), (cast 1), buff);
			if (_s2255) 
			{
				_l2254++;
			}
		}
		buff._m17576(_z2253, _l2254);
	}

	public function _m17567( serializable:Serializable,  buff:T1223):Void
	{
		var _u2257:Int = buff._m17572();
		buff._m17573(2);
		var _b2258:Int = 0;
		var _d2259:Bool = false;
		var _p2260:ResumeSessionMonitoringResponse = (cast serializable);
		if (_p2260.isMessageIdSet() == true) 
		{
			_d2259 = T1225._m17574(_p2260.getMessageId(), (cast 0), buff);
			if (_d2259) 
			{
				_b2258++;
			}
		}
		if (_p2260.isRequestIdSet() == true) 
		{
			_d2259 = T1225._m17574(_p2260.getRequestId(), (cast 1), buff);
			if (_d2259) 
			{
				_b2258++;
			}
		}
		if (_p2260.isResumeSessionMonitoringStatusSet() == true) 
		{
			_d2259 = T1225._m17575(this, _p2260.getResumeSessionMonitoringStatus(), (cast 3), buff);
			if (_d2259) 
			{
				_b2258++;
			}
		}
		buff._m17576(_u2257, _b2258);
	}

	public function _m17568( _p9004:Serializable,  _z9005:T1223):Void
	{
		var _b9006:Int = _z9005._m17572();
		_z9005._m17573(2);
		var _s9007:Int = 0;
		var _s9008:Bool = false;
		var _m2264:ResumeSessionMonitoringRequest = (cast _p9004);
		if (_m2264.isMessageIdSet() == true) 
		{
			_s9008 = T1225._m17574(_m2264.getMessageId(), (cast 0), _z9005);
			if (_s9008) 
			{
				_s9007++;
			}
		}
		if (_m2264.isRequestIdSet() == true) 
		{
			_s9008 = T1225._m17574(_m2264.getRequestId(), (cast 1), _z9005);
			if (_s9008) 
			{
				_s9007++;
			}
		}
		_z9005._m17576(_b9006, _s9007);
	}

	public function _m17569( serializable:Serializable,  buff:T1223):Void
	{
		var _m2265:Int = buff._m17572();
		buff._m17573(2);
		var _r2266:Int = 0;
		var _n2267:Bool = false;
		var _b2268:PublishFriendThirdPartyMessageResponse = (cast serializable);
		if (_b2268.isMessageIdSet() == true) 
		{
			_n2267 = T1225._m17574(_b2268.getMessageId(), (cast 0), buff);
			if (_n2267) 
			{
				_r2266++;
			}
		}
		if (_b2268.isRequestIdSet() == true) 
		{
			_n2267 = T1225._m17574(_b2268.getRequestId(), (cast 1), buff);
			if (_n2267) 
			{
				_r2266++;
			}
		}
		if (_b2268.isPublishFriendThirdPartyMessageStatusSet() == true) 
		{
			_n2267 = T1225._m17575(this, _b2268.getPublishFriendThirdPartyMessageStatus(), (cast 3), buff);
			if (_n2267) 
			{
				_r2266++;
			}
		}
		buff._m17576(_m2265, _r2266);
	}

	public function _m17570( _w9812:Serializable,  _n9011:T1223):Void
	{
		var _b9814:Int = _n9011._m17572();
		_n9011._m17573(2);
		var _a9149:Int = 0;
		var _b9816:Bool = false;
		var _e2272:PublishFriendThirdPartyMessageRequest = (cast _w9812);
		if (_e2272.isMessageIdSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getMessageId(), (cast 0), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isRequestIdSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getRequestId(), (cast 1), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isTitleSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getTitle(), (cast 3), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isMessageSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getMessage(), (cast 4), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isPictureUrlSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getPictureUrl(), (cast 5), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isLinkSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getLink(), (cast 6), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isThirdPartyIdSet() == true) 
		{
			_b9816 = T1225._m17574(_e2272.getThirdPartyId(), (cast 7), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		if (_e2272.isThirdPartySourceSet() == true) 
		{
			_b9816 = T1225._m17575(this, _e2272.getThirdPartySource(), (cast 8), _n9011);
			if (_b9816) 
			{
				_a9149++;
			}
		}
		_n9011._m17576(_b9814, _a9149);
	}

	public function _m17594( buffer:T1220):Serializable
	{
		var _e2273:T1223 = (cast buffer);
		return (cast T1224.readObject(this, _e2273));
	}

	public function _m17595( _m9820:T1220,  _o9821:Int):Serializable
	{
		var _q9107:T1223 = (cast _m9820);
		if (_o9821 == -1) 
		{
			return _m17596(_q9107);
		}
		if (_o9821 == -2) 
		{
			return _m17597(_q9107);
		}
		if (_o9821 == -3) 
		{
			return _m17598(_q9107);
		}
		if (_o9821 == -4) 
		{
			return _m17599(_q9107);
		}
		if (_o9821 == -5) 
		{
			return _m17600(_q9107);
		}
		if (_o9821 == -6) 
		{
			return _m17601(_q9107);
		}
		if (_o9821 == -7) 
		{
			return _m17602(_q9107);
		}
		if (_o9821 == -8) 
		{
			return _m17603(_q9107);
		}
		if (_o9821 == -9) 
		{
			return _m17604(_q9107);
		}
		if (_o9821 == -10) 
		{
			return _m17605(_q9107);
		}
		if (_o9821 == -11) 
		{
			return _m17606(_q9107);
		}
		if (_o9821 == -12) 
		{
			return _m17607(_q9107);
		}
		if (_o9821 == -13) 
		{
			return _m17608(_q9107);
		}
		if (_o9821 == -14) 
		{
			return _m17609(_q9107);
		}
		if (_o9821 == -15) 
		{
			return _m17610(_q9107);
		}
		if (_o9821 == -16) 
		{
			return _m17611(_q9107);
		}
		if (_o9821 == -17) 
		{
			return _m17612(_q9107);
		}
		if (_o9821 == -18) 
		{
			return _m17613(_q9107);
		}
		if (_o9821 == -19) 
		{
			return _m17614(_q9107);
		}
		if (_o9821 == -20) 
		{
			return _m17615(_q9107);
		}
		if (_o9821 == -21) 
		{
			return _m17616(_q9107);
		}
		if (_o9821 == -22) 
		{
			return _m17617(_q9107);
		}
		if (_o9821 == -23) 
		{
			return _m17618(_q9107);
		}
		if (_o9821 == -24) 
		{
			return _m17619(_q9107);
		}
		if (_o9821 == -26) 
		{
			return _m17620(_q9107);
		}
		if (_o9821 == -27) 
		{
			return _m17621(_q9107);
		}
		if (_o9821 == -28) 
		{
			return _m17622(_q9107);
		}
		if (_o9821 == -29) 
		{
			return _m17623(_q9107);
		}
		if (_o9821 == -30) 
		{
			return _m17624(_q9107);
		}
		if (_o9821 == -31) 
		{
			return _m17625(_q9107);
		}
		if (_o9821 == -32) 
		{
			return _m17626(_q9107);
		}
		if (_o9821 == -33) 
		{
			return _m17627(_q9107);
		}
		if (_o9821 == -34) 
		{
			return _m17628(_q9107);
		}
		if (_o9821 == -35) 
		{
			return _m17629(_q9107);
		}
		if (_o9821 == -10018) 
		{
			return _m17630(_q9107);
		}
		if (_o9821 == -10038) 
		{
			return _m17631(_q9107);
		}
		if (_o9821 == -10058) 
		{
			return _m17632(_q9107);
		}
		if (_o9821 == -10078) 
		{
			return _m17633(_q9107);
		}
		if (_o9821 == -10098) 
		{
			return _m17634(_q9107);
		}
		if (_o9821 == -10118) 
		{
			return _m17635(_q9107);
		}
		if (_o9821 == -10138) 
		{
			return _m17636(_q9107);
		}
		if (_o9821 == -10158) 
		{
			return _m17637(_q9107);
		}
		if (_o9821 == -10178) 
		{
			return _m17638(_q9107);
		}
		if (_o9821 == -10198) 
		{
			return _m17639(_q9107);
		}
		if (_o9821 == -10218) 
		{
			return _m17640(_q9107);
		}
		if (_o9821 == -10238) 
		{
			return _m17641(_q9107);
		}
		if (_o9821 == -10258) 
		{
			return _m17642(_q9107);
		}
		if (_o9821 == -10278) 
		{
			return _m17643(_q9107);
		}
		if (_o9821 == -10298) 
		{
			return _m17644(_q9107);
		}
		if (_o9821 == -10318) 
		{
			return _m17645(_q9107);
		}
		if (_o9821 == -10338) 
		{
			return _m17646(_q9107);
		}
		if (_o9821 == -10358) 
		{
			return _m17647(_q9107);
		}
		if (_o9821 == -10378) 
		{
			return _m17648(_q9107);
		}
		if (_o9821 == -10398) 
		{
			return _m17649(_q9107);
		}
		if (_o9821 == -10418) 
		{
			return _m17650(_q9107);
		}
		if (_o9821 == -10438) 
		{
			return _m17651(_q9107);
		}
		if (_o9821 == -10458) 
		{
			return _m17652(_q9107);
		}
		if (_o9821 == -10478) 
		{
			return _m17653(_q9107);
		}
		if (_o9821 == -10498) 
		{
			return _m17654(_q9107);
		}
		if (_o9821 == -10518) 
		{
			return _m17655(_q9107);
		}
		if (_o9821 == -10538) 
		{
			return _m17656(_q9107);
		}
		if (_o9821 == -10558) 
		{
			return _m17657(_q9107);
		}
		if (_o9821 == -10578) 
		{
			return _m17658(_q9107);
		}
		if (_o9821 == -10598) 
		{
			return _m17659(_q9107);
		}
		if (_o9821 == -10618) 
		{
			return _m17660(_q9107);
		}
		if (_o9821 == -10638) 
		{
			return _m17661(_q9107);
		}
		if (_o9821 == -10658) 
		{
			return _m17662(_q9107);
		}
		if (_o9821 == -10678) 
		{
			return _m17663(_q9107);
		}
		if (_o9821 == -10698) 
		{
			return _m17664(_q9107);
		}
		if (_o9821 == -10718) 
		{
			return _m17665(_q9107);
		}
		if (_o9821 == -10738) 
		{
			return _m17666(_q9107);
		}
		if (_o9821 == -10758) 
		{
			return _m17667(_q9107);
		}
		if (_o9821 == -10778) 
		{
			return _m17668(_q9107);
		}
		if (_o9821 == -10798) 
		{
			return _m17669(_q9107);
		}
		if (_o9821 == -10818) 
		{
			return _m17670(_q9107);
		}
		if (_o9821 == -10838) 
		{
			return _m17671(_q9107);
		}
		if (_o9821 == -10858) 
		{
			return _m17672(_q9107);
		}
		if (_o9821 == -10878) 
		{
			return _m17673(_q9107);
		}
		if (_o9821 == -10898) 
		{
			return _m17674(_q9107);
		}
		if (_o9821 == -10918) 
		{
			return _m17675(_q9107);
		}
		if (_o9821 == -10938) 
		{
			return _m17676(_q9107);
		}
		if (_o9821 == -10958) 
		{
			return _m17677(_q9107);
		}
		if (_o9821 == -10978) 
		{
			return _m17678(_q9107);
		}
		if (_o9821 == -10998) 
		{
			return _m17679(_q9107);
		}
		if (_o9821 == -11018) 
		{
			return _m17680(_q9107);
		}
		if (_o9821 == -11038) 
		{
			return _m17681(_q9107);
		}
		if (_o9821 == -11058) 
		{
			return _m17682(_q9107);
		}
		if (_o9821 == -11078) 
		{
			return _m17683(_q9107);
		}
		if (_o9821 == -11098) 
		{
			return _m17684(_q9107);
		}
		if (_o9821 == -11118) 
		{
			return _m17685(_q9107);
		}
		if (_o9821 == -3000) 
		{
			return _m17686(_q9107);
		}
		if (_o9821 == -3001) 
		{
			return _m17687(_q9107);
		}
		if (_o9821 == -3002) 
		{
			return _m17688(_q9107);
		}
		if (_o9821 == -3003) 
		{
			return _m17689(_q9107);
		}
		if (_o9821 == -3004) 
		{
			return _m17690(_q9107);
		}
		if (_o9821 == -3005) 
		{
			return _m17691(_q9107);
		}
		if (_o9821 == -3006) 
		{
			return _m17692(_q9107);
		}
		if (_o9821 == -3008) 
		{
			return _m17693(_q9107);
		}
		if (_o9821 == -3009) 
		{
			return _m17694(_q9107);
		}
		if (_o9821 == -3010) 
		{
			return _m17695(_q9107);
		}
		if (_o9821 == -3011) 
		{
			return _m17696(_q9107);
		}
		if (_o9821 == -3012) 
		{
			return _m17697(_q9107);
		}
		if (_o9821 == -3013) 
		{
			return _m17698(_q9107);
		}
		if (_o9821 == -3017) 
		{
			return _m17699(_q9107);
		}
		if (_o9821 == -3019) 
		{
			return _m17700(_q9107);
		}
		if (_o9821 == -3020) 
		{
			return _m17701(_q9107);
		}
		if (_o9821 == -3021) 
		{
			return _m17702(_q9107);
		}
		if (_o9821 == -3042) 
		{
			return _m17703(_q9107);
		}
		if (_o9821 == -3077) 
		{
			return _m17704(_q9107);
		}
		if (_o9821 == -3078) 
		{
			return _m17705(_q9107);
		}
		if (_o9821 == -3084) 
		{
			return _m17706(_q9107);
		}
		if (_o9821 == -3088) 
		{
			return _m17707(_q9107);
		}
		if (_o9821 == -3089) 
		{
			return _m17708(_q9107);
		}
		if (_o9821 == -3090) 
		{
			return _m17709(_q9107);
		}
		if (_o9821 == -3093) 
		{
			return _m17710(_q9107);
		}
		if (_o9821 == -3098) 
		{
			return _m17711(_q9107);
		}
		if (_o9821 == -3099) 
		{
			return _m17712(_q9107);
		}
		if (_o9821 == -3100) 
		{
			return _m17713(_q9107);
		}
		if (_o9821 == -3101) 
		{
			return _m17714(_q9107);
		}
		if (_o9821 == -3103) 
		{
			return _m17715(_q9107);
		}
		if (_o9821 == -3105) 
		{
			return _m17716(_q9107);
		}
		if (_o9821 == -3106) 
		{
			return _m17717(_q9107);
		}
		if (_o9821 == -3107) 
		{
			return _m17718(_q9107);
		}
		if (_o9821 == -3109) 
		{
			return _m17719(_q9107);
		}
		if (_o9821 == -3111) 
		{
			return _m17720(_q9107);
		}
		if (_o9821 == -3112) 
		{
			return _m17721(_q9107);
		}
		if (_o9821 == -3113) 
		{
			return _m17722(_q9107);
		}
		if (_o9821 == -3115) 
		{
			return _m17723(_q9107);
		}
		if (_o9821 == -3116) 
		{
			return _m17724(_q9107);
		}
		if (_o9821 == -3118) 
		{
			return _m17725(_q9107);
		}
		if (_o9821 == -3119) 
		{
			return _m17726(_q9107);
		}
		if (_o9821 == -3121) 
		{
			return _m17727(_q9107);
		}
		if (_o9821 == -3122) 
		{
			return _m17728(_q9107);
		}
		if (_o9821 == -3124) 
		{
			return _m17729(_q9107);
		}
		if (_o9821 == -3127) 
		{
			return _m17730(_q9107);
		}
		if (_o9821 == -3129) 
		{
			return _m17731(_q9107);
		}
		if (_o9821 == -3130) 
		{
			return _m17732(_q9107);
		}
		if (_o9821 == -3135) 
		{
			return _m17733(_q9107);
		}
		if (_o9821 == -3136) 
		{
			return _m17734(_q9107);
		}
		if (_o9821 == -3137) 
		{
			return _m17735(_q9107);
		}
		if (_o9821 == -3139) 
		{
			return _m17736(_q9107);
		}
		if (_o9821 == -3140) 
		{
			return _m17737(_q9107);
		}
		if (_o9821 == -3142) 
		{
			return _m17738(_q9107);
		}
		if (_o9821 == -3143) 
		{
			return _m17739(_q9107);
		}
		if (_o9821 == -3145) 
		{
			return _m17740(_q9107);
		}
		if (_o9821 == -3156) 
		{
			return _m17741(_q9107);
		}
		if (_o9821 == -3157) 
		{
			return _m17742(_q9107);
		}
		if (_o9821 == -3158) 
		{
			return _m17743(_q9107);
		}
		if (_o9821 == -3159) 
		{
			return _m17744(_q9107);
		}
		if (_o9821 == -3164) 
		{
			return _m17745(_q9107);
		}
		if (_o9821 == -3174) 
		{
			return _m17746(_q9107);
		}
		if (_o9821 == -3175) 
		{
			return _m17747(_q9107);
		}
		if (_o9821 == -3178) 
		{
			return _m17748(_q9107);
		}
		if (_o9821 == -3179) 
		{
			return _m17749(_q9107);
		}
		if (_o9821 == -3180) 
		{
			return _m17750(_q9107);
		}
		if (_o9821 == -3181) 
		{
			return _m17751(_q9107);
		}
		if (_o9821 == -10019) 
		{
			return _m17752(_q9107);
		}
		if (_o9821 == -10017) 
		{
			return _m17753(_q9107);
		}
		if (_o9821 == -10016) 
		{
			return _m17754(_q9107);
		}
		if (_o9821 == -10039) 
		{
			return _m17755(_q9107);
		}
		if (_o9821 == -10037) 
		{
			return _m17756(_q9107);
		}
		if (_o9821 == -10059) 
		{
			return _m17757(_q9107);
		}
		if (_o9821 == -10057) 
		{
			return _m17758(_q9107);
		}
		if (_o9821 == -10056) 
		{
			return _m17759(_q9107);
		}
		if (_o9821 == -10079) 
		{
			return _m17760(_q9107);
		}
		if (_o9821 == -10077) 
		{
			return _m17761(_q9107);
		}
		if (_o9821 == -10099) 
		{
			return _m17762(_q9107);
		}
		if (_o9821 == -10097) 
		{
			return _m17763(_q9107);
		}
		if (_o9821 == -10119) 
		{
			return _m17764(_q9107);
		}
		if (_o9821 == -10117) 
		{
			return _m17765(_q9107);
		}
		if (_o9821 == -10116) 
		{
			return _m17766(_q9107);
		}
		if (_o9821 == -10139) 
		{
			return _m17767(_q9107);
		}
		if (_o9821 == -10137) 
		{
			return _m17768(_q9107);
		}
		if (_o9821 == -10159) 
		{
			return _m17769(_q9107);
		}
		if (_o9821 == -10157) 
		{
			return _m17770(_q9107);
		}
		if (_o9821 == -10179) 
		{
			return _m17771(_q9107);
		}
		if (_o9821 == -10177) 
		{
			return _m17772(_q9107);
		}
		if (_o9821 == -10199) 
		{
			return _m17773(_q9107);
		}
		if (_o9821 == -10197) 
		{
			return _m17774(_q9107);
		}
		if (_o9821 == -10196) 
		{
			return _m17775(_q9107);
		}
		if (_o9821 == -10219) 
		{
			return _m17776(_q9107);
		}
		if (_o9821 == -10217) 
		{
			return _m17777(_q9107);
		}
		if (_o9821 == -10239) 
		{
			return _m17778(_q9107);
		}
		if (_o9821 == -10237) 
		{
			return _m17779(_q9107);
		}
		if (_o9821 == -10259) 
		{
			return _m17780(_q9107);
		}
		if (_o9821 == -10257) 
		{
			return _m17781(_q9107);
		}
		if (_o9821 == -10279) 
		{
			return _m17782(_q9107);
		}
		if (_o9821 == -10277) 
		{
			return _m17783(_q9107);
		}
		if (_o9821 == -10299) 
		{
			return _m17784(_q9107);
		}
		if (_o9821 == -10297) 
		{
			return _m17785(_q9107);
		}
		if (_o9821 == -10296) 
		{
			return _m17786(_q9107);
		}
		if (_o9821 == -10319) 
		{
			return _m17787(_q9107);
		}
		if (_o9821 == -10317) 
		{
			return _m17788(_q9107);
		}
		if (_o9821 == -10339) 
		{
			return _m17789(_q9107);
		}
		if (_o9821 == -10337) 
		{
			return _m17790(_q9107);
		}
		if (_o9821 == -10359) 
		{
			return _m17791(_q9107);
		}
		if (_o9821 == -10357) 
		{
			return _m17792(_q9107);
		}
		if (_o9821 == -10379) 
		{
			return _m17793(_q9107);
		}
		if (_o9821 == -10377) 
		{
			return _m17794(_q9107);
		}
		if (_o9821 == -10399) 
		{
			return _m17795(_q9107);
		}
		if (_o9821 == -10397) 
		{
			return _m17796(_q9107);
		}
		if (_o9821 == -10419) 
		{
			return _m17797(_q9107);
		}
		if (_o9821 == -10417) 
		{
			return _m17798(_q9107);
		}
		if (_o9821 == -10439) 
		{
			return _m17799(_q9107);
		}
		if (_o9821 == -10437) 
		{
			return _m17800(_q9107);
		}
		if (_o9821 == -10459) 
		{
			return _m17801(_q9107);
		}
		if (_o9821 == -10457) 
		{
			return _m17802(_q9107);
		}
		if (_o9821 == -10479) 
		{
			return _m17803(_q9107);
		}
		if (_o9821 == -10477) 
		{
			return _m17804(_q9107);
		}
		if (_o9821 == -10476) 
		{
			return _m17805(_q9107);
		}
		if (_o9821 == -10499) 
		{
			return _m17806(_q9107);
		}
		if (_o9821 == -10497) 
		{
			return _m17807(_q9107);
		}
		if (_o9821 == -10519) 
		{
			return _m17808(_q9107);
		}
		if (_o9821 == -10517) 
		{
			return _m17809(_q9107);
		}
		if (_o9821 == -10539) 
		{
			return _m17810(_q9107);
		}
		if (_o9821 == -10537) 
		{
			return _m17811(_q9107);
		}
		if (_o9821 == -10559) 
		{
			return _m17812(_q9107);
		}
		if (_o9821 == -10557) 
		{
			return _m17813(_q9107);
		}
		if (_o9821 == -10579) 
		{
			return _m17814(_q9107);
		}
		if (_o9821 == -10577) 
		{
			return _m17815(_q9107);
		}
		if (_o9821 == -10599) 
		{
			return _m17816(_q9107);
		}
		if (_o9821 == -10597) 
		{
			return _m17817(_q9107);
		}
		if (_o9821 == -10619) 
		{
			return _m17818(_q9107);
		}
		if (_o9821 == -10617) 
		{
			return _m17819(_q9107);
		}
		if (_o9821 == -10639) 
		{
			return _m17820(_q9107);
		}
		if (_o9821 == -10637) 
		{
			return _m17821(_q9107);
		}
		if (_o9821 == -10659) 
		{
			return _m17822(_q9107);
		}
		if (_o9821 == -10657) 
		{
			return _m17823(_q9107);
		}
		if (_o9821 == -10656) 
		{
			return _m17824(_q9107);
		}
		if (_o9821 == -10679) 
		{
			return _m17825(_q9107);
		}
		if (_o9821 == -10677) 
		{
			return _m17826(_q9107);
		}
		if (_o9821 == -10699) 
		{
			return _m17827(_q9107);
		}
		if (_o9821 == -10697) 
		{
			return _m17828(_q9107);
		}
		if (_o9821 == -10719) 
		{
			return _m17829(_q9107);
		}
		if (_o9821 == -10717) 
		{
			return _m17830(_q9107);
		}
		if (_o9821 == -10739) 
		{
			return _m17831(_q9107);
		}
		if (_o9821 == -10737) 
		{
			return _m17832(_q9107);
		}
		if (_o9821 == -10759) 
		{
			return _m17833(_q9107);
		}
		if (_o9821 == -10757) 
		{
			return _m17834(_q9107);
		}
		if (_o9821 == -10756) 
		{
			return _m17835(_q9107);
		}
		if (_o9821 == -10755) 
		{
			return _m17836(_q9107);
		}
		if (_o9821 == -10779) 
		{
			return _m17837(_q9107);
		}
		if (_o9821 == -10777) 
		{
			return _m17838(_q9107);
		}
		if (_o9821 == -10799) 
		{
			return _m17839(_q9107);
		}
		if (_o9821 == -10797) 
		{
			return _m17840(_q9107);
		}
		if (_o9821 == -10796) 
		{
			return _m17841(_q9107);
		}
		if (_o9821 == -10819) 
		{
			return _m17842(_q9107);
		}
		if (_o9821 == -10817) 
		{
			return _m17843(_q9107);
		}
		if (_o9821 == -10839) 
		{
			return _m17844(_q9107);
		}
		if (_o9821 == -10837) 
		{
			return _m17845(_q9107);
		}
		if (_o9821 == -10859) 
		{
			return _m17846(_q9107);
		}
		if (_o9821 == -10857) 
		{
			return _m17847(_q9107);
		}
		if (_o9821 == -10856) 
		{
			return _m17848(_q9107);
		}
		if (_o9821 == -10879) 
		{
			return _m17849(_q9107);
		}
		if (_o9821 == -10877) 
		{
			return _m17850(_q9107);
		}
		if (_o9821 == -10876) 
		{
			return _m17851(_q9107);
		}
		if (_o9821 == -10899) 
		{
			return _m17852(_q9107);
		}
		if (_o9821 == -10897) 
		{
			return _m17853(_q9107);
		}
		if (_o9821 == -10919) 
		{
			return _m17854(_q9107);
		}
		if (_o9821 == -10917) 
		{
			return _m17855(_q9107);
		}
		if (_o9821 == -10939) 
		{
			return _m17856(_q9107);
		}
		if (_o9821 == -10937) 
		{
			return _m17857(_q9107);
		}
		if (_o9821 == -10936) 
		{
			return _m17858(_q9107);
		}
		if (_o9821 == -10959) 
		{
			return _m17859(_q9107);
		}
		if (_o9821 == -10957) 
		{
			return _m17860(_q9107);
		}
		if (_o9821 == -10979) 
		{
			return _m17861(_q9107);
		}
		if (_o9821 == -10977) 
		{
			return _m17862(_q9107);
		}
		if (_o9821 == -10999) 
		{
			return _m17863(_q9107);
		}
		if (_o9821 == -10997) 
		{
			return _m17864(_q9107);
		}
		if (_o9821 == -10996) 
		{
			return _m17865(_q9107);
		}
		if (_o9821 == -11019) 
		{
			return _m17866(_q9107);
		}
		if (_o9821 == -11017) 
		{
			return _m17867(_q9107);
		}
		if (_o9821 == -11016) 
		{
			return _m17868(_q9107);
		}
		if (_o9821 == -11039) 
		{
			return _m17869(_q9107);
		}
		if (_o9821 == -11037) 
		{
			return _m17870(_q9107);
		}
		if (_o9821 == -11036) 
		{
			return _m17871(_q9107);
		}
		if (_o9821 == -11059) 
		{
			return _m17872(_q9107);
		}
		if (_o9821 == -11057) 
		{
			return _m17873(_q9107);
		}
		if (_o9821 == -11079) 
		{
			return _m17874(_q9107);
		}
		if (_o9821 == -11077) 
		{
			return _m17875(_q9107);
		}
		if (_o9821 == -11099) 
		{
			return _m17876(_q9107);
		}
		if (_o9821 == -11097) 
		{
			return _m17877(_q9107);
		}
		if (_o9821 == -11119) 
		{
			return _m17878(_q9107);
		}
		if (_o9821 == -11117) 
		{
			return _m17879(_q9107);
		}
		throw new NError("No serializer found for type " + _o9821, null);
	}

	public function _m17596( _d9118:T1223):Serializable
	{
		var _n2275:Int = T1224._m17880(_d9118);
		return DnsStatus.fromValue(_n2275);
	}

	public function _m17597( buff:T1223):Serializable
	{
		var _m2276:Int = T1224._m17880(buff);
		return MatchMakingType.fromValue(_m2276);
	}

	public function _m17598( buff:T1223):Serializable
	{
		var _c2277:Int = T1224._m17880(buff);
		return LeaderboardOrder.fromValue(_c2277);
	}

	public function _m17599( buff:T1223):Serializable
	{
		var _i2278:Int = T1224._m17880(buff);
		return LeaderboardPeriod.fromValue(_i2278);
	}

	public function _m17600( buff:T1223):Serializable
	{
		var _e2279:Int = T1224._m17880(buff);
		return DeveloperGameType.fromValue(_e2279);
	}

	public function _m17601( buff:T1223):Serializable
	{
		var _u2280:Int = T1224._m17880(buff);
		return GameLoadingType.fromValue(_u2280);
	}

	public function _m17602( buff:T1223):Serializable
	{
		var _i2281:Int = T1224._m17880(buff);
		return DeveloperGameMode.fromValue(_i2281);
	}

	public function _m17603( buff:T1223):Serializable
	{
		var _i2282:Int = T1224._m17880(buff);
		return ErrorCode.fromValue(_i2282);
	}

	public function _m17604( buff:T1223):Serializable
	{
		var _s2283:Int = T1224._m17880(buff);
		return ThirdPartySource.fromValue(_s2283);
	}

	public function _m17605( buff:T1223):Serializable
	{
		var _m2284:Int = T1224._m17880(buff);
		return ChallengeStatus.fromValue(_m2284);
	}

	public function _m17606( _q9124:T1223):Serializable
	{
		var _x2285:Int = T1224._m17880(_q9124);
		return PlayerDisconnectionReason.fromValue(_x2285);
	}

	public function _m17607( buff:T1223):Serializable
	{
		var _r2286:Int = T1224._m17880(buff);
		return LogLevel.fromValue(_r2286);
	}

	public function _m17608( buff:T1223):Serializable
	{
		var _p2287:Int = T1224._m17880(buff);
		return EntityType.fromValue(_p2287);
	}

	public function _m17609( buff:T1223):Serializable
	{
		var _g2288:Int = T1224._m17880(buff);
		return Gender.fromValue(_g2288);
	}

	public function _m17610( buff:T1223):Serializable
	{
		var _j2289:Int = T1224._m17880(buff);
		return RedirectStrategyType.fromValue(_j2289);
	}

	public function _m17611( buff:T1223):Serializable
	{
		var _o2290:Int = T1224._m17880(buff);
		return JobStatus.fromValue(_o2290);
	}

	public function _m17612( buff:T1223):Serializable
	{
		var _q2291:Int = T1224._m17880(buff);
		return Environment.fromValue(_q2291);
	}

	public function _m17613( buff:T1223):Serializable
	{
		var _x2292:Int = T1224._m17880(buff);
		return HandshakeState.fromValue(_x2292);
	}

	public function _m17614( buff:T1223):Serializable
	{
		var _f2293:Int = T1224._m17880(buff);
		return PlayerState.fromValue(_f2293);
	}

	public function _m17615( buff:T1223):Serializable
	{
		var _b2294:Int = T1224._m17880(buff);
		return ClientApplication.fromValue(_b2294);
	}

	public function _m17616( buff:T1223):Serializable
	{
		var _p2295:Int = T1224._m17880(buff);
		return GameRunningState.fromValue(_p2295);
	}

	public function _m17617( buff:T1223):Serializable
	{
		var _o2296:Int = T1224._m17880(buff);
		return Period.fromValue(_o2296);
	}

	public function _m17618( buff:T1223):Serializable
	{
		var _p2297:Int = T1224._m17880(buff);
		return PlayerInvitationStatus.fromValue(_p2297);
	}

	public function _m17619( buff:T1223):Serializable
	{
		var _c2298:Int = T1224._m17880(buff);
		return ExecutionStatus.fromValue(_c2298);
	}

	public function _m17620( _n9130:T1223):Serializable
	{
		var _g2299:Int = T1224._m17880(_n9130);
		return NebulaPlayerStatus.fromValue(_g2299);
	}

	public function _m17621( buff:T1223):Serializable
	{
		var _n2300:Int = T1224._m17880(buff);
		return GameServerStatus.fromValue(_n2300);
	}

	public function _m17622( buff:T1223):Serializable
	{
		var _i2301:Int = T1224._m17880(buff);
		return DeveloperStatus.fromValue(_i2301);
	}

	public function _m17623( buff:T1223):Serializable
	{
		var _h2302:Int = T1224._m17880(buff);
		return DeveloperGamePlan.fromValue(_h2302);
	}

	public function _m17624( buff:T1223):Serializable
	{
		var _q2303:Int = T1224._m17880(buff);
		return LocationZone.fromValue(_q2303);
	}

	public function _m17625( buff:T1223):Serializable
	{
		var _b2304:Int = T1224._m17880(buff);
		return ThirdPartyMethodType.fromValue(_b2304);
	}

	public function _m17626( buff:T1223):Serializable
	{
		var _p2305:Int = T1224._m17880(buff);
		return ForumTopicStatus.fromValue(_p2305);
	}

	public function _m17627( buff:T1223):Serializable
	{
		var _k2306:Int = T1224._m17880(buff);
		return DeveloperGameVersionStatus.fromValue(_k2306);
	}

	public function _m17628( buff:T1223):Serializable
	{
		var _y2307:Int = T1224._m17880(buff);
		return StartStatus.fromValue(_y2307);
	}

	public function _m17629( buff:T1223):Serializable
	{
		var _x2308:Int = T1224._m17880(buff);
		return EmailCampaignState.fromValue(_x2308);
	}

	public function _m17630( buff:T1223):Serializable
	{
		var _j2309:Int = T1224._m17880(buff);
		return InvitePlayerStatus.fromValue(_j2309);
	}

	public function _m17631( buff:T1223):Serializable
	{
		var _k2310:Int = T1224._m17880(buff);
		return SignUpStatus.fromValue(_k2310);
	}

	public function _m17632( buff:T1223):Serializable
	{
		var _k2311:Int = T1224._m17880(buff);
		return ForgotPasswordStatus.fromValue(_k2311);
	}

	public function _m17633( buff:T1223):Serializable
	{
		var _r2312:Int = T1224._m17880(buff);
		return LoginStatus.fromValue(_r2312);
	}

	public function _m17634( buff:T1223):Serializable
	{
		var _l2313:Int = T1224._m17880(buff);
		return SavePlayerProfileStatus.fromValue(_l2313);
	}

	public function _m17635( buff:T1223):Serializable
	{
		var _m2314:Int = T1224._m17880(buff);
		return GetPlayerProfileStatus.fromValue(_m2314);
	}

	public function _m17636( buff:T1223):Serializable
	{
		var _c2315:Int = T1224._m17880(buff);
		return LogoutStatus.fromValue(_c2315);
	}

	public function _m17637( buff:T1223):Serializable
	{
		var _d2316:Int = T1224._m17880(buff);
		return ChallengeFriendStatus.fromValue(_d2316);
	}

	public function _m17638( buff:T1223):Serializable
	{
		var _a2317:Int = T1224._m17880(buff);
		return ChallengeThirdPartyFriendStatus.fromValue(_a2317);
	}

	public function _m17639( buff:T1223):Serializable
	{
		var _o2318:Int = T1224._m17880(buff);
		return GetFriendsStatus.fromValue(_o2318);
	}

	public function _m17640( buff:T1223):Serializable
	{
		var _t2319:Int = T1224._m17880(buff);
		return GetThirdPartyFriendsStatus.fromValue(_t2319);
	}

	public function _m17641( buff:T1223):Serializable
	{
		var _i2320:Int = T1224._m17880(buff);
		return GetPlayerInvitationsStatus.fromValue(_i2320);
	}

	public function _m17642( buff:T1223):Serializable
	{
		var _r2321:Int = T1224._m17880(buff);
		return AcceptPlayerInvitationStatus.fromValue(_r2321);
	}

	public function _m17643( buff:T1223):Serializable
	{
		var _g2322:Int = T1224._m17880(buff);
		return IgnorePlayerInvitationStatus.fromValue(_g2322);
	}

	public function _m17644( buff:T1223):Serializable
	{
		var _l2323:Int = T1224._m17880(buff);
		return SubmitScoreStatus.fromValue(_l2323);
	}

	public function _m17645( buff:T1223):Serializable
	{
		var _z2324:Int = T1224._m17880(buff);
		return GetLeaderboardStatus.fromValue(_z2324);
	}

	public function _m17646( buff:T1223):Serializable
	{
		var _f2325:Int = T1224._m17880(buff);
		return BuyItemStatus.fromValue(_f2325);
	}

	public function _m17647( buff:T1223):Serializable
	{
		var _l2326:Int = T1224._m17880(buff);
		return GetStoreStatus.fromValue(_l2326);
	}

	public function _m17648( _y9141:T1223):Serializable
	{
		var _n2327:Int = T1224._m17880(_y9141);
		return ConsumeItemStatus.fromValue(_n2327);
	}

	public function _m17649( buff:T1223):Serializable
	{
		var _k2328:Int = T1224._m17880(buff);
		return IncreasePlayerWalletStatus.fromValue(_k2328);
	}

	public function _m17650( buff:T1223):Serializable
	{
		var _i2329:Int = T1224._m17880(buff);
		return GetPlayerWalletStatus.fromValue(_i2329);
	}

	public function _m17651( buff:T1223):Serializable
	{
		var _w2330:Int = T1224._m17880(buff);
		return GetAchievementBoardStatus.fromValue(_w2330);
	}

	public function _m17652( buff:T1223):Serializable
	{
		var _k2331:Int = T1224._m17880(buff);
		return AchieveStatus.fromValue(_k2331);
	}

	public function _m17653( buff:T1223):Serializable
	{
		var _g2332:Int = T1224._m17880(buff);
		return SearchImmediateGameStatus.fromValue(_g2332);
	}

	public function _m17654( buff:T1223):Serializable
	{
		var _e2333:Int = T1224._m17880(buff);
		return JoinGameStatus.fromValue(_e2333);
	}

	public function _m17655( buff:T1223):Serializable
	{
		var _o2334:Int = T1224._m17880(buff);
		return UnjoinGameStatus.fromValue(_o2334);
	}

	public function _m17656( buff:T1223):Serializable
	{
		var _i2335:Int = T1224._m17880(buff);
		return AcceptFriendChallengeStatus.fromValue(_i2335);
	}

	public function _m17657( buff:T1223):Serializable
	{
		var _x2336:Int = T1224._m17880(buff);
		return CancelFriendChallengeStatus.fromValue(_x2336);
	}

	public function _m17658( buff:T1223):Serializable
	{
		var _y2337:Int = T1224._m17880(buff);
		return RefuseFriendChallengeStatus.fromValue(_y2337);
	}

	public function _m17659( buff:T1223):Serializable
	{
		var _a2338:Int = T1224._m17880(buff);
		return GetChallengesStatus.fromValue(_a2338);
	}

	public function _m17660( buff:T1223):Serializable
	{
		var _m2339:Int = T1224._m17880(buff);
		return StartGameStatus.fromValue(_m2339);
	}

	public function _m17661( buff:T1223):Serializable
	{
		var _j2340:Int = T1224._m17880(buff);
		return StopGameStatus.fromValue(_j2340);
	}

	public function _m17662( _c9147:T1223):Serializable
	{
		var _u2341:Int = T1224._m17880(_c9147);
		return CreateGameStatus.fromValue(_u2341);
	}

	public function _m17663( buff:T1223):Serializable
	{
		var _h2342:Int = T1224._m17880(buff);
		return GetGamesStatus.fromValue(_h2342);
	}

	public function _m17664( buff:T1223):Serializable
	{
		var _k2343:Int = T1224._m17880(buff);
		return SaveAsGhostStatus.fromValue(_k2343);
	}

	public function _m17665( buff:T1223):Serializable
	{
		var _o2344:Int = T1224._m17880(buff);
		return GetGhostsStatus.fromValue(_o2344);
	}

	public function _m17666( buff:T1223):Serializable
	{
		var _u2345:Int = T1224._m17880(buff);
		return LoadGhostStatus.fromValue(_u2345);
	}

	public function _m17667( buff:T1223):Serializable
	{
		var _b2346:Int = T1224._m17880(buff);
		return SendGameChatStatus.fromValue(_b2346);
	}

	public function _m17668( buff:T1223):Serializable
	{
		var _k2347:Int = T1224._m17880(buff);
		return GetStorablesStatus.fromValue(_k2347);
	}

	public function _m17669( buff:T1223):Serializable
	{
		var _z2348:Int = T1224._m17880(buff);
		return SaveStorableStatus.fromValue(_z2348);
	}

	public function _m17670( buff:T1223):Serializable
	{
		var _u2349:Int = T1224._m17880(buff);
		return NextPlayerTurnStatus.fromValue(_u2349);
	}

	public function _m17671( buff:T1223):Serializable
	{
		var _z2350:Int = T1224._m17880(buff);
		return SetPlayerNameStatus.fromValue(_z2350);
	}

	public function _m17672( buff:T1223):Serializable
	{
		var _l2351:Int = T1224._m17880(buff);
		return UpdateStorableStatus.fromValue(_l2351);
	}

	public function _m17673( buff:T1223):Serializable
	{
		var _t2352:Int = T1224._m17880(buff);
		return RemoveStorableStatus.fromValue(_t2352);
	}

	public function _m17674( buff:T1223):Serializable
	{
		var _j2353:Int = T1224._m17880(buff);
		return InviteThirdPartyFriendStatus.fromValue(_j2353);
	}

	public function _m17675( buff:T1223):Serializable
	{
		var _x2354:Int = T1224._m17880(buff);
		return PublishThirdPartyMessageStatus.fromValue(_x2354);
	}

	public function _m17676( buff:T1223):Serializable
	{
		var _w2355:Int = T1224._m17880(buff);
		return ThirdPartyLoginStatus.fromValue(_w2355);
	}

	public function _m17677( buff:T1223):Serializable
	{
		var _d2356:Int = T1224._m17880(buff);
		return SaveGameStatus.fromValue(_d2356);
	}

	public function _m17678( buff:T1223):Serializable
	{
		var _w2357:Int = T1224._m17880(buff);
		return LoadGameStatus.fromValue(_w2357);
	}

	public function _m17679( buff:T1223):Serializable
	{
		var _q2358:Int = T1224._m17880(buff);
		return SavePlayerStorableStatus.fromValue(_q2358);
	}

	public function _m17680( buff:T1223):Serializable
	{
		var _u2359:Int = T1224._m17880(buff);
		return UpdatePlayerStorableStatus.fromValue(_u2359);
	}

	public function _m17681( buff:T1223):Serializable
	{
		var _t2360:Int = T1224._m17880(buff);
		return RemovePlayerStorableStatus.fromValue(_t2360);
	}

	public function _m17682( buff:T1223):Serializable
	{
		var _c2361:Int = T1224._m17880(buff);
		return GetPlayerStorablesStatus.fromValue(_c2361);
	}

	public function _m17683( buff:T1223):Serializable
	{
		var _k2362:Int = T1224._m17880(buff);
		return PauseSessionMonitoringStatus.fromValue(_k2362);
	}

	public function _m17684( buff:T1223):Serializable
	{
		var _y2363:Int = T1224._m17880(buff);
		return ResumeSessionMonitoringStatus.fromValue(_y2363);
	}

	public function _m17685( buff:T1223):Serializable
	{
		var _o10002:Int = T1224._m17880(buff);
		return PublishFriendThirdPartyMessageStatus.fromValue(_o10002);
	}

	public function _m17686( _v9158:T1223):Serializable
	{
		var _r10004:Handshake = new Handshake();
		var _g9160:Int = T1224._m17881(_v9158);
		for (_k2367 in 0 ... _g9160) 
		{
			var _v2368:Int = T1224._m17881(_v9158);
			if (_v2368 == 0) 
			{
				var _g2369:String = T1224._m17882(_v9158);
				_r10004.setMessageId(_g2369);
				MemoryManagement.free(_g2369);
				continue;
			}
			if (_v2368 == 1) 
			{
				var _q2370:String = T1224._m17882(_v9158);
				_r10004.setRequestId(_q2370);
				MemoryManagement.free(_q2370);
				continue;
			}
			if (_v2368 == 3) 
			{
				var _p2371:String = T1224._m17882(_v9158);
				_r10004.setVersion(_p2371);
				MemoryManagement.free(_p2371);
				continue;
			}
			if (_v2368 == 4) 
			{
				_r10004.setReason((cast T1224.readObject(this, _v9158)));
				continue;
			}
			if (_v2368 == 5) 
			{
				var _e2372:String = T1224._m17882(_v9158);
				_r10004.setDataPlayerId(_e2372);
				MemoryManagement.free(_e2372);
				continue;
			}
			if (_v2368 == 6) 
			{
				var _d2373:String = T1224._m17882(_v9158);
				_r10004.setSessionId(_d2373);
				MemoryManagement.free(_d2373);
				continue;
			}
			if (_v2368 == 7) 
			{
				var _r2374:String = T1224._m17882(_v9158);
				_r10004.setPlatform(_r2374);
				MemoryManagement.free(_r2374);
				continue;
			}
			T1224._m17883(_v9158);
		}
		return _r10004;
	}

	public function _m17687( _q9164:T1223):Serializable
	{
		var _k10015:HandshakeResponse = new HandshakeResponse();
		var _n9166:Int = T1224._m17881(_q9164);
		for (_g2377 in 0 ... _n9166) 
		{
			var _y2378:Int = T1224._m17881(_q9164);
			if (_y2378 == 0) 
			{
				var _s2379:String = T1224._m17882(_q9164);
				_k10015.setMessageId(_s2379);
				MemoryManagement.free(_s2379);
				continue;
			}
			if (_y2378 == 1) 
			{
				var _p2380:String = T1224._m17882(_q9164);
				_k10015.setRequestId(_p2380);
				MemoryManagement.free(_p2380);
				continue;
			}
			if (_y2378 == 3) 
			{
				_k10015.setExecutionStatus((cast T1224.readObject(this, _q9164)));
				continue;
			}
			if (_y2378 == 4) 
			{
				_k10015.setReason((cast T1224.readObject(this, _q9164)));
				continue;
			}
			if (_y2378 == 5) 
			{
				var _p2381:String = T1224._m17882(_q9164);
				_k10015.setDataPlayerId(_p2381);
				MemoryManagement.free(_p2381);
				continue;
			}
			if (_y2378 == 6) 
			{
				var _u2382:String = T1224._m17882(_q9164);
				_k10015.setSessionId(_u2382);
				MemoryManagement.free(_u2382);
				continue;
			}
			T1224._m17883(_q9164);
		}
		return _k10015;
	}

	public function _m17688( buff:T1223):Serializable
	{
		var _v10024:InvalidVersion = new InvalidVersion();
		var _p2384:Int = T1224._m17881(buff);
		for (_h2385 in 0 ... _p2384) 
		{
			var _y2386:Int = T1224._m17881(buff);
			if (_y2386 == 0) 
			{
				var _t2387:String = T1224._m17882(buff);
				_v10024.setMessageId(_t2387);
				MemoryManagement.free(_t2387);
				continue;
			}
			if (_y2386 == 1) 
			{
				var _b2388:String = T1224._m17882(buff);
				_v10024.setRequestId(_b2388);
				MemoryManagement.free(_b2388);
				continue;
			}
			T1224._m17883(buff);
		}
		return _v10024;
	}

	public function _m17689( buff:T1223):Serializable
	{
		var _c10031:NPlayer = new NPlayer();
		var _d2390:Int = T1224._m17881(buff);
		for (_o2391 in 0 ... _d2390) 
		{
			var _p2392:Int = T1224._m17881(buff);
			if (_p2392 == 0) 
			{
				var _b2393:String = T1224._m17882(buff);
				_c10031.setStoreId(_b2393);
				MemoryManagement.free(_b2393);
				continue;
			}
			if (_p2392 == 2) 
			{
				var _j2394:String = T1224._m17882(buff);
				_c10031.setID(_j2394);
				MemoryManagement.free(_j2394);
				continue;
			}
			if (_p2392 == 5) 
			{
				var _s2395:String = T1224._m17882(buff);
				_c10031.setAccessToken(_s2395);
				MemoryManagement.free(_s2395);
				continue;
			}
			if (_p2392 == 6) 
			{
				var _d2396:String = T1224._m17882(buff);
				_c10031.setName(_d2396);
				MemoryManagement.free(_d2396);
				continue;
			}
			if (_p2392 == 7) 
			{
				_c10031.setConnected(T1224._m17884(buff));
				continue;
			}
			if (_p2392 == 8) 
			{
				_c10031.setLoginSource((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_p2392 == 9) 
			{
				var _b2397:String = T1224._m17882(buff);
				_c10031.setThirdPartyId(_b2397);
				MemoryManagement.free(_b2397);
				continue;
			}
			T1224._m17883(buff);
		}
		return _c10031;
	}

	public function _m17690( _d9170:T1223):Serializable
	{
		var _o10041:GameStateChange = new GameStateChange();
		var _c9172:Int = T1224._m17881(_d9170);
		for (_d2400 in 0 ... _c9172) 
		{
			var _i2401:Int = T1224._m17881(_d9170);
			if (_i2401 == 0) 
			{
				var _d2402:String = T1224._m17882(_d9170);
				_o10041.setMessageId(_d2402);
				MemoryManagement.free(_d2402);
				continue;
			}
			if (_i2401 == 1) 
			{
				var _k2403:String = T1224._m17882(_d9170);
				_o10041.setRequestId(_k2403);
				MemoryManagement.free(_k2403);
				continue;
			}
			if (_i2401 == 3) 
			{
				var _f2404:String = T1224._m17882(_d9170);
				_o10041.setGameId(_f2404);
				MemoryManagement.free(_f2404);
				continue;
			}
			if (_i2401 == 4) 
			{
				_o10041.setGameRunningState((cast T1224.readObject(this, _d9170)));
				continue;
			}
			T1224._m17883(_d9170);
		}
		return _o10041;
	}

	public function _m17691( buff:T1223):Serializable
	{
		var _i10049:NPlayerInvitation = new NPlayerInvitation();
		var _x2406:Int = T1224._m17881(buff);
		for (_t2407 in 0 ... _x2406) 
		{
			var _m2408:Int = T1224._m17881(buff);
			if (_m2408 == 0) 
			{
				var _q2409:String = T1224._m17882(buff);
				_i10049.setStoreId(_q2409);
				MemoryManagement.free(_q2409);
				continue;
			}
			if (_m2408 == 2) 
			{
				_i10049.setEmitter((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_m2408 == 3) 
			{
				var _b2410:String = T1224._m17882(buff);
				_i10049.setReceiverId(_b2410);
				MemoryManagement.free(_b2410);
				continue;
			}
			if (_m2408 == 4) 
			{
				var _n2411:String = T1224._m17882(buff);
				_i10049.setCustomMessage(_n2411);
				MemoryManagement.free(_n2411);
				continue;
			}
			if (_m2408 == 5) 
			{
				_i10049.setPlayerInvitationStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_m2408 == 6) 
			{
				var _c2412:String = T1224._m17882(buff);
				_i10049.setPlayerInvitationId(_c2412);
				MemoryManagement.free(_c2412);
				continue;
			}
			T1224._m17883(buff);
		}
		return _i10049;
	}

	public function _m17692( _q9176:T1223):Serializable
	{
		var _u10058:NScore = new NScore();
		var _d9178:Int = T1224._m17881(_q9176);
		for (_u2415 in 0 ... _d9178) 
		{
			var _x2416:Int = T1224._m17881(_q9176);
			if (_x2416 == 0) 
			{
				var _e2417:String = T1224._m17882(_q9176);
				_u10058.setStoreId(_e2417);
				MemoryManagement.free(_e2417);
				continue;
			}
			if (_x2416 == 2) 
			{
				_u10058.setValue(T1224._m17885(_q9176));
				continue;
			}
			T1224._m17883(_q9176);
		}
		return _u10058;
	}

	public function _m17693( buff:T1223):Serializable
	{
		var _h10064:NRoom = new NRoom();
		var _x2419:Int = T1224._m17881(buff);
		for (_s2420 in 0 ... _x2419) 
		{
			var _k2421:Int = T1224._m17881(buff);
			if (_k2421 == 0) 
			{
				var _t2422:String = T1224._m17882(buff);
				_h10064.setStoreId(_t2422);
				MemoryManagement.free(_t2422);
				continue;
			}
			if (_k2421 == 2) 
			{
				var _c2423:String = T1224._m17882(buff);
				_h10064.setId(_c2423);
				MemoryManagement.free(_c2423);
				continue;
			}
			if (_k2421 == 3) 
			{
				var _x2424:String = T1224._m17882(buff);
				_h10064.setName(_x2424);
				MemoryManagement.free(_x2424);
				continue;
			}
			if (_k2421 == 4) 
			{
				var _d10071:NList<NPlayer> = null;
				var _z10072:Int = buff._m17886();
				if (_z10072 != T1221._m17179) 
				{
					buff._m17887();
					var _j10073:Int = buff._m17888();
					_d10071 = new NList<NPlayer>();
					for (_k2428 in 0 ... _j10073) 
					{
						_d10071.add((cast T1224.readObject(this, buff)));
					}
				}
				_h10064.setPlayers(_d10071);
				continue;
			}
			T1224._m17883(buff);
		}
		return _h10064;
	}

	public function _m17694( _y9182:T1223):Serializable
	{
		var _u10076:NGame = new NGame();
		var _b9184:Int = T1224._m17881(_y9182);
		for (_a2431 in 0 ... _b9184) 
		{
			var _p2432:Int = T1224._m17881(_y9182);
			if (_p2432 == 0) 
			{
				var _f2433:String = T1224._m17882(_y9182);
				_u10076.setStoreId(_f2433);
				MemoryManagement.free(_f2433);
				continue;
			}
			if (_p2432 == 2) 
			{
				var _g2434:String = T1224._m17882(_y9182);
				_u10076.setId(_g2434);
				MemoryManagement.free(_g2434);
				continue;
			}
			if (_p2432 == 3) 
			{
				var _g2435:String = T1224._m17882(_y9182);
				_u10076.setName(_g2435);
				MemoryManagement.free(_g2435);
				continue;
			}
			if (_p2432 == 4) 
			{
				var _l10083:NList<NPlayer> = null;
				var _j10084:Int = _y9182._m17886();
				if (_j10084 != T1221._m17179) 
				{
					_y9182._m17887();
					var _i10085:Int = _y9182._m17888();
					_l10083 = new NList<NPlayer>();
					for (_u2439 in 0 ... _i10085) 
					{
						_l10083.add((cast T1224.readObject(this, _y9182)));
					}
				}
				_u10076.setPlayers(_l10083);
				continue;
			}
			if (_p2432 == 2502) 
			{
				_u10076.setGameRunningState((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2503) 
			{
				_u10076.setGameCharacteristics((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2504) 
			{
				_u10076.setGameState((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2505) 
			{
				_u10076.setMatchMakingConditions((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2506) 
			{
				_u10076.setTurnBasedContext((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2507) 
			{
				_u10076.setDisconnectedContext((cast T1224.readObject(this, _y9182)));
				continue;
			}
			if (_p2432 == 2508) 
			{
				_u10076.setOwner((cast T1224.readObject(this, _y9182)));
				continue;
			}
			T1224._m17883(_y9182);
		}
		return _u10076;
	}

	public function _m17695( buff:T1223):Serializable
	{
		var _e10088:NGameCharacteristics = new NGameCharacteristics();
		var _e2441:Int = T1224._m17881(buff);
		for (_n2442 in 0 ... _e2441) 
		{
			var _l2443:Int = T1224._m17881(buff);
			if (_l2443 == 0) 
			{
				var _m2444:String = T1224._m17882(buff);
				_e10088.setStoreId(_m2444);
				MemoryManagement.free(_m2444);
				continue;
			}
			if (_l2443 == 2) 
			{
				_e10088.setMinPlayer(T1224._m17880(buff));
				continue;
			}
			if (_l2443 == 3) 
			{
				_e10088.setMaxPlayer(T1224._m17880(buff));
				continue;
			}
			if (_l2443 == 4) 
			{
				_e10088.setAutoStop(T1224._m17884(buff));
				continue;
			}
			if (_l2443 == 5) 
			{
				_e10088.setAutoStart(T1224._m17884(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _e10088;
	}

	public function _m17696( _w9188:T1223):Serializable
	{
		var _s10094:PlayerEnterGame = new PlayerEnterGame();
		var _b9190:Int = T1224._m17881(_w9188);
		for (_h2447 in 0 ... _b9190) 
		{
			var _t2448:Int = T1224._m17881(_w9188);
			if (_t2448 == 0) 
			{
				var _g2449:String = T1224._m17882(_w9188);
				_s10094.setMessageId(_g2449);
				MemoryManagement.free(_g2449);
				continue;
			}
			if (_t2448 == 1) 
			{
				var _d2450:String = T1224._m17882(_w9188);
				_s10094.setRequestId(_d2450);
				MemoryManagement.free(_d2450);
				continue;
			}
			if (_t2448 == 3) 
			{
				var _u2451:String = T1224._m17882(_w9188);
				_s10094.setGameId(_u2451);
				MemoryManagement.free(_u2451);
				continue;
			}
			if (_t2448 == 4) 
			{
				_s10094.setPlayer((cast T1224.readObject(this, _w9188)));
				continue;
			}
			T1224._m17883(_w9188);
		}
		return _s10094;
	}

	public function _m17697( buff:T1223):Serializable
	{
		var _x10102:AdminPublicMessage = new AdminPublicMessage();
		var _m2453:Int = T1224._m17881(buff);
		for (_i2454 in 0 ... _m2453) 
		{
			var _o2455:Int = T1224._m17881(buff);
			if (_o2455 == 0) 
			{
				var _i2456:String = T1224._m17882(buff);
				_x10102.setMessageId(_i2456);
				MemoryManagement.free(_i2456);
				continue;
			}
			if (_o2455 == 1) 
			{
				var _q2457:String = T1224._m17882(buff);
				_x10102.setRequestId(_q2457);
				MemoryManagement.free(_q2457);
				continue;
			}
			if (_o2455 == 4) 
			{
				var _d2458:String = T1224._m17882(buff);
				_x10102.setPlayerId(_d2458);
				MemoryManagement.free(_d2458);
				continue;
			}
			if (_o2455 == 5) 
			{
				var _r2459:String = T1224._m17882(buff);
				_x10102.setMessage(_r2459);
				MemoryManagement.free(_r2459);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x10102;
	}

	public function _m17698( _q9194:T1223):Serializable
	{
		var _s10111:FriendshipNotification = new FriendshipNotification();
		var _c9196:Int = T1224._m17881(_q9194);
		for (_m2462 in 0 ... _c9196) 
		{
			var _f2463:Int = T1224._m17881(_q9194);
			if (_f2463 == 0) 
			{
				var _f2464:String = T1224._m17882(_q9194);
				_s10111.setMessageId(_f2464);
				MemoryManagement.free(_f2464);
				continue;
			}
			if (_f2463 == 1) 
			{
				var _e2465:String = T1224._m17882(_q9194);
				_s10111.setRequestId(_e2465);
				MemoryManagement.free(_e2465);
				continue;
			}
			if (_f2463 == 4) 
			{
				_s10111.setFriend((cast T1224.readObject(this, _q9194)));
				continue;
			}
			T1224._m17883(_q9194);
		}
		return _s10111;
	}

	public function _m17699( buff:T1223):Serializable
	{
		var _f10118:PlayerUnjoinGame = new PlayerUnjoinGame();
		var _j2467:Int = T1224._m17881(buff);
		for (_h2468 in 0 ... _j2467) 
		{
			var _t2469:Int = T1224._m17881(buff);
			if (_t2469 == 0) 
			{
				var _z2470:String = T1224._m17882(buff);
				_f10118.setMessageId(_z2470);
				MemoryManagement.free(_z2470);
				continue;
			}
			if (_t2469 == 1) 
			{
				var _s2471:String = T1224._m17882(buff);
				_f10118.setRequestId(_s2471);
				MemoryManagement.free(_s2471);
				continue;
			}
			if (_t2469 == 3) 
			{
				var _n2472:String = T1224._m17882(buff);
				_f10118.setGameId(_n2472);
				MemoryManagement.free(_n2472);
				continue;
			}
			if (_t2469 == 4) 
			{
				_f10118.setPlayer((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10118;
	}

	public function _m17700( buff:T1223):Serializable
	{
		var _b10126:DnsRequest = new DnsRequest();
		var _u2474:Int = T1224._m17881(buff);
		for (_q2475 in 0 ... _u2474) 
		{
			var _u2476:Int = T1224._m17881(buff);
			if (_u2476 == 0) 
			{
				var _w2477:String = T1224._m17882(buff);
				_b10126.setMessageId(_w2477);
				MemoryManagement.free(_w2477);
				continue;
			}
			if (_u2476 == 1) 
			{
				var _h2478:String = T1224._m17882(buff);
				_b10126.setRequestId(_h2478);
				MemoryManagement.free(_h2478);
				continue;
			}
			if (_u2476 == 3) 
			{
				var _i2479:String = T1224._m17882(buff);
				_b10126.setGameId(_i2479);
				MemoryManagement.free(_i2479);
				continue;
			}
			if (_u2476 == 4) 
			{
				_b10126.setGameVersion(T1224._m17880(buff));
				continue;
			}
			if (_u2476 == 5) 
			{
				_b10126.setGameDeployedVersion(T1224._m17880(buff));
				continue;
			}
			if (_u2476 == 6) 
			{
				var _g2480:String = T1224._m17882(buff);
				_b10126.setPlatform(_g2480);
				MemoryManagement.free(_g2480);
				continue;
			}
			T1224._m17883(buff);
		}
		return _b10126;
	}

	public function _m17701( _s9200:T1223):Serializable
	{
		var _d10135:DnsResponse = new DnsResponse();
		var _t9202:Int = T1224._m17881(_s9200);
		for (_o2483 in 0 ... _t9202) 
		{
			var _l2484:Int = T1224._m17881(_s9200);
			if (_l2484 == 0) 
			{
				var _u2485:String = T1224._m17882(_s9200);
				_d10135.setMessageId(_u2485);
				MemoryManagement.free(_u2485);
				continue;
			}
			if (_l2484 == 1) 
			{
				var _o2486:String = T1224._m17882(_s9200);
				_d10135.setRequestId(_o2486);
				MemoryManagement.free(_o2486);
				continue;
			}
			if (_l2484 == 3) 
			{
				var _h2487:String = T1224._m17882(_s9200);
				_d10135.setIpAddress(_h2487);
				MemoryManagement.free(_h2487);
				continue;
			}
			if (_l2484 == 4) 
			{
				_d10135.setTcpPort(T1224._m17880(_s9200));
				continue;
			}
			if (_l2484 == 5) 
			{
				_d10135.setDnsStatus((cast T1224.readObject(this, _s9200)));
				continue;
			}
			if (_l2484 == 6) 
			{
				_d10135.setStartDetails((cast T1224.readObject(this, _s9200)));
				continue;
			}
			T1224._m17883(_s9200);
		}
		return _d10135;
	}

	public function _m17702( buff:T1223):Serializable
	{
		var _e10143:ConnectionLost = new ConnectionLost();
		var _l2489:Int = T1224._m17881(buff);
		for (_n2490 in 0 ... _l2489) 
		{
			var _p2491:Int = T1224._m17881(buff);
			if (_p2491 == 0) 
			{
				var _s2492:String = T1224._m17882(buff);
				_e10143.setMessageId(_s2492);
				MemoryManagement.free(_s2492);
				continue;
			}
			if (_p2491 == 1) 
			{
				var _i2493:String = T1224._m17882(buff);
				_e10143.setRequestId(_i2493);
				MemoryManagement.free(_i2493);
				continue;
			}
			T1224._m17883(buff);
		}
		return _e10143;
	}

	public function _m17703( buff:T1223):Serializable
	{
		var _h10150:NWorldUpdate = new NWorldUpdate();
		var _s2495:Int = T1224._m17881(buff);
		for (_y2496 in 0 ... _s2495) 
		{
			var _m2497:Int = T1224._m17881(buff);
			if (_m2497 == 0) 
			{
				var _k2498:String = T1224._m17882(buff);
				_h10150.setStoreId(_k2498);
				MemoryManagement.free(_k2498);
				continue;
			}
			if (_m2497 == 2) 
			{
				_h10150.setUpdate(T1224._m17880(buff));
				continue;
			}
			if (_m2497 == 3) 
			{
				var _b10155:NList<Message> = null;
				var _g10156:Int = buff._m17886();
				if (_g10156 != T1221._m17179) 
				{
					buff._m17887();
					var _v10157:Int = buff._m17888();
					_b10155 = new NList<Message>();
					for (_p2502 in 0 ... _v10157) 
					{
						_b10155.add((cast T1224.readObject(this, buff)));
					}
				}
				_h10150.setValues(_b10155);
				continue;
			}
			T1224._m17883(buff);
		}
		return _h10150;
	}

	public function _m17704( buff:T1223):Serializable
	{
		var _w10160:StopPlugConnectionRequest = new StopPlugConnectionRequest();
		var _l2504:Int = T1224._m17881(buff);
		for (_o2505 in 0 ... _l2504) 
		{
			var _n2506:Int = T1224._m17881(buff);
			if (_n2506 == 0) 
			{
				var _x2507:String = T1224._m17882(buff);
				_w10160.setMessageId(_x2507);
				MemoryManagement.free(_x2507);
				continue;
			}
			if (_n2506 == 1) 
			{
				var _t2508:String = T1224._m17882(buff);
				_w10160.setRequestId(_t2508);
				MemoryManagement.free(_t2508);
				continue;
			}
			T1224._m17883(buff);
		}
		return _w10160;
	}

	public function _m17705( _c9206:T1223):Serializable
	{
		var _z10167:StopPlugConnectionResponse = new StopPlugConnectionResponse();
		var _y9208:Int = T1224._m17881(_c9206);
		for (_j2511 in 0 ... _y9208) 
		{
			var _d2512:Int = T1224._m17881(_c9206);
			if (_d2512 == 0) 
			{
				var _x2513:String = T1224._m17882(_c9206);
				_z10167.setMessageId(_x2513);
				MemoryManagement.free(_x2513);
				continue;
			}
			if (_d2512 == 1) 
			{
				var _m2514:String = T1224._m17882(_c9206);
				_z10167.setRequestId(_m2514);
				MemoryManagement.free(_m2514);
				continue;
			}
			T1224._m17883(_c9206);
		}
		return _z10167;
	}

	public function _m17706( buff:T1223):Serializable
	{
		var _f10174:NChallenge = new NChallenge();
		var _j2516:Int = T1224._m17881(buff);
		for (_r2517 in 0 ... _j2516) 
		{
			var _j2518:Int = T1224._m17881(buff);
			if (_j2518 == 0) 
			{
				var _y2519:String = T1224._m17882(buff);
				_f10174.setStoreId(_y2519);
				MemoryManagement.free(_y2519);
				continue;
			}
			if (_j2518 == 2) 
			{
				var _y2520:String = T1224._m17882(buff);
				_f10174.setId(_y2520);
				MemoryManagement.free(_y2520);
				continue;
			}
			if (_j2518 == 3) 
			{
				_f10174.setRequester((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j2518 == 4) 
			{
				_f10174.setTarget((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j2518 == 5) 
			{
				_f10174.setStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j2518 == 6) 
			{
				_f10174.setDate(T1224._m17889(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10174;
	}

	public function _m17707( buff:T1223):Serializable
	{
		var _j10181:ConnectionInterrupted = new ConnectionInterrupted();
		var _m2522:Int = T1224._m17881(buff);
		for (_b2523 in 0 ... _m2522) 
		{
			var _i2524:Int = T1224._m17881(buff);
			if (_i2524 == 0) 
			{
				var _k2525:String = T1224._m17882(buff);
				_j10181.setMessageId(_k2525);
				MemoryManagement.free(_k2525);
				continue;
			}
			if (_i2524 == 1) 
			{
				var _r2526:String = T1224._m17882(buff);
				_j10181.setRequestId(_r2526);
				MemoryManagement.free(_r2526);
				continue;
			}
			T1224._m17883(buff);
		}
		return _j10181;
	}

	public function _m17708( _x9212:T1223):Serializable
	{
		var _h10188:ConnectionResumed = new ConnectionResumed();
		var _b9214:Int = T1224._m17881(_x9212);
		for (_h2529 in 0 ... _b9214) 
		{
			var _w2530:Int = T1224._m17881(_x9212);
			if (_w2530 == 0) 
			{
				var _f2531:String = T1224._m17882(_x9212);
				_h10188.setMessageId(_f2531);
				MemoryManagement.free(_f2531);
				continue;
			}
			if (_w2530 == 1) 
			{
				var _x2532:String = T1224._m17882(_x9212);
				_h10188.setRequestId(_x2532);
				MemoryManagement.free(_x2532);
				continue;
			}
			T1224._m17883(_x9212);
		}
		return _h10188;
	}

	public function _m17709( buff:T1223):Serializable
	{
		var _f10195:ConnectionStop = new ConnectionStop();
		var _z2534:Int = T1224._m17881(buff);
		for (_q2535 in 0 ... _z2534) 
		{
			var _n2536:Int = T1224._m17881(buff);
			if (_n2536 == 0) 
			{
				var _w2537:String = T1224._m17882(buff);
				_f10195.setMessageId(_w2537);
				MemoryManagement.free(_w2537);
				continue;
			}
			if (_n2536 == 1) 
			{
				var _o2538:String = T1224._m17882(buff);
				_f10195.setRequestId(_o2538);
				MemoryManagement.free(_o2538);
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10195;
	}

	public function _m17710( buff:T1223):Serializable
	{
		var _g10202:NuggetaQuery = new NuggetaQuery();
		var _n2540:Int = T1224._m17881(buff);
		for (_b2541 in 0 ... _n2540) 
		{
			var _r2542:Int = T1224._m17881(buff);
			if (_r2542 == 0) 
			{
				var _k2543:String = T1224._m17882(buff);
				_g10202.setDomain(_k2543);
				MemoryManagement.free(_k2543);
				continue;
			}
			if (_r2542 == 1) 
			{
				_g10202.setStart(T1224._m17880(buff));
				continue;
			}
			if (_r2542 == 2) 
			{
				_g10202.setLimit(T1224._m17880(buff));
				continue;
			}
			if (_r2542 == 3) 
			{
				var _q2544:String = T1224._m17882(buff);
				_g10202.setQuery(_q2544);
				MemoryManagement.free(_q2544);
				continue;
			}
			T1224._m17883(buff);
		}
		return _g10202;
	}

	public function _m17711( buff:T1223):Serializable
	{
		var _o10209:FriendConnectedNotification = new FriendConnectedNotification();
		var _v2546:Int = T1224._m17881(buff);
		for (_k2547 in 0 ... _v2546) 
		{
			var _t2548:Int = T1224._m17881(buff);
			if (_t2548 == 0) 
			{
				var _i2549:String = T1224._m17882(buff);
				_o10209.setMessageId(_i2549);
				MemoryManagement.free(_i2549);
				continue;
			}
			if (_t2548 == 1) 
			{
				var _g2550:String = T1224._m17882(buff);
				_o10209.setRequestId(_g2550);
				MemoryManagement.free(_g2550);
				continue;
			}
			if (_t2548 == 3) 
			{
				_o10209.setFriend((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _o10209;
	}

	public function _m17712( buff:T1223):Serializable
	{
		var _j10216:FriendDisconnectedNotification = new FriendDisconnectedNotification();
		var _m2552:Int = T1224._m17881(buff);
		for (_w2553 in 0 ... _m2552) 
		{
			var _u2554:Int = T1224._m17881(buff);
			if (_u2554 == 0) 
			{
				var _d2555:String = T1224._m17882(buff);
				_j10216.setMessageId(_d2555);
				MemoryManagement.free(_d2555);
				continue;
			}
			if (_u2554 == 1) 
			{
				var _n2556:String = T1224._m17882(buff);
				_j10216.setRequestId(_n2556);
				MemoryManagement.free(_n2556);
				continue;
			}
			if (_u2554 == 3) 
			{
				_j10216.setFriend((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _j10216;
	}

	public function _m17713( buff:T1223):Serializable
	{
		var _m10223:NPlayerWallet = new NPlayerWallet();
		var _h2558:Int = T1224._m17881(buff);
		for (_i2559 in 0 ... _h2558) 
		{
			var _m2560:Int = T1224._m17881(buff);
			if (_m2560 == 0) 
			{
				var _q2561:String = T1224._m17882(buff);
				_m10223.setStoreId(_q2561);
				MemoryManagement.free(_q2561);
				continue;
			}
			if (_m2560 == 3) 
			{
				_m10223.setNbCoins(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _m10223;
	}

	public function _m17714( _l9218:T1223):Serializable
	{
		var _d10229:NItem = new NItem();
		var _h9220:Int = T1224._m17881(_l9218);
		for (_t2564 in 0 ... _h9220) 
		{
			var _j2565:Int = T1224._m17881(_l9218);
			if (_j2565 == 0) 
			{
				var _w2566:String = T1224._m17882(_l9218);
				_d10229.setStoreId(_w2566);
				MemoryManagement.free(_w2566);
				continue;
			}
			if (_j2565 == 2) 
			{
				var _m2567:String = T1224._m17882(_l9218);
				_d10229.setId(_m2567);
				MemoryManagement.free(_m2567);
				continue;
			}
			if (_j2565 == 3) 
			{
				var _y2568:String = T1224._m17882(_l9218);
				_d10229.setName(_y2568);
				MemoryManagement.free(_y2568);
				continue;
			}
			if (_j2565 == 4) 
			{
				_d10229.setPrice(T1224._m17880(_l9218));
				continue;
			}
			if (_j2565 == 5) 
			{
				_d10229.setBought(T1224._m17884(_l9218));
				continue;
			}
			if (_j2565 == 6) 
			{
				_d10229.setCount(T1224._m17880(_l9218));
				continue;
			}
			T1224._m17883(_l9218);
		}
		return _d10229;
	}

	public function _m17715( buff:T1223):Serializable
	{
		var _b10237:NAchievement = new NAchievement();
		var _t2570:Int = T1224._m17881(buff);
		for (_x2571 in 0 ... _t2570) 
		{
			var _t2572:Int = T1224._m17881(buff);
			if (_t2572 == 0) 
			{
				var _b2573:String = T1224._m17882(buff);
				_b10237.setStoreId(_b2573);
				MemoryManagement.free(_b2573);
				continue;
			}
			if (_t2572 == 2) 
			{
				var _g2574:String = T1224._m17882(buff);
				_b10237.setId(_g2574);
				MemoryManagement.free(_g2574);
				continue;
			}
			if (_t2572 == 3) 
			{
				var _k2575:String = T1224._m17882(buff);
				_b10237.setName(_k2575);
				MemoryManagement.free(_k2575);
				continue;
			}
			if (_t2572 == 4) 
			{
				_b10237.setAchieved(T1224._m17884(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _b10237;
	}

	public function _m17716( buff:T1223):Serializable
	{
		var _v10245:NGameState = new NGameState();
		var _p2577:Int = T1224._m17881(buff);
		for (_j2578 in 0 ... _p2577) 
		{
			var _p2579:Int = T1224._m17881(buff);
			if (_p2579 == 0) 
			{
				var _p2580:String = T1224._m17882(buff);
				_v10245.setStoreId(_p2580);
				MemoryManagement.free(_p2580);
				continue;
			}
			if (_p2579 == 2) 
			{
				var _m10250:NList<NWorldUpdate> = null;
				var _j10251:Int = buff._m17886();
				if (_j10251 != T1221._m17179) 
				{
					buff._m17887();
					var _e10252:Int = buff._m17888();
					_m10250 = new NList<NWorldUpdate>();
					for (_c2584 in 0 ... _e10252) 
					{
						_m10250.add((cast T1224.readObject(this, buff)));
					}
				}
				_v10245.setUpdates(_m10250);
				continue;
			}
			T1224._m17883(buff);
		}
		return _v10245;
	}

	public function _m17717( _c9224:T1223):Serializable
	{
		var _i10255:NuggetaException = new NuggetaException();
		var _g9226:Int = T1224._m17881(_c9224);
		for (_f2587 in 0 ... _g9226) 
		{
			var _h2588:Int = T1224._m17881(_c9224);
			if (_h2588 == 0) 
			{
				var _v2589:String = T1224._m17882(_c9224);
				_i10255.setMessageId(_v2589);
				MemoryManagement.free(_v2589);
				continue;
			}
			if (_h2588 == 1) 
			{
				var _c2590:String = T1224._m17882(_c9224);
				_i10255.setRequestId(_c2590);
				MemoryManagement.free(_c2590);
				continue;
			}
			if (_h2588 == 3) 
			{
				_i10255.setErrorCode((cast T1224.readObject(this, _c9224)));
				continue;
			}
			if (_h2588 == 4) 
			{
				var _c2591:String = T1224._m17882(_c9224);
				_i10255.setReason(_c2591);
				MemoryManagement.free(_c2591);
				continue;
			}
			T1224._m17883(_c9224);
		}
		return _i10255;
	}

	public function _m17718( buff:T1223):Serializable
	{
		var _c10263:NCoinPackage = new NCoinPackage();
		var _z2593:Int = T1224._m17881(buff);
		for (_m2594 in 0 ... _z2593) 
		{
			var _m2595:Int = T1224._m17881(buff);
			if (_m2595 == 0) 
			{
				var _v2596:String = T1224._m17882(buff);
				_c10263.setStoreId(_v2596);
				MemoryManagement.free(_v2596);
				continue;
			}
			if (_m2595 == 2) 
			{
				var _q2597:String = T1224._m17882(buff);
				_c10263.setCoinPackageId(_q2597);
				MemoryManagement.free(_q2597);
				continue;
			}
			if (_m2595 == 3) 
			{
				_c10263.setVirtualValue(T1224._m17890(buff));
				continue;
			}
			if (_m2595 == 4) 
			{
				var _x2598:String = T1224._m17882(buff);
				_c10263.setProductId(_x2598);
				MemoryManagement.free(_x2598);
				continue;
			}
			T1224._m17883(buff);
		}
		return _c10263;
	}

	public function _m17719( buff:T1223):Serializable
	{
		var _b10271:BuyProductUrl = new BuyProductUrl();
		var _i2600:Int = T1224._m17881(buff);
		for (_r2601 in 0 ... _i2600) 
		{
			var _q2602:Int = T1224._m17881(buff);
			if (_q2602 == 0) 
			{
				var _x2603:String = T1224._m17882(buff);
				_b10271.setMessageId(_x2603);
				MemoryManagement.free(_x2603);
				continue;
			}
			if (_q2602 == 1) 
			{
				var _b2604:String = T1224._m17882(buff);
				_b10271.setRequestId(_b2604);
				MemoryManagement.free(_b2604);
				continue;
			}
			if (_q2602 == 3) 
			{
				var _g2605:String = T1224._m17882(buff);
				_b10271.setUrl(_g2605);
				MemoryManagement.free(_g2605);
				continue;
			}
			T1224._m17883(buff);
		}
		return _b10271;
	}

	public function _m17720( _p9230:T1223):Serializable
	{
		var _y10279:BuyProductNotification = new BuyProductNotification();
		var _f2607:Int = T1224._m17881(_p9230);
		for (_b2608 in 0 ... _f2607) 
		{
			var _d2609:Int = T1224._m17881(_p9230);
			if (_d2609 == 0) 
			{
				var _w2610:String = T1224._m17882(_p9230);
				_y10279.setMessageId(_w2610);
				MemoryManagement.free(_w2610);
				continue;
			}
			if (_d2609 == 1) 
			{
				var _q2611:String = T1224._m17882(_p9230);
				_y10279.setRequestId(_q2611);
				MemoryManagement.free(_q2611);
				continue;
			}
			T1224._m17883(_p9230);
		}
		return _y10279;
	}

	public function _m17721( buff:T1223):Serializable
	{
		var _l10286:NMatchMakingConditions = new NMatchMakingConditions();
		var _f9232:Int = T1224._m17881(buff);
		for (_m2614 in 0 ... _f9232) 
		{
			var _v2615:Int = T1224._m17881(buff);
			if (_v2615 == 0) 
			{
				var _j2616:String = T1224._m17882(buff);
				_l10286.setStoreId(_j2616);
				MemoryManagement.free(_j2616);
				continue;
			}
			if (_v2615 == 2) 
			{
				_l10286.setMatchMakingType((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _l10286;
	}

	public function _m17722( buff:T1223):Serializable
	{
		var _p10292:OpenConnection = new OpenConnection();
		var _p2618:Int = T1224._m17881(buff);
		for (_l2619 in 0 ... _p2618) 
		{
			var _k2620:Int = T1224._m17881(buff);
			if (_k2620 == 0) 
			{
				var _e2621:String = T1224._m17882(buff);
				_p10292.setMessageId(_e2621);
				MemoryManagement.free(_e2621);
				continue;
			}
			if (_k2620 == 1) 
			{
				var _n2622:String = T1224._m17882(buff);
				_p10292.setRequestId(_n2622);
				MemoryManagement.free(_n2622);
				continue;
			}
			if (_k2620 == 3) 
			{
				var _z2623:String = T1224._m17882(buff);
				_p10292.setIpAddress(_z2623);
				MemoryManagement.free(_z2623);
				continue;
			}
			if (_k2620 == 4) 
			{
				_p10292.setTcpPort(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _p10292;
	}

	public function _m17723( buff:T1223):Serializable
	{
		var _r10300:ChallengeAccepted = new ChallengeAccepted();
		var _o2625:Int = T1224._m17881(buff);
		for (_u2626 in 0 ... _o2625) 
		{
			var _c2627:Int = T1224._m17881(buff);
			if (_c2627 == 0) 
			{
				var _f2628:String = T1224._m17882(buff);
				_r10300.setMessageId(_f2628);
				MemoryManagement.free(_f2628);
				continue;
			}
			if (_c2627 == 1) 
			{
				var _b2629:String = T1224._m17882(buff);
				_r10300.setRequestId(_b2629);
				MemoryManagement.free(_b2629);
				continue;
			}
			if (_c2627 == 3) 
			{
				var _c2630:String = T1224._m17882(buff);
				_r10300.setChallengeId(_c2630);
				MemoryManagement.free(_c2630);
				continue;
			}
			if (_c2627 == 4) 
			{
				var _u2631:String = T1224._m17882(buff);
				_r10300.setGameId(_u2631);
				MemoryManagement.free(_u2631);
				continue;
			}
			T1224._m17883(buff);
		}
		return _r10300;
	}

	public function _m17724( _u9236:T1223):Serializable
	{
		var _h10309:ChallengeRefused = new ChallengeRefused();
		var _m9238:Int = T1224._m17881(_u9236);
		for (_g2634 in 0 ... _m9238) 
		{
			var _d2635:Int = T1224._m17881(_u9236);
			if (_d2635 == 0) 
			{
				var _j2636:String = T1224._m17882(_u9236);
				_h10309.setMessageId(_j2636);
				MemoryManagement.free(_j2636);
				continue;
			}
			if (_d2635 == 1) 
			{
				var _r2637:String = T1224._m17882(_u9236);
				_h10309.setStoreId(_r2637);
				MemoryManagement.free(_r2637);
				continue;
			}
			if (_d2635 == 6) 
			{
				var _h2638:String = T1224._m17882(_u9236);
				_h10309.setRequestId(_h2638);
				MemoryManagement.free(_h2638);
				continue;
			}
			if (_d2635 == 9) 
			{
				var _h2639:String = T1224._m17882(_u9236);
				_h10309.setChallengeId(_h2639);
				MemoryManagement.free(_h2639);
				continue;
			}
			if (_d2635 == 10) 
			{
				var _c2640:String = T1224._m17882(_u9236);
				_h10309.setReason(_c2640);
				MemoryManagement.free(_c2640);
				continue;
			}
			T1224._m17883(_u9236);
		}
		return _h10309;
	}

	public function _m17725( _u9242:T1223):Serializable
	{
		var _t10319:PlayerMessage = new PlayerMessage();
		var _p9244:Int = T1224._m17881(_u9242);
		for (_h2643 in 0 ... _p9244) 
		{
			var _s2644:Int = T1224._m17881(_u9242);
			if (_s2644 == 0) 
			{
				var _h2645:String = T1224._m17882(_u9242);
				_t10319.setMessageId(_h2645);
				MemoryManagement.free(_h2645);
				continue;
			}
			if (_s2644 == 1) 
			{
				var _m2646:String = T1224._m17882(_u9242);
				_t10319.setStoreId(_m2646);
				MemoryManagement.free(_m2646);
				continue;
			}
			if (_s2644 == 6) 
			{
				var _g2647:String = T1224._m17882(_u9242);
				_t10319.setRequestId(_g2647);
				MemoryManagement.free(_g2647);
				continue;
			}
			if (_s2644 == 9) 
			{
				var _y10326:String = T1224._m17882(_u9242);
				_t10319.setPlayerId(_y10326);
				MemoryManagement.free(_y10326);
				continue;
			}
			if (_s2644 == 10) 
			{
				_t10319.setMessage((cast T1224.readObject(this, _u9242)));
				continue;
			}
			T1224._m17883(_u9242);
		}
		return _t10319;
	}

	public function _m17726( buff:T1223):Serializable
	{
		var _w10328:NRawMessage = new NRawMessage();
		var _a2650:Int = T1224._m17881(buff);
		for (_y2651 in 0 ... _a2650) 
		{
			var _m2652:Int = T1224._m17881(buff);
			if (_m2652 == 0) 
			{
				var _z2653:String = T1224._m17882(buff);
				_w10328.setMessageId(_z2653);
				MemoryManagement.free(_z2653);
				continue;
			}
			if (_m2652 == 1) 
			{
				var _d2654:String = T1224._m17882(buff);
				_w10328.setSenderId(_d2654);
				MemoryManagement.free(_d2654);
				continue;
			}
			if (_m2652 == 2) 
			{
				var _n2655:String = T1224._m17882(buff);
				_w10328.setStoreId(_n2655);
				MemoryManagement.free(_n2655);
				continue;
			}
			if (_m2652 == 7) 
			{
				var _l2656:String = T1224._m17882(buff);
				_w10328.setRequestId(_l2656);
				MemoryManagement.free(_l2656);
				continue;
			}
			if (_m2652 == 10) 
			{
				var _f10336:String = T1224._m17882(buff);
				_w10328.setGameId(_f10336);
				MemoryManagement.free(_f10336);
				continue;
			}
			if (_m2652 == 11) 
			{
				var _o10337:String = T1224._m17882(buff);
				_w10328.setContent(_o10337);
				MemoryManagement.free(_o10337);
				continue;
			}
			T1224._m17883(buff);
		}
		return _w10328;
	}

	public function _m17727( buff:T1223):Serializable
	{
		var _o10339:SessionExpired = new SessionExpired();
		var _i2660:Int = T1224._m17881(buff);
		for (_s2661 in 0 ... _i2660) 
		{
			var _u2662:Int = T1224._m17881(buff);
			if (_u2662 == 0) 
			{
				var _d2663:String = T1224._m17882(buff);
				_o10339.setMessageId(_d2663);
				MemoryManagement.free(_d2663);
				continue;
			}
			if (_u2662 == 1) 
			{
				var _v2664:String = T1224._m17882(buff);
				_o10339.setRequestId(_v2664);
				MemoryManagement.free(_v2664);
				continue;
			}
			if (_u2662 == 3) 
			{
				var _p2665:String = T1224._m17882(buff);
				_o10339.setSessionId(_p2665);
				MemoryManagement.free(_p2665);
				continue;
			}
			T1224._m17883(buff);
		}
		return _o10339;
	}

	public function _m17728( buff:T1223):Serializable
	{
		var _y10347:GameMessageError = new GameMessageError();
		var _l2667:Int = T1224._m17881(buff);
		for (_y2668 in 0 ... _l2667) 
		{
			var _e2669:Int = T1224._m17881(buff);
			if (_e2669 == 0) 
			{
				var _f2670:String = T1224._m17882(buff);
				_y10347.setMessageId(_f2670);
				MemoryManagement.free(_f2670);
				continue;
			}
			if (_e2669 == 1) 
			{
				var _k2671:String = T1224._m17882(buff);
				_y10347.setRequestId(_k2671);
				MemoryManagement.free(_k2671);
				continue;
			}
			if (_e2669 == 3) 
			{
				var _f2672:String = T1224._m17882(buff);
				_y10347.setReason(_f2672);
				MemoryManagement.free(_f2672);
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10347;
	}

	public function _m17729( _x9248:T1223):Serializable
	{
		var _q10355:AdDisplayedNotification = new AdDisplayedNotification();
		var _q9250:Int = T1224._m17881(_x9248);
		for (_b2675 in 0 ... _q9250) 
		{
			var _o2676:Int = T1224._m17881(_x9248);
			if (_o2676 == 0) 
			{
				var _k2677:String = T1224._m17882(_x9248);
				_q10355.setMessageId(_k2677);
				MemoryManagement.free(_k2677);
				continue;
			}
			if (_o2676 == 1) 
			{
				var _j2678:String = T1224._m17882(_x9248);
				_q10355.setRequestId(_j2678);
				MemoryManagement.free(_j2678);
				continue;
			}
			T1224._m17883(_x9248);
		}
		return _q10355;
	}

	public function _m17730( buff:T1223):Serializable
	{
		var _s10362:NPlayerProfile = new NPlayerProfile();
		var _l2680:Int = T1224._m17881(buff);
		for (_o2681 in 0 ... _l2680) 
		{
			var _e2682:Int = T1224._m17881(buff);
			if (_e2682 == 0) 
			{
				var _c2683:String = T1224._m17882(buff);
				_s10362.setStoreId(_c2683);
				MemoryManagement.free(_c2683);
				continue;
			}
			if (_e2682 == 2) 
			{
				var _p2684:String = T1224._m17882(buff);
				_s10362.setAvatar(_p2684);
				MemoryManagement.free(_p2684);
				continue;
			}
			if (_e2682 == 3) 
			{
				var _w2685:String = T1224._m17882(buff);
				_s10362.setPlayerId(_w2685);
				MemoryManagement.free(_w2685);
				continue;
			}
			if (_e2682 == 4) 
			{
				var _x2686:String = T1224._m17882(buff);
				_s10362.setEmail(_x2686);
				MemoryManagement.free(_x2686);
				continue;
			}
			if (_e2682 == 5) 
			{
				var _g2687:String = T1224._m17882(buff);
				_s10362.setCountry(_g2687);
				MemoryManagement.free(_g2687);
				continue;
			}
			if (_e2682 == 7) 
			{
				var _q10371:NList<NPlayer> = null;
				var _i10372:Int = buff._m17886();
				if (_i10372 != T1221._m17179) 
				{
					buff._m17887();
					var _q10373:Int = buff._m17888();
					_q10371 = new NList<NPlayer>();
					for (_t2691 in 0 ... _q10373) 
					{
						_q10371.add((cast T1224.readObject(this, buff)));
					}
				}
				_s10362.setFriends(_q10371);
				continue;
			}
			T1224._m17883(buff);
		}
		return _s10362;
	}

	public function _m17731( buff:T1223):Serializable
	{
		var _z10376:PlayerInvitationNotification = new PlayerInvitationNotification();
		var _x2693:Int = T1224._m17881(buff);
		for (_u2694 in 0 ... _x2693) 
		{
			var _m2695:Int = T1224._m17881(buff);
			if (_m2695 == 0) 
			{
				var _s2696:String = T1224._m17882(buff);
				_z10376.setMessageId(_s2696);
				MemoryManagement.free(_s2696);
				continue;
			}
			if (_m2695 == 1) 
			{
				var _k2697:String = T1224._m17882(buff);
				_z10376.setRequestId(_k2697);
				MemoryManagement.free(_k2697);
				continue;
			}
			if (_m2695 == 3) 
			{
				_z10376.setPlayerInvitation((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _z10376;
	}

	public function _m17732( _n9254:T1223):Serializable
	{
		var _p10383:FriendChallengeNotification = new FriendChallengeNotification();
		var _m9256:Int = T1224._m17881(_n9254);
		for (_h2700 in 0 ... _m9256) 
		{
			var _s2701:Int = T1224._m17881(_n9254);
			if (_s2701 == 0) 
			{
				var _r2702:String = T1224._m17882(_n9254);
				_p10383.setMessageId(_r2702);
				MemoryManagement.free(_r2702);
				continue;
			}
			if (_s2701 == 1) 
			{
				var _u2703:String = T1224._m17882(_n9254);
				_p10383.setRequestId(_u2703);
				MemoryManagement.free(_u2703);
				continue;
			}
			if (_s2701 == 3) 
			{
				_p10383.setChallenge((cast T1224.readObject(this, _n9254)));
				continue;
			}
			T1224._m17883(_n9254);
		}
		return _p10383;
	}

	public function _m17733( buff:T1223):Serializable
	{
		var _a10390:GameChatNotification = new GameChatNotification();
		var _f2705:Int = T1224._m17881(buff);
		for (_p2706 in 0 ... _f2705) 
		{
			var _j2707:Int = T1224._m17881(buff);
			if (_j2707 == 0) 
			{
				var _p2708:String = T1224._m17882(buff);
				_a10390.setMessageId(_p2708);
				MemoryManagement.free(_p2708);
				continue;
			}
			if (_j2707 == 1) 
			{
				var _p2709:String = T1224._m17882(buff);
				_a10390.setRequestId(_p2709);
				MemoryManagement.free(_p2709);
				continue;
			}
			if (_j2707 == 3) 
			{
				_a10390.setPlayer((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j2707 == 4) 
			{
				var _g2710:String = T1224._m17882(buff);
				_a10390.setMessage(_g2710);
				MemoryManagement.free(_g2710);
				continue;
			}
			T1224._m17883(buff);
		}
		return _a10390;
	}

	public function _m17734( buff:T1223):Serializable
	{
		var _c10398:PublicServer = new PublicServer();
		var _f2712:Int = T1224._m17881(buff);
		for (_m2713 in 0 ... _f2712) 
		{
			var _r2714:Int = T1224._m17881(buff);
			if (_r2714 == 0) 
			{
				var _p2715:String = T1224._m17882(buff);
				_c10398.setStoreId(_p2715);
				MemoryManagement.free(_p2715);
				continue;
			}
			if (_r2714 == 3) 
			{
				var _u2716:String = T1224._m17882(buff);
				_c10398.setId(_u2716);
				MemoryManagement.free(_u2716);
				continue;
			}
			if (_r2714 == 4) 
			{
				var _u2717:String = T1224._m17882(buff);
				_c10398.setLocation(_u2717);
				MemoryManagement.free(_u2717);
				continue;
			}
			if (_r2714 == 5) 
			{
				_c10398.setPing(T1224._m17890(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _c10398;
	}

	public function _m17735( _t9260:T1223):Serializable
	{
		var _l10406:SwitchToServerInformation = new SwitchToServerInformation();
		var _g9262:Int = T1224._m17881(_t9260);
		for (_v2720 in 0 ... _g9262) 
		{
			var _r2721:Int = T1224._m17881(_t9260);
			if (_r2721 == 0) 
			{
				var _j2722:String = T1224._m17882(_t9260);
				_l10406.setMessageId(_j2722);
				MemoryManagement.free(_j2722);
				continue;
			}
			if (_r2721 == 1) 
			{
				var _a2723:String = T1224._m17882(_t9260);
				_l10406.setRequestId(_a2723);
				MemoryManagement.free(_a2723);
				continue;
			}
			if (_r2721 == 3) 
			{
				var _g2724:String = T1224._m17882(_t9260);
				_l10406.setAddress(_g2724);
				MemoryManagement.free(_g2724);
				continue;
			}
			T1224._m17883(_t9260);
		}
		return _l10406;
	}

	public function _m17736( buff:T1223):Serializable
	{
		var _f10414:MyTurnNotification = new MyTurnNotification();
		var _o2726:Int = T1224._m17881(buff);
		for (_l2727 in 0 ... _o2726) 
		{
			var _m2728:Int = T1224._m17881(buff);
			if (_m2728 == 0) 
			{
				var _k2729:String = T1224._m17882(buff);
				_f10414.setMessageId(_k2729);
				MemoryManagement.free(_k2729);
				continue;
			}
			if (_m2728 == 1) 
			{
				var _b2730:String = T1224._m17882(buff);
				_f10414.setRequestId(_b2730);
				MemoryManagement.free(_b2730);
				continue;
			}
			if (_m2728 == 3) 
			{
				var _s2731:String = T1224._m17882(buff);
				_f10414.setGameId(_s2731);
				MemoryManagement.free(_s2731);
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10414;
	}

	public function _m17737( _m9266:T1223):Serializable
	{
		var _u10422:PlayerTurnNotification = new PlayerTurnNotification();
		var _m2733:Int = T1224._m17881(_m9266);
		for (_e2734 in 0 ... _m2733) 
		{
			var _f2735:Int = T1224._m17881(_m9266);
			if (_f2735 == 0) 
			{
				var _x2736:String = T1224._m17882(_m9266);
				_u10422.setMessageId(_x2736);
				MemoryManagement.free(_x2736);
				continue;
			}
			if (_f2735 == 1) 
			{
				var _k2737:String = T1224._m17882(_m9266);
				_u10422.setRequestId(_k2737);
				MemoryManagement.free(_k2737);
				continue;
			}
			if (_f2735 == 3) 
			{
				_u10422.setCurrentPlayer((cast T1224.readObject(this, _m9266)));
				continue;
			}
			if (_f2735 == 4) 
			{
				var _w2738:String = T1224._m17882(_m9266);
				_u10422.setGameId(_w2738);
				MemoryManagement.free(_w2738);
				continue;
			}
			T1224._m17883(_m9266);
		}
		return _u10422;
	}

	public function _m17738( buff:T1223):Serializable
	{
		var _z10430:NStore = new NStore();
		var _o9268:Int = T1224._m17881(buff);
		for (_f2741 in 0 ... _o9268) 
		{
			var _v2742:Int = T1224._m17881(buff);
			if (_v2742 == 1) 
			{
				var _u2743:String = T1224._m17882(buff);
				_z10430.setStoreId(_u2743);
				MemoryManagement.free(_u2743);
				continue;
			}
			if (_v2742 == 2) 
			{
				var _n10435:NList<NItem> = null;
				var _c10436:Int = buff._m17886();
				if (_c10436 != T1221._m17179) 
				{
					buff._m17887();
					var _t10437:Int = buff._m17888();
					_n10435 = new NList<NItem>();
					for (_w2747 in 0 ... _t10437) 
					{
						_n10435.add((cast T1224.readObject(this, buff)));
					}
				}
				_z10430.setItems(_n10435);
				continue;
			}
			T1224._m17883(buff);
		}
		return _z10430;
	}

	public function _m17739( buff:T1223):Serializable
	{
		var _y10440:NAchievementBoard = new NAchievementBoard();
		var _t2749:Int = T1224._m17881(buff);
		for (_p2750 in 0 ... _t2749) 
		{
			var _s2751:Int = T1224._m17881(buff);
			if (_s2751 == 1) 
			{
				var _v2752:String = T1224._m17882(buff);
				_y10440.setStoreId(_v2752);
				MemoryManagement.free(_v2752);
				continue;
			}
			if (_s2751 == 2) 
			{
				var _v10445:NList<NAchievement> = null;
				var _c10446:Int = buff._m17886();
				if (_c10446 != T1221._m17179) 
				{
					buff._m17887();
					var _q10447:Int = buff._m17888();
					_v10445 = new NList<NAchievement>();
					for (_z2756 in 0 ... _q10447) 
					{
						_v10445.add((cast T1224.readObject(this, buff)));
					}
				}
				_y10440.setAchievements(_v10445);
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10440;
	}

	public function _m17740( _r9272:T1223):Serializable
	{
		var _r10450:NLeaderboard = new NLeaderboard();
		var _k9274:Int = T1224._m17881(_r9272);
		for (_x2759 in 0 ... _k9274) 
		{
			var _x2760:Int = T1224._m17881(_r9272);
			if (_x2760 == 2) 
			{
				var _n2761:String = T1224._m17882(_r9272);
				_r10450.setId(_n2761);
				MemoryManagement.free(_n2761);
				continue;
			}
			if (_x2760 == 3) 
			{
				var _c2762:String = T1224._m17882(_r9272);
				_r10450.setName(_c2762);
				MemoryManagement.free(_c2762);
				continue;
			}
			if (_x2760 == 4) 
			{
				var _q10456:NList<NLeaderboardEntry> = null;
				var _p10457:Int = _r9272._m17886();
				if (_p10457 != T1221._m17179) 
				{
					_r9272._m17887();
					var _w10458:Int = _r9272._m17888();
					_q10456 = new NList<NLeaderboardEntry>();
					for (_j2766 in 0 ... _w10458) 
					{
						_q10456.add((cast T1224.readObject(this, _r9272)));
					}
				}
				_r10450.setLeaderboardEntries(_q10456);
				continue;
			}
			T1224._m17883(_r9272);
		}
		return _r10450;
	}

	public function _m17741( _g9278:T1223):Serializable
	{
		var _s10461:TestPrimitiveList = new TestPrimitiveList();
		var _o9280:Int = T1224._m17881(_g9278);
		for (_r2769 in 0 ... _o9280) 
		{
			var _d2770:Int = T1224._m17881(_g9278);
			if (_d2770 == 0) 
			{
				var _m2771:String = T1224._m17882(_g9278);
				_s10461.setMessageId(_m2771);
				MemoryManagement.free(_m2771);
				continue;
			}
			if (_d2770 == 1) 
			{
				var _o2772:String = T1224._m17882(_g9278);
				_s10461.setRequestId(_o2772);
				MemoryManagement.free(_o2772);
				continue;
			}
			if (_d2770 == 3) 
			{
				var _v10467:NList<String> = T1224._m17891(this, _g9278);
				_s10461.setStringList(_v10467);
				continue;
			}
			if (_d2770 == 4) 
			{
				var _i10468:NList<Int> = T1224._m17892(this, _g9278);
				_s10461.setIntegerList(_i10468);
				continue;
			}
			if (_d2770 == 5) 
			{
				var _m10469:NList<Int> = T1224._m17893(this, _g9278);
				_s10461.setShortList(_m10469);
				continue;
			}
			if (_d2770 == 6) 
			{
				var _d10470:NList<Float> = T1224._m17894(this, _g9278);
				_s10461.setLongList(_d10470);
				continue;
			}
			if (_d2770 == 7) 
			{
				var _p10471:NList<Float> = T1224._m17895(this, _g9278);
				_s10461.setFloatList(_p10471);
				continue;
			}
			if (_d2770 == 8) 
			{
				var _j10472:NList<Float> = T1224._m17896(this, _g9278);
				_s10461.setDoubleList(_j10472);
				continue;
			}
			if (_d2770 == 9) 
			{
				var _t10473:NList<Bool> = T1224._m17897(this, _g9278);
				_s10461.setBooleanList(_t10473);
				continue;
			}
			if (_d2770 == 14) 
			{
				_s10461.setPlayerMatrix2(T1224._m17898(this, _g9278));
				continue;
			}
			T1224._m17883(_g9278);
		}
		return _s10461;
	}

	public function _m17742( buff:T1223):Serializable
	{
		var _c10475:OpenUrl = new OpenUrl();
		var _l2781:Int = T1224._m17881(buff);
		for (_n2782 in 0 ... _l2781) 
		{
			var _i2783:Int = T1224._m17881(buff);
			if (_i2783 == 0) 
			{
				var _g2784:String = T1224._m17882(buff);
				_c10475.setMessageId(_g2784);
				MemoryManagement.free(_g2784);
				continue;
			}
			if (_i2783 == 1) 
			{
				var _w2785:String = T1224._m17882(buff);
				_c10475.setRequestId(_w2785);
				MemoryManagement.free(_w2785);
				continue;
			}
			if (_i2783 == 3) 
			{
				var _e2786:String = T1224._m17882(buff);
				_c10475.setUrl(_e2786);
				MemoryManagement.free(_e2786);
				continue;
			}
			T1224._m17883(buff);
		}
		return _c10475;
	}

	public function _m17743( buff:T1223):Serializable
	{
		var _a10483:TurnBasedContext = new TurnBasedContext();
		var _h2788:Int = T1224._m17881(buff);
		for (_b2789 in 0 ... _h2788) 
		{
			var _l2790:Int = T1224._m17881(buff);
			if (_l2790 == 0) 
			{
				var _b2791:String = T1224._m17882(buff);
				_a10483.setMessageId(_b2791);
				MemoryManagement.free(_b2791);
				continue;
			}
			if (_l2790 == 1) 
			{
				var _z2792:String = T1224._m17882(buff);
				_a10483.setRequestId(_z2792);
				MemoryManagement.free(_z2792);
				continue;
			}
			if (_l2790 == 3) 
			{
				_a10483.setCurrentPlayer((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _a10483;
	}

	public function _m17744( _u9284:T1223):Serializable
	{
		var _n10490:DisconnectedContext = new DisconnectedContext();
		var _e9286:Int = T1224._m17881(_u9284);
		for (_x2795 in 0 ... _e9286) 
		{
			var _a2796:Int = T1224._m17881(_u9284);
			if (_a2796 == 0) 
			{
				var _h2797:String = T1224._m17882(_u9284);
				_n10490.setMessageId(_h2797);
				MemoryManagement.free(_h2797);
				continue;
			}
			if (_a2796 == 1) 
			{
				var _w2798:String = T1224._m17882(_u9284);
				_n10490.setRequestId(_w2798);
				MemoryManagement.free(_w2798);
				continue;
			}
			if (_a2796 == 3) 
			{
				var _f10496:NList<NPlayer> = null;
				var _j10497:Int = _u9284._m17886();
				if (_j10497 != T1221._m17179) 
				{
					_u9284._m17887();
					var _k10498:Int = _u9284._m17888();
					_f10496 = new NList<NPlayer>();
					for (_x2802 in 0 ... _k10498) 
					{
						_f10496.add((cast T1224.readObject(this, _u9284)));
					}
				}
				_n10490.setParticipants(_f10496);
				continue;
			}
			T1224._m17883(_u9284);
		}
		return _n10490;
	}

	public function _m17745( _a9290:T1223):Serializable
	{
		var _p10501:OpenUrlData = new OpenUrlData();
		var _h2804:Int = T1224._m17881(_a9290);
		for (_l2805 in 0 ... _h2804) 
		{
			var _k2806:Int = T1224._m17881(_a9290);
			if (_k2806 == 0) 
			{
				var _o2807:String = T1224._m17882(_a9290);
				_p10501.setMessageId(_o2807);
				MemoryManagement.free(_o2807);
				continue;
			}
			if (_k2806 == 1) 
			{
				var _i2808:String = T1224._m17882(_a9290);
				_p10501.setRequestId(_i2808);
				MemoryManagement.free(_i2808);
				continue;
			}
			if (_k2806 == 3) 
			{
				var _c2809:String = T1224._m17882(_a9290);
				_p10501.setSessionId(_c2809);
				MemoryManagement.free(_c2809);
				continue;
			}
			if (_k2806 == 4) 
			{
				var _o2810:String = T1224._m17882(_a9290);
				_p10501.setCallbackId(_o2810);
				MemoryManagement.free(_o2810);
				continue;
			}
			if (_k2806 == 5) 
			{
				var _w2811:String = T1224._m17882(_a9290);
				_p10501.setCallbackUrl(_w2811);
				MemoryManagement.free(_w2811);
				continue;
			}
			if (_k2806 == 6) 
			{
				_p10501.setThirdPartySource((cast T1224.readObject(this, _a9290)));
				continue;
			}
			T1224._m17883(_a9290);
		}
		return _p10501;
	}

	public function _m17746( buff:T1223):Serializable
	{
		var _f10511:HeartBeatRequest = new HeartBeatRequest();
		var _q9292:Int = T1224._m17881(buff);
		for (_c2814 in 0 ... _q9292) 
		{
			var _i2815:Int = T1224._m17881(buff);
			if (_i2815 == 0) 
			{
				var _o2816:String = T1224._m17882(buff);
				_f10511.setMessageId(_o2816);
				MemoryManagement.free(_o2816);
				continue;
			}
			if (_i2815 == 1) 
			{
				var _v2817:String = T1224._m17882(buff);
				_f10511.setRequestId(_v2817);
				MemoryManagement.free(_v2817);
				continue;
			}
			if (_i2815 == 3) 
			{
				_f10511.setCounter(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10511;
	}

	public function _m17747( buff:T1223):Serializable
	{
		var _d10518:HeartBeatResponse = new HeartBeatResponse();
		var _c2819:Int = T1224._m17881(buff);
		for (_u2820 in 0 ... _c2819) 
		{
			var _e2821:Int = T1224._m17881(buff);
			if (_e2821 == 0) 
			{
				var _o2822:String = T1224._m17882(buff);
				_d10518.setMessageId(_o2822);
				MemoryManagement.free(_o2822);
				continue;
			}
			if (_e2821 == 1) 
			{
				var _n2823:String = T1224._m17882(buff);
				_d10518.setRequestId(_n2823);
				MemoryManagement.free(_n2823);
				continue;
			}
			if (_e2821 == 3) 
			{
				_d10518.setCounter(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _d10518;
	}

	public function _m17748( _b9296:T1223):Serializable
	{
		var _b10525:NLeaderboardEntry = new NLeaderboardEntry();
		var _k9298:Int = T1224._m17881(_b9296);
		for (_r2826 in 0 ... _k9298) 
		{
			var _c2827:Int = T1224._m17881(_b9296);
			if (_c2827 == 1) 
			{
				var _b2828:String = T1224._m17882(_b9296);
				_b10525.setStoreId(_b2828);
				MemoryManagement.free(_b2828);
				continue;
			}
			if (_c2827 == 2) 
			{
				var _w2829:String = T1224._m17882(_b9296);
				_b10525.setData(_w2829);
				MemoryManagement.free(_w2829);
				continue;
			}
			if (_c2827 == 3) 
			{
				var _i2830:String = T1224._m17882(_b9296);
				_b10525.setId(_i2830);
				MemoryManagement.free(_i2830);
				continue;
			}
			if (_c2827 == 4) 
			{
				_b10525.setTimestamp(T1224._m17885(_b9296));
				continue;
			}
			if (_c2827 == 5) 
			{
				_b10525.setPlayer((cast T1224.readObject(this, _b9296)));
				continue;
			}
			if (_c2827 == 6) 
			{
				_b10525.setScore((cast T1224.readObject(this, _b9296)));
				continue;
			}
			T1224._m17883(_b9296);
		}
		return _b10525;
	}

	public function _m17749( _k9302:T1223):Serializable
	{
		var _p10533:StartDetails = new StartDetails();
		var _f2832:Int = T1224._m17881(_k9302);
		for (_e2833 in 0 ... _f2832) 
		{
			var _w2834:Int = T1224._m17881(_k9302);
			if (_w2834 == 1) 
			{
				var _r2835:String = T1224._m17882(_k9302);
				_p10533.setStoreId(_r2835);
				MemoryManagement.free(_r2835);
				continue;
			}
			if (_w2834 == 2) 
			{
				var _v10538:String = T1224._m17882(_k9302);
				_p10533.setData(_v10538);
				MemoryManagement.free(_v10538);
				continue;
			}
			if (_w2834 == 3) 
			{
				_p10533.setUseDefaultImpl(T1224._m17884(_k9302));
				continue;
			}
			if (_w2834 == 4) 
			{
				_p10533.setCurrentVersion(T1224._m17880(_k9302));
				continue;
			}
			if (_w2834 == 5) 
			{
				_p10533.setNextVersion(T1224._m17880(_k9302));
				continue;
			}
			if (_w2834 == 6) 
			{
				var _s2837:String = T1224._m17882(_k9302);
				_p10533.setTitle(_s2837);
				MemoryManagement.free(_s2837);
				continue;
			}
			if (_w2834 == 7) 
			{
				var _y2838:String = T1224._m17882(_k9302);
				_p10533.setText(_y2838);
				MemoryManagement.free(_y2838);
				continue;
			}
			if (_w2834 == 8) 
			{
				var _l10541:String = T1224._m17882(_k9302);
				_p10533.setUrl(_l10541);
				MemoryManagement.free(_l10541);
				continue;
			}
			T1224._m17883(_k9302);
		}
		return _p10533;
	}

	public function _m17750( buff:T1223):Serializable
	{
		var _e10543:StartRequest = new StartRequest();
		var _f9304:Int = T1224._m17881(buff);
		for (_v2842 in 0 ... _f9304) 
		{
			var _k2843:Int = T1224._m17881(buff);
			if (_k2843 == 0) 
			{
				var _h2844:String = T1224._m17882(buff);
				_e10543.setMessageId(_h2844);
				MemoryManagement.free(_h2844);
				continue;
			}
			if (_k2843 == 1) 
			{
				var _y2845:String = T1224._m17882(buff);
				_e10543.setRequestId(_y2845);
				MemoryManagement.free(_y2845);
				continue;
			}
			T1224._m17883(buff);
		}
		return _e10543;
	}

	public function _m17751( buff:T1223):Serializable
	{
		var _w10550:StartResponse = new StartResponse();
		var _p2847:Int = T1224._m17881(buff);
		for (_i2848 in 0 ... _p2847) 
		{
			var _u2849:Int = T1224._m17881(buff);
			if (_u2849 == 0) 
			{
				var _o2850:String = T1224._m17882(buff);
				_w10550.setMessageId(_o2850);
				MemoryManagement.free(_o2850);
				continue;
			}
			if (_u2849 == 1) 
			{
				var _w2851:String = T1224._m17882(buff);
				_w10550.setRequestId(_w2851);
				MemoryManagement.free(_w2851);
				continue;
			}
			if (_u2849 == 3) 
			{
				_w10550.setStartStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_u2849 == 4) 
			{
				_w10550.setStartDetails((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _w10550;
	}

	public function _m17752( buff:T1223):Serializable
	{
		var _p10557:InvitePlayerResponse = new InvitePlayerResponse();
		var _n2853:Int = T1224._m17881(buff);
		for (_u2854 in 0 ... _n2853) 
		{
			var _v2855:Int = T1224._m17881(buff);
			if (_v2855 == 0) 
			{
				var _u2856:String = T1224._m17882(buff);
				_p10557.setMessageId(_u2856);
				MemoryManagement.free(_u2856);
				continue;
			}
			if (_v2855 == 1) 
			{
				var _h2857:String = T1224._m17882(buff);
				_p10557.setRequestId(_h2857);
				MemoryManagement.free(_h2857);
				continue;
			}
			if (_v2855 == 3) 
			{
				_p10557.setInvitePlayerStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _p10557;
	}

	public function _m17753( _j9308:T1223):Serializable
	{
		var _q10564:InvitePlayerByIdRequest = new InvitePlayerByIdRequest();
		var _c9310:Int = T1224._m17881(_j9308);
		for (_v2860 in 0 ... _c9310) 
		{
			var _j2861:Int = T1224._m17881(_j9308);
			if (_j2861 == 0) 
			{
				var _g2862:String = T1224._m17882(_j9308);
				_q10564.setMessageId(_g2862);
				MemoryManagement.free(_g2862);
				continue;
			}
			if (_j2861 == 1) 
			{
				var _j2863:String = T1224._m17882(_j9308);
				_q10564.setRequestId(_j2863);
				MemoryManagement.free(_j2863);
				continue;
			}
			if (_j2861 == 3) 
			{
				var _c2864:String = T1224._m17882(_j9308);
				_q10564.setId(_c2864);
				MemoryManagement.free(_c2864);
				continue;
			}
			T1224._m17883(_j9308);
		}
		return _q10564;
	}

	public function _m17754( buff:T1223):Serializable
	{
		var _k10572:InvitePlayerByLoginRequest = new InvitePlayerByLoginRequest();
		var _g2866:Int = T1224._m17881(buff);
		for (_o2867 in 0 ... _g2866) 
		{
			var _v2868:Int = T1224._m17881(buff);
			if (_v2868 == 0) 
			{
				var _p2869:String = T1224._m17882(buff);
				_k10572.setMessageId(_p2869);
				MemoryManagement.free(_p2869);
				continue;
			}
			if (_v2868 == 1) 
			{
				var _x2870:String = T1224._m17882(buff);
				_k10572.setRequestId(_x2870);
				MemoryManagement.free(_x2870);
				continue;
			}
			if (_v2868 == 3) 
			{
				var _i2871:String = T1224._m17882(buff);
				_k10572.setLogin(_i2871);
				MemoryManagement.free(_i2871);
				continue;
			}
			T1224._m17883(buff);
		}
		return _k10572;
	}

	public function _m17755( _t9314:T1223):Serializable
	{
		var _x10580:SignUpResponse = new SignUpResponse();
		var _w9316:Int = T1224._m17881(_t9314);
		for (_p2874 in 0 ... _w9316) 
		{
			var _j2875:Int = T1224._m17881(_t9314);
			if (_j2875 == 0) 
			{
				var _i2876:String = T1224._m17882(_t9314);
				_x10580.setMessageId(_i2876);
				MemoryManagement.free(_i2876);
				continue;
			}
			if (_j2875 == 1) 
			{
				var _g2877:String = T1224._m17882(_t9314);
				_x10580.setRequestId(_g2877);
				MemoryManagement.free(_g2877);
				continue;
			}
			if (_j2875 == 3) 
			{
				_x10580.setSignUpStatus((cast T1224.readObject(this, _t9314)));
				continue;
			}
			if (_j2875 == 4) 
			{
				_x10580.setPlayer((cast T1224.readObject(this, _t9314)));
				continue;
			}
			T1224._m17883(_t9314);
		}
		return _x10580;
	}

	public function _m17756( buff:T1223):Serializable
	{
		var _w10587:SignUpRequest = new SignUpRequest();
		var _x2879:Int = T1224._m17881(buff);
		for (_n2880 in 0 ... _x2879) 
		{
			var _e2881:Int = T1224._m17881(buff);
			if (_e2881 == 0) 
			{
				var _m2882:String = T1224._m17882(buff);
				_w10587.setMessageId(_m2882);
				MemoryManagement.free(_m2882);
				continue;
			}
			if (_e2881 == 1) 
			{
				var _r2883:String = T1224._m17882(buff);
				_w10587.setRequestId(_r2883);
				MemoryManagement.free(_r2883);
				continue;
			}
			if (_e2881 == 3) 
			{
				var _f2884:String = T1224._m17882(buff);
				_w10587.setLogin(_f2884);
				MemoryManagement.free(_f2884);
				continue;
			}
			if (_e2881 == 4) 
			{
				var _o2885:String = T1224._m17882(buff);
				_w10587.setPassword(_o2885);
				MemoryManagement.free(_o2885);
				continue;
			}
			if (_e2881 == 5) 
			{
				_w10587.setPlayerProfile((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _w10587;
	}

	public function _m17757( buff:T1223):Serializable
	{
		var _k10596:ForgotPasswordResponse = new ForgotPasswordResponse();
		var _j2887:Int = T1224._m17881(buff);
		for (_z2888 in 0 ... _j2887) 
		{
			var _x2889:Int = T1224._m17881(buff);
			if (_x2889 == 0) 
			{
				var _l2890:String = T1224._m17882(buff);
				_k10596.setMessageId(_l2890);
				MemoryManagement.free(_l2890);
				continue;
			}
			if (_x2889 == 1) 
			{
				var _u2891:String = T1224._m17882(buff);
				_k10596.setRequestId(_u2891);
				MemoryManagement.free(_u2891);
				continue;
			}
			if (_x2889 == 3) 
			{
				_k10596.setForgotPasswordStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _k10596;
	}

	public function _m17758( _l9320:T1223):Serializable
	{
		var _y10603:ForgotPasswordByLoginRequest = new ForgotPasswordByLoginRequest();
		var _s9322:Int = T1224._m17881(_l9320);
		for (_p2894 in 0 ... _s9322) 
		{
			var _f2895:Int = T1224._m17881(_l9320);
			if (_f2895 == 0) 
			{
				var _k2896:String = T1224._m17882(_l9320);
				_y10603.setMessageId(_k2896);
				MemoryManagement.free(_k2896);
				continue;
			}
			if (_f2895 == 1) 
			{
				var _k2897:String = T1224._m17882(_l9320);
				_y10603.setRequestId(_k2897);
				MemoryManagement.free(_k2897);
				continue;
			}
			if (_f2895 == 3) 
			{
				var _q2898:String = T1224._m17882(_l9320);
				_y10603.setLogin(_q2898);
				MemoryManagement.free(_q2898);
				continue;
			}
			T1224._m17883(_l9320);
		}
		return _y10603;
	}

	public function _m17759( buff:T1223):Serializable
	{
		var _a10611:ForgotPasswordByEmailRequest = new ForgotPasswordByEmailRequest();
		var _x2900:Int = T1224._m17881(buff);
		for (_m2901 in 0 ... _x2900) 
		{
			var _d2902:Int = T1224._m17881(buff);
			if (_d2902 == 0) 
			{
				var _u2903:String = T1224._m17882(buff);
				_a10611.setMessageId(_u2903);
				MemoryManagement.free(_u2903);
				continue;
			}
			if (_d2902 == 1) 
			{
				var _a2904:String = T1224._m17882(buff);
				_a10611.setRequestId(_a2904);
				MemoryManagement.free(_a2904);
				continue;
			}
			if (_d2902 == 3) 
			{
				var _w2905:String = T1224._m17882(buff);
				_a10611.setEmail(_w2905);
				MemoryManagement.free(_w2905);
				continue;
			}
			T1224._m17883(buff);
		}
		return _a10611;
	}

	public function _m17760( buff:T1223):Serializable
	{
		var _n10619:LoginResponse = new LoginResponse();
		var _y2907:Int = T1224._m17881(buff);
		for (_m2908 in 0 ... _y2907) 
		{
			var _j2909:Int = T1224._m17881(buff);
			if (_j2909 == 0) 
			{
				var _r2910:String = T1224._m17882(buff);
				_n10619.setMessageId(_r2910);
				MemoryManagement.free(_r2910);
				continue;
			}
			if (_j2909 == 1) 
			{
				var _o2911:String = T1224._m17882(buff);
				_n10619.setRequestId(_o2911);
				MemoryManagement.free(_o2911);
				continue;
			}
			if (_j2909 == 3) 
			{
				_n10619.setLoginStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j2909 == 4) 
			{
				_n10619.setPlayer((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _n10619;
	}

	public function _m17761( _d9326:T1223):Serializable
	{
		var _f10626:LoginRequest = new LoginRequest();
		var _c9328:Int = T1224._m17881(_d9326);
		for (_w2914 in 0 ... _c9328) 
		{
			var _q2915:Int = T1224._m17881(_d9326);
			if (_q2915 == 0) 
			{
				var _p2916:String = T1224._m17882(_d9326);
				_f10626.setMessageId(_p2916);
				MemoryManagement.free(_p2916);
				continue;
			}
			if (_q2915 == 1) 
			{
				var _u2917:String = T1224._m17882(_d9326);
				_f10626.setRequestId(_u2917);
				MemoryManagement.free(_u2917);
				continue;
			}
			if (_q2915 == 3) 
			{
				var _t2918:String = T1224._m17882(_d9326);
				_f10626.setLogin(_t2918);
				MemoryManagement.free(_t2918);
				continue;
			}
			if (_q2915 == 4) 
			{
				var _w2919:String = T1224._m17882(_d9326);
				_f10626.setPassword(_w2919);
				MemoryManagement.free(_w2919);
				continue;
			}
			if (_q2915 == 5) 
			{
				_f10626.setClientApplication((cast T1224.readObject(this, _d9326)));
				continue;
			}
			T1224._m17883(_d9326);
		}
		return _f10626;
	}

	public function _m17762( buff:T1223):Serializable
	{
		var _j10635:SavePlayerProfileResponse = new SavePlayerProfileResponse();
		var _k2921:Int = T1224._m17881(buff);
		for (_v2922 in 0 ... _k2921) 
		{
			var _p2923:Int = T1224._m17881(buff);
			if (_p2923 == 0) 
			{
				var _r2924:String = T1224._m17882(buff);
				_j10635.setMessageId(_r2924);
				MemoryManagement.free(_r2924);
				continue;
			}
			if (_p2923 == 1) 
			{
				var _x2925:String = T1224._m17882(buff);
				_j10635.setRequestId(_x2925);
				MemoryManagement.free(_x2925);
				continue;
			}
			if (_p2923 == 3) 
			{
				_j10635.setSavePlayerProfileStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _j10635;
	}

	public function _m17763( buff:T1223):Serializable
	{
		var _p10642:SavePlayerProfileRequest = new SavePlayerProfileRequest();
		var _s2927:Int = T1224._m17881(buff);
		for (_c2928 in 0 ... _s2927) 
		{
			var _e2929:Int = T1224._m17881(buff);
			if (_e2929 == 0) 
			{
				var _f2930:String = T1224._m17882(buff);
				_p10642.setMessageId(_f2930);
				MemoryManagement.free(_f2930);
				continue;
			}
			if (_e2929 == 1) 
			{
				var _g2931:String = T1224._m17882(buff);
				_p10642.setRequestId(_g2931);
				MemoryManagement.free(_g2931);
				continue;
			}
			if (_e2929 == 3) 
			{
				_p10642.setProfile((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _p10642;
	}

	public function _m17764( _p9332:T1223):Serializable
	{
		var _b10649:GetPlayerProfileResponse = new GetPlayerProfileResponse();
		var _j9334:Int = T1224._m17881(_p9332);
		for (_b2934 in 0 ... _j9334) 
		{
			var _c2935:Int = T1224._m17881(_p9332);
			if (_c2935 == 0) 
			{
				var _w2936:String = T1224._m17882(_p9332);
				_b10649.setMessageId(_w2936);
				MemoryManagement.free(_w2936);
				continue;
			}
			if (_c2935 == 1) 
			{
				var _w2937:String = T1224._m17882(_p9332);
				_b10649.setRequestId(_w2937);
				MemoryManagement.free(_w2937);
				continue;
			}
			if (_c2935 == 3) 
			{
				_b10649.setGetPlayerProfileStatus((cast T1224.readObject(this, _p9332)));
				continue;
			}
			if (_c2935 == 4) 
			{
				_b10649.setProfile((cast T1224.readObject(this, _p9332)));
				continue;
			}
			T1224._m17883(_p9332);
		}
		return _b10649;
	}

	public function _m17765( buff:T1223):Serializable
	{
		var _m10656:GetPlayerProfileRequest = new GetPlayerProfileRequest();
		var _n2939:Int = T1224._m17881(buff);
		for (_p2940 in 0 ... _n2939) 
		{
			var _p2941:Int = T1224._m17881(buff);
			if (_p2941 == 0) 
			{
				var _r2942:String = T1224._m17882(buff);
				_m10656.setMessageId(_r2942);
				MemoryManagement.free(_r2942);
				continue;
			}
			if (_p2941 == 1) 
			{
				var _i2943:String = T1224._m17882(buff);
				_m10656.setRequestId(_i2943);
				MemoryManagement.free(_i2943);
				continue;
			}
			T1224._m17883(buff);
		}
		return _m10656;
	}

	public function _m17766( buff:T1223):Serializable
	{
		var _x10663:GetPlayerProfileByPlayerIdRequest = new GetPlayerProfileByPlayerIdRequest();
		var _p2945:Int = T1224._m17881(buff);
		for (_n2946 in 0 ... _p2945) 
		{
			var _w2947:Int = T1224._m17881(buff);
			if (_w2947 == 0) 
			{
				var _p2948:String = T1224._m17882(buff);
				_x10663.setMessageId(_p2948);
				MemoryManagement.free(_p2948);
				continue;
			}
			if (_w2947 == 1) 
			{
				var _y2949:String = T1224._m17882(buff);
				_x10663.setRequestId(_y2949);
				MemoryManagement.free(_y2949);
				continue;
			}
			if (_w2947 == 3) 
			{
				var _y2950:String = T1224._m17882(buff);
				_x10663.setPlayerId(_y2950);
				MemoryManagement.free(_y2950);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x10663;
	}

	public function _m17767( _p9338:T1223):Serializable
	{
		var _n10671:LogoutResponse = new LogoutResponse();
		var _i9340:Int = T1224._m17881(_p9338);
		for (_q2953 in 0 ... _i9340) 
		{
			var _p2954:Int = T1224._m17881(_p9338);
			if (_p2954 == 0) 
			{
				var _w2955:String = T1224._m17882(_p9338);
				_n10671.setMessageId(_w2955);
				MemoryManagement.free(_w2955);
				continue;
			}
			if (_p2954 == 1) 
			{
				var _p2956:String = T1224._m17882(_p9338);
				_n10671.setRequestId(_p2956);
				MemoryManagement.free(_p2956);
				continue;
			}
			if (_p2954 == 3) 
			{
				_n10671.setLogoutStatus((cast T1224.readObject(this, _p9338)));
				continue;
			}
			if (_p2954 == 4) 
			{
				_n10671.setPlayer((cast T1224.readObject(this, _p9338)));
				continue;
			}
			T1224._m17883(_p9338);
		}
		return _n10671;
	}

	public function _m17768( buff:T1223):Serializable
	{
		var _s10678:LogoutRequest = new LogoutRequest();
		var _q2958:Int = T1224._m17881(buff);
		for (_f2959 in 0 ... _q2958) 
		{
			var _q2960:Int = T1224._m17881(buff);
			if (_q2960 == 0) 
			{
				var _l2961:String = T1224._m17882(buff);
				_s10678.setMessageId(_l2961);
				MemoryManagement.free(_l2961);
				continue;
			}
			if (_q2960 == 1) 
			{
				var _t2962:String = T1224._m17882(buff);
				_s10678.setRequestId(_t2962);
				MemoryManagement.free(_t2962);
				continue;
			}
			T1224._m17883(buff);
		}
		return _s10678;
	}

	public function _m17769( buff:T1223):Serializable
	{
		var _x10685:ChallengeFriendResponse = new ChallengeFriendResponse();
		var _p2964:Int = T1224._m17881(buff);
		for (_m2965 in 0 ... _p2964) 
		{
			var _i2966:Int = T1224._m17881(buff);
			if (_i2966 == 0) 
			{
				var _i2967:String = T1224._m17882(buff);
				_x10685.setMessageId(_i2967);
				MemoryManagement.free(_i2967);
				continue;
			}
			if (_i2966 == 1) 
			{
				var _r2968:String = T1224._m17882(buff);
				_x10685.setRequestId(_r2968);
				MemoryManagement.free(_r2968);
				continue;
			}
			if (_i2966 == 3) 
			{
				_x10685.setChallengeFriendStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_i2966 == 4) 
			{
				var _l2969:String = T1224._m17882(buff);
				_x10685.setPlayerId(_l2969);
				MemoryManagement.free(_l2969);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x10685;
	}

	public function _m17770( _o9344:T1223):Serializable
	{
		var _x10693:ChallengeFriendRequest = new ChallengeFriendRequest();
		var _z9346:Int = T1224._m17881(_o9344);
		for (_f2972 in 0 ... _z9346) 
		{
			var _i2973:Int = T1224._m17881(_o9344);
			if (_i2973 == 0) 
			{
				var _q2974:String = T1224._m17882(_o9344);
				_x10693.setMessageId(_q2974);
				MemoryManagement.free(_q2974);
				continue;
			}
			if (_i2973 == 1) 
			{
				var _k2975:String = T1224._m17882(_o9344);
				_x10693.setRequestId(_k2975);
				MemoryManagement.free(_k2975);
				continue;
			}
			if (_i2973 == 3) 
			{
				var _c2976:String = T1224._m17882(_o9344);
				_x10693.setPlayerId(_c2976);
				MemoryManagement.free(_c2976);
				continue;
			}
			T1224._m17883(_o9344);
		}
		return _x10693;
	}

	public function _m17771( buff:T1223):Serializable
	{
		var _s10701:ChallengeThirdPartyFriendResponse = new ChallengeThirdPartyFriendResponse();
		var _t2978:Int = T1224._m17881(buff);
		for (_q2979 in 0 ... _t2978) 
		{
			var _u2980:Int = T1224._m17881(buff);
			if (_u2980 == 0) 
			{
				var _l2981:String = T1224._m17882(buff);
				_s10701.setMessageId(_l2981);
				MemoryManagement.free(_l2981);
				continue;
			}
			if (_u2980 == 1) 
			{
				var _t2982:String = T1224._m17882(buff);
				_s10701.setRequestId(_t2982);
				MemoryManagement.free(_t2982);
				continue;
			}
			if (_u2980 == 3) 
			{
				_s10701.setChallengeThirdPartyFriendStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_u2980 == 4) 
			{
				var _k2983:String = T1224._m17882(buff);
				_s10701.setThirdPartyId(_k2983);
				MemoryManagement.free(_k2983);
				continue;
			}
			T1224._m17883(buff);
		}
		return _s10701;
	}

	public function _m17772( buff:T1223):Serializable
	{
		var _j10709:ChallengeThirdPartyFriendRequest = new ChallengeThirdPartyFriendRequest();
		var _k2985:Int = T1224._m17881(buff);
		for (_i2986 in 0 ... _k2985) 
		{
			var _m2987:Int = T1224._m17881(buff);
			if (_m2987 == 0) 
			{
				var _p2988:String = T1224._m17882(buff);
				_j10709.setMessageId(_p2988);
				MemoryManagement.free(_p2988);
				continue;
			}
			if (_m2987 == 1) 
			{
				var _q2989:String = T1224._m17882(buff);
				_j10709.setRequestId(_q2989);
				MemoryManagement.free(_q2989);
				continue;
			}
			if (_m2987 == 3) 
			{
				var _j2990:String = T1224._m17882(buff);
				_j10709.setThirdPartyId(_j2990);
				MemoryManagement.free(_j2990);
				continue;
			}
			if (_m2987 == 4) 
			{
				var _n2991:String = T1224._m17882(buff);
				_j10709.setTitle(_n2991);
				MemoryManagement.free(_n2991);
				continue;
			}
			if (_m2987 == 5) 
			{
				var _g2992:String = T1224._m17882(buff);
				_j10709.setChallengeMessage(_g2992);
				MemoryManagement.free(_g2992);
				continue;
			}
			if (_m2987 == 6) 
			{
				var _v2993:String = T1224._m17882(buff);
				_j10709.setPictureUrl(_v2993);
				MemoryManagement.free(_v2993);
				continue;
			}
			if (_m2987 == 7) 
			{
				var _l2994:String = T1224._m17882(buff);
				_j10709.setLink(_l2994);
				MemoryManagement.free(_l2994);
				continue;
			}
			if (_m2987 == 8) 
			{
				_j10709.setThirdPartySource((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _j10709;
	}

	public function _m17773( _d9350:T1223):Serializable
	{
		var _g10721:GetFriendsResponse = new GetFriendsResponse();
		var _k9352:Int = T1224._m17881(_d9350);
		for (_w2997 in 0 ... _k9352) 
		{
			var _y2998:Int = T1224._m17881(_d9350);
			if (_y2998 == 0) 
			{
				var _e2999:String = T1224._m17882(_d9350);
				_g10721.setMessageId(_e2999);
				MemoryManagement.free(_e2999);
				continue;
			}
			if (_y2998 == 1) 
			{
				var _i3000:String = T1224._m17882(_d9350);
				_g10721.setRequestId(_i3000);
				MemoryManagement.free(_i3000);
				continue;
			}
			if (_y2998 == 3) 
			{
				_g10721.setGetFriendsStatus((cast T1224.readObject(this, _d9350)));
				continue;
			}
			if (_y2998 == 4) 
			{
				var _x10727:NList<NPlayer> = null;
				var _t10728:Int = _d9350._m17886();
				if (_t10728 != T1221._m17179) 
				{
					_d9350._m17887();
					var _w10729:Int = _d9350._m17888();
					_x10727 = new NList<NPlayer>();
					for (_h3004 in 0 ... _w10729) 
					{
						_x10727.add((cast T1224.readObject(this, _d9350)));
					}
				}
				_g10721.setFriends(_x10727);
				continue;
			}
			T1224._m17883(_d9350);
		}
		return _g10721;
	}

	public function _m17774( buff:T1223):Serializable
	{
		var _i10732:GetFriendsRequest = new GetFriendsRequest();
		var _q3006:Int = T1224._m17881(buff);
		for (_d3007 in 0 ... _q3006) 
		{
			var _n3008:Int = T1224._m17881(buff);
			if (_n3008 == 0) 
			{
				var _c3009:String = T1224._m17882(buff);
				_i10732.setMessageId(_c3009);
				MemoryManagement.free(_c3009);
				continue;
			}
			if (_n3008 == 1) 
			{
				var _s3010:String = T1224._m17882(buff);
				_i10732.setRequestId(_s3010);
				MemoryManagement.free(_s3010);
				continue;
			}
			T1224._m17883(buff);
		}
		return _i10732;
	}

	public function _m17775( buff:T1223):Serializable
	{
		var _f10739:GetFriendsByPlayerIdRequest = new GetFriendsByPlayerIdRequest();
		var _u3012:Int = T1224._m17881(buff);
		for (_e3013 in 0 ... _u3012) 
		{
			var _g3014:Int = T1224._m17881(buff);
			if (_g3014 == 0) 
			{
				var _n3015:String = T1224._m17882(buff);
				_f10739.setMessageId(_n3015);
				MemoryManagement.free(_n3015);
				continue;
			}
			if (_g3014 == 1) 
			{
				var _x3016:String = T1224._m17882(buff);
				_f10739.setRequestId(_x3016);
				MemoryManagement.free(_x3016);
				continue;
			}
			if (_g3014 == 3) 
			{
				var _d3017:String = T1224._m17882(buff);
				_f10739.setPlayerId(_d3017);
				MemoryManagement.free(_d3017);
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10739;
	}

	public function _m17776( _c9356:T1223):Serializable
	{
		var _e10747:GetThirdPartyFriendsResponse = new GetThirdPartyFriendsResponse();
		var _c9358:Int = T1224._m17881(_c9356);
		for (_w3020 in 0 ... _c9358) 
		{
			var _r3021:Int = T1224._m17881(_c9356);
			if (_r3021 == 0) 
			{
				var _d3022:String = T1224._m17882(_c9356);
				_e10747.setMessageId(_d3022);
				MemoryManagement.free(_d3022);
				continue;
			}
			if (_r3021 == 1) 
			{
				var _i3023:String = T1224._m17882(_c9356);
				_e10747.setRequestId(_i3023);
				MemoryManagement.free(_i3023);
				continue;
			}
			if (_r3021 == 3) 
			{
				_e10747.setGetThirdPartyFriendsStatus((cast T1224.readObject(this, _c9356)));
				continue;
			}
			if (_r3021 == 4) 
			{
				var _l10753:NList<NPlayer> = null;
				var _v10754:Int = _c9356._m17886();
				if (_v10754 != T1221._m17179) 
				{
					_c9356._m17887();
					var _v10755:Int = _c9356._m17888();
					_l10753 = new NList<NPlayer>();
					for (_f3027 in 0 ... _v10755) 
					{
						_l10753.add((cast T1224.readObject(this, _c9356)));
					}
				}
				_e10747.setThirdPartyFriends(_l10753);
				continue;
			}
			T1224._m17883(_c9356);
		}
		return _e10747;
	}

	public function _m17777( buff:T1223):Serializable
	{
		var _s10758:GetThirdPartyFriendsRequest = new GetThirdPartyFriendsRequest();
		var _m3029:Int = T1224._m17881(buff);
		for (_m3030 in 0 ... _m3029) 
		{
			var _d3031:Int = T1224._m17881(buff);
			if (_d3031 == 0) 
			{
				var _i3032:String = T1224._m17882(buff);
				_s10758.setMessageId(_i3032);
				MemoryManagement.free(_i3032);
				continue;
			}
			if (_d3031 == 1) 
			{
				var _x3033:String = T1224._m17882(buff);
				_s10758.setRequestId(_x3033);
				MemoryManagement.free(_x3033);
				continue;
			}
			if (_d3031 == 3) 
			{
				_s10758.setThirdPartySource((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _s10758;
	}

	public function _m17778( _x9362:T1223):Serializable
	{
		var _d10765:GetPlayerInvitationsResponse = new GetPlayerInvitationsResponse();
		var _f9364:Int = T1224._m17881(_x9362);
		for (_p3036 in 0 ... _f9364) 
		{
			var _h3037:Int = T1224._m17881(_x9362);
			if (_h3037 == 0) 
			{
				var _u3038:String = T1224._m17882(_x9362);
				_d10765.setMessageId(_u3038);
				MemoryManagement.free(_u3038);
				continue;
			}
			if (_h3037 == 1) 
			{
				var _m3039:String = T1224._m17882(_x9362);
				_d10765.setRequestId(_m3039);
				MemoryManagement.free(_m3039);
				continue;
			}
			if (_h3037 == 3) 
			{
				_d10765.setGetPlayerInvitationsStatus((cast T1224.readObject(this, _x9362)));
				continue;
			}
			if (_h3037 == 4) 
			{
				var _s10771:NList<NPlayerInvitation> = null;
				var _c10772:Int = _x9362._m17886();
				if (_c10772 != T1221._m17179) 
				{
					_x9362._m17887();
					var _f10773:Int = _x9362._m17888();
					_s10771 = new NList<NPlayerInvitation>();
					for (_l3043 in 0 ... _f10773) 
					{
						_s10771.add((cast T1224.readObject(this, _x9362)));
					}
				}
				_d10765.setInvitations(_s10771);
				continue;
			}
			T1224._m17883(_x9362);
		}
		return _d10765;
	}

	public function _m17779( buff:T1223):Serializable
	{
		var _g10776:GetPlayerInvitationsRequest = new GetPlayerInvitationsRequest();
		var _q3045:Int = T1224._m17881(buff);
		for (_i3046 in 0 ... _q3045) 
		{
			var _r3047:Int = T1224._m17881(buff);
			if (_r3047 == 0) 
			{
				var _m3048:String = T1224._m17882(buff);
				_g10776.setMessageId(_m3048);
				MemoryManagement.free(_m3048);
				continue;
			}
			if (_r3047 == 1) 
			{
				var _a3049:String = T1224._m17882(buff);
				_g10776.setRequestId(_a3049);
				MemoryManagement.free(_a3049);
				continue;
			}
			T1224._m17883(buff);
		}
		return _g10776;
	}

	public function _m17780( buff:T1223):Serializable
	{
		var _y10783:AcceptPlayerInvitationResponse = new AcceptPlayerInvitationResponse();
		var _b3051:Int = T1224._m17881(buff);
		for (_h3052 in 0 ... _b3051) 
		{
			var _i3053:Int = T1224._m17881(buff);
			if (_i3053 == 0) 
			{
				var _p3054:String = T1224._m17882(buff);
				_y10783.setMessageId(_p3054);
				MemoryManagement.free(_p3054);
				continue;
			}
			if (_i3053 == 1) 
			{
				var _c3055:String = T1224._m17882(buff);
				_y10783.setRequestId(_c3055);
				MemoryManagement.free(_c3055);
				continue;
			}
			if (_i3053 == 3) 
			{
				_y10783.setAcceptPlayerInvitationStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_i3053 == 4) 
			{
				var _f3056:String = T1224._m17882(buff);
				_y10783.setPlayerInvitationId(_f3056);
				MemoryManagement.free(_f3056);
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10783;
	}

	public function _m17781( _i9368:T1223):Serializable
	{
		var _p10791:AcceptPlayerInvitationRequest = new AcceptPlayerInvitationRequest();
		var _y9370:Int = T1224._m17881(_i9368);
		for (_w3059 in 0 ... _y9370) 
		{
			var _n3060:Int = T1224._m17881(_i9368);
			if (_n3060 == 0) 
			{
				var _t3061:String = T1224._m17882(_i9368);
				_p10791.setMessageId(_t3061);
				MemoryManagement.free(_t3061);
				continue;
			}
			if (_n3060 == 1) 
			{
				var _g3062:String = T1224._m17882(_i9368);
				_p10791.setRequestId(_g3062);
				MemoryManagement.free(_g3062);
				continue;
			}
			if (_n3060 == 3) 
			{
				var _e3063:String = T1224._m17882(_i9368);
				_p10791.setInvitationId(_e3063);
				MemoryManagement.free(_e3063);
				continue;
			}
			T1224._m17883(_i9368);
		}
		return _p10791;
	}

	public function _m17782( buff:T1223):Serializable
	{
		var _y10799:IgnorePlayerInvitationResponse = new IgnorePlayerInvitationResponse();
		var _q3065:Int = T1224._m17881(buff);
		for (_r3066 in 0 ... _q3065) 
		{
			var _n3067:Int = T1224._m17881(buff);
			if (_n3067 == 0) 
			{
				var _b3068:String = T1224._m17882(buff);
				_y10799.setMessageId(_b3068);
				MemoryManagement.free(_b3068);
				continue;
			}
			if (_n3067 == 1) 
			{
				var _g3069:String = T1224._m17882(buff);
				_y10799.setRequestId(_g3069);
				MemoryManagement.free(_g3069);
				continue;
			}
			if (_n3067 == 3) 
			{
				_y10799.setIgnorePlayerInvitationStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_n3067 == 4) 
			{
				var _k3070:String = T1224._m17882(buff);
				_y10799.setPlayerInvitationId(_k3070);
				MemoryManagement.free(_k3070);
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10799;
	}

	public function _m17783( buff:T1223):Serializable
	{
		var _x10807:IgnorePlayerInvitationRequest = new IgnorePlayerInvitationRequest();
		var _l3072:Int = T1224._m17881(buff);
		for (_k3073 in 0 ... _l3072) 
		{
			var _l3074:Int = T1224._m17881(buff);
			if (_l3074 == 0) 
			{
				var _h3075:String = T1224._m17882(buff);
				_x10807.setMessageId(_h3075);
				MemoryManagement.free(_h3075);
				continue;
			}
			if (_l3074 == 1) 
			{
				var _c3076:String = T1224._m17882(buff);
				_x10807.setRequestId(_c3076);
				MemoryManagement.free(_c3076);
				continue;
			}
			if (_l3074 == 3) 
			{
				var _c3077:String = T1224._m17882(buff);
				_x10807.setInvitationId(_c3077);
				MemoryManagement.free(_c3077);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x10807;
	}

	public function _m17784( _g9374:T1223):Serializable
	{
		var _y10815:SubmitScoreResponse = new SubmitScoreResponse();
		var _q9376:Int = T1224._m17881(_g9374);
		for (_r3080 in 0 ... _q9376) 
		{
			var _o3081:Int = T1224._m17881(_g9374);
			if (_o3081 == 0) 
			{
				var _h3082:String = T1224._m17882(_g9374);
				_y10815.setMessageId(_h3082);
				MemoryManagement.free(_h3082);
				continue;
			}
			if (_o3081 == 1) 
			{
				var _x3083:String = T1224._m17882(_g9374);
				_y10815.setRequestId(_x3083);
				MemoryManagement.free(_x3083);
				continue;
			}
			if (_o3081 == 3) 
			{
				_y10815.setSubmitScoreStatus((cast T1224.readObject(this, _g9374)));
				continue;
			}
			T1224._m17883(_g9374);
		}
		return _y10815;
	}

	public function _m17785( buff:T1223):Serializable
	{
		var _f10822:SubmitScoreRequest = new SubmitScoreRequest();
		var _p3085:Int = T1224._m17881(buff);
		for (_n3086 in 0 ... _p3085) 
		{
			var _t3087:Int = T1224._m17881(buff);
			if (_t3087 == 0) 
			{
				var _f3088:String = T1224._m17882(buff);
				_f10822.setMessageId(_f3088);
				MemoryManagement.free(_f3088);
				continue;
			}
			if (_t3087 == 1) 
			{
				var _p3089:String = T1224._m17882(buff);
				_f10822.setRequestId(_p3089);
				MemoryManagement.free(_p3089);
				continue;
			}
			if (_t3087 == 3) 
			{
				_f10822.setScore((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_t3087 == 4) 
			{
				var _h3090:String = T1224._m17882(buff);
				_f10822.setLeaderboardId(_h3090);
				MemoryManagement.free(_h3090);
				continue;
			}
			T1224._m17883(buff);
		}
		return _f10822;
	}

	public function _m17786( _b9380:T1223):Serializable
	{
		var _q10830:SubmitScoreWithPlayerNameRequest = new SubmitScoreWithPlayerNameRequest();
		var _p3092:Int = T1224._m17881(_b9380);
		for (_b3093 in 0 ... _p3092) 
		{
			var _g3094:Int = T1224._m17881(_b9380);
			if (_g3094 == 0) 
			{
				var _n3095:String = T1224._m17882(_b9380);
				_q10830.setMessageId(_n3095);
				MemoryManagement.free(_n3095);
				continue;
			}
			if (_g3094 == 1) 
			{
				var _y3096:String = T1224._m17882(_b9380);
				_q10830.setRequestId(_y3096);
				MemoryManagement.free(_y3096);
				continue;
			}
			if (_g3094 == 3) 
			{
				var _k3097:String = T1224._m17882(_b9380);
				_q10830.setName(_k3097);
				MemoryManagement.free(_k3097);
				continue;
			}
			if (_g3094 == 4) 
			{
				_q10830.setScore((cast T1224.readObject(this, _b9380)));
				continue;
			}
			if (_g3094 == 5) 
			{
				var _h3098:String = T1224._m17882(_b9380);
				_q10830.setLeaderboardId(_h3098);
				MemoryManagement.free(_h3098);
				continue;
			}
			T1224._m17883(_b9380);
		}
		return _q10830;
	}

	public function _m17787( buff:T1223):Serializable
	{
		var _y10839:GetLeaderboardResponse = new GetLeaderboardResponse();
		var _x9382:Int = T1224._m17881(buff);
		for (_f3101 in 0 ... _x9382) 
		{
			var _j3102:Int = T1224._m17881(buff);
			if (_j3102 == 0) 
			{
				var _k3103:String = T1224._m17882(buff);
				_y10839.setMessageId(_k3103);
				MemoryManagement.free(_k3103);
				continue;
			}
			if (_j3102 == 1) 
			{
				var _n3104:String = T1224._m17882(buff);
				_y10839.setRequestId(_n3104);
				MemoryManagement.free(_n3104);
				continue;
			}
			if (_j3102 == 3) 
			{
				_y10839.setGetLeaderboardStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_j3102 == 4) 
			{
				_y10839.setLeaderboard((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10839;
	}

	public function _m17788( buff:T1223):Serializable
	{
		var _u10846:GetLeaderboardRequest = new GetLeaderboardRequest();
		var _o3106:Int = T1224._m17881(buff);
		for (_n3107 in 0 ... _o3106) 
		{
			var _c3108:Int = T1224._m17881(buff);
			if (_c3108 == 0) 
			{
				var _a3109:String = T1224._m17882(buff);
				_u10846.setMessageId(_a3109);
				MemoryManagement.free(_a3109);
				continue;
			}
			if (_c3108 == 1) 
			{
				var _r3110:String = T1224._m17882(buff);
				_u10846.setRequestId(_r3110);
				MemoryManagement.free(_r3110);
				continue;
			}
			if (_c3108 == 3) 
			{
				var _v3111:String = T1224._m17882(buff);
				_u10846.setLeaderboardId(_v3111);
				MemoryManagement.free(_v3111);
				continue;
			}
			if (_c3108 == 4) 
			{
				_u10846.setPeriod((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_c3108 == 5) 
			{
				_u10846.setStart(T1224._m17880(buff));
				continue;
			}
			if (_c3108 == 6) 
			{
				_u10846.setLimit(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _u10846;
	}

	public function _m17789( buff:T1223):Serializable
	{
		var _r10854:BuyItemResponse = new BuyItemResponse();
		var _e3113:Int = T1224._m17881(buff);
		for (_n9388 in 0 ... _e3113) 
		{
			var _y3115:Int = T1224._m17881(buff);
			if (_y3115 == 0) 
			{
				var _d3116:String = T1224._m17882(buff);
				_r10854.setMessageId(_d3116);
				MemoryManagement.free(_d3116);
				continue;
			}
			if (_y3115 == 1) 
			{
				var _e3117:String = T1224._m17882(buff);
				_r10854.setRequestId(_e3117);
				MemoryManagement.free(_e3117);
				continue;
			}
			if (_y3115 == 3) 
			{
				_r10854.setBuyItemStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_y3115 == 4) 
			{
				_r10854.setBoughtItem((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_y3115 == 5) 
			{
				_r10854.setQuantity(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _r10854;
	}

	public function _m17790( buff:T1223):Serializable
	{
		var _v10861:BuyItemRequest = new BuyItemRequest();
		var _n3119:Int = T1224._m17881(buff);
		for (_r3120 in 0 ... _n3119) 
		{
			var _f3121:Int = T1224._m17881(buff);
			if (_f3121 == 0) 
			{
				var _r3122:String = T1224._m17882(buff);
				_v10861.setMessageId(_r3122);
				MemoryManagement.free(_r3122);
				continue;
			}
			if (_f3121 == 1) 
			{
				var _y3123:String = T1224._m17882(buff);
				_v10861.setRequestId(_y3123);
				MemoryManagement.free(_y3123);
				continue;
			}
			if (_f3121 == 3) 
			{
				var _i3124:String = T1224._m17882(buff);
				_v10861.setItemId(_i3124);
				MemoryManagement.free(_i3124);
				continue;
			}
			if (_f3121 == 4) 
			{
				_v10861.setQuantity(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _v10861;
	}

	public function _m17791( _g9391:T1223):Serializable
	{
		var _k10869:GetStoreResponse = new GetStoreResponse();
		var _q9393:Int = T1224._m17881(_g9391);
		for (_u3127 in 0 ... _q9393) 
		{
			var _s3128:Int = T1224._m17881(_g9391);
			if (_s3128 == 0) 
			{
				var _s3129:String = T1224._m17882(_g9391);
				_k10869.setMessageId(_s3129);
				MemoryManagement.free(_s3129);
				continue;
			}
			if (_s3128 == 1) 
			{
				var _w3130:String = T1224._m17882(_g9391);
				_k10869.setRequestId(_w3130);
				MemoryManagement.free(_w3130);
				continue;
			}
			if (_s3128 == 3) 
			{
				_k10869.setGetStoreStatus((cast T1224.readObject(this, _g9391)));
				continue;
			}
			if (_s3128 == 4) 
			{
				_k10869.setStore((cast T1224.readObject(this, _g9391)));
				continue;
			}
			T1224._m17883(_g9391);
		}
		return _k10869;
	}

	public function _m17792( buff:T1223):Serializable
	{
		var _j10876:GetStoreRequest = new GetStoreRequest();
		var _h3132:Int = T1224._m17881(buff);
		for (_w3133 in 0 ... _h3132) 
		{
			var _d3134:Int = T1224._m17881(buff);
			if (_d3134 == 0) 
			{
				var _l3135:String = T1224._m17882(buff);
				_j10876.setMessageId(_l3135);
				MemoryManagement.free(_l3135);
				continue;
			}
			if (_d3134 == 1) 
			{
				var _q3136:String = T1224._m17882(buff);
				_j10876.setRequestId(_q3136);
				MemoryManagement.free(_q3136);
				continue;
			}
			T1224._m17883(buff);
		}
		return _j10876;
	}

	public function _m17793( _b9397:T1223):Serializable
	{
		var _f10883:ConsumeItemResponse = new ConsumeItemResponse();
		var _e9399:Int = T1224._m17881(_b9397);
		for (_w3139 in 0 ... _e9399) 
		{
			var _m3140:Int = T1224._m17881(_b9397);
			if (_m3140 == 0) 
			{
				var _b3141:String = T1224._m17882(_b9397);
				_f10883.setMessageId(_b3141);
				MemoryManagement.free(_b3141);
				continue;
			}
			if (_m3140 == 1) 
			{
				var _t3142:String = T1224._m17882(_b9397);
				_f10883.setRequestId(_t3142);
				MemoryManagement.free(_t3142);
				continue;
			}
			if (_m3140 == 3) 
			{
				_f10883.setConsumeItemStatus((cast T1224.readObject(this, _b9397)));
				continue;
			}
			if (_m3140 == 4) 
			{
				_f10883.setConsumedItem((cast T1224.readObject(this, _b9397)));
				continue;
			}
			if (_m3140 == 5) 
			{
				_f10883.setQuantity(T1224._m17880(_b9397));
				continue;
			}
			T1224._m17883(_b9397);
		}
		return _f10883;
	}

	public function _m17794( buff:T1223):Serializable
	{
		var _i10890:ConsumeItemRequest = new ConsumeItemRequest();
		var _n3144:Int = T1224._m17881(buff);
		for (_y3145 in 0 ... _n3144) 
		{
			var _g3146:Int = T1224._m17881(buff);
			if (_g3146 == 0) 
			{
				var _e3147:String = T1224._m17882(buff);
				_i10890.setMessageId(_e3147);
				MemoryManagement.free(_e3147);
				continue;
			}
			if (_g3146 == 1) 
			{
				var _v3148:String = T1224._m17882(buff);
				_i10890.setRequestId(_v3148);
				MemoryManagement.free(_v3148);
				continue;
			}
			if (_g3146 == 3) 
			{
				var _a3149:String = T1224._m17882(buff);
				_i10890.setItemId(_a3149);
				MemoryManagement.free(_a3149);
				continue;
			}
			if (_g3146 == 4) 
			{
				_i10890.setQuantity(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _i10890;
	}

	public function _m17795( buff:T1223):Serializable
	{
		var _y10898:IncreasePlayerWalletResponse = new IncreasePlayerWalletResponse();
		var _x3151:Int = T1224._m17881(buff);
		for (_s3152 in 0 ... _x3151) 
		{
			var _c3153:Int = T1224._m17881(buff);
			if (_c3153 == 0) 
			{
				var _m3154:String = T1224._m17882(buff);
				_y10898.setMessageId(_m3154);
				MemoryManagement.free(_m3154);
				continue;
			}
			if (_c3153 == 1) 
			{
				var _k3155:String = T1224._m17882(buff);
				_y10898.setRequestId(_k3155);
				MemoryManagement.free(_k3155);
				continue;
			}
			if (_c3153 == 3) 
			{
				_y10898.setIncreasePlayerWalletStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_c3153 == 4) 
			{
				_y10898.setValue(T1224._m17880(buff));
				continue;
			}
			T1224._m17883(buff);
		}
		return _y10898;
	}

	public function _m17796( _e9403:T1223):Serializable
	{
		var _b10905:IncreasePlayerWalletRequest = new IncreasePlayerWalletRequest();
		var _p9405:Int = T1224._m17881(_e9403);
		for (_i3158 in 0 ... _p9405) 
		{
			var _k3159:Int = T1224._m17881(_e9403);
			if (_k3159 == 0) 
			{
				var _h3160:String = T1224._m17882(_e9403);
				_b10905.setMessageId(_h3160);
				MemoryManagement.free(_h3160);
				continue;
			}
			if (_k3159 == 1) 
			{
				var _t3161:String = T1224._m17882(_e9403);
				_b10905.setRequestId(_t3161);
				MemoryManagement.free(_t3161);
				continue;
			}
			if (_k3159 == 3) 
			{
				_b10905.setValue(T1224._m17880(_e9403));
				continue;
			}
			T1224._m17883(_e9403);
		}
		return _b10905;
	}

	public function _m17797( buff:T1223):Serializable
	{
		var _g10912:GetPlayerWalletResponse = new GetPlayerWalletResponse();
		var _p3163:Int = T1224._m17881(buff);
		for (_h3164 in 0 ... _p3163) 
		{
			var _q3165:Int = T1224._m17881(buff);
			if (_q3165 == 0) 
			{
				var _q3166:String = T1224._m17882(buff);
				_g10912.setMessageId(_q3166);
				MemoryManagement.free(_q3166);
				continue;
			}
			if (_q3165 == 1) 
			{
				var _y3167:String = T1224._m17882(buff);
				_g10912.setRequestId(_y3167);
				MemoryManagement.free(_y3167);
				continue;
			}
			if (_q3165 == 3) 
			{
				_g10912.setGetPlayerWalletStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_q3165 == 4) 
			{
				_g10912.setWallet((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _g10912;
	}

	public function _m17798( buff:T1223):Serializable
	{
		var _q10919:GetPlayerWalletRequest = new GetPlayerWalletRequest();
		var _x3169:Int = T1224._m17881(buff);
		for (_r3170 in 0 ... _x3169) 
		{
			var _e3171:Int = T1224._m17881(buff);
			if (_e3171 == 0) 
			{
				var _e3172:String = T1224._m17882(buff);
				_q10919.setMessageId(_e3172);
				MemoryManagement.free(_e3172);
				continue;
			}
			if (_e3171 == 1) 
			{
				var _v3173:String = T1224._m17882(buff);
				_q10919.setRequestId(_v3173);
				MemoryManagement.free(_v3173);
				continue;
			}
			T1224._m17883(buff);
		}
		return _q10919;
	}

	public function _m17799( _o9409:T1223):Serializable
	{
		var _v10926:GetAchievementBoardResponse = new GetAchievementBoardResponse();
		var _f9411:Int = T1224._m17881(_o9409);
		for (_o3176 in 0 ... _f9411) 
		{
			var _h3177:Int = T1224._m17881(_o9409);
			if (_h3177 == 0) 
			{
				var _j3178:String = T1224._m17882(_o9409);
				_v10926.setMessageId(_j3178);
				MemoryManagement.free(_j3178);
				continue;
			}
			if (_h3177 == 1) 
			{
				var _y3179:String = T1224._m17882(_o9409);
				_v10926.setRequestId(_y3179);
				MemoryManagement.free(_y3179);
				continue;
			}
			if (_h3177 == 3) 
			{
				_v10926.setGetAchievementBoardStatus((cast T1224.readObject(this, _o9409)));
				continue;
			}
			if (_h3177 == 4) 
			{
				_v10926.setAchievementBoard((cast T1224.readObject(this, _o9409)));
				continue;
			}
			T1224._m17883(_o9409);
		}
		return _v10926;
	}

	public function _m17800( buff:T1223):Serializable
	{
		var _d10933:GetAchievementBoardRequest = new GetAchievementBoardRequest();
		var _f3181:Int = T1224._m17881(buff);
		for (_g3182 in 0 ... _f3181) 
		{
			var _x3183:Int = T1224._m17881(buff);
			if (_x3183 == 0) 
			{
				var _q3184:String = T1224._m17882(buff);
				_d10933.setMessageId(_q3184);
				MemoryManagement.free(_q3184);
				continue;
			}
			if (_x3183 == 1) 
			{
				var _u3185:String = T1224._m17882(buff);
				_d10933.setRequestId(_u3185);
				MemoryManagement.free(_u3185);
				continue;
			}
			T1224._m17883(buff);
		}
		return _d10933;
	}

	public function _m17801( buff:T1223):Serializable
	{
		var _r10940:AchieveResponse = new AchieveResponse();
		var _y3187:Int = T1224._m17881(buff);
		for (_u3188 in 0 ... _y3187) 
		{
			var _o3189:Int = T1224._m17881(buff);
			if (_o3189 == 0) 
			{
				var _m3190:String = T1224._m17882(buff);
				_r10940.setMessageId(_m3190);
				MemoryManagement.free(_m3190);
				continue;
			}
			if (_o3189 == 1) 
			{
				var _z3191:String = T1224._m17882(buff);
				_r10940.setRequestId(_z3191);
				MemoryManagement.free(_z3191);
				continue;
			}
			if (_o3189 == 3) 
			{
				_r10940.setAchieveStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _r10940;
	}

	public function _m17802( buff:T1223):Serializable
	{
		var _u10947:AchieveRequest = new AchieveRequest();
		var _l3193:Int = T1224._m17881(buff);
		for (_j3194 in 0 ... _l3193) 
		{
			var _y3195:Int = T1224._m17881(buff);
			if (_y3195 == 0) 
			{
				var _k3196:String = T1224._m17882(buff);
				_u10947.setMessageId(_k3196);
				MemoryManagement.free(_k3196);
				continue;
			}
			if (_y3195 == 1) 
			{
				var _i3197:String = T1224._m17882(buff);
				_u10947.setRequestId(_i3197);
				MemoryManagement.free(_i3197);
				continue;
			}
			if (_y3195 == 3) 
			{
				var _n3198:String = T1224._m17882(buff);
				_u10947.setAchivementId(_n3198);
				MemoryManagement.free(_n3198);
				continue;
			}
			T1224._m17883(buff);
		}
		return _u10947;
	}

	public function _m17803( _j9415:T1223):Serializable
	{
		var _t10955:SearchImmediateGameResponse = new SearchImmediateGameResponse();
		var _e9417:Int = T1224._m17881(_j9415);
		for (_z3201 in 0 ... _e9417) 
		{
			var _w3202:Int = T1224._m17881(_j9415);
			if (_w3202 == 0) 
			{
				var _t3203:String = T1224._m17882(_j9415);
				_t10955.setMessageId(_t3203);
				MemoryManagement.free(_t3203);
				continue;
			}
			if (_w3202 == 1) 
			{
				var _u3204:String = T1224._m17882(_j9415);
				_t10955.setRequestId(_u3204);
				MemoryManagement.free(_u3204);
				continue;
			}
			if (_w3202 == 3) 
			{
				_t10955.setSearchImmediateGameStatus((cast T1224.readObject(this, _j9415)));
				continue;
			}
			if (_w3202 == 4) 
			{
				_t10955.setGame((cast T1224.readObject(this, _j9415)));
				continue;
			}
			T1224._m17883(_j9415);
		}
		return _t10955;
	}

	public function _m17804( buff:T1223):Serializable
	{
		var _i10962:SearchImmediateGameRequest = new SearchImmediateGameRequest();
		var _x3206:Int = T1224._m17881(buff);
		for (_l3207 in 0 ... _x3206) 
		{
			var _c3208:Int = T1224._m17881(buff);
			if (_c3208 == 0) 
			{
				var _s3209:String = T1224._m17882(buff);
				_i10962.setMessageId(_s3209);
				MemoryManagement.free(_s3209);
				continue;
			}
			if (_c3208 == 1) 
			{
				var _u3210:String = T1224._m17882(buff);
				_i10962.setRequestId(_u3210);
				MemoryManagement.free(_u3210);
				continue;
			}
			T1224._m17883(buff);
		}
		return _i10962;
	}

	public function _m17805( _j9421:T1223):Serializable
	{
		var _d10969:SearchImmediateGameByConditionsRequest = new SearchImmediateGameByConditionsRequest();
		var _o9423:Int = T1224._m17881(_j9421);
		for (_f3213 in 0 ... _o9423) 
		{
			var _a3214:Int = T1224._m17881(_j9421);
			if (_a3214 == 0) 
			{
				var _r3215:String = T1224._m17882(_j9421);
				_d10969.setMessageId(_r3215);
				MemoryManagement.free(_r3215);
				continue;
			}
			if (_a3214 == 1) 
			{
				var _c3216:String = T1224._m17882(_j9421);
				_d10969.setRequestId(_c3216);
				MemoryManagement.free(_c3216);
				continue;
			}
			if (_a3214 == 3) 
			{
				_d10969.setQuery((cast T1224.readObject(this, _j9421)));
				continue;
			}
			if (_a3214 == 4) 
			{
				_d10969.setMatchMakingConditions((cast T1224.readObject(this, _j9421)));
				continue;
			}
			T1224._m17883(_j9421);
		}
		return _d10969;
	}

	public function _m17806( buff:T1223):Serializable
	{
		var _p10976:JoinGameResponse = new JoinGameResponse();
		var _x3218:Int = T1224._m17881(buff);
		for (_p3219 in 0 ... _x3218) 
		{
			var _g3220:Int = T1224._m17881(buff);
			if (_g3220 == 0) 
			{
				var _h3221:String = T1224._m17882(buff);
				_p10976.setMessageId(_h3221);
				MemoryManagement.free(_h3221);
				continue;
			}
			if (_g3220 == 1) 
			{
				var _i3222:String = T1224._m17882(buff);
				_p10976.setRequestId(_i3222);
				MemoryManagement.free(_i3222);
				continue;
			}
			if (_g3220 == 3) 
			{
				_p10976.setJoinGameStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_g3220 == 4) 
			{
				_p10976.setGame((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _p10976;
	}

	public function _m17807( buff:T1223):Serializable
	{
		var _a10983:JoinGameRequest = new JoinGameRequest();
		var _r3224:Int = T1224._m17881(buff);
		for (_b3225 in 0 ... _r3224) 
		{
			var _e3226:Int = T1224._m17881(buff);
			if (_e3226 == 0) 
			{
				var _c3227:String = T1224._m17882(buff);
				_a10983.setMessageId(_c3227);
				MemoryManagement.free(_c3227);
				continue;
			}
			if (_e3226 == 1) 
			{
				var _v3228:String = T1224._m17882(buff);
				_a10983.setRequestId(_v3228);
				MemoryManagement.free(_v3228);
				continue;
			}
			if (_e3226 == 3) 
			{
				var _l3229:String = T1224._m17882(buff);
				_a10983.setGameId(_l3229);
				MemoryManagement.free(_l3229);
				continue;
			}
			T1224._m17883(buff);
		}
		return _a10983;
	}

	public function _m17808( _q9427:T1223):Serializable
	{
		var _f10991:UnjoinGameResponse = new UnjoinGameResponse();
		var _w3231:Int = T1224._m17881(_q9427);
		for (_u3232 in 0 ... _w3231) 
		{
			var _e3233:Int = T1224._m17881(_q9427);
			if (_e3233 == 0) 
			{
				var _v3234:String = T1224._m17882(_q9427);
				_f10991.setMessageId(_v3234);
				MemoryManagement.free(_v3234);
				continue;
			}
			if (_e3233 == 1) 
			{
				var _l3235:String = T1224._m17882(_q9427);
				_f10991.setRequestId(_l3235);
				MemoryManagement.free(_l3235);
				continue;
			}
			if (_e3233 == 3) 
			{
				_f10991.setUnjoinGameStatus((cast T1224.readObject(this, _q9427)));
				continue;
			}
			if (_e3233 == 4) 
			{
				var _i3236:String = T1224._m17882(_q9427);
				_f10991.setGameId(_i3236);
				MemoryManagement.free(_i3236);
				continue;
			}
			T1224._m17883(_q9427);
		}
		return _f10991;
	}

	public function _m17809( buff:T1223):Serializable
	{
		var _w10999:UnjoinGameRequest = new UnjoinGameRequest();
		var _n9429:Int = T1224._m17881(buff);
		for (_w3239 in 0 ... _n9429) 
		{
			var _z3240:Int = T1224._m17881(buff);
			if (_z3240 == 0) 
			{
				var _y3241:String = T1224._m17882(buff);
				_w10999.setMessageId(_y3241);
				MemoryManagement.free(_y3241);
				continue;
			}
			if (_z3240 == 1) 
			{
				var _r3242:String = T1224._m17882(buff);
				_w10999.setRequestId(_r3242);
				MemoryManagement.free(_r3242);
				continue;
			}
			if (_z3240 == 3) 
			{
				var _y3243:String = T1224._m17882(buff);
				_w10999.setGameId(_y3243);
				MemoryManagement.free(_y3243);
				continue;
			}
			T1224._m17883(buff);
		}
		return _w10999;
	}

	public function _m17810( _o9433:T1223):Serializable
	{
		var _r11007:AcceptFriendChallengeResponse = new AcceptFriendChallengeResponse();
		var _k9435:Int = T1224._m17881(_o9433);
		for (_c3246 in 0 ... _k9435) 
		{
			var _b3247:Int = T1224._m17881(_o9433);
			if (_b3247 == 0) 
			{
				var _g3248:String = T1224._m17882(_o9433);
				_r11007.setMessageId(_g3248);
				MemoryManagement.free(_g3248);
				continue;
			}
			if (_b3247 == 1) 
			{
				var _j3249:String = T1224._m17882(_o9433);
				_r11007.setRequestId(_j3249);
				MemoryManagement.free(_j3249);
				continue;
			}
			if (_b3247 == 3) 
			{
				_r11007.setAcceptFriendChallengeStatus((cast T1224.readObject(this, _o9433)));
				continue;
			}
			if (_b3247 == 4) 
			{
				var _v3250:String = T1224._m17882(_o9433);
				_r11007.setGameId(_v3250);
				MemoryManagement.free(_v3250);
				continue;
			}
			if (_b3247 == 5) 
			{
				var _m3251:String = T1224._m17882(_o9433);
				_r11007.setChallengeId(_m3251);
				MemoryManagement.free(_m3251);
				continue;
			}
			T1224._m17883(_o9433);
		}
		return _r11007;
	}

	public function _m17811( buff:T1223):Serializable
	{
		var _n11016:AcceptFriendChallengeRequest = new AcceptFriendChallengeRequest();
		var _p3253:Int = T1224._m17881(buff);
		for (_j3254 in 0 ... _p3253) 
		{
			var _m3255:Int = T1224._m17881(buff);
			if (_m3255 == 0) 
			{
				var _g3256:String = T1224._m17882(buff);
				_n11016.setMessageId(_g3256);
				MemoryManagement.free(_g3256);
				continue;
			}
			if (_m3255 == 1) 
			{
				var _x3257:String = T1224._m17882(buff);
				_n11016.setRequestId(_x3257);
				MemoryManagement.free(_x3257);
				continue;
			}
			if (_m3255 == 3) 
			{
				var _e3258:String = T1224._m17882(buff);
				_n11016.setChallengeId(_e3258);
				MemoryManagement.free(_e3258);
				continue;
			}
			T1224._m17883(buff);
		}
		return _n11016;
	}

	public function _m17812( buff:T1223):Serializable
	{
		var _v11024:CancelFriendChallengeResponse = new CancelFriendChallengeResponse();
		var _w3260:Int = T1224._m17881(buff);
		for (_t3261 in 0 ... _w3260) 
		{
			var _h3262:Int = T1224._m17881(buff);
			if (_h3262 == 0) 
			{
				var _l3263:String = T1224._m17882(buff);
				_v11024.setMessageId(_l3263);
				MemoryManagement.free(_l3263);
				continue;
			}
			if (_h3262 == 1) 
			{
				var _w3264:String = T1224._m17882(buff);
				_v11024.setRequestId(_w3264);
				MemoryManagement.free(_w3264);
				continue;
			}
			if (_h3262 == 3) 
			{
				_v11024.setCancelFriendChallengeStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_h3262 == 4) 
			{
				var _h3265:String = T1224._m17882(buff);
				_v11024.setChallengeId(_h3265);
				MemoryManagement.free(_h3265);
				continue;
			}
			T1224._m17883(buff);
		}
		return _v11024;
	}

	public function _m17813( _g9439:T1223):Serializable
	{
		var _g11032:CancelFriendChallengeRequest = new CancelFriendChallengeRequest();
		var _c9441:Int = T1224._m17881(_g9439);
		for (_v3268 in 0 ... _c9441) 
		{
			var _l3269:Int = T1224._m17881(_g9439);
			if (_l3269 == 0) 
			{
				var _i3270:String = T1224._m17882(_g9439);
				_g11032.setMessageId(_i3270);
				MemoryManagement.free(_i3270);
				continue;
			}
			if (_l3269 == 1) 
			{
				var _m3271:String = T1224._m17882(_g9439);
				_g11032.setRequestId(_m3271);
				MemoryManagement.free(_m3271);
				continue;
			}
			if (_l3269 == 3) 
			{
				var _c3272:String = T1224._m17882(_g9439);
				_g11032.setChallengeId(_c3272);
				MemoryManagement.free(_c3272);
				continue;
			}
			T1224._m17883(_g9439);
		}
		return _g11032;
	}

	public function _m17814( buff:T1223):Serializable
	{
		var _s11040:RefuseFriendChallengeResponse = new RefuseFriendChallengeResponse();
		var _b3274:Int = T1224._m17881(buff);
		for (_q3275 in 0 ... _b3274) 
		{
			var _e3276:Int = T1224._m17881(buff);
			if (_e3276 == 0) 
			{
				var _c3277:String = T1224._m17882(buff);
				_s11040.setMessageId(_c3277);
				MemoryManagement.free(_c3277);
				continue;
			}
			if (_e3276 == 1) 
			{
				var _f3278:String = T1224._m17882(buff);
				_s11040.setRequestId(_f3278);
				MemoryManagement.free(_f3278);
				continue;
			}
			if (_e3276 == 3) 
			{
				_s11040.setRefuseFriendChallengeStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_e3276 == 4) 
			{
				var _x3279:String = T1224._m17882(buff);
				_s11040.setChallengeId(_x3279);
				MemoryManagement.free(_x3279);
				continue;
			}
			T1224._m17883(buff);
		}
		return _s11040;
	}

	public function _m17815( buff:T1223):Serializable
	{
		var _x11048:RefuseFriendChallengeRequest = new RefuseFriendChallengeRequest();
		var _y3281:Int = T1224._m17881(buff);
		for (_c3282 in 0 ... _y3281) 
		{
			var _u3283:Int = T1224._m17881(buff);
			if (_u3283 == 0) 
			{
				var _b3284:String = T1224._m17882(buff);
				_x11048.setMessageId(_b3284);
				MemoryManagement.free(_b3284);
				continue;
			}
			if (_u3283 == 1) 
			{
				var _w3285:String = T1224._m17882(buff);
				_x11048.setRequestId(_w3285);
				MemoryManagement.free(_w3285);
				continue;
			}
			if (_u3283 == 3) 
			{
				var _j3286:String = T1224._m17882(buff);
				_x11048.setChallengeId(_j3286);
				MemoryManagement.free(_j3286);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11048;
	}

	public function _m17816( buff:T1223):Serializable
	{
		var _s11056:GetChallengesResponse = new GetChallengesResponse();
		var _n3288:Int = T1224._m17881(buff);
		for (_n9447 in 0 ... _n3288) 
		{
			var _x3290:Int = T1224._m17881(buff);
			if (_x3290 == 0) 
			{
				var _f3291:String = T1224._m17882(buff);
				_s11056.setMessageId(_f3291);
				MemoryManagement.free(_f3291);
				continue;
			}
			if (_x3290 == 1) 
			{
				var _z3292:String = T1224._m17882(buff);
				_s11056.setRequestId(_z3292);
				MemoryManagement.free(_z3292);
				continue;
			}
			if (_x3290 == 3) 
			{
				_s11056.setGetChallengesStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_x3290 == 4) 
			{
				var _w11062:NList<NChallenge> = null;
				var _c11063:Int = buff._m17886();
				if (_c11063 != T1221._m17179) 
				{
					buff._m17887();
					var _g11064:Int = buff._m17888();
					_w11062 = new NList<NChallenge>();
					for (_o3296 in 0 ... _g11064) 
					{
						_w11062.add((cast T1224.readObject(this, buff)));
					}
				}
				_s11056.setChallenges(_w11062);
				continue;
			}
			T1224._m17883(buff);
		}
		return _s11056;
	}

	public function _m17817( _e9450:T1223):Serializable
	{
		var _d11067:GetChallengesRequest = new GetChallengesRequest();
		var _o3298:Int = T1224._m17881(_e9450);
		for (_y3299 in 0 ... _o3298) 
		{
			var _l3300:Int = T1224._m17881(_e9450);
			if (_l3300 == 0) 
			{
				var _n3301:String = T1224._m17882(_e9450);
				_d11067.setMessageId(_n3301);
				MemoryManagement.free(_n3301);
				continue;
			}
			if (_l3300 == 1) 
			{
				var _j3302:String = T1224._m17882(_e9450);
				_d11067.setRequestId(_j3302);
				MemoryManagement.free(_j3302);
				continue;
			}
			if (_l3300 == 3) 
			{
				_d11067.setDbQuery((cast T1224.readObject(this, _e9450)));
				continue;
			}
			T1224._m17883(_e9450);
		}
		return _d11067;
	}

	public function _m17818( buff:T1223):Serializable
	{
		var _c11074:StartGameResponse = new StartGameResponse();
		var _c9452:Int = T1224._m17881(buff);
		for (_d3305 in 0 ... _c9452) 
		{
			var _a3306:Int = T1224._m17881(buff);
			if (_a3306 == 0) 
			{
				var _w3307:String = T1224._m17882(buff);
				_c11074.setMessageId(_w3307);
				MemoryManagement.free(_w3307);
				continue;
			}
			if (_a3306 == 1) 
			{
				var _n3308:String = T1224._m17882(buff);
				_c11074.setRequestId(_n3308);
				MemoryManagement.free(_n3308);
				continue;
			}
			if (_a3306 == 3) 
			{
				_c11074.setStartGameStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_a3306 == 4) 
			{
				var _x3309:String = T1224._m17882(buff);
				_c11074.setGameId(_x3309);
				MemoryManagement.free(_x3309);
				continue;
			}
			T1224._m17883(buff);
		}
		return _c11074;
	}

	public function _m17819( buff:T1223):Serializable
	{
		var _g11082:StartGameRequest = new StartGameRequest();
		var _h3311:Int = T1224._m17881(buff);
		for (_i3312 in 0 ... _h3311) 
		{
			var _p3313:Int = T1224._m17881(buff);
			if (_p3313 == 0) 
			{
				var _f3314:String = T1224._m17882(buff);
				_g11082.setMessageId(_f3314);
				MemoryManagement.free(_f3314);
				continue;
			}
			if (_p3313 == 1) 
			{
				var _p3315:String = T1224._m17882(buff);
				_g11082.setRequestId(_p3315);
				MemoryManagement.free(_p3315);
				continue;
			}
			if (_p3313 == 3) 
			{
				var _l3316:String = T1224._m17882(buff);
				_g11082.setGameId(_l3316);
				MemoryManagement.free(_l3316);
				continue;
			}
			T1224._m17883(buff);
		}
		return _g11082;
	}

	public function _m17820( _i9456:T1223):Serializable
	{
		var _j11090:StopGameResponse = new StopGameResponse();
		var _c9458:Int = T1224._m17881(_i9456);
		for (_a3319 in 0 ... _c9458) 
		{
			var _l3320:Int = T1224._m17881(_i9456);
			if (_l3320 == 0) 
			{
				var _n3321:String = T1224._m17882(_i9456);
				_j11090.setMessageId(_n3321);
				MemoryManagement.free(_n3321);
				continue;
			}
			if (_l3320 == 1) 
			{
				var _b3322:String = T1224._m17882(_i9456);
				_j11090.setRequestId(_b3322);
				MemoryManagement.free(_b3322);
				continue;
			}
			if (_l3320 == 3) 
			{
				_j11090.setStopGameStatus((cast T1224.readObject(this, _i9456)));
				continue;
			}
			if (_l3320 == 4) 
			{
				var _s3323:String = T1224._m17882(_i9456);
				_j11090.setGameId(_s3323);
				MemoryManagement.free(_s3323);
				continue;
			}
			T1224._m17883(_i9456);
		}
		return _j11090;
	}

	public function _m17821( buff:T1223):Serializable
	{
		var _b11098:StopGameRequest = new StopGameRequest();
		var _h3325:Int = T1224._m17881(buff);
		for (_c3326 in 0 ... _h3325) 
		{
			var _k3327:Int = T1224._m17881(buff);
			if (_k3327 == 0) 
			{
				var _p3328:String = T1224._m17882(buff);
				_b11098.setMessageId(_p3328);
				MemoryManagement.free(_p3328);
				continue;
			}
			if (_k3327 == 1) 
			{
				var _g3329:String = T1224._m17882(buff);
				_b11098.setRequestId(_g3329);
				MemoryManagement.free(_g3329);
				continue;
			}
			if (_k3327 == 3) 
			{
				var _u3330:String = T1224._m17882(buff);
				_b11098.setGameId(_u3330);
				MemoryManagement.free(_u3330);
				continue;
			}
			T1224._m17883(buff);
		}
		return _b11098;
	}

	public function _m17822( _p9462:T1223):Serializable
	{
		var _l11106:CreateGameResponse = new CreateGameResponse();
		var _o3332:Int = T1224._m17881(_p9462);
		for (_o3333 in 0 ... _o3332) 
		{
			var _e3334:Int = T1224._m17881(_p9462);
			if (_e3334 == 0) 
			{
				var _i3335:String = T1224._m17882(_p9462);
				_l11106.setMessageId(_i3335);
				MemoryManagement.free(_i3335);
				continue;
			}
			if (_e3334 == 1) 
			{
				var _q3336:String = T1224._m17882(_p9462);
				_l11106.setRequestId(_q3336);
				MemoryManagement.free(_q3336);
				continue;
			}
			if (_e3334 == 3) 
			{
				_l11106.setCreateGameStatus((cast T1224.readObject(this, _p9462)));
				continue;
			}
			if (_e3334 == 4) 
			{
				var _l3337:String = T1224._m17882(_p9462);
				_l11106.setGameId(_l3337);
				MemoryManagement.free(_l3337);
				continue;
			}
			T1224._m17883(_p9462);
		}
		return _l11106;
	}

	public function _m17823( buff:T1223):Serializable
	{
		var _y11114:CreateGameRequest = new CreateGameRequest();
		var _c9464:Int = T1224._m17881(buff);
		for (_p3340 in 0 ... _c9464) 
		{
			var _j3341:Int = T1224._m17881(buff);
			if (_j3341 == 0) 
			{
				var _r3342:String = T1224._m17882(buff);
				_y11114.setMessageId(_r3342);
				MemoryManagement.free(_r3342);
				continue;
			}
			if (_j3341 == 1) 
			{
				var _v3343:String = T1224._m17882(buff);
				_y11114.setRequestId(_v3343);
				MemoryManagement.free(_v3343);
				continue;
			}
			T1224._m17883(buff);
		}
		return _y11114;
	}

	public function _m17824( buff:T1223):Serializable
	{
		var _u11121:CreateGameWithCharacteristicsRequest = new CreateGameWithCharacteristicsRequest();
		var _q3345:Int = T1224._m17881(buff);
		for (_t3346 in 0 ... _q3345) 
		{
			var _c3347:Int = T1224._m17881(buff);
			if (_c3347 == 0) 
			{
				var _h3348:String = T1224._m17882(buff);
				_u11121.setMessageId(_h3348);
				MemoryManagement.free(_h3348);
				continue;
			}
			if (_c3347 == 1) 
			{
				var _q3349:String = T1224._m17882(buff);
				_u11121.setRequestId(_q3349);
				MemoryManagement.free(_q3349);
				continue;
			}
			if (_c3347 == 3) 
			{
				_u11121.setGameCharacteristics((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _u11121;
	}

	public function _m17825( _e9468:T1223):Serializable
	{
		var _s11128:GetGamesResponse = new GetGamesResponse();
		var _m9470:Int = T1224._m17881(_e9468);
		for (_g3352 in 0 ... _m9470) 
		{
			var _m3353:Int = T1224._m17881(_e9468);
			if (_m3353 == 0) 
			{
				var _f3354:String = T1224._m17882(_e9468);
				_s11128.setMessageId(_f3354);
				MemoryManagement.free(_f3354);
				continue;
			}
			if (_m3353 == 1) 
			{
				var _r3355:String = T1224._m17882(_e9468);
				_s11128.setRequestId(_r3355);
				MemoryManagement.free(_r3355);
				continue;
			}
			if (_m3353 == 3) 
			{
				_s11128.setGetGamesStatus((cast T1224.readObject(this, _e9468)));
				continue;
			}
			if (_m3353 == 4) 
			{
				var _t11134:NList<NGame> = null;
				var _w11135:Int = _e9468._m17886();
				if (_w11135 != T1221._m17179) 
				{
					_e9468._m17887();
					var _s11136:Int = _e9468._m17888();
					_t11134 = new NList<NGame>();
					for (_i3359 in 0 ... _s11136) 
					{
						_t11134.add((cast T1224.readObject(this, _e9468)));
					}
				}
				_s11128.setGames(_t11134);
				continue;
			}
			T1224._m17883(_e9468);
		}
		return _s11128;
	}

	public function _m17826( buff:T1223):Serializable
	{
		var _b11139:GetGamesRequest = new GetGamesRequest();
		var _h3361:Int = T1224._m17881(buff);
		for (_m3362 in 0 ... _h3361) 
		{
			var _a3363:Int = T1224._m17881(buff);
			if (_a3363 == 0) 
			{
				var _o3364:String = T1224._m17882(buff);
				_b11139.setMessageId(_o3364);
				MemoryManagement.free(_o3364);
				continue;
			}
			if (_a3363 == 1) 
			{
				var _w3365:String = T1224._m17882(buff);
				_b11139.setRequestId(_w3365);
				MemoryManagement.free(_w3365);
				continue;
			}
			if (_a3363 == 3) 
			{
				_b11139.setDbQuery((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _b11139;
	}

	public function _m17827( buff:T1223):Serializable
	{
		var _l11146:SaveAsGhostResponse = new SaveAsGhostResponse();
		var _l3367:Int = T1224._m17881(buff);
		for (_g3368 in 0 ... _l3367) 
		{
			var _n3369:Int = T1224._m17881(buff);
			if (_n3369 == 0) 
			{
				var _g3370:String = T1224._m17882(buff);
				_l11146.setMessageId(_g3370);
				MemoryManagement.free(_g3370);
				continue;
			}
			if (_n3369 == 1) 
			{
				var _n3371:String = T1224._m17882(buff);
				_l11146.setRequestId(_n3371);
				MemoryManagement.free(_n3371);
				continue;
			}
			if (_n3369 == 3) 
			{
				_l11146.setSaveAsGhostStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _l11146;
	}

	public function _m17828( buff:T1223):Serializable
	{
		var _s11153:SaveAsGhostRequest = new SaveAsGhostRequest();
		var _p3373:Int = T1224._m17881(buff);
		for (_u3374 in 0 ... _p3373) 
		{
			var _q3375:Int = T1224._m17881(buff);
			if (_q3375 == 0) 
			{
				var _g3376:String = T1224._m17882(buff);
				_s11153.setMessageId(_g3376);
				MemoryManagement.free(_g3376);
				continue;
			}
			if (_q3375 == 1) 
			{
				var _w3377:String = T1224._m17882(buff);
				_s11153.setRequestId(_w3377);
				MemoryManagement.free(_w3377);
				continue;
			}
			if (_q3375 == 3) 
			{
				_s11153.setGame((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _s11153;
	}

	public function _m17829( buff:T1223):Serializable
	{
		var _k11160:GetGhostsResponse = new GetGhostsResponse();
		var _y3379:Int = T1224._m17881(buff);
		for (_k9476 in 0 ... _y3379) 
		{
			var _a3381:Int = T1224._m17881(buff);
			if (_a3381 == 0) 
			{
				var _o3382:String = T1224._m17882(buff);
				_k11160.setMessageId(_o3382);
				MemoryManagement.free(_o3382);
				continue;
			}
			if (_a3381 == 1) 
			{
				var _c3383:String = T1224._m17882(buff);
				_k11160.setRequestId(_c3383);
				MemoryManagement.free(_c3383);
				continue;
			}
			if (_a3381 == 3) 
			{
				_k11160.setGetGhostsStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_a3381 == 4) 
			{
				var _e11166:NList<NGame> = null;
				var _e11167:Int = buff._m17886();
				if (_e11167 != T1221._m17179) 
				{
					buff._m17887();
					var _o11168:Int = buff._m17888();
					_e11166 = new NList<NGame>();
					for (_a3387 in 0 ... _o11168) 
					{
						_e11166.add((cast T1224.readObject(this, buff)));
					}
				}
				_k11160.setGhosts(_e11166);
				continue;
			}
			T1224._m17883(buff);
		}
		return _k11160;
	}

	public function _m17830( _t9479:T1223):Serializable
	{
		var _m11171:GetGhostsRequest = new GetGhostsRequest();
		var _s9481:Int = T1224._m17881(_t9479);
		for (_w3390 in 0 ... _s9481) 
		{
			var _g3391:Int = T1224._m17881(_t9479);
			if (_g3391 == 0) 
			{
				var _j3392:String = T1224._m17882(_t9479);
				_m11171.setMessageId(_j3392);
				MemoryManagement.free(_j3392);
				continue;
			}
			if (_g3391 == 1) 
			{
				var _n3393:String = T1224._m17882(_t9479);
				_m11171.setRequestId(_n3393);
				MemoryManagement.free(_n3393);
				continue;
			}
			if (_g3391 == 3) 
			{
				_m11171.setDbQuery((cast T1224.readObject(this, _t9479)));
				continue;
			}
			T1224._m17883(_t9479);
		}
		return _m11171;
	}

	public function _m17831( buff:T1223):Serializable
	{
		var _v11178:LoadGhostResponse = new LoadGhostResponse();
		var _w3395:Int = T1224._m17881(buff);
		for (_g3396 in 0 ... _w3395) 
		{
			var _y3397:Int = T1224._m17881(buff);
			if (_y3397 == 0) 
			{
				var _d3398:String = T1224._m17882(buff);
				_v11178.setMessageId(_d3398);
				MemoryManagement.free(_d3398);
				continue;
			}
			if (_y3397 == 1) 
			{
				var _t3399:String = T1224._m17882(buff);
				_v11178.setRequestId(_t3399);
				MemoryManagement.free(_t3399);
				continue;
			}
			if (_y3397 == 3) 
			{
				_v11178.setLoadGhostStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_y3397 == 4) 
			{
				_v11178.setGame((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _v11178;
	}

	public function _m17832( _j9485:T1223):Serializable
	{
		var _g11185:LoadGhostRequest = new LoadGhostRequest();
		var _i3401:Int = T1224._m17881(_j9485);
		for (_d3402 in 0 ... _i3401) 
		{
			var _h3403:Int = T1224._m17881(_j9485);
			if (_h3403 == 0) 
			{
				var _y3404:String = T1224._m17882(_j9485);
				_g11185.setMessageId(_y3404);
				MemoryManagement.free(_y3404);
				continue;
			}
			if (_h3403 == 1) 
			{
				var _y3405:String = T1224._m17882(_j9485);
				_g11185.setRequestId(_y3405);
				MemoryManagement.free(_y3405);
				continue;
			}
			if (_h3403 == 3) 
			{
				var _y3406:String = T1224._m17882(_j9485);
				_g11185.setGameId(_y3406);
				MemoryManagement.free(_y3406);
				continue;
			}
			T1224._m17883(_j9485);
		}
		return _g11185;
	}

	public function _m17833( buff:T1223):Serializable
	{
		var _x11193:SendGameChatResponse = new SendGameChatResponse();
		var _c9487:Int = T1224._m17881(buff);
		for (_w3409 in 0 ... _c9487) 
		{
			var _x3410:Int = T1224._m17881(buff);
			if (_x3410 == 0) 
			{
				var _c3411:String = T1224._m17882(buff);
				_x11193.setMessageId(_c3411);
				MemoryManagement.free(_c3411);
				continue;
			}
			if (_x3410 == 1) 
			{
				var _p3412:String = T1224._m17882(buff);
				_x11193.setRequestId(_p3412);
				MemoryManagement.free(_p3412);
				continue;
			}
			if (_x3410 == 3) 
			{
				_x11193.setSendGameChatStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11193;
	}

	public function _m17834( buff:T1223):Serializable
	{
		var _x11200:SendGameChatRequest = new SendGameChatRequest();
		var _m3414:Int = T1224._m17881(buff);
		for (_o3415 in 0 ... _m3414) 
		{
			var _p3416:Int = T1224._m17881(buff);
			if (_p3416 == 0) 
			{
				var _d3417:String = T1224._m17882(buff);
				_x11200.setMessageId(_d3417);
				MemoryManagement.free(_d3417);
				continue;
			}
			if (_p3416 == 1) 
			{
				var _c3418:String = T1224._m17882(buff);
				_x11200.setRequestId(_c3418);
				MemoryManagement.free(_c3418);
				continue;
			}
			if (_p3416 == 3) 
			{
				var _n3419:String = T1224._m17882(buff);
				_x11200.setGameId(_n3419);
				MemoryManagement.free(_n3419);
				continue;
			}
			if (_p3416 == 4) 
			{
				var _b3420:String = T1224._m17882(buff);
				_x11200.setMessage(_b3420);
				MemoryManagement.free(_b3420);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11200;
	}

	public function _m17835( _o9491:T1223):Serializable
	{
		var _q11209:SendGameChatToPlayerRequest = new SendGameChatToPlayerRequest();
		var _j3422:Int = T1224._m17881(_o9491);
		for (_p3423 in 0 ... _j3422) 
		{
			var _e3424:Int = T1224._m17881(_o9491);
			if (_e3424 == 0) 
			{
				var _g3425:String = T1224._m17882(_o9491);
				_q11209.setMessageId(_g3425);
				MemoryManagement.free(_g3425);
				continue;
			}
			if (_e3424 == 1) 
			{
				var _j3426:String = T1224._m17882(_o9491);
				_q11209.setRequestId(_j3426);
				MemoryManagement.free(_j3426);
				continue;
			}
			if (_e3424 == 3) 
			{
				var _e3427:String = T1224._m17882(_o9491);
				_q11209.setGameId(_e3427);
				MemoryManagement.free(_e3427);
				continue;
			}
			if (_e3424 == 4) 
			{
				var _d3428:String = T1224._m17882(_o9491);
				_q11209.setPlayerId(_d3428);
				MemoryManagement.free(_d3428);
				continue;
			}
			if (_e3424 == 5) 
			{
				var _m3429:String = T1224._m17882(_o9491);
				_q11209.setMessage(_m3429);
				MemoryManagement.free(_m3429);
				continue;
			}
			T1224._m17883(_o9491);
		}
		return _q11209;
	}

	public function _m17836( buff:T1223):Serializable
	{
		var _h11219:SendGameChatToPlayerListRequest = new SendGameChatToPlayerListRequest();
		var _i9493:Int = T1224._m17881(buff);
		for (_l3432 in 0 ... _i9493) 
		{
			var _d3433:Int = T1224._m17881(buff);
			if (_d3433 == 0) 
			{
				var _d3434:String = T1224._m17882(buff);
				_h11219.setMessageId(_d3434);
				MemoryManagement.free(_d3434);
				continue;
			}
			if (_d3433 == 1) 
			{
				var _l3435:String = T1224._m17882(buff);
				_h11219.setRequestId(_l3435);
				MemoryManagement.free(_l3435);
				continue;
			}
			if (_d3433 == 3) 
			{
				var _r3436:String = T1224._m17882(buff);
				_h11219.setGameId(_r3436);
				MemoryManagement.free(_r3436);
				continue;
			}
			if (_d3433 == 4) 
			{
				var _i3437:String = T1224._m17882(buff);
				_h11219.setMessage(_i3437);
				MemoryManagement.free(_i3437);
				continue;
			}
			T1224._m17883(buff);
		}
		return _h11219;
	}

	public function _m17837( _p9497:T1223):Serializable
	{
		var _i11228:GetStorablesResponse = new GetStorablesResponse();
		var _o3439:Int = T1224._m17881(_p9497);
		for (_g3440 in 0 ... _o3439) 
		{
			var _m3441:Int = T1224._m17881(_p9497);
			if (_m3441 == 0) 
			{
				var _c3442:String = T1224._m17882(_p9497);
				_i11228.setMessageId(_c3442);
				MemoryManagement.free(_c3442);
				continue;
			}
			if (_m3441 == 1) 
			{
				var _p3443:String = T1224._m17882(_p9497);
				_i11228.setRequestId(_p3443);
				MemoryManagement.free(_p3443);
				continue;
			}
			if (_m3441 == 3) 
			{
				_i11228.setGetStorablesStatus((cast T1224.readObject(this, _p9497)));
				continue;
			}
			if (_m3441 == 4) 
			{
				var _g11234:NList<Storable> = null;
				var _q11235:Int = _p9497._m17886();
				if (_q11235 != T1221._m17179) 
				{
					_p9497._m17887();
					var _n11236:Int = _p9497._m17888();
					_g11234 = new NList<Storable>();
					for (_w3447 in 0 ... _n11236) 
					{
						_g11234.add((cast T1224.readObject(this, _p9497)));
					}
				}
				_i11228.setStorables(_g11234);
				continue;
			}
			T1224._m17883(_p9497);
		}
		return _i11228;
	}

	public function _m17838( buff:T1223):Serializable
	{
		var _q11239:GetStorablesRequest = new GetStorablesRequest();
		var _w9499:Int = T1224._m17881(buff);
		for (_c3450 in 0 ... _w9499) 
		{
			var _c3451:Int = T1224._m17881(buff);
			if (_c3451 == 0) 
			{
				var _v3452:String = T1224._m17882(buff);
				_q11239.setMessageId(_v3452);
				MemoryManagement.free(_v3452);
				continue;
			}
			if (_c3451 == 1) 
			{
				var _r3453:String = T1224._m17882(buff);
				_q11239.setRequestId(_r3453);
				MemoryManagement.free(_r3453);
				continue;
			}
			if (_c3451 == 3) 
			{
				_q11239.setDbQuery((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _q11239;
	}

	public function _m17839( buff:T1223):Serializable
	{
		var _d11246:SaveStorableResponse = new SaveStorableResponse();
		var _w3455:Int = T1224._m17881(buff);
		for (_x3456 in 0 ... _w3455) 
		{
			var _e3457:Int = T1224._m17881(buff);
			if (_e3457 == 0) 
			{
				var _z3458:String = T1224._m17882(buff);
				_d11246.setMessageId(_z3458);
				MemoryManagement.free(_z3458);
				continue;
			}
			if (_e3457 == 1) 
			{
				var _h3459:String = T1224._m17882(buff);
				_d11246.setRequestId(_h3459);
				MemoryManagement.free(_h3459);
				continue;
			}
			if (_e3457 == 3) 
			{
				_d11246.setSaveStorableStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _d11246;
	}

	public function _m17840( _r9503:T1223):Serializable
	{
		var _e11253:SaveStorableRequest = new SaveStorableRequest();
		var _k9505:Int = T1224._m17881(_r9503);
		for (_j3462 in 0 ... _k9505) 
		{
			var _s3463:Int = T1224._m17881(_r9503);
			if (_s3463 == 0) 
			{
				var _g3464:String = T1224._m17882(_r9503);
				_e11253.setMessageId(_g3464);
				MemoryManagement.free(_g3464);
				continue;
			}
			if (_s3463 == 1) 
			{
				var _b3465:String = T1224._m17882(_r9503);
				_e11253.setRequestId(_b3465);
				MemoryManagement.free(_b3465);
				continue;
			}
			if (_s3463 == 3) 
			{
				_e11253.setStorable((cast T1224.readObject(this, _r9503)));
				continue;
			}
			T1224._m17883(_r9503);
		}
		return _e11253;
	}

	public function _m17841( buff:T1223):Serializable
	{
		var _h11260:SaveStorableListRequest = new SaveStorableListRequest();
		var _k3467:Int = T1224._m17881(buff);
		for (_w3468 in 0 ... _k3467) 
		{
			var _p3469:Int = T1224._m17881(buff);
			if (_p3469 == 0) 
			{
				var _h3470:String = T1224._m17882(buff);
				_h11260.setMessageId(_h3470);
				MemoryManagement.free(_h3470);
				continue;
			}
			if (_p3469 == 1) 
			{
				var _t3471:String = T1224._m17882(buff);
				_h11260.setRequestId(_t3471);
				MemoryManagement.free(_t3471);
				continue;
			}
			if (_p3469 == 3) 
			{
				var _h11266:NList<Storable> = null;
				var _y11267:Int = buff._m17886();
				if (_y11267 != T1221._m17179) 
				{
					buff._m17887();
					var _o11268:Int = buff._m17888();
					_h11266 = new NList<Storable>();
					for (_v3475 in 0 ... _o11268) 
					{
						_h11266.add((cast T1224.readObject(this, buff)));
					}
				}
				_h11260.setStorables(_h11266);
				continue;
			}
			T1224._m17883(buff);
		}
		return _h11260;
	}

	public function _m17842( buff:T1223):Serializable
	{
		var _x11271:NextPlayerTurnResponse = new NextPlayerTurnResponse();
		var _i3477:Int = T1224._m17881(buff);
		for (_g3478 in 0 ... _i3477) 
		{
			var _j3479:Int = T1224._m17881(buff);
			if (_j3479 == 0) 
			{
				var _s3480:String = T1224._m17882(buff);
				_x11271.setMessageId(_s3480);
				MemoryManagement.free(_s3480);
				continue;
			}
			if (_j3479 == 1) 
			{
				var _l3481:String = T1224._m17882(buff);
				_x11271.setRequestId(_l3481);
				MemoryManagement.free(_l3481);
				continue;
			}
			if (_j3479 == 3) 
			{
				_x11271.setNextPlayerTurnStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11271;
	}

	public function _m17843( _v9509:T1223):Serializable
	{
		var _x11278:NextPlayerTurnRequest = new NextPlayerTurnRequest();
		var _c3483:Int = T1224._m17881(_v9509);
		for (_v3484 in 0 ... _c3483) 
		{
			var _n3485:Int = T1224._m17881(_v9509);
			if (_n3485 == 0) 
			{
				var _i3486:String = T1224._m17882(_v9509);
				_x11278.setMessageId(_i3486);
				MemoryManagement.free(_i3486);
				continue;
			}
			if (_n3485 == 1) 
			{
				var _n3487:String = T1224._m17882(_v9509);
				_x11278.setRequestId(_n3487);
				MemoryManagement.free(_n3487);
				continue;
			}
			if (_n3485 == 3) 
			{
				var _j3488:String = T1224._m17882(_v9509);
				_x11278.setGameId(_j3488);
				MemoryManagement.free(_j3488);
				continue;
			}
			T1224._m17883(_v9509);
		}
		return _x11278;
	}

	public function _m17844( buff:T1223):Serializable
	{
		var _u11286:SetPlayerNameResponse = new SetPlayerNameResponse();
		var _r9511:Int = T1224._m17881(buff);
		for (_m3491 in 0 ... _r9511) 
		{
			var _f3492:Int = T1224._m17881(buff);
			if (_f3492 == 0) 
			{
				var _c3493:String = T1224._m17882(buff);
				_u11286.setMessageId(_c3493);
				MemoryManagement.free(_c3493);
				continue;
			}
			if (_f3492 == 1) 
			{
				var _d3494:String = T1224._m17882(buff);
				_u11286.setRequestId(_d3494);
				MemoryManagement.free(_d3494);
				continue;
			}
			if (_f3492 == 3) 
			{
				_u11286.setSetPlayerNameStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _u11286;
	}

	public function _m17845( buff:T1223):Serializable
	{
		var _r11293:SetPlayerNameRequest = new SetPlayerNameRequest();
		var _v3496:Int = T1224._m17881(buff);
		for (_o3497 in 0 ... _v3496) 
		{
			var _v3498:Int = T1224._m17881(buff);
			if (_v3498 == 0) 
			{
				var _a3499:String = T1224._m17882(buff);
				_r11293.setMessageId(_a3499);
				MemoryManagement.free(_a3499);
				continue;
			}
			if (_v3498 == 1) 
			{
				var _u3500:String = T1224._m17882(buff);
				_r11293.setRequestId(_u3500);
				MemoryManagement.free(_u3500);
				continue;
			}
			if (_v3498 == 3) 
			{
				var _o3501:String = T1224._m17882(buff);
				_r11293.setName(_o3501);
				MemoryManagement.free(_o3501);
				continue;
			}
			T1224._m17883(buff);
		}
		return _r11293;
	}

	public function _m17846( buff:T1223):Serializable
	{
		var _h11301:UpdateStorableResponse = new UpdateStorableResponse();
		var _v3503:Int = T1224._m17881(buff);
		for (_n3504 in 0 ... _v3503) 
		{
			var _f3505:Int = T1224._m17881(buff);
			if (_f3505 == 0) 
			{
				var _i3506:String = T1224._m17882(buff);
				_h11301.setMessageId(_i3506);
				MemoryManagement.free(_i3506);
				continue;
			}
			if (_f3505 == 1) 
			{
				var _y3507:String = T1224._m17882(buff);
				_h11301.setRequestId(_y3507);
				MemoryManagement.free(_y3507);
				continue;
			}
			if (_f3505 == 3) 
			{
				_h11301.setUpdateStorableStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _h11301;
	}

	public function _m17847( buff:T1223):Serializable
	{
		var _z11308:UpdateStorableRequest = new UpdateStorableRequest();
		var _e3509:Int = T1224._m17881(buff);
		for (_m3510 in 0 ... _e3509) 
		{
			var _g3511:Int = T1224._m17881(buff);
			if (_g3511 == 0) 
			{
				var _e3512:String = T1224._m17882(buff);
				_z11308.setMessageId(_e3512);
				MemoryManagement.free(_e3512);
				continue;
			}
			if (_g3511 == 1) 
			{
				var _s3513:String = T1224._m17882(buff);
				_z11308.setRequestId(_s3513);
				MemoryManagement.free(_s3513);
				continue;
			}
			if (_g3511 == 3) 
			{
				_z11308.setStorable((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _z11308;
	}

	public function _m17848( _r9515:T1223):Serializable
	{
		var _o11315:UpdateStorableListRequest = new UpdateStorableListRequest();
		var _v9517:Int = T1224._m17881(_r9515);
		for (_v3516 in 0 ... _v9517) 
		{
			var _d3517:Int = T1224._m17881(_r9515);
			if (_d3517 == 0) 
			{
				var _w3518:String = T1224._m17882(_r9515);
				_o11315.setMessageId(_w3518);
				MemoryManagement.free(_w3518);
				continue;
			}
			if (_d3517 == 1) 
			{
				var _l3519:String = T1224._m17882(_r9515);
				_o11315.setRequestId(_l3519);
				MemoryManagement.free(_l3519);
				continue;
			}
			if (_d3517 == 3) 
			{
				var _j11321:NList<Storable> = null;
				var _h11322:Int = _r9515._m17886();
				if (_h11322 != T1221._m17179) 
				{
					_r9515._m17887();
					var _o11323:Int = _r9515._m17888();
					_j11321 = new NList<Storable>();
					for (_y3523 in 0 ... _o11323) 
					{
						_j11321.add((cast T1224.readObject(this, _r9515)));
					}
				}
				_o11315.setStorables(_j11321);
				continue;
			}
			T1224._m17883(_r9515);
		}
		return _o11315;
	}

	public function _m17849( buff:T1223):Serializable
	{
		var _j11326:RemoveStorableResponse = new RemoveStorableResponse();
		var _w3525:Int = T1224._m17881(buff);
		for (_w3526 in 0 ... _w3525) 
		{
			var _u3527:Int = T1224._m17881(buff);
			if (_u3527 == 0) 
			{
				var _l3528:String = T1224._m17882(buff);
				_j11326.setMessageId(_l3528);
				MemoryManagement.free(_l3528);
				continue;
			}
			if (_u3527 == 1) 
			{
				var _p3529:String = T1224._m17882(buff);
				_j11326.setRequestId(_p3529);
				MemoryManagement.free(_p3529);
				continue;
			}
			if (_u3527 == 3) 
			{
				_j11326.setRemoveStorableStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _j11326;
	}

	public function _m17850( buff:T1223):Serializable
	{
		var _r11333:RemoveStorableRequest = new RemoveStorableRequest();
		var _s3531:Int = T1224._m17881(buff);
		for (_o3532 in 0 ... _s3531) 
		{
			var _y3533:Int = T1224._m17881(buff);
			if (_y3533 == 0) 
			{
				var _j3534:String = T1224._m17882(buff);
				_r11333.setMessageId(_j3534);
				MemoryManagement.free(_j3534);
				continue;
			}
			if (_y3533 == 1) 
			{
				var _q3535:String = T1224._m17882(buff);
				_r11333.setRequestId(_q3535);
				MemoryManagement.free(_q3535);
				continue;
			}
			if (_y3533 == 3) 
			{
				_r11333.setStorable((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _r11333;
	}

	public function _m17851( _e9521:T1223):Serializable
	{
		var _x11340:RemoveStorableListRequest = new RemoveStorableListRequest();
		var _q9523:Int = T1224._m17881(_e9521);
		for (_p3538 in 0 ... _q9523) 
		{
			var _o3539:Int = T1224._m17881(_e9521);
			if (_o3539 == 0) 
			{
				var _y3540:String = T1224._m17882(_e9521);
				_x11340.setMessageId(_y3540);
				MemoryManagement.free(_y3540);
				continue;
			}
			if (_o3539 == 1) 
			{
				var _r3541:String = T1224._m17882(_e9521);
				_x11340.setRequestId(_r3541);
				MemoryManagement.free(_r3541);
				continue;
			}
			if (_o3539 == 3) 
			{
				var _p11346:NList<Storable> = null;
				var _r11347:Int = _e9521._m17886();
				if (_r11347 != T1221._m17179) 
				{
					_e9521._m17887();
					var _x11348:Int = _e9521._m17888();
					_p11346 = new NList<Storable>();
					for (_h3545 in 0 ... _x11348) 
					{
						_p11346.add((cast T1224.readObject(this, _e9521)));
					}
				}
				_x11340.setStorables(_p11346);
				continue;
			}
			T1224._m17883(_e9521);
		}
		return _x11340;
	}

	public function _m17852( buff:T1223):Serializable
	{
		var _x11351:InviteThirdPartyFriendResponse = new InviteThirdPartyFriendResponse();
		var _t3547:Int = T1224._m17881(buff);
		for (_k3548 in 0 ... _t3547) 
		{
			var _j3549:Int = T1224._m17881(buff);
			if (_j3549 == 0) 
			{
				var _x3550:String = T1224._m17882(buff);
				_x11351.setMessageId(_x3550);
				MemoryManagement.free(_x3550);
				continue;
			}
			if (_j3549 == 1) 
			{
				var _o3551:String = T1224._m17882(buff);
				_x11351.setRequestId(_o3551);
				MemoryManagement.free(_o3551);
				continue;
			}
			if (_j3549 == 3) 
			{
				_x11351.setInviteThirdPartyFriendStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11351;
	}

	public function _m17853( buff:T1223):Serializable
	{
		var _z11358:InviteThirdPartyFriendRequest = new InviteThirdPartyFriendRequest();
		var _t3553:Int = T1224._m17881(buff);
		for (_r9529 in 0 ... _t3553) 
		{
			var _g3555:Int = T1224._m17881(buff);
			if (_g3555 == 0) 
			{
				var _k3556:String = T1224._m17882(buff);
				_z11358.setMessageId(_k3556);
				MemoryManagement.free(_k3556);
				continue;
			}
			if (_g3555 == 1) 
			{
				var _k3557:String = T1224._m17882(buff);
				_z11358.setRequestId(_k3557);
				MemoryManagement.free(_k3557);
				continue;
			}
			if (_g3555 == 3) 
			{
				var _p3558:String = T1224._m17882(buff);
				_z11358.setThirdPartyId(_p3558);
				MemoryManagement.free(_p3558);
				continue;
			}
			if (_g3555 == 4) 
			{
				var _c3559:String = T1224._m17882(buff);
				_z11358.setTitle(_c3559);
				MemoryManagement.free(_c3559);
				continue;
			}
			if (_g3555 == 5) 
			{
				var _g3560:String = T1224._m17882(buff);
				_z11358.setInviteMessage(_g3560);
				MemoryManagement.free(_g3560);
				continue;
			}
			if (_g3555 == 6) 
			{
				var _n3561:String = T1224._m17882(buff);
				_z11358.setPictureUrl(_n3561);
				MemoryManagement.free(_n3561);
				continue;
			}
			if (_g3555 == 7) 
			{
				var _t3562:String = T1224._m17882(buff);
				_z11358.setLink(_t3562);
				MemoryManagement.free(_t3562);
				continue;
			}
			if (_g3555 == 8) 
			{
				_z11358.setThirdPartySource((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _z11358;
	}

	public function _m17854( buff:T1223):Serializable
	{
		var _w11370:PublishThirdPartyMessageResponse = new PublishThirdPartyMessageResponse();
		var _x3564:Int = T1224._m17881(buff);
		for (_x3565 in 0 ... _x3564) 
		{
			var _t3566:Int = T1224._m17881(buff);
			if (_t3566 == 0) 
			{
				var _n3567:String = T1224._m17882(buff);
				_w11370.setMessageId(_n3567);
				MemoryManagement.free(_n3567);
				continue;
			}
			if (_t3566 == 1) 
			{
				var _j3568:String = T1224._m17882(buff);
				_w11370.setRequestId(_j3568);
				MemoryManagement.free(_j3568);
				continue;
			}
			if (_t3566 == 3) 
			{
				_w11370.setPublishThirdPartyMessageStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _w11370;
	}

	public function _m17855( _u9532:T1223):Serializable
	{
		var _d11377:PublishThirdPartyMessageRequest = new PublishThirdPartyMessageRequest();
		var _j9534:Int = T1224._m17881(_u9532);
		for (_r3571 in 0 ... _j9534) 
		{
			var _a3572:Int = T1224._m17881(_u9532);
			if (_a3572 == 0) 
			{
				var _w3573:String = T1224._m17882(_u9532);
				_d11377.setMessageId(_w3573);
				MemoryManagement.free(_w3573);
				continue;
			}
			if (_a3572 == 1) 
			{
				var _o3574:String = T1224._m17882(_u9532);
				_d11377.setRequestId(_o3574);
				MemoryManagement.free(_o3574);
				continue;
			}
			if (_a3572 == 3) 
			{
				var _l3575:String = T1224._m17882(_u9532);
				_d11377.setTitle(_l3575);
				MemoryManagement.free(_l3575);
				continue;
			}
			if (_a3572 == 4) 
			{
				var _v3576:String = T1224._m17882(_u9532);
				_d11377.setMessage(_v3576);
				MemoryManagement.free(_v3576);
				continue;
			}
			if (_a3572 == 5) 
			{
				var _k3577:String = T1224._m17882(_u9532);
				_d11377.setPictureUrl(_k3577);
				MemoryManagement.free(_k3577);
				continue;
			}
			if (_a3572 == 6) 
			{
				var _i3578:String = T1224._m17882(_u9532);
				_d11377.setLink(_i3578);
				MemoryManagement.free(_i3578);
				continue;
			}
			if (_a3572 == 7) 
			{
				_d11377.setThirdPartySource((cast T1224.readObject(this, _u9532)));
				continue;
			}
			T1224._m17883(_u9532);
		}
		return _d11377;
	}

	public function _m17856( buff:T1223):Serializable
	{
		var _f11388:ThirdPartyLoginResponse = new ThirdPartyLoginResponse();
		var _k3580:Int = T1224._m17881(buff);
		for (_l3581 in 0 ... _k3580) 
		{
			var _h3582:Int = T1224._m17881(buff);
			if (_h3582 == 0) 
			{
				var _w3583:String = T1224._m17882(buff);
				_f11388.setMessageId(_w3583);
				MemoryManagement.free(_w3583);
				continue;
			}
			if (_h3582 == 1) 
			{
				var _d3584:String = T1224._m17882(buff);
				_f11388.setRequestId(_d3584);
				MemoryManagement.free(_d3584);
				continue;
			}
			if (_h3582 == 3) 
			{
				_f11388.setThirdPartyLoginStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_h3582 == 4) 
			{
				_f11388.setPlayer((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _f11388;
	}

	public function _m17857( _c9538:T1223):Serializable
	{
		var _n11395:ThirdPartyLoginRequest = new ThirdPartyLoginRequest();
		var _e9540:Int = T1224._m17881(_c9538);
		for (_n3587 in 0 ... _e9540) 
		{
			var _f3588:Int = T1224._m17881(_c9538);
			if (_f3588 == 0) 
			{
				var _c3589:String = T1224._m17882(_c9538);
				_n11395.setMessageId(_c3589);
				MemoryManagement.free(_c3589);
				continue;
			}
			if (_f3588 == 1) 
			{
				var _k3590:String = T1224._m17882(_c9538);
				_n11395.setRequestId(_k3590);
				MemoryManagement.free(_k3590);
				continue;
			}
			if (_f3588 == 3) 
			{
				_n11395.setThirdPartySource((cast T1224.readObject(this, _c9538)));
				continue;
			}
			T1224._m17883(_c9538);
		}
		return _n11395;
	}

	public function _m17858( buff:T1223):Serializable
	{
		var _x11402:ThirdPartyLoginWithTokenRequest = new ThirdPartyLoginWithTokenRequest();
		var _s3592:Int = T1224._m17881(buff);
		for (_s3593 in 0 ... _s3592) 
		{
			var _k3594:Int = T1224._m17881(buff);
			if (_k3594 == 0) 
			{
				var _k3595:String = T1224._m17882(buff);
				_x11402.setMessageId(_k3595);
				MemoryManagement.free(_k3595);
				continue;
			}
			if (_k3594 == 1) 
			{
				var _h3596:String = T1224._m17882(buff);
				_x11402.setRequestId(_h3596);
				MemoryManagement.free(_h3596);
				continue;
			}
			if (_k3594 == 3) 
			{
				_x11402.setThirdPartySource((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_k3594 == 4) 
			{
				var _i3597:String = T1224._m17882(buff);
				_x11402.setAccessToken(_i3597);
				MemoryManagement.free(_i3597);
				continue;
			}
			T1224._m17883(buff);
		}
		return _x11402;
	}

	public function _m17859( _p9544:T1223):Serializable
	{
		var _d11410:SaveGameResponse = new SaveGameResponse();
		var _q3599:Int = T1224._m17881(_p9544);
		for (_v3600 in 0 ... _q3599) 
		{
			var _q3601:Int = T1224._m17881(_p9544);
			if (_q3601 == 0) 
			{
				var _f3602:String = T1224._m17882(_p9544);
				_d11410.setMessageId(_f3602);
				MemoryManagement.free(_f3602);
				continue;
			}
			if (_q3601 == 1) 
			{
				var _u3603:String = T1224._m17882(_p9544);
				_d11410.setRequestId(_u3603);
				MemoryManagement.free(_u3603);
				continue;
			}
			if (_q3601 == 3) 
			{
				_d11410.setSaveGameStatus((cast T1224.readObject(this, _p9544)));
				continue;
			}
			if (_q3601 == 4) 
			{
				var _v3604:String = T1224._m17882(_p9544);
				_d11410.setGameId(_v3604);
				MemoryManagement.free(_v3604);
				continue;
			}
			T1224._m17883(_p9544);
		}
		return _d11410;
	}

	public function _m17860( buff:T1223):Serializable
	{
		var _e11418:SaveGameRequest = new SaveGameRequest();
		var _o9546:Int = T1224._m17881(buff);
		for (_m3607 in 0 ... _o9546) 
		{
			var _u3608:Int = T1224._m17881(buff);
			if (_u3608 == 0) 
			{
				var _d3609:String = T1224._m17882(buff);
				_e11418.setMessageId(_d3609);
				MemoryManagement.free(_d3609);
				continue;
			}
			if (_u3608 == 1) 
			{
				var _n3610:String = T1224._m17882(buff);
				_e11418.setRequestId(_n3610);
				MemoryManagement.free(_n3610);
				continue;
			}
			if (_u3608 == 3) 
			{
				_e11418.setGame((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _e11418;
	}

	public function _m17861( buff:T1223):Serializable
	{
		var _m11425:LoadGameResponse = new LoadGameResponse();
		var _r3612:Int = T1224._m17881(buff);
		for (_e3613 in 0 ... _r3612) 
		{
			var _w3614:Int = T1224._m17881(buff);
			if (_w3614 == 0) 
			{
				var _n3615:String = T1224._m17882(buff);
				_m11425.setMessageId(_n3615);
				MemoryManagement.free(_n3615);
				continue;
			}
			if (_w3614 == 1) 
			{
				var _n3616:String = T1224._m17882(buff);
				_m11425.setRequestId(_n3616);
				MemoryManagement.free(_n3616);
				continue;
			}
			if (_w3614 == 3) 
			{
				_m11425.setLoadGameStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_w3614 == 4) 
			{
				_m11425.setGame((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _m11425;
	}

	public function _m17862( _w9550:T1223):Serializable
	{
		var _z11432:LoadGameRequest = new LoadGameRequest();
		var _y9552:Int = T1224._m17881(_w9550);
		for (_v3619 in 0 ... _y9552) 
		{
			var _j3620:Int = T1224._m17881(_w9550);
			if (_j3620 == 0) 
			{
				var _v3621:String = T1224._m17882(_w9550);
				_z11432.setMessageId(_v3621);
				MemoryManagement.free(_v3621);
				continue;
			}
			if (_j3620 == 1) 
			{
				var _w3622:String = T1224._m17882(_w9550);
				_z11432.setRequestId(_w3622);
				MemoryManagement.free(_w3622);
				continue;
			}
			if (_j3620 == 3) 
			{
				var _x3623:String = T1224._m17882(_w9550);
				_z11432.setGameId(_x3623);
				MemoryManagement.free(_x3623);
				continue;
			}
			T1224._m17883(_w9550);
		}
		return _z11432;
	}

	public function _m17863( buff:T1223):Serializable
	{
		var _j11440:SavePlayerStorableResponse = new SavePlayerStorableResponse();
		var _d3625:Int = T1224._m17881(buff);
		for (_x3626 in 0 ... _d3625) 
		{
			var _m3627:Int = T1224._m17881(buff);
			if (_m3627 == 0) 
			{
				var _b3628:String = T1224._m17882(buff);
				_j11440.setMessageId(_b3628);
				MemoryManagement.free(_b3628);
				continue;
			}
			if (_m3627 == 1) 
			{
				var _u3629:String = T1224._m17882(buff);
				_j11440.setRequestId(_u3629);
				MemoryManagement.free(_u3629);
				continue;
			}
			if (_m3627 == 3) 
			{
				_j11440.setSavePlayerStorableStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _j11440;
	}

	public function _m17864( buff:T1223):Serializable
	{
		var _r11447:SavePlayerStorableRequest = new SavePlayerStorableRequest();
		var _x3631:Int = T1224._m17881(buff);
		for (_l3632 in 0 ... _x3631) 
		{
			var _v3633:Int = T1224._m17881(buff);
			if (_v3633 == 0) 
			{
				var _d3634:String = T1224._m17882(buff);
				_r11447.setMessageId(_d3634);
				MemoryManagement.free(_d3634);
				continue;
			}
			if (_v3633 == 1) 
			{
				var _m3635:String = T1224._m17882(buff);
				_r11447.setRequestId(_m3635);
				MemoryManagement.free(_m3635);
				continue;
			}
			if (_v3633 == 3) 
			{
				_r11447.setStorable((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _r11447;
	}

	public function _m17865( buff:T1223):Serializable
	{
		var _u11454:SavePlayerStorableListRequest = new SavePlayerStorableListRequest();
		var _i3637:Int = T1224._m17881(buff);
		for (_p9558 in 0 ... _i3637) 
		{
			var _g3639:Int = T1224._m17881(buff);
			if (_g3639 == 0) 
			{
				var _w3640:String = T1224._m17882(buff);
				_u11454.setMessageId(_w3640);
				MemoryManagement.free(_w3640);
				continue;
			}
			if (_g3639 == 1) 
			{
				var _j3641:String = T1224._m17882(buff);
				_u11454.setRequestId(_j3641);
				MemoryManagement.free(_j3641);
				continue;
			}
			if (_g3639 == 3) 
			{
				var _s11460:NList<Storable> = null;
				var _c11461:Int = buff._m17886();
				if (_c11461 != T1221._m17179) 
				{
					buff._m17887();
					var _s11462:Int = buff._m17888();
					_s11460 = new NList<Storable>();
					for (_n3645 in 0 ... _s11462) 
					{
						_s11460.add((cast T1224.readObject(this, buff)));
					}
				}
				_u11454.setStorables(_s11460);
				continue;
			}
			T1224._m17883(buff);
		}
		return _u11454;
	}

	public function _m17866( _t9561:T1223):Serializable
	{
		var _h11465:UpdatePlayerStorableResponse = new UpdatePlayerStorableResponse();
		var _f3647:Int = T1224._m17881(_t9561);
		for (_h3648 in 0 ... _f3647) 
		{
			var _k3649:Int = T1224._m17881(_t9561);
			if (_k3649 == 0) 
			{
				var _v3650:String = T1224._m17882(_t9561);
				_h11465.setMessageId(_v3650);
				MemoryManagement.free(_v3650);
				continue;
			}
			if (_k3649 == 1) 
			{
				var _s3651:String = T1224._m17882(_t9561);
				_h11465.setRequestId(_s3651);
				MemoryManagement.free(_s3651);
				continue;
			}
			if (_k3649 == 3) 
			{
				_h11465.setUpdatePlayerStorableStatus((cast T1224.readObject(this, _t9561)));
				continue;
			}
			T1224._m17883(_t9561);
		}
		return _h11465;
	}

	public function _m17867( buff:T1223):Serializable
	{
		var _k11472:UpdatePlayerStorableRequest = new UpdatePlayerStorableRequest();
		var _y9563:Int = T1224._m17881(buff);
		for (_w3654 in 0 ... _y9563) 
		{
			var _q3655:Int = T1224._m17881(buff);
			if (_q3655 == 0) 
			{
				var _c3656:String = T1224._m17882(buff);
				_k11472.setMessageId(_c3656);
				MemoryManagement.free(_c3656);
				continue;
			}
			if (_q3655 == 1) 
			{
				var _g3657:String = T1224._m17882(buff);
				_k11472.setRequestId(_g3657);
				MemoryManagement.free(_g3657);
				continue;
			}
			if (_q3655 == 3) 
			{
				_k11472.setStorable((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _k11472;
	}

	public function _m17868( buff:T1223):Serializable
	{
		var _u11479:UpdatePlayerStorableListRequest = new UpdatePlayerStorableListRequest();
		var _g3659:Int = T1224._m17881(buff);
		for (_h3660 in 0 ... _g3659) 
		{
			var _t3661:Int = T1224._m17881(buff);
			if (_t3661 == 0) 
			{
				var _p3662:String = T1224._m17882(buff);
				_u11479.setMessageId(_p3662);
				MemoryManagement.free(_p3662);
				continue;
			}
			if (_t3661 == 1) 
			{
				var _y3663:String = T1224._m17882(buff);
				_u11479.setRequestId(_y3663);
				MemoryManagement.free(_y3663);
				continue;
			}
			if (_t3661 == 3) 
			{
				var _q11485:NList<Storable> = null;
				var _n11486:Int = buff._m17886();
				if (_n11486 != T1221._m17179) 
				{
					buff._m17887();
					var _l11487:Int = buff._m17888();
					_q11485 = new NList<Storable>();
					for (_b3667 in 0 ... _l11487) 
					{
						_q11485.add((cast T1224.readObject(this, buff)));
					}
				}
				_u11479.setStorables(_q11485);
				continue;
			}
			T1224._m17883(buff);
		}
		return _u11479;
	}

	public function _m17869( _a9567:T1223):Serializable
	{
		var _k11490:RemovePlayerStorableResponse = new RemovePlayerStorableResponse();
		var _z9569:Int = T1224._m17881(_a9567);
		for (_h3670 in 0 ... _z9569) 
		{
			var _a3671:Int = T1224._m17881(_a9567);
			if (_a3671 == 0) 
			{
				var _m3672:String = T1224._m17882(_a9567);
				_k11490.setMessageId(_m3672);
				MemoryManagement.free(_m3672);
				continue;
			}
			if (_a3671 == 1) 
			{
				var _n3673:String = T1224._m17882(_a9567);
				_k11490.setRequestId(_n3673);
				MemoryManagement.free(_n3673);
				continue;
			}
			if (_a3671 == 3) 
			{
				_k11490.setRemovePlayerStorableStatus((cast T1224.readObject(this, _a9567)));
				continue;
			}
			T1224._m17883(_a9567);
		}
		return _k11490;
	}

	public function _m17870( buff:T1223):Serializable
	{
		var _i11497:RemovePlayerStorableRequest = new RemovePlayerStorableRequest();
		var _i3675:Int = T1224._m17881(buff);
		for (_v3676 in 0 ... _i3675) 
		{
			var _e3677:Int = T1224._m17881(buff);
			if (_e3677 == 0) 
			{
				var _l3678:String = T1224._m17882(buff);
				_i11497.setMessageId(_l3678);
				MemoryManagement.free(_l3678);
				continue;
			}
			if (_e3677 == 1) 
			{
				var _s3679:String = T1224._m17882(buff);
				_i11497.setRequestId(_s3679);
				MemoryManagement.free(_s3679);
				continue;
			}
			if (_e3677 == 3) 
			{
				_i11497.setStorable((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _i11497;
	}

	public function _m17871( _e9573:T1223):Serializable
	{
		var _w11504:RemovePlayerStorableListRequest = new RemovePlayerStorableListRequest();
		var _q9575:Int = T1224._m17881(_e9573);
		for (_d3682 in 0 ... _q9575) 
		{
			var _u3683:Int = T1224._m17881(_e9573);
			if (_u3683 == 0) 
			{
				var _n3684:String = T1224._m17882(_e9573);
				_w11504.setMessageId(_n3684);
				MemoryManagement.free(_n3684);
				continue;
			}
			if (_u3683 == 1) 
			{
				var _p3685:String = T1224._m17882(_e9573);
				_w11504.setRequestId(_p3685);
				MemoryManagement.free(_p3685);
				continue;
			}
			if (_u3683 == 3) 
			{
				var _j11510:NList<Storable> = null;
				var _d11511:Int = _e9573._m17886();
				if (_d11511 != T1221._m17179) 
				{
					_e9573._m17887();
					var _j11512:Int = _e9573._m17888();
					_j11510 = new NList<Storable>();
					for (_h3689 in 0 ... _j11512) 
					{
						_j11510.add((cast T1224.readObject(this, _e9573)));
					}
				}
				_w11504.setStorables(_j11510);
				continue;
			}
			T1224._m17883(_e9573);
		}
		return _w11504;
	}

	public function _m17872( buff:T1223):Serializable
	{
		var _i11515:GetPlayerStorablesResponse = new GetPlayerStorablesResponse();
		var _t3691:Int = T1224._m17881(buff);
		for (_j3692 in 0 ... _t3691) 
		{
			var _r3693:Int = T1224._m17881(buff);
			if (_r3693 == 0) 
			{
				var _k3694:String = T1224._m17882(buff);
				_i11515.setMessageId(_k3694);
				MemoryManagement.free(_k3694);
				continue;
			}
			if (_r3693 == 1) 
			{
				var _k3695:String = T1224._m17882(buff);
				_i11515.setRequestId(_k3695);
				MemoryManagement.free(_k3695);
				continue;
			}
			if (_r3693 == 3) 
			{
				_i11515.setGetPlayerStorablesStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			if (_r3693 == 4) 
			{
				var _a11521:NList<Storable> = null;
				var _r11522:Int = buff._m17886();
				if (_r11522 != T1221._m17179) 
				{
					buff._m17887();
					var _y11523:Int = buff._m17888();
					_a11521 = new NList<Storable>();
					for (_h11524 in 0 ... _y11523) 
					{
						_a11521.add((cast T1224.readObject(this, buff)));
					}
				}
				_i11515.setStorables(_a11521);
				continue;
			}
			T1224._m17883(buff);
		}
		return _i11515;
	}

	public function _m17873( _j9579:T1223):Serializable
	{
		var _y11526:GetPlayerStorablesRequest = new GetPlayerStorablesRequest();
		var _a3701:Int = T1224._m17881(_j9579);
		for (_y3702 in 0 ... _a3701) 
		{
			var _s3703:Int = T1224._m17881(_j9579);
			if (_s3703 == 0) 
			{
				var _l3704:String = T1224._m17882(_j9579);
				_y11526.setMessageId(_l3704);
				MemoryManagement.free(_l3704);
				continue;
			}
			if (_s3703 == 1) 
			{
				var _e3705:String = T1224._m17882(_j9579);
				_y11526.setRequestId(_e3705);
				MemoryManagement.free(_e3705);
				continue;
			}
			if (_s3703 == 3) 
			{
				_y11526.setDbQuery((cast T1224.readObject(this, _j9579)));
				continue;
			}
			T1224._m17883(_j9579);
		}
		return _y11526;
	}

	public function _m17874( buff:T1223):Serializable
	{
		var _y11533:PauseSessionMonitoringResponse = new PauseSessionMonitoringResponse();
		var _m9581:Int = T1224._m17881(buff);
		for (_u3708 in 0 ... _m9581) 
		{
			var _m3709:Int = T1224._m17881(buff);
			if (_m3709 == 0) 
			{
				var _m3710:String = T1224._m17882(buff);
				_y11533.setMessageId(_m3710);
				MemoryManagement.free(_m3710);
				continue;
			}
			if (_m3709 == 1) 
			{
				var _d3711:String = T1224._m17882(buff);
				_y11533.setRequestId(_d3711);
				MemoryManagement.free(_d3711);
				continue;
			}
			if (_m3709 == 3) 
			{
				_y11533.setPauseSessionMonitoringStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _y11533;
	}

	public function _m17875( buff:T1223):Serializable
	{
		var _q11540:PauseSessionMonitoringRequest = new PauseSessionMonitoringRequest();
		var _i3713:Int = T1224._m17881(buff);
		for (_l3714 in 0 ... _i3713) 
		{
			var _h3715:Int = T1224._m17881(buff);
			if (_h3715 == 0) 
			{
				var _h3716:String = T1224._m17882(buff);
				_q11540.setMessageId(_h3716);
				MemoryManagement.free(_h3716);
				continue;
			}
			if (_h3715 == 1) 
			{
				var _c3717:String = T1224._m17882(buff);
				_q11540.setRequestId(_c3717);
				MemoryManagement.free(_c3717);
				continue;
			}
			T1224._m17883(buff);
		}
		return _q11540;
	}

	public function _m17876( _f9585:T1223):Serializable
	{
		var _x11547:ResumeSessionMonitoringResponse = new ResumeSessionMonitoringResponse();
		var _b3719:Int = T1224._m17881(_f9585);
		for (_u3720 in 0 ... _b3719) 
		{
			var _p3721:Int = T1224._m17881(_f9585);
			if (_p3721 == 0) 
			{
				var _e3722:String = T1224._m17882(_f9585);
				_x11547.setMessageId(_e3722);
				MemoryManagement.free(_e3722);
				continue;
			}
			if (_p3721 == 1) 
			{
				var _h3723:String = T1224._m17882(_f9585);
				_x11547.setRequestId(_h3723);
				MemoryManagement.free(_h3723);
				continue;
			}
			if (_p3721 == 3) 
			{
				_x11547.setResumeSessionMonitoringStatus((cast T1224.readObject(this, _f9585)));
				continue;
			}
			T1224._m17883(_f9585);
		}
		return _x11547;
	}

	public function _m17877( buff:T1223):Serializable
	{
		var _f11554:ResumeSessionMonitoringRequest = new ResumeSessionMonitoringRequest();
		var _x9587:Int = T1224._m17881(buff);
		for (_f3726 in 0 ... _x9587) 
		{
			var _i3727:Int = T1224._m17881(buff);
			if (_i3727 == 0) 
			{
				var _q3728:String = T1224._m17882(buff);
				_f11554.setMessageId(_q3728);
				MemoryManagement.free(_q3728);
				continue;
			}
			if (_i3727 == 1) 
			{
				var _s3729:String = T1224._m17882(buff);
				_f11554.setRequestId(_s3729);
				MemoryManagement.free(_s3729);
				continue;
			}
			T1224._m17883(buff);
		}
		return _f11554;
	}

	public function _m17878( buff:T1223):Serializable
	{
		var _g11561:PublishFriendThirdPartyMessageResponse = new PublishFriendThirdPartyMessageResponse();
		var _w3731:Int = T1224._m17881(buff);
		for (_r3732 in 0 ... _w3731) 
		{
			var _y3733:Int = T1224._m17881(buff);
			if (_y3733 == 0) 
			{
				var _i3734:String = T1224._m17882(buff);
				_g11561.setMessageId(_i3734);
				MemoryManagement.free(_i3734);
				continue;
			}
			if (_y3733 == 1) 
			{
				var _b3735:String = T1224._m17882(buff);
				_g11561.setRequestId(_b3735);
				MemoryManagement.free(_b3735);
				continue;
			}
			if (_y3733 == 3) 
			{
				_g11561.setPublishFriendThirdPartyMessageStatus((cast T1224.readObject(this, buff)));
				continue;
			}
			T1224._m17883(buff);
		}
		return _g11561;
	}

	public function _m17879( _l11567:T1223):Serializable
	{
		var _n11568:PublishFriendThirdPartyMessageRequest = new PublishFriendThirdPartyMessageRequest();
		var _l11569:Int = T1224._m17881(_l11567);
		for (_m11570 in 0 ... _l11569) 
		{
			var _p11571:Int = T1224._m17881(_l11567);
			if (_p11571 == 0) 
			{
				var _p11572:String = T1224._m17882(_l11567);
				_n11568.setMessageId(_p11572);
				MemoryManagement.free(_p11572);
				continue;
			}
			if (_p11571 == 1) 
			{
				var _p11573:String = T1224._m17882(_l11567);
				_n11568.setRequestId(_p11573);
				MemoryManagement.free(_p11573);
				continue;
			}
			if (_p11571 == 3) 
			{
				var _t11574:String = T1224._m17882(_l11567);
				_n11568.setTitle(_t11574);
				MemoryManagement.free(_t11574);
				continue;
			}
			if (_p11571 == 4) 
			{
				var _o11575:String = T1224._m17882(_l11567);
				_n11568.setMessage(_o11575);
				MemoryManagement.free(_o11575);
				continue;
			}
			if (_p11571 == 5) 
			{
				var _i11576:String = T1224._m17882(_l11567);
				_n11568.setPictureUrl(_i11576);
				MemoryManagement.free(_i11576);
				continue;
			}
			if (_p11571 == 6) 
			{
				var _l11577:String = T1224._m17882(_l11567);
				_n11568.setLink(_l11577);
				MemoryManagement.free(_l11577);
				continue;
			}
			if (_p11571 == 7) 
			{
				var _t11578:String = T1224._m17882(_l11567);
				_n11568.setThirdPartyId(_t11578);
				MemoryManagement.free(_t11578);
				continue;
			}
			if (_p11571 == 8) 
			{
				_n11568.setThirdPartySource((cast T1224.readObject(this, _l11567)));
				continue;
			}
			T1224._m17883(_l11567);
		}
		return _n11568;
	}
}
