import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/bloc/leaderboard_cubit/leaderboard_cubit.dart';
import 'package:soundclash2/models/leaderboard_entry.dart';
import 'package:soundclash2/models/pick_youtube_arguments.dart';

class Leaderboard extends StatelessWidget {
  final PickYoutubeArguments arguments;

  const Leaderboard({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeaderboardCubit(arguments)..loadLeaderboard(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Leaderboard')),
        body: BlocBuilder<LeaderboardCubit, LeaderboardState>(
          builder: (context, state) {
            if (state is LeaderboardLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LeaderboardLoaded) {
              return ListView.builder(
                itemCount: state.sortedUsers.length,
                itemBuilder: (BuildContext context, int index) {
                  final LeaderboardEntry entry = state.sortedUsers[index];
                  return ListTile(
                    leading: Text((index + 1).toString()),
                    title:
                        Text(arguments.game.players[entry.playerId].userName),
                    trailing: Text(entry.averageRating.toStringAsFixed(2)),
                  );
                },
              );
            } else if (state is LeaderboardError) {
              return Center(child: Text(state.message));
            } else {
              return const Center(child: Text('Unknown state'));
            }
          },
        ),
      ),
    );
  }
}
