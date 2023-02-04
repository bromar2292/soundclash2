import 'package:soundclash2/features/gameplay/models/rate_song.dart';

class Player {
  final String user;
  final String song;
  final int? position;
  final List<RateSong> score;
  Player({
    required this.user,
    required this.song,
    required this.score,
    this.position,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        user: json["userName"] as String,
        song: json["song"] as String,
        position: json["position"] as int,
        score: List<RateSong>.from(
          json["score"].map((x) => RateSong.FromJSON(x as Map<String, dynamic>))
              as Iterable<dynamic>,
        ),
      );

  Map<String, dynamic> toJson() => {
        "userName": user,
        "song": song,
        "position": position,
        "score": List<dynamic>.from(score.map((x) => x)),
      };
}
