import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modals/game_modal.dart';
import '../../repositorys/game_repository.dart';
import 'current_games_state.dart';

class CurrentGamesCubit extends Cubit<CurrentGamesState> {
  final GameRepository gameRepository;

  CurrentGamesCubit(this.gameRepository)
      : super(const CurrentGamesInitial());

  Future<void> getGames(String userName) async {
    try {
      final List<Game> gameList = await gameRepository.fetchAllGames();
      final filteredGameList = gameList
          .where((game) => game.players.any((p) => p.user == userName))
          .toList();

      emit(CurrentGamesLoaded(gameList: filteredGameList));
    } catch (e) {
      emit(CurrentGamesError(e.toString()));
    }
  }
}

