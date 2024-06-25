import 'package:bloc/bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/bloc/rate_song_bloc/rate_song_state.dart';
import 'package:soundclash2/models/game_modal.dart';
import 'package:soundclash2/models/player.dart';
import 'package:soundclash2/models/rate_song.dart';
import 'package:soundclash2/repositorys/game_repository.dart';
import 'package:soundclash2/user_session.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RateSongCubit extends Cubit<RateSongState> {
  final GameRepository gameRepository;
  late YoutubePlayerController _youtubePlayerController;
  int currentSongIndex = 0;

  RateSongCubit(this.gameRepository) : super(RateSongInitialState());
  List<Player> currentPlayer = [];
  String objectId = '';
  String? userName = UserSession.instance.user!.username;

  /// omar
  /// on initalise we need to get the
  /// get the data and set index to 0
  /// and load youtube player

  Future<void> initializeFirstVideo(String objectID) async {
    try {
      objectId = objectID;
      final game = await gameRepository.fetchGameByObjectId(objectId: objectID);
      final songIdList = _extractSongIds(game);
      _initializeYoutubePlayer(songIdList[0]);

      emit(RateSongLoadedState(
        currentPlayers: game.players,
        songIds: songIdList,
        currentSongIndex: 0,
        currentVideoId: songIdList[0],
        youtubePlayerController: _youtubePlayerController,
      ),);
    } catch (e) {
      emit(RateSongErrorState(message: "Failed to initialize: $e"));
    }
  }

  List<String> _extractSongIds(Game game) {
    final songIdList = <String>[];
    for (final player in game.players) {
      songIdList.add(player.song);
      currentPlayer.add(player);
    }
    return songIdList;
  }

  void _initializeYoutubePlayer(String initialVideoId) {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: initialVideoId,
    );
  }

  void updateThenNextVideo() {
    /// this needs to update the rating in the json
    final currentState = state;
    if (currentState is RateSongLoadedState) {
      final int nextIndex = currentState.currentSongIndex + 1;
      if (nextIndex < currentState.songIds.length) {
        _youtubePlayerController.load(currentState.songIds[nextIndex]);
        emit(RateSongLoadedState(
          currentPlayers: currentState.currentPlayers,
          songIds: currentState.songIds,
          currentSongIndex: nextIndex,
          currentVideoId: currentState.songIds[nextIndex],
          youtubePlayerController: _youtubePlayerController,
        ),);
      }
    }
  }

  Future<void> updateGame({
    required String gameId,
    required List<Player> updatedPlayers,
  }) async {
    final gameToUpdate = ParseObject('Game')..objectId = gameId;

    gameToUpdate.set(
        'players', updatedPlayers.map((player) => player.toJson()).toList(),);

    try {
      final ParseResponse response = await gameToUpdate.save();

      if (response.success) {
        print('Game updated successfully!');
      } else {
        print('Error updating game: ${response.error?.message}');
      }
    } catch (e) {
      print('Error updating game: $e');
    }
  }

  Future<void> updateRating(int? rating) async {
    final currentState = state;
    if (currentState is RateSongLoadedState) {
      // final currentSongId = currentState.songIds[currentState.currentSongIndex];
      final currentPlayer =
          currentState.currentPlayers[currentState.currentSongIndex];

      if (currentPlayer.userName != userName) {
        final bool alreadyRated =
            currentPlayer.ratingsGiven.any((r) => r.userName == userName);
        if (!alreadyRated) {
          currentPlayer.ratingsGiven
              .add(RateSong(userName: userName!, score: rating));

          await updateGame(
            gameId: objectId,
            updatedPlayers: currentState.currentPlayers,
          );
        } else {
          print('this is your song.');
        }
      } else {
        print('You have already rated this song.');
      }

      emit(RateSongLoadedState(
        currentPlayers: currentState.currentPlayers,
        songIds: currentState.songIds,
        currentSongIndex: currentState.currentSongIndex,
        selectedRating: rating,
        currentVideoId: currentState.songIds[currentState.currentSongIndex],
        youtubePlayerController: _youtubePlayerController,
      ),);
    }
  }
}
