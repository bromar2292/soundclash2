import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:soundclash2/features/gameplay/models/game.dart';
import 'package:soundclash2/features/manage_games/uscases/get_game_list_usecase.dart';
part 'join_game_bloc.freezed.dart';

part 'join_game_state.dart';
part 'join_game_event.dart';

class JoinGameBloc extends Bloc<JoinGameEvent, JoinGameState> {
  JoinGameBloc() : super(const JoinGameState.initial()) {
    on<_joinGameEvent>(_onGetGames);
  }

  Future<void> _onGetGames(
    _joinGameEvent event,
    Emitter<JoinGameState> emit,
  ) async {
    List<Game> gameList = await getGameList();
    List<Game> modifiedGame = [];

    for (final game in gameList) {
      bool found = false;
      for (final p in game.players) {
        if (p.user == event.userName) {
          found = true;
          break;
        }
      }
      if (!found) {
        modifiedGame.add(game);
      }
    }

    emit(
      JoinGameState.loaded(gameList: modifiedGame),
    );
  }
}
