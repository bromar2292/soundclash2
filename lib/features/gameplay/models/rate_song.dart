class RateSong {
  final String userName;
  final int score;

  RateSong({
    required this.score,
    required this.userName,
  });

  factory RateSong.FromJSON(Map<String, dynamic> json) => RateSong(
        userName: json["userName"] as String,
        score: json["score"] as int,
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "score": score,
      };
}
