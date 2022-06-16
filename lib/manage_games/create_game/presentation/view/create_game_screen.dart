import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CreateGameScreen extends StatelessWidget {
  static const String id = 'Create Game Screen';

  const CreateGameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CreateGameScreen.id),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('create and name a game of 5 players'),
          onPressed: () async {
            //  Navigator.of(context).pop();
            await createGame();
          },
        ),
      ),
    );
  }
}

Future createGame() async {
  var firstObject = ParseObject('Game')
    ..set('gamename', 'bangers')
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
