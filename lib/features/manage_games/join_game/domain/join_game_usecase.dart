import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

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
