import 'package:soundclash2/authentication/domain/models/users.dart';

class Song {
  final User player;
  final String song;
  Song({
    required this.player,
    required this.song,
  });
}
