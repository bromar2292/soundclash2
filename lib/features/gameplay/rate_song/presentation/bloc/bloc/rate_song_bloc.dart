import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../manage_games/uscases/get_game_list_usecase.dart';
import '../../../../models/game.dart';

part 'rate_song_bloc.freezed.dart';
part 'rate_song_bloc_event.dart';
part 'rate_song_bloc_state.dart';

class RateSongBloc extends Bloc<RateSongBlocEvent, RateSongBlocState> {
  RateSongBloc() : super(const RateSongBlocState.initial()) {
    on<_getPlayersEvent>(_onUrlChanged);
  }

  void _onUrlChanged(
    _getPlayersEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    List<Game> gameList = await getGameList();
    gameList.forEach((element) {
      if (element.objectId == event.objectId) {
        game = element;
      }
    });
    emit(RateSongBlocState.playersLoaded(game: game));
  }

  void _onRateSong(
    _getRateSongEvent event,
    Emitter<RateSongBlocState> emit,
  ) async {
    Game? game;
    List<Game> gameList = await getGameList();
    gameList.forEach((element) {
      if (element.objectId == event.objectId) {
        game = element;
      }
    });
    emit(RateSongBlocState.playersLoaded(game: game));
  }
}
