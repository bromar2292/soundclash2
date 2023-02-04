import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/features/gameplay/pick_youtube_song/domain/models/pick_youtube_arguments.dart';
import 'package:soundclash2/features/gameplay/rate_song/presentation/view/rate_song_screen.dart';
import 'package:soundclash2/features/manage_games/current_games/bloc/current_games_bloc.dart';

class CurrentGamesScreen extends StatelessWidget {
  final String userName;
  static const String id = 'Current games screen';

  const CurrentGamesScreen({Key? key, required this.userName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current games screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<CurrentGamesBloc, CurrentGamesState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    context
                        .read<CurrentGamesBloc>()
                        .add(CurrentGamesEvent.load(userName: userName));
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
                                RateSongScreen.id,
                                arguments: PickYoutubeArguments(userName, game),
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
              onPressed: () {},
            ),
          ),
          BlocBuilder<CurrentGamesBloc, CurrentGamesState>(
            builder: (context, state) {
              return Center(
                child: ElevatedButton(
                  child: const Text('refresh list'),
                  onPressed: () async {
                    context
                        .read<CurrentGamesBloc>()
                        .add(CurrentGamesEvent.load(userName: userName));
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
