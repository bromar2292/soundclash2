abstract class CreateGameState {}

class CreateGameInitial extends CreateGameState {}

class CreateGameLoading extends CreateGameState {}

class CreateGameSuccess extends CreateGameState {
  // You can add additional data here if needed, for example, a message or the created game's details
}

class CreateGameError extends CreateGameState {
  final String errorMessage;

  CreateGameError({required this.errorMessage});
}
// Define states as needed, e.g., CreateGameInitial, CreateGameLoading, CreateGameSuccess, CreateGameError
