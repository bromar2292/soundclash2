part of '../../../../../../bloc/pick_youtube_song_bloc/pick_youtube_song_bloc.dart';

@freezed
class PickYoutubeSongState with _$PickYoutubeSongState {
  const factory PickYoutubeSongState.initial() = _Initial;

  const factory PickYoutubeSongState.songSubmitted({required String song}) =
      _SongSubmitted;
}
