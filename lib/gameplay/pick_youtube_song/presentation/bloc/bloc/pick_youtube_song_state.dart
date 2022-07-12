part of 'pick_youtube_song_bloc.dart';

@freezed
class PickYoutubeSongState with _$PickYoutubeSongState {
  const factory PickYoutubeSongState.initial() = _Initial;

  const factory PickYoutubeSongState.nothingSubmitted() = _NothingSubmited;

  const factory PickYoutubeSongState.songSubmitted({required Player song}) =
      _SongSubmitted;

//  SongSubmitted copyWith({String? url, required Song song}) {
//    return SongSubmitted(
//      song: song,
//    );
//  }

}
