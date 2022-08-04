part of 'create_game_bloc.dart';

@freezed
class CreateGameState with _$CreateGameState {
  const factory CreateGameState.initial() = _Initial;

  const factory CreateGameState.nothingSubmitted() = _NothingSubmited;

  const factory CreateGameState.nameSubmitted({required String name}) =
      _NameSubmitted;
}
