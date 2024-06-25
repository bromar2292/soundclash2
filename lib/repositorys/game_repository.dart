import 'dart:convert';

import 'package:http/http.dart';
import 'package:soundclash2/models/game_modal.dart';
import 'package:soundclash2/models/player.dart';
import 'package:soundclash2/services/game_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

abstract class IGameRepository {
  Future<List<Game>> fetchAllGames();
  Future<void> joinGame(
      {required String id, required String userName, required String songUrl,});
  Future<Game> fetchGameByObjectId({required String objectId});
  Future<void> updateGame(
      {required String gameId, required List<Player> updatedPlayers,});
}

class GameRepository implements IGameRepository {
  final GameService gameService = GameService();

  @override
  Future<List<Game>> fetchAllGames() async {
    final Response response = await gameService.fetchAllGames();

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

  @override
  Future<void> joinGame(
      {required String id,
      required String userName,
      required String songUrl,}) async {
    final String? song = YoutubePlayer.convertUrlToId(songUrl);

    await gameService.joinGame(id: id, userName: userName, song: song!);
    // Any additional logic after joining a game
  }

  @override
  Future<Game> fetchGameByObjectId({required String objectId}) async {
    final Response response = await gameService.fetchAllGames();

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

  @override
  Future<void> updateGame(
      {required String gameId, required List<Player> updatedPlayers,}) async {
    await gameService.updateGame(
        gameId: gameId, updatedPlayers: updatedPlayers,);
  }
}
