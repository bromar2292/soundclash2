part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.createGameName({String? name, String? song}) =
      _createGameEvent;
  const factory CreateGameEvent.chooseSong({required String song}) =
      _chooseSongEvent;
}
