
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modals/game_modal.dart';

import '../../repositorys/game_repository.dart';
import 'join_game_state.dart';

class JoinGameCubit extends Cubit<JoinGameState> {
  final GameRepository gameRepository;

  JoinGameCubit(this.gameRepository) : super(JoinGameInitial());

  Future<void> loadGames(String userName) async {
    emit(JoinGameLoading());
    try {
      final List<Game> gameList = await gameRepository.fetchAllGames();
      final List<Game> modifiedGameList = gameList.where((game) {
        return game.players.every((p) => p.user != userName);
      }).toList();

      emit(JoinGameLoaded(gameList: modifiedGameList));
    } catch (e,stack) {
      emit(JoinGameError(errorMessage:e.toString()));
    }
  }

// Add other methods if necessary
}



// Define states like JoinGameInitial, JoinGameLoading, JoinGameLoaded, JoinGameError

