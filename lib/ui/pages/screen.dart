// final Map<String, Map<String, dynamic>> userScores = {};
// for (final Player user in users) {
// for (final RateSong score in user.score) {
// if (!userScores.containsKey(score.userName)) {
// userScores[score.userName] = {'total': 0, 'count': 0};
// }
// userScores[score.userName]!['total'] += score.score;
// userScores[score.userName]!['count'] += 1;
// }
// }
//
// // Calculate the average score for each user
// final Map<String, double> averages = {};
//
// for (final String userName in userScores.keys) {
// averages[userName] =
// userScores[userName]!['total'].toDouble() / // Convert to double here
// userScores[userName]!['count'];
// }
// // Sort the users by their average score in descending order
// final List<MapEntry<String, double>> sortedUsers =
// averages.entries.toList();
// sortedUsers.sort((a, b) => b.value.compareTo(a.value));
