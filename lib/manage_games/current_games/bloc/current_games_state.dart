part of 'current_games_bloc.dart';

@freezed
class CurrentGamesState with _$CurrentGamesState {
  const factory CurrentGamesState.initial() = _Initial;

  const factory CurrentGamesState.loaded({required List<Game> gameList}) =
      _loaded;
}
