import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:soundclash2/gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'package:soundclash2/manage_games/join_game/data/repository.dart';

import '../../../../gameplay/models/game.dart';
import '../../../../gameplay/models/player.dart';

class JoinGameScreen extends StatefulWidget {
  static const String id = 'Join game screen';

  const JoinGameScreen({Key? key}) : super(key: key);

  @override
  State<JoinGameScreen> createState() => _JoinGameScreenState();
}

class _JoinGameScreenState extends State<JoinGameScreen> {
  List<Game> gameList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join game screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: gameList.length,
                itemBuilder: (BuildContext context, int index) {
                  final game = gameList[index];
                  return Center(
                    child: ElevatedButton(
                      child: Text(game.gamename),
                      onPressed: () {},
                    ),
                  );
                }),
          ),

          // if (gameList != null)
          //   gameList.forEach(((element) =>  Center(
          //         child: ElevatedButton(
          //           child: Text(element.gameName),
          //           onPressed: () {},
          //         ),
          //       ))),
          Center(
            child: ElevatedButton(
              child: const Text('game 1'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('game 2'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('game 3'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('refresh list'),
              onPressed: () async {
                gameList = await getGameList();
              },
            ),
          ),
        ],
      ),
    );
  }
}

Future<List<Game>> getGameList() async {
  Response response = await JoinGameRepository.getGamesList();

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    Iterable results = body["results"];
    // print(results.first);

    print(results.map((json) => Game.FromJSON(json)).toList());
    // print(response.body);
    return [];
  } else {
    return [];
  }
}

// Future<List<ParseObject>> getGames() async {
//   QueryBuilder<ParseObject> queryGames =
//       QueryBuilder<ParseObject>(ParseObject('Game'));
//   final ParseResponse apiResponse = await queryGames.query();

//   if (apiResponse.success && apiResponse.result != null) {
//     List<ParseObject> results = [];
//     //print(apiResponse.results?.asMap());

//     results = apiResponse.results as List<ParseObject>;

//     // print(results);
//     return results;
//   } else {
//     return [];
//   }
// }
