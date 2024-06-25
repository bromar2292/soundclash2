class LeaderboardEntry {
  int playerId;
  double averageRating;

  LeaderboardEntry({
    required this.playerId,
    required this.averageRating,
  });

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) {
    return LeaderboardEntry(
      playerId: json['playerId'] as int,
      averageRating: json['averageRating'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'playerId': playerId,
      'averageRating': averageRating,
    };
  }
}
