import 'package:flutter/material.dart';

import 'package:soundclash2/features/gameplay/models/player.dart';

import 'package:soundclash2/features/gameplay/models/rate_song.dart';

import 'package:soundclash2/features/gameplay/pick_youtube_song/domain/models/pick_youtube_arguments.dart';

class Leaderboard extends StatelessWidget {
  final PickYoutubeArguments arguments;

  const Leaderboard({required this.arguments});

  @override
  Widget build(BuildContext context) {
    final List<Player> users = arguments.game.players;
    // Create a map to store the total score and number of scores for each user
    final Map<String, Map<String, dynamic>> userScores = {};
    for (Player user in users) {
      for (RateSong score in user.score) {
        if (!userScores.containsKey(score.userName)) {
          userScores[score.userName] = {'total': 0, 'count': 0};
        }
        userScores[score.userName]!['total'] += score.score;
        userScores[score.userName]!['count'] += 1;
      }
    }

    // Calculate the average score for each user
    final Map<String, double> averages = {};
    for (final String userName in userScores.keys) {
      averages[userName] = userScores[userName]!['total'] /
          userScores[userName]!['count'] as double;
    }

    // Sort the users by their average score in descending order
    final List<MapEntry<String, double>> sortedUsers =
        averages.entries.toList();
    sortedUsers.sort((a, b) => b.value.compareTo(a.value));

    // Build the leaderboard widget
    return Scaffold(
      appBar: AppBar(title: const Text('Leaderboard')),
      body: ListView.builder(
        itemCount: sortedUsers.length,
        itemBuilder: (BuildContext context, int index) {
          final MapEntry<String, double> entry = sortedUsers[index];
          final String userName = entry.key;
          final double averageScore = entry.value;
          return ListTile(
            leading: Text((index + 1).toString()),
            title: Text(userName),
            trailing: Text(averageScore.toStringAsFixed(2)),
          );
        },
      ),
    );
  }
}
