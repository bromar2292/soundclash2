import 'dart:convert';

import 'package:http/http.dart';
import 'package:soundclash2/modals/game_modal.dart';
import 'package:soundclash2/services/game_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

  Future<void> joinGame(
      {required String id,
      required String userName,
      required String songUrl}) async {
    final String? song = YoutubePlayer.convertUrlToId(songUrl);

    await gameService.joinGame(id: id, userName: userName, song: song!);
    // Any additional logic after joining a game
  }

  Future<Game> fetchGameByObjectId({required String objectId}) async {
    final Response response = await gameService.fetchAllGames() as Response;

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final Iterable results = body["results"] as Iterable;
      final List<Game> games = results
          .map((json) => Game.FromJSON(json as Map<String, dynamic>))
          .toList();
      return games.firstWhere((e) => e.objectId == objectId);
    } else {
      throw Exception("no game in game list");
      // return Game(
      //   objectId: 'null',
      //   gameName: 'null',
      //   password: 'null',
      //   players: [],
      //   count: 0,
      //   createdAt: DateTime.now(),
      //   updatedAt: DateTime.now(),
      //   leaderboard: [],
      // );
    }
  }
}
