import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  static const String id = 'Leaderboard screen';

  const LeaderBoardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LeaderBoardScreen.id),
      ),
      body: Center(
        child: Column(
          children: const [
            Text(
                'this will have a list of the people that have won the most games  '),
            Text('or people that have shared the most music  '),
          ],
        ),
      ),
    );
  }
}
