import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'rate_song_bloc_event.dart';
part 'rate_song_bloc_state.dart';

class RateSongBlocBloc extends Bloc<RateSongBlocEvent, RateSongBlocState> {
  RateSongBlocBloc() : super(RateSongBlocInitial()) {
    on<RateSongBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
