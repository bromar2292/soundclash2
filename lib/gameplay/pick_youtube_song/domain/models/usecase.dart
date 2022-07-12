import 'package:soundclash2/manage_games/join_game/data/repository.dart';
import 'package:http/http.dart';

import 'dart:convert';

import '../../../models/game.dart';
import '../../../models/player.dart';

Future<Game> getGame({required String objectId}) async {
  Response response = await JoinGameRepository.getGamesList();

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"];
    List<Game> games = results.map((json) => Game.FromJSON(json)).toList();
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
        updatedAt: DateTime.now());
  }
}
