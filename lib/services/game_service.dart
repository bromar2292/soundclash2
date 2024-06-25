// ignore_for_file: avoid_classes_with_only_static_members

import 'package:http/http.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/constants.dart';

import 'package:soundclash2/models/player.dart';

abstract class IGameService {
  Future<Response> fetchAllGames();

  Future<void> joinGame({
    required String id,
    required String userName,
    required String song,
  });
  Future<void> createNewGame({
    required String gameName,
    required String userName,
    required String song,
  });
  Future<void> updateGame({
    required String gameId,
    required List<Player> updatedPlayers,
  });
}

class GameService implements IGameService {
  final String _baseUrl = "https://parseapi.back4app.com/classes/Game";

  @override
  Future<void> createNewGame({
    required String gameName,
    required String userName,
    required String song,
  }) async {
    final firstObject = ParseObject('Game')
      ..set('gameName', gameName.isNotEmpty ? gameName : 'nameless')
      ..set('password', 'peace')
      ..set('leaderboard', [])
      ..setAddAll('players', [
        {
          'userName': userName,
          'song': song,
          'ratingsGiven': [],
        },
      ])
      ..set('count', 4);
    await firstObject.save();
  }

  @override
  Future<Response> fetchAllGames() async {
    final Uri apiUrl = Uri.parse(_baseUrl);

    final Response response = await get(
      apiUrl,
      headers: {
        'X-Parse-Application-Id': kParseApplicationId,
        'X-Parse-REST-API-Key': kParseRestApiKey,
      },
    );

    return response;
  }

  @override
  Future<void> joinGame({
    required String id,
    required String userName,
    required String song,
  }) async {
    final todo = ParseObject('Game')
      ..objectId = id
      ..setAdd('players', {
        'userName': userName,
        'song': song,
        'ratingsGiven': [],
      });
    await todo.save();
  }

  @override
  Future<void> updateGame({
    required String gameId,
    required List<Player> updatedPlayers,
  }) async {
    final gameToUpdate = ParseObject('Game')..objectId = gameId;

    gameToUpdate.set(
        'players', updatedPlayers.map((player) => player.toJson()).toList(),);

    try {
      final ParseResponse response = await gameToUpdate.save();

      if (response.success) {
        print('Game updated successfully!');
      } else {
        print('Error updating game: ${response.error?.message}');
      }
    } catch (e) {
      print('Error updating game: $e');
    }
  }
}
