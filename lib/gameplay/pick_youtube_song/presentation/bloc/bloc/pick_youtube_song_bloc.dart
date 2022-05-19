import 'package:bloc/bloc.dart';
import 'bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soundclash2/gameplay/models/user.dart';

import '../../../../models/song.dart';
part 'pick_youtube_song_bloc.freezed.dart';
part 'pick_youtube_song_state.dart';
part 'pick_youtube_song_event.dart';

class PickYoutubeSongBloc
    extends Bloc<PickYoutubeSongEvent, PickYoutubeSongState> {
  PickYoutubeSongBloc() : super(const PickYoutubeSongState.initial()) {
    on<_UpdateYoutubeEvent>(_onUrlChanged);
  }

  // PickYoutubeSongBloc() : super(PickYoutubeSongState()) {
  // on<UpdateYoutubeURLEvent>(_onUrlChanged);
  // on<SendSongURLEvent>(_submitData);
  // }

  void _onUrlChanged(
    _UpdateYoutubeEvent event,
    Emitter<PickYoutubeSongState> emit,
  ) {
    emit(PickYoutubeSongState.songSubmitted(
      song: Song(player: UserName(username: ''), song: event.url),
    ));
  }
}
// needs to be a function which adds to the list