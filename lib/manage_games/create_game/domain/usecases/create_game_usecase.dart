import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future createGameUsecase(String gameName) async {
  var firstObject = ParseObject('Game')
    ..set('gamename', gameName.isNotEmpty ? gameName : 'nameless')
    ..set('password', 'peace')
    ..setAddAll('players', [
      {
        'name': 'omar',
        'song': 'nPt8bK2gbaU',
        'score': [0]
      },
      {
        'name': 'rachel',
        'song': 'gQDByCdjUXw',
        'score': [0]
      },
      {
        'name': 'ishan',
        'song': 'gQDByCdjUXw',
        'score': [0]
      }
    ])
    ..set('count', 4);
  await firstObject.save();
  print('it worked');
}
