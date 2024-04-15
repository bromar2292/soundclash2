import 'package:bloc/bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/bloc/rate_song_bloc/rate_song_state.dart';
import 'package:soundclash2/modals/game_modal.dart';
import 'package:soundclash2/repositorys/game_repository.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../modals/rate_song.dart';

class RateSongCubit extends Cubit<RateSongState> {
  final GameRepository gameRepository;
  YoutubePlayerController? _youtubePlayerController;
  int currentSongIndex = 0;

  RateSongCubit(this.gameRepository) : super(RateSongInitialState());


  void initialize(List<String> songIds) {
    // Initially load the first song
    emit(RateSongLoadedState(
      songIds: songIds,
      currentSongIndex: 0,
      currentVideoId: songIds[0],
    ));
  }
  void rateSong(int rating) {
    final currentState = state;
    if (currentState is RateSongLoadedState) {
      // Update the rating without changing the song
    //  emit(currentState.copyWith(selectedRating: rating));
    }
  }

  void initializeYoutubePlayer(String initialVideoId) {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: initialVideoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    // Add listener to update UI based on player state if needed
  }

  void initializeGame(String objectId) async {
    try {
      emit(SongsLoadingState());
      final game = await gameRepository.fetchGameByObjectId(objectId: objectId);
      if (game != null && game.players.isNotEmpty) {
        // Initialize the YouTube player with the first song
        initializeYoutubePlayer(game.players.first.song);
        emit(SongPlayingState(
          game: game,
          currentPlayer: game.players.first,
          currentSongId: game.players.first.song,
          currentSongIndex: 0,
        ));
      } else {
        emit(RateSongErrorState(message: "Game not found or has no players."));
      }
    } catch (e) {
      emit(RateSongErrorState(message: "Failed to load game: $e"));
    }
  }

  Future<void> loadGame(String objectId) async {
    try {
      emit(SongsLoadingState());
      Game? game = await gameRepository.fetchGameByObjectId( objectId: objectId);
      if (game != null && game.players.isNotEmpty) {
        // Immediately play the first song
        emit(SongPlayingState(
          game: game,
          currentPlayer: game.players.first,
          currentSongId: game.players.first.song, currentSongIndex: null,
        ));
      } else {
        emit(RateSongErrorState(message: "Game not found or has no players."));
      }
    } catch (e) {
      emit(RateSongErrorState(message: "Failed to load game: $e"));
    }
  }

  /// omar put this method into repo
  Future<Game> getGameFromAllGames(String objectId) async {
    Game? game;
    final List<Game> gameList = await gameRepository.fetchAllGames();
    for (final element in gameList) {
      if (element.objectId == objectId) {
        game = element;
      }
    }
    return game!;
  }

  Future<void> getPlayers(String objectId) async {
    Game? game;
    game = await getGameFromAllGames(objectId);
    emit(RateSongLoadedGameState(game: game));
  }

  // Future<void> updateSong(Song song) async {
  //   emit(RateSongState.playersLoaded(song: song));
  // }

  Future<void> rateSong(
      {required String objectId,
      required String userName,
      required String songId,
      required int rating}) async {
    Game? game;
    game = await getGameFromAllGames(objectId);

    // for (final player in game!.players) {
    //   if (player.user != userName) {
    //     if (player.song == songId) {
    //       for (final p in player.ratingsGiven) {
    //         if (p.userName == userName) {
    //           print('you already voted on this song');
    //           continue;
    //         }
    //       }
    //       player.ratingsGiven.add(RateSong(userName: userName, score: rating));
    //     }
    //   }
    // }

    for (final player in game!.players) {
      // Skip if the player is trying to rate their own song
      if (player.user == userName) continue;

      if (player.song == songId) {
        // Check if this player has already been rated by the user
        bool alreadyRated =
            player.ratingsGiven.any((rating) => rating.userName == userName);
        if (alreadyRated) {
          print('You have already rated this song.');
        } else {
          // Add the rating since it's not their own song and they haven't rated it yet
          player.ratingsGiven.add(RateSong(userName: userName, score: rating));
          // Assuming you want to break once you've added a rating to the correct song
          break;
        }
      }
    }
    final updateGame = ParseObject('Game')
      ..objectId = objectId
      ..set('players', game!.players);
    await updateGame.save();

    emit(RateSongRatedState(game: game));
  }
}
