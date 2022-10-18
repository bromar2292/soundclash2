import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import '../../../../../leaderboard/presentation/views/leaderboard_screen.dart';
import '../../../../../manage_games/uscases/get_game_list_usecase.dart';
import '../../../../models/game.dart';
import '../../../../models/rate_song.dart';

part 'rate_song_bloc.freezed.dart';
part 'rate_song_bloc_event.dart';
part 'rate_song_bloc_state.dart';

class RateSongBloc extends Bloc<RateSongBlocEvent, RateSongBlocState> {
  RateSongBloc() : super(const RateSongBlocState.initial()) {
    on<_getPlayersEvent>(_onUrlChanged);
    on<_getRateSongEvent>(_onRateSong);
  }

  void _onUrlChanged(
    _getPlayersEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    List<Game> gameList = await getGameList();
    gameList.forEach((element) {
      if (element.objectId == event.objectId) {
        game = element;
      }
    });
    emit(RateSongBlocState.playersLoaded(game: game));
  }

  void _onRateSong(
    _getRateSongEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    List<Game> gameList = await getGameList();

    gameList.forEach((element) {
      if (element.objectId == event.objectId) {
        game = element;

        game!.players.forEach((player) {
          if (player.user != event.userName) {
            if (player.song == event.songId) {
              for (final p in player.score) {
                if (p.userName == event.userName) {
                  print('you already voted on this song');
                  return;
                }
              }
              player.score
                  .add(RateSong(userName: event.userName, score: event.rating));
            }
          }
        });
      }
    });
    var updateGame = ParseObject('Game')
      ..objectId = event.objectId
      ..set('players', game!.players);
    await updateGame.save();

    // update players
    //  push players back up
    emit(RateSongBlocState.playersLoaded(game: game));
  }
}
