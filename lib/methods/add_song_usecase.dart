
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> addSong(
    {required String id,
    required String userName,
    required String song,}) async {
  final todo = ParseObject('Game')
    ..objectId = id
    ..get('players')
    ..update()
    ..containsValue(userName)
    ..set(
      'song',
      'jam',
    );

  await todo.save();

}
