import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/player.dart';

part 'pick_youtube_song_bloc.freezed.dart';
part 'pick_youtube_song_state.dart';
part 'pick_youtube_song_event.dart';

class PickYoutubeSongBloc
    extends Bloc<PickYoutubeSongEvent, PickYoutubeSongState> {
  PickYoutubeSongBloc() : super(const PickYoutubeSongState.initial()) {
    on<_UpdateYoutubeEvent>(_onUrlChanged);
  }

  void _onUrlChanged(
    _UpdateYoutubeEvent event,
    Emitter<PickYoutubeSongState> emit,
  ) {
    emit(
      PickYoutubeSongState.songSubmitted(song: event.url),
    );
  }

  void _onUrlSubmit(
    _UpdateYoutubeEvent event,
    Emitter<PickYoutubeSongState> emit,
  ) {
    emit(
      PickYoutubeSongState.songSubmitted(song: event.url),
    );
  }
}
// needs to be a function which adds to the list