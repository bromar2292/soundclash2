import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:soundclash2/gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'package:soundclash2/manage_games/join_game/data/repository.dart';

import '../../../../gameplay/models/game.dart';
import '../../../../gameplay/models/player.dart';
import '../../domain/usecase.dart';
import 'bloc/join_game_bloc.dart';

class JoinGameScreen extends StatefulWidget {
  const JoinGameScreen({Key? key}) : super(key: key);

  static const String id = 'Join game screen';

  @override
  State<JoinGameScreen> createState() => _JoinGameScreenState();
}

//List<Game> gameList = [];
//void initState() async {
//  gameList = await getGameList();
//}

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
            child: BlocBuilder<JoinGameBloc, JoinGameState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    context
                        .read<JoinGameBloc>()
                        .add(const JoinGameEvent.load());
                    return const SizedBox(child: Text('hello'));
                  },
                  loaded: (gameList) {
                    return ListView.builder(
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
                      },
                    );
                  },
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('print names'),
              onPressed: () {
                // print(gameList);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('refresh list'),
              onPressed: () async {
                // gameList = await getGameList();

                // print(gameList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
