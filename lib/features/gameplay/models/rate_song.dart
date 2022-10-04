import 'package:flutter/foundation.dart';

class RateSong {
  final String userName;
  final int score;
  final String position;
  RateSong({
    required this.score,
    required this.userName,
    required this.position,
  });

  factory RateSong.FromJSON(Map<String, dynamic> json) => RateSong(
        userName: json["userName"],
        score: json["score"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "score": score,
        "position": position,
      };
}
