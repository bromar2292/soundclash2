part of 'join_game_bloc.dart';

@freezed
class JoinGameEvent with _$JoinGameEvent {
  const factory JoinGameEvent.load({required String userName}) = _joinGameEvent;
}
