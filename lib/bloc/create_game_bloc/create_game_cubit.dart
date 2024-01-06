import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/services/game_service.dart';

import 'create_game_state.dart';


class CreateGameCubit extends Cubit<CreateGameState> {
  final GameService gameService;

  CreateGameCubit(this.gameService) : super(CreateGameInitial());

  Future<void> createGame(String gameName, String userName, String song) async {
    try {
      emit(CreateGameLoading());
      await gameService.createGameUsecase(
        gameName: gameName,
        userName: userName,
        song: song,
      );
      emit(CreateGameSuccess());
    } catch (e) {
      emit(CreateGameError(errorMessage: '$e'));
    }
  }
}

