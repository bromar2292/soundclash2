import '../../gameplay/models/game.dart';
import '../../gameplay/models/player.dart';
import '../../gameplay/models/song.dart';
import '../../gameplay/models/user.dart';

class DataBaseDummy {
  // List<Game> games = [
  //   Game(players: game1),
  //   Game(players: game2),
  //   Game(players: game3)
  // ];

  List<Song> youtubeList = [
    Song(player: UserName(username: 'omar'), song: 'nPt8bK2gbaU'),
    Song(player: UserName(username: 'rachel'), song: 'nPt8bK2gbaU'),
    Song(player: UserName(username: 'farah'), song: 'gQDByCdjUXw'),
  ];

  void addToYoutubeList(Song song) {
    return youtubeList.add(song);
  }
}
