import 'dart:convert';

import 'package:http/http.dart';
import 'package:soundclash2/features/gameplay/models/game.dart';
import 'package:soundclash2/features/manage_games/join_game/data/repository.dart';

Future<List<Game>> getGameList() async {
  Response response = await JoinGameRepository.getGamesList() as Response;

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"] as Iterable;

    return results
        .map((json) => Game.FromJSON(json as Map<String, dynamic>))
        .toList();
  } else {
    return [];
  }
}
