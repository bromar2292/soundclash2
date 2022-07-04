import 'dart:convert';

import 'package:soundclash2/gameplay/models/player.dart';

//List<Game> welcome9FromJson(String str) =>
//   List<Game>.from(json.decode(str).map((x) => Game.FromJSON(x)));

String welcome9ToJson(List<Game> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Game {
  String objectId;

  String gamename;
  String password;
  List<Player> players;
  int count;
  DateTime createdAt;
  DateTime updatedAt;

  Game({
    required this.objectId,
    required this.gamename,
    required this.password,
    required this.players,
    required this.count,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Game.FromJSON(Map<String, dynamic> json) => Game(
        objectId: json["objectId"],
        gamename: json["gamename"],
        password: json["password"],
        players:
            List<Player>.from(json["players"].map((x) => Player.fromJson(x))),
        count: json["count"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "gamename": gamename,
        "password": password,
        "players": List<dynamic>.from(players.map((x) => x.toJson())),
        "count": count,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
