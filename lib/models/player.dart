import 'package:soundclash2/models/rate_song.dart';

class Player {
  final String userName;
  final String song;
  final List<RateSong> ratingsGiven;
  Player({
    required this.userName,
    required this.song,
    required this.ratingsGiven,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        userName: json["userName"] as String,
        song: json["song"] as String,
        ratingsGiven: List<RateSong>.from(
          json["ratingsGiven"]
                  .map((x) => RateSong.FromJSON(x as Map<String, dynamic>))
              as Iterable<dynamic>,
        ),
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "song": song,
        "ratingsGiven": List<dynamic>.from(ratingsGiven.map((x) => x)),
      };
}
