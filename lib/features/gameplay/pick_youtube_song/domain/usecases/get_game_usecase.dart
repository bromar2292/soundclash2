import 'dart:convert';

import 'package:http/http.dart';
import 'package:soundclash2/features/gameplay/models/game.dart';
import 'package:soundclash2/features/manage_games/join_game/data/repository.dart';

Future<Game> getGame({required String objectId}) async {
  Response response = await JoinGameRepository.getGamesList() as Response;

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"] as Iterable;
    List<Game> games = results
        .map((json) => Game.FromJSON(json as Map<String, dynamic>))
        .toList();
    return games.firstWhere((e) => e.objectId == objectId);
  } else {
    print('no show');
    return Game(
      objectId: 'null',
      gameName: 'null',
      password: 'null',
      players: [],
      count: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
