package com.nuggeta;
import com.nuggeta.network.Message;
import com.nuggeta.network.GameMessage;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.HandshakeResponseHandler;
import com.nuggeta.ngdl.GameStateChangeHandler;
import com.nuggeta.ngdl.PlayerEnterGameHandler;
import com.nuggeta.ngdl.FriendshipNotificationHandler;
import com.nuggeta.ngdl.PlayerUnjoinGameHandler;
import com.nuggeta.ngdl.ConnectionLostHandler;
import com.nuggeta.ngdl.ConnectionInterruptedHandler;
import com.nuggeta.ngdl.ConnectionResumedHandler;
import com.nuggeta.ngdl.ConnectionStopHandler;
import com.nuggeta.ngdl.FriendConnectedNotificationHandler;
import com.nuggeta.ngdl.FriendDisconnectedNotificationHandler;
import com.nuggeta.ngdl.NuggetaExceptionHandler;
import com.nuggeta.ngdl.OpenConnectionHandler;
import com.nuggeta.ngdl.ChallengeAcceptedHandler;
import com.nuggeta.ngdl.ChallengeRefusedHandler;
import com.nuggeta.ngdl.RawMessageHandler;
import com.nuggeta.ngdl.SessionExpiredHandler;
import com.nuggeta.ngdl.GameMessageErrorHandler;
import com.nuggeta.ngdl.PlayerInvitationNotificationHandler;
import com.nuggeta.ngdl.FriendChallengeNotificationHandler;
import com.nuggeta.ngdl.MyTurnNotificationHandler;
import com.nuggeta.ngdl.PlayerTurnNotificationHandler;
import com.nuggeta.ngdl.StartResponseHandler;
import com.nuggeta.ngdl.InvitePlayerResponseHandler;
import com.nuggeta.ngdl.SignUpResponseHandler;
import com.nuggeta.ngdl.ForgotPasswordResponseHandler;
import com.nuggeta.ngdl.LoginResponseHandler;
import com.nuggeta.ngdl.SavePlayerProfileResponseHandler;
import com.nuggeta.ngdl.GetPlayerProfileResponseHandler;
import com.nuggeta.ngdl.LogoutResponseHandler;
import com.nuggeta.ngdl.ChallengeFriendResponseHandler;
import com.nuggeta.ngdl.ChallengeThirdPartyFriendResponseHandler;
import com.nuggeta.ngdl.GetFriendsResponseHandler;
import com.nuggeta.ngdl.GetThirdPartyFriendsResponseHandler;
import com.nuggeta.ngdl.GetPlayerInvitationsResponseHandler;
import com.nuggeta.ngdl.AcceptPlayerInvitationResponseHandler;
import com.nuggeta.ngdl.IgnorePlayerInvitationResponseHandler;
import com.nuggeta.ngdl.SubmitScoreResponseHandler;
import com.nuggeta.ngdl.GetLeaderboardResponseHandler;
import com.nuggeta.ngdl.BuyItemResponseHandler;
import com.nuggeta.ngdl.GetStoreResponseHandler;
import com.nuggeta.ngdl.ConsumeItemResponseHandler;
import com.nuggeta.ngdl.IncreasePlayerWalletResponseHandler;
import com.nuggeta.ngdl.GetPlayerWalletResponseHandler;
import com.nuggeta.ngdl.GetAchievementBoardResponseHandler;
import com.nuggeta.ngdl.AchieveResponseHandler;
import com.nuggeta.ngdl.SearchImmediateGameResponseHandler;
import com.nuggeta.ngdl.JoinGameResponseHandler;
import com.nuggeta.ngdl.UnjoinGameResponseHandler;
import com.nuggeta.ngdl.AcceptFriendChallengeResponseHandler;
import com.nuggeta.ngdl.CancelFriendChallengeResponseHandler;
import com.nuggeta.ngdl.RefuseFriendChallengeResponseHandler;
import com.nuggeta.ngdl.GetChallengesResponseHandler;
import com.nuggeta.ngdl.StartGameResponseHandler;
import com.nuggeta.ngdl.StopGameResponseHandler;
import com.nuggeta.ngdl.CreateGameResponseHandler;
import com.nuggeta.ngdl.GetGamesResponseHandler;
import com.nuggeta.ngdl.SaveAsGhostResponseHandler;
import com.nuggeta.ngdl.GetGhostsResponseHandler;
import com.nuggeta.ngdl.LoadGhostResponseHandler;
import com.nuggeta.ngdl.SendGameChatResponseHandler;
import com.nuggeta.ngdl.GetStorablesResponseHandler;
import com.nuggeta.ngdl.SaveStorableResponseHandler;
import com.nuggeta.ngdl.NextPlayerTurnResponseHandler;
import com.nuggeta.ngdl.SetPlayerNameResponseHandler;
import com.nuggeta.ngdl.UpdateStorableResponseHandler;
import com.nuggeta.ngdl.RemoveStorableResponseHandler;
import com.nuggeta.ngdl.InviteThirdPartyFriendResponseHandler;
import com.nuggeta.ngdl.PublishThirdPartyMessageResponseHandler;
import com.nuggeta.ngdl.ThirdPartyLoginResponseHandler;
import com.nuggeta.ngdl.SaveGameResponseHandler;
import com.nuggeta.ngdl.LoadGameResponseHandler;
import com.nuggeta.ngdl.SavePlayerStorableResponseHandler;
import com.nuggeta.ngdl.UpdatePlayerStorableResponseHandler;
import com.nuggeta.ngdl.RemovePlayerStorableResponseHandler;
import com.nuggeta.ngdl.GetPlayerStorablesResponseHandler;
import com.nuggeta.ngdl.PauseSessionMonitoringResponseHandler;
import com.nuggeta.ngdl.ResumeSessionMonitoringResponseHandler;
import com.nuggeta.ngdl.PublishFriendThirdPartyMessageResponseHandler;
import com.nuggeta.ngdl.nobjects.InvitePlayerResponse;
import com.nuggeta.ngdl.nobjects.NPlayerProfile;
import com.nuggeta.ngdl.nobjects.SignUpResponse;
import com.nuggeta.ngdl.nobjects.ForgotPasswordResponse;
import com.nuggeta.ngdl.nobjects.LoginResponse;
import com.nuggeta.ngdl.nobjects.SavePlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerProfileResponse;
import com.nuggeta.ngdl.nobjects.LogoutResponse;
import com.nuggeta.ngdl.nobjects.ChallengeFriendResponse;
import com.nuggeta.ngdl.nobjects.ThirdPartySource;
import com.nuggeta.ngdl.nobjects.ChallengeThirdPartyFriendResponse;
import com.nuggeta.ngdl.nobjects.GetFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetThirdPartyFriendsResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerInvitationsResponse;
import com.nuggeta.ngdl.nobjects.AcceptPlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.IgnorePlayerInvitationResponse;
import com.nuggeta.ngdl.nobjects.NScore;
import com.nuggeta.ngdl.nobjects.SubmitScoreResponse;
import com.nuggeta.ngdl.nobjects.LeaderboardPeriod;
import com.nuggeta.ngdl.nobjects.GetLeaderboardResponse;
import com.nuggeta.ngdl.nobjects.BuyItemResponse;
import com.nuggeta.ngdl.nobjects.GetStoreResponse;
import com.nuggeta.ngdl.nobjects.ConsumeItemResponse;
import com.nuggeta.ngdl.nobjects.IncreasePlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetPlayerWalletResponse;
import com.nuggeta.ngdl.nobjects.GetAchievementBoardResponse;
import com.nuggeta.ngdl.nobjects.AchieveResponse;
import com.nuggeta.ngdl.nobjects.SearchImmediateGameResponse;
import com.nuggeta.ngdl.nobjects.NuggetaQuery;
import com.nuggeta.ngdl.nobjects.NMatchMakingConditions;
import com.nuggeta.ngdl.nobjects.JoinGameResponse;
import com.nuggeta.ngdl.nobjects.UnjoinGameResponse;
import com.nuggeta.ngdl.nobjects.AcceptFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.CancelFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.RefuseFriendChallengeResponse;
import com.nuggeta.ngdl.nobjects.GetChallengesResponse;
import com.nuggeta.ngdl.nobjects.StartGameResponse;
import com.nuggeta.ngdl.nobjects.StopGameResponse;
import com.nuggeta.ngdl.nobjects.CreateGameResponse;
import com.nuggeta.ngdl.nobjects.NGameCharacteristics;
import com.nuggeta.ngdl.nobjects.GetGamesResponse;
import com.nuggeta.ngdl.nobjects.NGame;
import com.nuggeta.ngdl.nobjects.SaveAsGhostResponse;
import com.nuggeta.ngdl.nobjects.GetGhostsResponse;
import com.nuggeta.ngdl.nobjects.LoadGhostResponse;
import com.nuggeta.ngdl.nobjects.SendGameChatResponse;
import com.nuggeta.ngdl.nobjects.GetStorablesResponse;
import com.nuggeta.database.Storable;
import com.nuggeta.ngdl.nobjects.SaveStorableResponse;
import com.nuggeta.util.NList;
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

interface Api
{

	function invitePlayerById( id:String):String;

	function invitePlayerByIdRequest( id:String,  invitePlayerResponseHandler:InvitePlayerResponse ->Void):String;

	function invitePlayerByLogin( login:String):String;

	function invitePlayerByLoginRequest( login:String,  invitePlayerResponseHandler:InvitePlayerResponse ->Void):String;

	function signUp( login:String,  password:String,  playerProfile:NPlayerProfile):String;

	function signUpRequest( login:String,  password:String,  playerProfile:NPlayerProfile,  signUpResponseHandler:SignUpResponse ->Void):String;

	function forgotPasswordByLogin( login:String):String;

	function forgotPasswordByLoginRequest( login:String,  forgotPasswordResponseHandler:ForgotPasswordResponse ->Void):String;

	function forgotPasswordByEmail( email:String):String;

	function forgotPasswordByEmailRequest( email:String,  forgotPasswordResponseHandler:ForgotPasswordResponse ->Void):String;

	function login( login:String,  password:String):String;

	function loginRequest( login:String,  password:String,  loginResponseHandler:LoginResponse ->Void):String;

	function savePlayerProfile( profile:NPlayerProfile):String;

	function savePlayerProfileRequest( profile:NPlayerProfile,  savePlayerProfileResponseHandler:SavePlayerProfileResponse ->Void):String;

	function getPlayerProfile():String;

	function getPlayerProfileRequest( getPlayerProfileResponseHandler:GetPlayerProfileResponse ->Void):String;

	function getPlayerProfileByPlayerId( playerId:String):String;

	function getPlayerProfileByPlayerIdRequest( playerId:String,  getPlayerProfileResponseHandler:GetPlayerProfileResponse ->Void):String;

	function logout():String;

	function logoutRequest( logoutResponseHandler:LogoutResponse ->Void):String;

	function challengeFriend( playerId:String):String;

	function challengeFriendRequest( playerId:String,  challengeFriendResponseHandler:ChallengeFriendResponse ->Void):String;

	function challengeThirdPartyFriend( thirdPartyId:String,  title:String,  challengeMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String;

	function challengeThirdPartyFriendRequest( thirdPartyId:String,  title:String,  challengeMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  challengeThirdPartyFriendResponseHandler:ChallengeThirdPartyFriendResponse ->Void):String;

	function getFriends():String;

	function getFriendsRequest( getFriendsResponseHandler:GetFriendsResponse ->Void):String;

	function getFriendsByPlayerId( playerId:String):String;

	function getFriendsByPlayerIdRequest( playerId:String,  getFriendsResponseHandler:GetFriendsResponse ->Void):String;

	function getThirdPartyFriends( thirdPartySource:ThirdPartySource):String;

	function getThirdPartyFriendsRequest( thirdPartySource:ThirdPartySource,  getThirdPartyFriendsResponseHandler:GetThirdPartyFriendsResponse ->Void):String;

	function getPlayerInvitations():String;

	function getPlayerInvitationsRequest( getPlayerInvitationsResponseHandler:GetPlayerInvitationsResponse ->Void):String;

	function acceptPlayerInvitation( invitationId:String):String;

	function acceptPlayerInvitationRequest( invitationId:String,  acceptPlayerInvitationResponseHandler:AcceptPlayerInvitationResponse ->Void):String;

	function ignorePlayerInvitation( invitationId:String):String;

	function ignorePlayerInvitationRequest( invitationId:String,  ignorePlayerInvitationResponseHandler:IgnorePlayerInvitationResponse ->Void):String;

	function submitScore( score:NScore,  leaderboardId:String):String;

	function submitScoreRequest( score:NScore,  leaderboardId:String,  submitScoreResponseHandler:SubmitScoreResponse ->Void):String;

	function submitScoreWithPlayerName( name:String,  score:NScore,  leaderboardId:String):String;

	function submitScoreWithPlayerNameRequest( name:String,  score:NScore,  leaderboardId:String,  submitScoreResponseHandler:SubmitScoreResponse ->Void):String;

	function getLeaderboard( leaderboardId:String,  period:LeaderboardPeriod,  start:Int,  limit:Int):String;

	function getLeaderboardRequest( leaderboardId:String,  period:LeaderboardPeriod,  start:Int,  limit:Int,  getLeaderboardResponseHandler:GetLeaderboardResponse ->Void):String;

	function buyItem( itemId:String,  quantity:Int):String;

	function buyItemRequest( itemId:String,  quantity:Int,  buyItemResponseHandler:BuyItemResponse ->Void):String;

	function getStore():String;

	function getStoreRequest( getStoreResponseHandler:GetStoreResponse ->Void):String;

	function consumeItem( itemId:String,  quantity:Int):String;

	function consumeItemRequest( itemId:String,  quantity:Int,  consumeItemResponseHandler:ConsumeItemResponse ->Void):String;

	function increasePlayerWallet( value:Int):String;

	function increasePlayerWalletRequest( value:Int,  increasePlayerWalletResponseHandler:IncreasePlayerWalletResponse ->Void):String;

	function getPlayerWallet():String;

	function getPlayerWalletRequest( getPlayerWalletResponseHandler:GetPlayerWalletResponse ->Void):String;

	function getAchievementBoard():String;

	function getAchievementBoardRequest( getAchievementBoardResponseHandler:GetAchievementBoardResponse ->Void):String;

	function achieve( achivementId:String):String;

	function achieveRequest( achivementId:String,  achieveResponseHandler:AchieveResponse ->Void):String;

	function searchImmediateGame():String;

	function searchImmediateGameRequest( searchImmediateGameResponseHandler:SearchImmediateGameResponse ->Void):String;

	function searchImmediateGameByConditions( query:NuggetaQuery,  matchMakingConditions:NMatchMakingConditions):String;

	function searchImmediateGameByConditionsRequest( query:NuggetaQuery,  matchMakingConditions:NMatchMakingConditions,  searchImmediateGameResponseHandler:SearchImmediateGameResponse ->Void):String;

	function joinGame( gameId:String):String;

	function joinGameRequest( gameId:String,  joinGameResponseHandler:JoinGameResponse ->Void):String;

	function unjoinGame( gameId:String):String;

	function unjoinGameRequest( gameId:String,  unjoinGameResponseHandler:UnjoinGameResponse ->Void):String;

	function acceptFriendChallenge( challengeId:String):String;

	function acceptFriendChallengeRequest( challengeId:String,  acceptFriendChallengeResponseHandler:AcceptFriendChallengeResponse ->Void):String;

	function cancelFriendChallenge( challengeId:String):String;

	function cancelFriendChallengeRequest( challengeId:String,  cancelFriendChallengeResponseHandler:CancelFriendChallengeResponse ->Void):String;

	function refuseFriendChallenge( challengeId:String):String;

	function refuseFriendChallengeRequest( challengeId:String,  refuseFriendChallengeResponseHandler:RefuseFriendChallengeResponse ->Void):String;

	function getChallenges( dbQuery:NuggetaQuery):String;

	function getChallengesRequest( dbQuery:NuggetaQuery,  getChallengesResponseHandler:GetChallengesResponse ->Void):String;

	function startGame( gameId:String):String;

	function startGameRequest( gameId:String,  startGameResponseHandler:StartGameResponse ->Void):String;

	function stopGame( gameId:String):String;

	function stopGameRequest( gameId:String,  stopGameResponseHandler:StopGameResponse ->Void):String;

	function createGame():String;

	function createGameRequest( createGameResponseHandler:CreateGameResponse ->Void):String;

	function createGameWithCharacteristics( gameCharacteristics:NGameCharacteristics):String;

	function createGameWithCharacteristicsRequest( gameCharacteristics:NGameCharacteristics,  createGameResponseHandler:CreateGameResponse ->Void):String;

	function getGames( dbQuery:NuggetaQuery):String;

	function getGamesRequest( dbQuery:NuggetaQuery,  getGamesResponseHandler:GetGamesResponse ->Void):String;

	function saveAsGhost( game:NGame):String;

	function saveAsGhostRequest( game:NGame,  saveAsGhostResponseHandler:SaveAsGhostResponse ->Void):String;

	function getGhosts( dbQuery:NuggetaQuery):String;

	function getGhostsRequest( dbQuery:NuggetaQuery,  getGhostsResponseHandler:GetGhostsResponse ->Void):String;

	function loadGhost( gameId:String):String;

	function loadGhostRequest( gameId:String,  loadGhostResponseHandler:LoadGhostResponse ->Void):String;

	function sendGameChat( gameId:String,  message:String):String;

	function sendGameChatRequest( gameId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String;

	function sendGameChatToPlayer( gameId:String,  playerId:String,  message:String):String;

	function sendGameChatToPlayerRequest( gameId:String,  playerId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String;

	function sendGameChatToPlayerList( gameId:String,  message:String):String;

	function sendGameChatToPlayerListRequest( gameId:String,  message:String,  sendGameChatResponseHandler:SendGameChatResponse ->Void):String;

	function getStorables( dbQuery:NuggetaQuery):String;

	function getStorablesRequest( dbQuery:NuggetaQuery,  getStorablesResponseHandler:GetStorablesResponse ->Void):String;

	function saveStorable( storable:Storable):String;

	function saveStorableRequest( storable:Storable,  saveStorableResponseHandler:SaveStorableResponse ->Void):String;

	function saveStorableList( storables:NList<Storable>):String;

	function saveStorableListRequest( storables:NList<Storable>,  saveStorableResponseHandler:SaveStorableResponse ->Void):String;

	function nextPlayerTurn( gameId:String):String;

	function nextPlayerTurnRequest( gameId:String,  nextPlayerTurnResponseHandler:NextPlayerTurnResponse ->Void):String;

	function setPlayerName( name:String):String;

	function setPlayerNameRequest( name:String,  setPlayerNameResponseHandler:SetPlayerNameResponse ->Void):String;

	function updateStorable( storable:Storable):String;

	function updateStorableRequest( storable:Storable,  updateStorableResponseHandler:UpdateStorableResponse ->Void):String;

	function updateStorableList( storables:NList<Storable>):String;

	function updateStorableListRequest( storables:NList<Storable>,  updateStorableResponseHandler:UpdateStorableResponse ->Void):String;

	function removeStorable( storable:Storable):String;

	function removeStorableRequest( storable:Storable,  removeStorableResponseHandler:RemoveStorableResponse ->Void):String;

	function removeStorableList( storables:NList<Storable>):String;

	function removeStorableListRequest( storables:NList<Storable>,  removeStorableResponseHandler:RemoveStorableResponse ->Void):String;

	function inviteThirdPartyFriend( thirdPartyId:String,  title:String,  inviteMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String;

	function inviteThirdPartyFriendRequest( thirdPartyId:String,  title:String,  inviteMessage:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  inviteThirdPartyFriendResponseHandler:InviteThirdPartyFriendResponse ->Void):String;

	function publishThirdPartyMessage( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource):String;

	function publishThirdPartyMessageRequest( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartySource:ThirdPartySource,  publishThirdPartyMessageResponseHandler:PublishThirdPartyMessageResponse ->Void):String;

	function thirdPartyLogin( thirdPartySource:ThirdPartySource):String;

	function thirdPartyLoginRequest( thirdPartySource:ThirdPartySource,  thirdPartyLoginResponseHandler:ThirdPartyLoginResponse ->Void):String;

	function thirdPartyLoginWithToken( thirdPartySource:ThirdPartySource,  accessToken:String):String;

	function thirdPartyLoginWithTokenRequest( thirdPartySource:ThirdPartySource,  accessToken:String,  thirdPartyLoginResponseHandler:ThirdPartyLoginResponse ->Void):String;

	function saveGame( game:NGame):String;

	function saveGameRequest( game:NGame,  saveGameResponseHandler:SaveGameResponse ->Void):String;

	function loadGame( gameId:String):String;

	function loadGameRequest( gameId:String,  loadGameResponseHandler:LoadGameResponse ->Void):String;

	function savePlayerStorable( storable:Storable):String;

	function savePlayerStorableRequest( storable:Storable,  savePlayerStorableResponseHandler:SavePlayerStorableResponse ->Void):String;

	function savePlayerStorableList( storables:NList<Storable>):String;

	function savePlayerStorableListRequest( storables:NList<Storable>,  savePlayerStorableResponseHandler:SavePlayerStorableResponse ->Void):String;

	function updatePlayerStorable( storable:Storable):String;

	function updatePlayerStorableRequest( storable:Storable,  updatePlayerStorableResponseHandler:UpdatePlayerStorableResponse ->Void):String;

	function updatePlayerStorableList( storables:NList<Storable>):String;

	function updatePlayerStorableListRequest( storables:NList<Storable>,  updatePlayerStorableResponseHandler:UpdatePlayerStorableResponse ->Void):String;

	function removePlayerStorable( storable:Storable):String;

	function removePlayerStorableRequest( storable:Storable,  removePlayerStorableResponseHandler:RemovePlayerStorableResponse ->Void):String;

	function removePlayerStorableList( storables:NList<Storable>):String;

	function removePlayerStorableListRequest( storables:NList<Storable>,  removePlayerStorableResponseHandler:RemovePlayerStorableResponse ->Void):String;

	function getPlayerStorables( dbQuery:NuggetaQuery):String;

	function getPlayerStorablesRequest( dbQuery:NuggetaQuery,  getPlayerStorablesResponseHandler:GetPlayerStorablesResponse ->Void):String;

	function pauseSessionMonitoring():String;

	function pauseSessionMonitoringRequest( pauseSessionMonitoringResponseHandler:PauseSessionMonitoringResponse ->Void):String;

	function resumeSessionMonitoring():String;

	function resumeSessionMonitoringRequest( resumeSessionMonitoringResponseHandler:ResumeSessionMonitoringResponse ->Void):String;

	function publishFriendThirdPartyMessage( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartyId:String,  thirdPartySource:ThirdPartySource):String;

	function publishFriendThirdPartyMessageRequest( title:String,  message:String,  pictureUrl:String,  link:String,  thirdPartyId:String,  thirdPartySource:ThirdPartySource,  publishFriendThirdPartyMessageResponseHandler:PublishFriendThirdPartyMessageResponse ->Void):String;

	function _sendMessage0( message:Message):String;

	function _request0( message:Message,  handler:Dynamic):String;

	function addGameStateChangeHandler( handler:GameStateChange ->Void):Void;

	function removeGameStateChangeHandler( handler:GameStateChange ->Void):Void;

	function addPlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void;

	function removePlayerEnterGameHandler( handler:PlayerEnterGame ->Void):Void;

	function addFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void;

	function removeFriendshipNotificationHandler( handler:FriendshipNotification ->Void):Void;

	function addPlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void;

	function removePlayerUnjoinGameHandler( handler:PlayerUnjoinGame ->Void):Void;

	function addConnectionLostHandler( handler:ConnectionLost ->Void):Void;

	function removeConnectionLostHandler( handler:ConnectionLost ->Void):Void;

	function addConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void;

	function removeConnectionInterruptedHandler( handler:ConnectionInterrupted ->Void):Void;

	function addConnectionResumedHandler( handler:ConnectionResumed ->Void):Void;

	function removeConnectionResumedHandler( handler:ConnectionResumed ->Void):Void;

	function addConnectionStopHandler( handler:ConnectionStop ->Void):Void;

	function removeConnectionStopHandler( handler:ConnectionStop ->Void):Void;

	function addFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void;

	function removeFriendConnectedNotificationHandler( handler:FriendConnectedNotification ->Void):Void;

	function addFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void;

	function removeFriendDisconnectedNotificationHandler( handler:FriendDisconnectedNotification ->Void):Void;

	function addNuggetaExceptionHandler( handler:NuggetaException ->Void):Void;

	function removeNuggetaExceptionHandler( handler:NuggetaException ->Void):Void;

	function addChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void;

	function removeChallengeAcceptedHandler( handler:ChallengeAccepted ->Void):Void;

	function addChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void;

	function removeChallengeRefusedHandler( handler:ChallengeRefused ->Void):Void;

	function addRawMessageHandler( handler:NRawMessage ->Void):Void;

	function removeRawMessageHandler( handler:NRawMessage ->Void):Void;

	function addSessionExpiredHandler( handler:SessionExpired ->Void):Void;

	function removeSessionExpiredHandler( handler:SessionExpired ->Void):Void;

	function addGameMessageErrorHandler( handler:GameMessageError ->Void):Void;

	function removeGameMessageErrorHandler( handler:GameMessageError ->Void):Void;

	function addPlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void;

	function removePlayerInvitationNotificationHandler( handler:PlayerInvitationNotification ->Void):Void;

	function addFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void;

	function removeFriendChallengeNotificationHandler( handler:FriendChallengeNotification ->Void):Void;

	function addMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void;

	function removeMyTurnNotificationHandler( handler:MyTurnNotification ->Void):Void;

	function addPlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void;

	function removePlayerTurnNotificationHandler( handler:PlayerTurnNotification ->Void):Void;

	function addStartResponseHandler( handler:StartResponse ->Void):Void;

	function removeStartResponseHandler( handler:StartResponse ->Void):Void;

	function addInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void;

	function removeInvitePlayerResponseHandler( handler:InvitePlayerResponse ->Void):Void;

	function addSignUpResponseHandler( handler:SignUpResponse ->Void):Void;

	function removeSignUpResponseHandler( handler:SignUpResponse ->Void):Void;

	function addForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void;

	function removeForgotPasswordResponseHandler( handler:ForgotPasswordResponse ->Void):Void;

	function addLoginResponseHandler( handler:LoginResponse ->Void):Void;

	function removeLoginResponseHandler( handler:LoginResponse ->Void):Void;

	function addSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void;

	function removeSavePlayerProfileResponseHandler( handler:SavePlayerProfileResponse ->Void):Void;

	function addGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void;

	function removeGetPlayerProfileResponseHandler( handler:GetPlayerProfileResponse ->Void):Void;

	function addLogoutResponseHandler( handler:LogoutResponse ->Void):Void;

	function removeLogoutResponseHandler( handler:LogoutResponse ->Void):Void;

	function addChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void;

	function removeChallengeFriendResponseHandler( handler:ChallengeFriendResponse ->Void):Void;

	function addChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void;

	function removeChallengeThirdPartyFriendResponseHandler( handler:ChallengeThirdPartyFriendResponse ->Void):Void;

	function addGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void;

	function removeGetFriendsResponseHandler( handler:GetFriendsResponse ->Void):Void;

	function addGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void;

	function removeGetThirdPartyFriendsResponseHandler( handler:GetThirdPartyFriendsResponse ->Void):Void;

	function addGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void;

	function removeGetPlayerInvitationsResponseHandler( handler:GetPlayerInvitationsResponse ->Void):Void;

	function addAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void;

	function removeAcceptPlayerInvitationResponseHandler( handler:AcceptPlayerInvitationResponse ->Void):Void;

	function addIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void;

	function removeIgnorePlayerInvitationResponseHandler( handler:IgnorePlayerInvitationResponse ->Void):Void;

	function addSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void;

	function removeSubmitScoreResponseHandler( handler:SubmitScoreResponse ->Void):Void;

	function addGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void;

	function removeGetLeaderboardResponseHandler( handler:GetLeaderboardResponse ->Void):Void;

	function addBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void;

	function removeBuyItemResponseHandler( handler:BuyItemResponse ->Void):Void;

	function addGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void;

	function removeGetStoreResponseHandler( handler:GetStoreResponse ->Void):Void;

	function addConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void;

	function removeConsumeItemResponseHandler( handler:ConsumeItemResponse ->Void):Void;

	function addIncreasePlayerWalletResponseHandler( handler:IncreasePlayerWalletResponse ->Void):Void;

	function removeIncreasePlayerWalletResponseHandler( handler:IncreasePlayerWalletResponse ->Void):Void;

	function addGetPlayerWalletResponseHandler( handler:GetPlayerWalletResponse ->Void):Void;

	function removeGetPlayerWalletResponseHandler( handler:GetPlayerWalletResponse ->Void):Void;

	function addGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void;

	function removeGetAchievementBoardResponseHandler( handler:GetAchievementBoardResponse ->Void):Void;

	function addAchieveResponseHandler( handler:AchieveResponse ->Void):Void;

	function removeAchieveResponseHandler( handler:AchieveResponse ->Void):Void;

	function addSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void;

	function removeSearchImmediateGameResponseHandler( handler:SearchImmediateGameResponse ->Void):Void;

	function addJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void;

	function removeJoinGameResponseHandler( handler:JoinGameResponse ->Void):Void;

	function addUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void;

	function removeUnjoinGameResponseHandler( handler:UnjoinGameResponse ->Void):Void;

	function addAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void;

	function removeAcceptFriendChallengeResponseHandler( handler:AcceptFriendChallengeResponse ->Void):Void;

	function addCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void;

	function removeCancelFriendChallengeResponseHandler( handler:CancelFriendChallengeResponse ->Void):Void;

	function addRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void;

	function removeRefuseFriendChallengeResponseHandler( handler:RefuseFriendChallengeResponse ->Void):Void;

	function addGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void;

	function removeGetChallengesResponseHandler( handler:GetChallengesResponse ->Void):Void;

	function addStartGameResponseHandler( handler:StartGameResponse ->Void):Void;

	function removeStartGameResponseHandler( handler:StartGameResponse ->Void):Void;

	function addStopGameResponseHandler( handler:StopGameResponse ->Void):Void;

	function removeStopGameResponseHandler( handler:StopGameResponse ->Void):Void;

	function addCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void;

	function removeCreateGameResponseHandler( handler:CreateGameResponse ->Void):Void;

	function addGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void;

	function removeGetGamesResponseHandler( handler:GetGamesResponse ->Void):Void;

	function addSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void;

	function removeSaveAsGhostResponseHandler( handler:SaveAsGhostResponse ->Void):Void;

	function addGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void;

	function removeGetGhostsResponseHandler( handler:GetGhostsResponse ->Void):Void;

	function addLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void;

	function removeLoadGhostResponseHandler( handler:LoadGhostResponse ->Void):Void;

	function addSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void;

	function removeSendGameChatResponseHandler( handler:SendGameChatResponse ->Void):Void;

	function addGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void;

	function removeGetStorablesResponseHandler( handler:GetStorablesResponse ->Void):Void;

	function addSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void;

	function removeSaveStorableResponseHandler( handler:SaveStorableResponse ->Void):Void;

	function addNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void;

	function removeNextPlayerTurnResponseHandler( handler:NextPlayerTurnResponse ->Void):Void;

	function addSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void;

	function removeSetPlayerNameResponseHandler( handler:SetPlayerNameResponse ->Void):Void;

	function addUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void;

	function removeUpdateStorableResponseHandler( handler:UpdateStorableResponse ->Void):Void;

	function addRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void;

	function removeRemoveStorableResponseHandler( handler:RemoveStorableResponse ->Void):Void;

	function addInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void;

	function removeInviteThirdPartyFriendResponseHandler( handler:InviteThirdPartyFriendResponse ->Void):Void;

	function addPublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void;

	function removePublishThirdPartyMessageResponseHandler( handler:PublishThirdPartyMessageResponse ->Void):Void;

	function addThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void;

	function removeThirdPartyLoginResponseHandler( handler:ThirdPartyLoginResponse ->Void):Void;

	function addSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void;

	function removeSaveGameResponseHandler( handler:SaveGameResponse ->Void):Void;

	function addLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void;

	function removeLoadGameResponseHandler( handler:LoadGameResponse ->Void):Void;

	function addSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void;

	function removeSavePlayerStorableResponseHandler( handler:SavePlayerStorableResponse ->Void):Void;

	function addUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void;

	function removeUpdatePlayerStorableResponseHandler( handler:UpdatePlayerStorableResponse ->Void):Void;

	function addRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void;

	function removeRemovePlayerStorableResponseHandler( handler:RemovePlayerStorableResponse ->Void):Void;

	function addGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void;

	function removeGetPlayerStorablesResponseHandler( handler:GetPlayerStorablesResponse ->Void):Void;

	function addPauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void;

	function removePauseSessionMonitoringResponseHandler( handler:PauseSessionMonitoringResponse ->Void):Void;

	function addResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void;

	function removeResumeSessionMonitoringResponseHandler( handler:ResumeSessionMonitoringResponse ->Void):Void;

	function addPublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void;

	function removePublishFriendThirdPartyMessageResponseHandler( handler:PublishFriendThirdPartyMessageResponse ->Void):Void;
}
