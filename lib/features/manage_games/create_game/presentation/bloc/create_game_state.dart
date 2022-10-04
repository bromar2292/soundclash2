part of 'create_game_bloc.dart';

@freezed
class CreateGameState with _$CreateGameState {
  const factory CreateGameState.initial() = _Initial;

  const factory CreateGameState.nothingSubmitted() = _NothingSubmited;

  const factory CreateGameState.nameSubmitted({String? name, String? song}) =
      _NameSubmitted;

  //const factory CreateGameState.songSubmitted({required CreateGame startGame}) =
  //    _SongSubmitted;
}
