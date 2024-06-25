import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/join_game_bloc/join_game_state.dart';
import 'package:soundclash2/models/game_modal.dart';
import 'package:soundclash2/repositorys/game_repository.dart';

class JoinGameCubit extends Cubit<JoinGameState> {
  final GameRepository gameRepository;

  JoinGameCubit(this.gameRepository) : super(JoinGameInitial());

  Future<void> loadGames(String userName) async {
    emit(JoinGameLoading());
    try {
      final List<Game> gameList = await gameRepository.fetchAllGames();
      final List<Game> modifiedGameList = gameList.where((game) {
        return game.players.every((p) => p.userName != userName);
      }).toList();

      emit(JoinGameLoaded(gameList: modifiedGameList));
    } catch (e) {
      emit(JoinGameError(errorMessage: e.toString()));
    }
  }

// Add other methods if necessary
}

// Define states like JoinGameInitial, JoinGameLoading, JoinGameLoaded, JoinGameError
