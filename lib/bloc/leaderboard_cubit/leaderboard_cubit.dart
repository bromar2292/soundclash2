import 'package:bloc/bloc.dart';
import 'package:soundclash2/models/leaderboard_entry.dart';
import 'package:soundclash2/models/pick_youtube_arguments.dart';
import 'package:soundclash2/models/player.dart';
import 'package:soundclash2/models/rate_song.dart';
import 'package:soundclash2/user_session.dart';

// Define the states
abstract class LeaderboardState {}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardLoading extends LeaderboardState {}

class LeaderboardLoaded extends LeaderboardState {
  final List<LeaderboardEntry> sortedUsers;

  LeaderboardLoaded(this.sortedUsers);
}

class LeaderboardError extends LeaderboardState {
  final String message;

  LeaderboardError(this.message);
}

// Create the Cubit
class LeaderboardCubit extends Cubit<LeaderboardState> {
  final PickYoutubeArguments arguments;

  LeaderboardCubit(this.arguments) : super(LeaderboardInitial());
  String? userName = UserSession.instance.user!.username;

  void loadLeaderboard() {
    emit(LeaderboardLoading());

    try {
      final List<Player> users = arguments.game.players;

      final Map<String, Map<String, dynamic>> userScores = {};

      for (final Player user in users) {
        userScores[user.userName] = {'total': 0, 'count': 0};
      }

      for (final Player user in users) {
        for (final RateSong score in user.ratingsGiven) {
          if (userScores.containsKey(user.userName)) {
            userScores[user.userName]!['total'] += score.score;
            userScores[user.userName]!['count'] += 1;
          }
        }
      }

      // Create leaderboard entries
      final List<LeaderboardEntry> leaderboardEntries = [];
      for (final String userName in userScores.keys) {
        final int total = userScores[userName]!['total'];
        final int count = userScores[userName]!['count'];
        final double average = count > 0 ? total / count : 0;
        leaderboardEntries.add(LeaderboardEntry(
            playerId: users.indexWhere((u) => u.userName == userName),
            averageRating: average,),);
      }

      leaderboardEntries
          .sort((a, b) => b.averageRating.compareTo(a.averageRating));

      emit(LeaderboardLoaded(leaderboardEntries));
    } catch (e) {
      emit(LeaderboardError("Failed to load leaderboard: $e"));
    }
  }
}
