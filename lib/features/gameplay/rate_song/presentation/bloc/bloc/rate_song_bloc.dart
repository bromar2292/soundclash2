import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'package:soundclash2/features/gameplay/models/game.dart';
import 'package:soundclash2/features/gameplay/models/rate_song.dart';
import 'package:soundclash2/features/manage_games/uscases/get_game_list_usecase.dart';

part 'rate_song_bloc.freezed.dart';
part 'rate_song_bloc_event.dart';
part 'rate_song_bloc_state.dart';

class RateSongBloc extends Bloc<RateSongBlocEvent, RateSongBlocState> {
  RateSongBloc() : super(const RateSongBlocState.initial()) {
    on<_getPlayersEvent>(_onUrlChanged);
    on<_getRateSongEvent>(_onRateSong);
    on<_getUpdateSongEvent>(_onUpdateSong);
  }

  Future<void> _onUrlChanged(
    _getPlayersEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    final List<Game> gameList = await getGameList();
    for (final element in gameList) {
      if (element.objectId == event.objectId) {
        game = element;
      }
    }
    emit(RateSongBlocState.playersLoaded(game: game));
  }

  Future<void> _onUpdateSong(
    _getUpdateSongEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    emit(RateSongBlocState.playersLoaded(song: event.song));
  }

  Future<void> _onRateSong(
    _getRateSongEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    final List<Game> gameList = await getGameList();

    for (final element in gameList) {
      if (element.objectId == event.objectId) {
        game = element;

        for (final player in game.players) {
          if (player.user != event.userName) {
            if (player.song == event.songId) {
              for (final p in player.score) {
                if (p.userName == event.userName) {
                  print('you already voted on this song');
                  continue;
                }
              }
              player.score
                  .add(RateSong(userName: event.userName, score: event.rating));
            }
          }
        }
      }
    }
    final updateGame = ParseObject('Game')
      ..objectId = event.objectId
      ..set('players', game!.players);
    await updateGame.save();

    // update players
    //  push players back up

    emit(RateSongBlocState.songRated(game: game));
  }
}
