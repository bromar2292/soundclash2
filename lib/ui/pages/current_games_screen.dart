import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/current_games/current_games_cubit.dart';
import 'package:soundclash2/bloc/current_games/current_games_state.dart';
import 'package:soundclash2/models/pick_youtube_arguments.dart';
import 'package:soundclash2/ui/pages/play_and_rate_song_screen.dart';

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
            child: BlocBuilder<CurrentGamesCubit, CurrentGamesState>(
              builder: (context, state) {
                if (state is CurrentGamesInitial) {
                  context.read<CurrentGamesCubit>().getGames(userName);
                  return const Center(child: CircularProgressIndicator());
                } else if (state is CurrentGamesLoaded) {
                  return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: state.gameList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final game = state.gameList[index];
                      return Center(
                        child: ElevatedButton(
                          child: Text(game.gameName),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              PlayAndRateSongScreen.id,
                              arguments: PickYoutubeArguments(userName, game),
                            );
                          },
                        ),
                      );
                    },
                  );
                } else if (state is CurrentGamesError) {
                  // Handle error state
                  return Center(child: Text(state.message));
                } else {
                  // Handle unknown state
                  return const Center(child: Text('Unknown state'));
                }
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('refresh list'),
              onPressed: () {
                context.read<CurrentGamesCubit>().getGames(userName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
