// ignore_for_file: avoid_classes_with_only_static_members

import 'package:http/http.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/constants.dart';

class GameService {
  static const String _baseUrl = "https://parseapi.back4app.com/classes/Game";

   Future fetchAllGames() async {
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
        'score': [
          {'userName': userName, 'score': 0, 'position': ''},
        ],
      });
    await todo.save();
  }
  Future<void> createGameUsecase(
      {required String gameName,
        required String userName,
        required String song,}) async {
    final firstObject = ParseObject('Game')
      ..set('gameName', gameName.isNotEmpty ? gameName : 'nameless')
      ..set('password', 'peace')
      ..setAddAll('players', [
        {
          'userName': userName,
          'song': song,
          'score': [
            {'userName': userName, 'score': 0, 'position': ''},
          ],
        },
      ])
      ..set('count', 4);
    await firstObject.save();
  }

}

// make this testable and make it pretty.
