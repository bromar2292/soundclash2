import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> addSong(
    {required String id,
    required String userName,
    required String song}) async {
  var todo = ParseObject('Game')
    ..objectId = id
    ..get('players')
    ..update()
    ..containsValue(userName)
    ..set(
      'song',
      'jam',
    );

  await todo.save();
  print('step 2');
}
