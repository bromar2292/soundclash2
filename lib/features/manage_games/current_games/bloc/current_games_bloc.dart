import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../gameplay/models/game.dart';
import '../../uscases/get_game_list_usecase.dart';

part 'current_games_bloc.freezed.dart';

part 'current_games_state.dart';
part 'current_games_event.dart';

class CurrentGamesBloc extends Bloc<CurrentGamesEvent, CurrentGamesState> {
  CurrentGamesBloc() : super(const CurrentGamesState.initial()) {
    on<_currentGamesEvent>(_onGetGames);
  }

  Future<void> _onGetGames(
    _currentGamesEvent event,
    Emitter<CurrentGamesState> emit,
  ) async {
    List<Game> gameList = await getGameList();

    emit(
      CurrentGamesState.loaded(gameList: gameList),
    );
  }
}
