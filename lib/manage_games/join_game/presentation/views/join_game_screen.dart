import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:soundclash2/gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';

import 'bloc/join_game_bloc.dart';

class JoinGameScreen extends StatefulWidget {
  const JoinGameScreen({Key? key}) : super(key: key);

  static const String id = 'Join game screen';

  @override
  State<JoinGameScreen> createState() => _JoinGameScreenState();
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
          Expanded(
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
                            child: Text(game.gameName),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                PickYoutubeSong.id,
                                arguments: game.objectId,
                              );
                            },
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
          BlocBuilder<JoinGameBloc, JoinGameState>(
            builder: (context, state) {
              return Center(
                child: ElevatedButton(
                  child: const Text('refresh list'),
                  onPressed: () async {
                    context
                        .read<JoinGameBloc>()
                        .add(const JoinGameEvent.load());
                    setState(() {});
                    // print(gameList);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
