part of '../../../../../../bloc/pick_youtube_song_bloc/pick_youtube_song_bloc.dart';

@freezed
class PickYoutubeSongEvent with _$PickYoutubeSongEvent {
  const factory PickYoutubeSongEvent.updateYoutubeURL({required String url}) =
      _UpdateYoutubeEvent;
}
