import 'package:soundclash2/authentication/domain/models/users.dart';
import 'package:soundclash2/gameplay/pick_youtube_song/domain/models/youtube_song.dart';
import 'package:soundclash2/gameplay/results/domain/models/games.dart';

class Profile{
late User user;
late String profilePic;
late GamesHistory games;
late List<YoutubeSong> favouriteSongList;
late int level;
}

// add friends list
// add genres list