part of 'current_games_bloc.dart';

@freezed
class CurrentGamesEvent with _$CurrentGamesEvent {
  const factory CurrentGamesEvent.load() = _currentGamesEvent;
}
