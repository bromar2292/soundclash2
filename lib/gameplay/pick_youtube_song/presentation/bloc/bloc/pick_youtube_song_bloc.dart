import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'pick_youtube_song_event.dart';
part 'pick_youtube_song_state.dart';

class PickYoutubeSongBloc
    extends Bloc<PickYoutubeSongEvent, PickYoutubeSongState> {
  PickYoutubeSongBloc() : super(PickYoutubeSongInitial()) {
    on<PickYoutubeSongEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
