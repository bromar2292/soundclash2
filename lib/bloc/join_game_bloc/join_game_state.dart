import '../../modals/game_modal.dart';

abstract class JoinGameState {}

class JoinGameInitial extends JoinGameState {}

class JoinGameLoading extends JoinGameState {}
class JoinGameLoaded extends JoinGameState {
  final List<Game> gameList; // Add a field to hold the list of games

  JoinGameLoaded({required this.gameList});
}
class JoinGameSuccess extends JoinGameState {
  // You can add additional data here if needed, for example, a message or the created game's details
}

class JoinGameError extends JoinGameState {
  final String errorMessage;

  JoinGameError({required this.errorMessage});
}