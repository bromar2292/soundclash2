import 'package:soundclash2/authentication/domain/models/users.dart';
import 'package:soundclash2/gameplay/models/song.dart';

class Game {
  final List<User> players;
  final List<Song> songs;
  Game({
    required this.players,
    required this.songs,
  });
}
