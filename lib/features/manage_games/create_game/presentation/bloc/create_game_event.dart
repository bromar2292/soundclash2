part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.createGameName({required String name}) =
      _createGameEvent;
}
