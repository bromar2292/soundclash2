
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future createGameUsecase(
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
