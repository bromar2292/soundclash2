
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'dart:convert';

import 'package:http/http.dart';
import 'package:soundclash2/modals/game_modal.dart';
import 'package:soundclash2/services/game_service.dart';


class GameRepository {

  final GameService gameService = GameService();

  Future<List<Game>> fetchAllGames() async {
    final Response response = await gameService.fetchAllGames() as Response;

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final Iterable results = body["results"] as Iterable;

      return results
          .map((json) => Game.FromJSON(json as Map<String, dynamic>))
          .toList();
    } else {
      return [];
    }
  }



  Future<void> joinGame({required String id,required  String userName,required  String song}) async {
    await gameService.joinGame(id: id, userName: userName, song: song);
    // Any additional logic after joining a game
  }


  Future<Game> getGame({required String objectId}) async {
    final Response response = await gameService.fetchAllGames() as Response;

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final Iterable results = body["results"] as Iterable;
      final List<Game> games = results
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


}