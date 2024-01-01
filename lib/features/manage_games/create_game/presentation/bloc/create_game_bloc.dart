import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
    final String? newUrl = YoutubePlayer.convertUrlToId(event.song.toString());

    emit(
      CreateGameState.nameSubmitted(name: event.name, song: newUrl ?? 'error'),
    );
  }
}
