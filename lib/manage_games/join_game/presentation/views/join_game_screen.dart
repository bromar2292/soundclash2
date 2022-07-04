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

List<Game> gameList = [];
void initState() async {
  gameList = await getGameList();
}

class _JoinGameScreenState extends State<JoinGameScreen> {
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
          Center(
            child: ElevatedButton(
              child: const Text('print names'),
              onPressed: () {
                print(gameList);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('refresh list'),
              onPressed: () async {
                gameList = await getGameList();
                setState(() {});
                print(gameList);
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
    print(response.body);
    return results.map((json) => Game.FromJSON(json)).toList();
  } else {
    return [];
  }
}
