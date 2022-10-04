import 'package:soundclash2/features/gameplay/models/rate_song.dart';

class Player {
  final String user;
  final String song;
  final List<RateSong> score;
  Player({
    required this.user,
    required this.song,
    required this.score,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        user: json["userName"],
        song: json["song"],
        score:
            List<RateSong>.from(json["score"].map((x) => RateSong.FromJSON(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": user,
        "song": song,
        "score": List<dynamic>.from(score.map((x) => x)),
      };
}
