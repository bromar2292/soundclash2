class Player {
  final String user;
  final String song;
  final List<int> score;
  Player({
    required this.user,
    required this.song,
    required this.score,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        user: json["name"],
        song: json["song"],
        score: List<int>.from(json["score"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": user,
        "song": song,
        "score": List<dynamic>.from(score.map((x) => x)),
      };
}
