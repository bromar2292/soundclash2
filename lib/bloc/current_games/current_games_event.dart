part of '../../../../bloc/current_games/current_games_bloc.dart';

@freezed
class CurrentGamesEvent with _$CurrentGamesEvent {
  const factory CurrentGamesEvent.load({required String userName}) =
      _currentGamesEvent;
}
