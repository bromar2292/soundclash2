import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/current_games/current_games_state.dart';
import 'package:soundclash2/models/game_modal.dart';
import 'package:soundclash2/repositorys/game_repository.dart';

class CurrentGamesCubit extends Cubit<CurrentGamesState> {
  final GameRepository gameRepository;

  CurrentGamesCubit(this.gameRepository) : super(const CurrentGamesInitial());

  Future<void> getGames(String userName) async {
    try {
      final List<Game> gameList = await gameRepository.fetchAllGames();
      final filteredGameList = gameList
          .where((game) => game.players.any((p) => p.userName == userName))
          .toList();

      emit(CurrentGamesLoaded(gameList: filteredGameList));
    } catch (e) {
      emit(CurrentGamesError(e.toString()));
    }
  }
}
