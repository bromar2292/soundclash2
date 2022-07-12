import 'package:soundclash2/manage_games/join_game/data/repository.dart';
import 'package:http/http.dart';
import '../../../gameplay/models/game.dart';
import 'dart:convert';

Future<List<Game>> getGameList() async {
  Response response = await JoinGameRepository.getGamesList();

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"];
    // print(results.first);
    print(response.body);
    print('working');
    return results.map((json) => Game.FromJSON(json)).toList();
  } else {
    print('no show');
    return [];
  }
}
