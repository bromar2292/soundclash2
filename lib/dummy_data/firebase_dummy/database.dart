import '../../gameplay/models/player.dart';

import '../../gameplay/models/user.dart';

class DataBaseDummy {
  // List<Game> games = [
  //   Game(players: game1),
  //   Game(players: game2),
  //   Game(players: game3)
  // ];

  List<Player> youtubeList = [
    Player(user: 'omar', song: 'nPt8bK2gbaU', score: []),
    Player(user: 'rachel', song: 'nPt8bK2gbaU', score: []),
    Player(user: 'farah', song: 'gQDByCdjUXw', score: []),
  ];

  void addToYoutubeList(Player song) {
    return youtubeList.add(song);
  }
}
