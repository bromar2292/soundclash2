import 'dart:convert';

import 'package:soundclash2/models/leaderboard_entry.dart';
import 'package:soundclash2/models/player.dart';

//List<Game> welcome9FromJson(String str) =>
//   List<Game>.from(json.decode(str).map((x) => Game.FromJSON(x)));

String welcome9ToJson(List<Game> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Game {
  String objectId;

  String gameName;
  String password;
  List<Player> players;
  int? count;
  DateTime createdAt;
  DateTime updatedAt;
  List<LeaderboardEntry> leaderboard;

  Game({
    required this.objectId,
    required this.gameName,
    required this.password,
    required this.players,
    required this.count,
    required this.createdAt,
    required this.updatedAt,
    required this.leaderboard,
  });

  factory Game.FromJSON(Map<String, dynamic> json) => Game(
        objectId: json["objectId"] as String,
        gameName: json["gameName"] as String,
        password: json["password"] as String,
        players: List<Player>.from(
          json["players"].map((x) => Player.fromJson(x as Map<String, dynamic>))
              as Iterable<dynamic>,
        ),
        count: json["count"] as int,
        createdAt: DateTime.parse(json["createdAt"] as String),
        updatedAt: DateTime.parse(json["updatedAt"] as String),
        leaderboard: List<LeaderboardEntry>.from(
          (json["leaderboard"] as List<dynamic>)
              .map((x) => LeaderboardEntry.fromJson(x as Map<String, dynamic>)),
        ),
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "gameName": gameName,
        "password": password,
        "players": List<dynamic>.from(players.map((x) => x.toJson())),
        "count": count,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "leaderboard":
            leaderboard.map((x) => x.toJson()).toList(), // Add this line
      };
}
