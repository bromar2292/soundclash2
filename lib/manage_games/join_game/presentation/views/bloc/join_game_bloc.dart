import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'join_game_bloc.freezed.dart';

part 'join_game_state.dart';
part 'join_game_event.dart';

class JoinGameBloc extends Bloc<JoinGameEvent, JoinGameState> {
  JoinGameBloc() : super(const JoinGameState.initial()) {}
}
