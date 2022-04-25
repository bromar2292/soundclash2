part of 'pick_youtube_song_bloc.dart';

@immutable
abstract class PickYoutubeSongEvent extends Equatable {
  const PickYoutubeSongEvent();

  @override
  List<Object> get props => [];
}

class updateYoutubeURL extends PickYoutubeSongEvent {
  const updateYoutubeURL(this.url);

  final String url;

  @override
  List<Object> get props => [url];
}
