import 'package:http/http.dart';

import 'dart:convert';

import '../../gameplay/models/game.dart';
import '../join_game/data/repository.dart';

Future<List<Game>> getGameList() async {
  Response response = await JoinGameRepository.getGamesList();

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"];

    return results.map((json) => Game.FromJSON(json)).toList();
  } else {
    return [];
  }
}
