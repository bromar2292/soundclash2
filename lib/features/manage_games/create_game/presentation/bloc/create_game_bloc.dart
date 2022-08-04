import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_game_bloc.freezed.dart';

part 'create_game_state.dart';
part 'create_game_event.dart';

class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  CreateGameBloc() : super(const CreateGameState.initial()) {
    on<_createGameEvent>(_onNameChanged);
  }
  void _onNameChanged(
    _createGameEvent event,
    Emitter<CreateGameState> emit,
  ) {
    emit(
      CreateGameState.nameSubmitted(name: event.name),
    );
  }
}
