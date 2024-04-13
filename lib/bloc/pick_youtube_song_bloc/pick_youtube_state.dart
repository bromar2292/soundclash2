abstract class PickYoutubeSongState {
  const PickYoutubeSongState();
}

class PickYoutubeSongInitial extends PickYoutubeSongState {
  const PickYoutubeSongInitial();
}

class PickYoutubeSongSubmitted extends PickYoutubeSongState {
  final String song;
  const PickYoutubeSongSubmitted({required this.song});
}
/// omar not sure we needd this
///