import '../../gameplay/models/song.dart';
import '../../gameplay/models/user.dart';

class DataBaseDummy {
  List<Song> youtubeList = [
    Song(player: UserName(username: 'omar'), song: 'nPt8bK2gbaU'),
    Song(player: UserName(username: 'rachel'), song: 'nPt8bK2gbaU'),
    Song(player: UserName(username: 'farah'), song: 'gQDByCdjUXw'),
  ];

  void addToYoutubeList(Song song) {
    return youtubeList.add(song);
  }
}
