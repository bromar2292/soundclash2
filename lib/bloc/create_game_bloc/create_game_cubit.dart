import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/create_game_bloc/create_game_state.dart';
import 'package:soundclash2/services/game_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CreateGameCubit extends Cubit<CreateGameState> {
  final GameService gameService;

  CreateGameCubit(this.gameService) : super(CreateGameInitial());

  Future<void> createGame(
      String gameName, String userName, String songUrl,) async {
    final String? songId = YoutubePlayer.convertUrlToId(songUrl);

    try {
      emit(CreateGameLoading());
      await gameService.createNewGame(
        gameName: gameName,
        userName: userName,
        song: songId!,
      );
      emit(CreateGameSuccess());
    } catch (e) {
      emit(CreateGameError(errorMessage: '$e'));
    }
  }
}
