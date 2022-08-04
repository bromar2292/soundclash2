part of 'join_game_bloc.dart';

@freezed
class JoinGameState with _$JoinGameState {
  const factory JoinGameState.initial() = _Initial;

  const factory JoinGameState.loaded({required List<Game> gameList}) = _loaded;
}
