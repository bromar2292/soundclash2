import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:soundclash2/modals/game_modal.dart';
import '../../repositorys/game_repository.dart';

part 'current_games_bloc.freezed.dart';

part 'current_games_state.dart';
part 'current_games_event.dart';

class CurrentGamesBloc extends Bloc<CurrentGamesEvent, CurrentGamesState> {
  CurrentGamesBloc() : super(const CurrentGamesState.initial()) {
    on<_currentGamesEvent>(_onGetGames);
  }
final GameRepository gameService = GameRepository();
  Future<void> _onGetGames(
    _currentGamesEvent event,
    Emitter<CurrentGamesState> emit,
  ) async {
    final List<Game> filteredGameList = [];
    final List<Game> gameList = await gameService.fetchAllGames();

    for (final game in gameList) {
      bool found = false;
      for (final p in game.players) {
        if (p.user == event.userName) {
          found = true;
          filteredGameList.add(game);
        }
      }
      if (!found) {
        continue;
      }
    }
    emit(
      CurrentGamesState.loaded(gameList: filteredGameList),
    );
  }
}
