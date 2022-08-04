import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../gameplay/models/game.dart';
import '../../../../uscases/get_game_list_usecase.dart';
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

    gameList.forEach((game) {
      bool found = false;
      for (final p in game.players) {
        if (p.user == 'bromar2292') {
          found = true;
          break;
        }
      }
      if (!found) {
        modifiedGame.add(game);
      }
    });

    emit(
      JoinGameState.loaded(gameList: modifiedGame),
    );
  }
}
