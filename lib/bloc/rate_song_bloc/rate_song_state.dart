import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../models/game_modal.dart';
import '../../models/player.dart';

abstract class RateSongState {}

class RateSongInitialState extends RateSongState {}

class SongsLoadingState extends RateSongState {}

class RateSongLoadedState extends RateSongState {
  final List<String> songIds;
  final List<Player> currentPlayers;
  final int currentSongIndex;
  final YoutubePlayerController youtubePlayerController;
  final String currentVideoId;
  final int? selectedRating;

  RateSongLoadedState({
    required this.songIds,
    required this.youtubePlayerController,
    required this.currentPlayers,
    required this.currentSongIndex,
    required this.currentVideoId,
    this.selectedRating,
  });
}

class SongPlayingState extends RateSongState {
  final Game game;
  final Player currentPlayer;
  final String currentSongId;
  final int? selectedRating;

  SongPlayingState({
    required this.game,
    required this.currentPlayer,
    required this.currentSongId,
    this.selectedRating,
  });
}

class RatingSubmittedState extends RateSongState {
  final int rating;
  RatingSubmittedState({required this.rating});
}

class AllRatingsSubmittedState extends RateSongState {
  final Game game;
  AllRatingsSubmittedState({required this.game});
}

class NavigateToLeaderboardState extends RateSongState {}

/// omar maybe load first game
// class RateSongFirstGameState extends RateSongState {
//   // final String songId;
//   final Game game;
//   RateSongFirstGameState({
//     required this.game,
//     //  required this.songId
//   });
// }

// class RateSongLoadedGameState extends RateSongState {
//   // final String songId;
//   final Game game;
//   RateSongLoadedGameState({
//     required this.game,
//     //  required this.songId
//   });
// }
//
// class RateSongRatedState extends RateSongState {
//   final Game game;
//   RateSongRatedState({
//     required this.game,
// //  required this.songId
//   });
// }

class RateSongErrorState extends RateSongState {
  final String message;
  RateSongErrorState({required this.message});
}
