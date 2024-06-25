import 'package:soundclash2/models/game_modal.dart';

abstract class CurrentGamesState {
  const CurrentGamesState();
}

class CurrentGamesInitial extends CurrentGamesState {
  const CurrentGamesInitial();
}

class CurrentGamesLoaded extends CurrentGamesState {
  final List<Game> gameList;

  const CurrentGamesLoaded({required this.gameList});
}

class CurrentGamesError extends CurrentGamesState {
  final String message;

  const CurrentGamesError(this.message);
}
