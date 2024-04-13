import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:soundclash2/bloc/pick_youtube_song_bloc/pick_youtube_state.dart';

class PickYoutubeSongCubit extends Cubit<PickYoutubeSongState> {
  PickYoutubeSongCubit() : super(const PickYoutubeSongInitial());

  void updateYoutubeURL(String url) {
    emit(PickYoutubeSongSubmitted(song: url));
  }
}

