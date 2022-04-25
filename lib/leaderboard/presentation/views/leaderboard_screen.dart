import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  static const String id = 'Leaderboard screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LeaderBoardScreen.id),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'this will have a list of the people that have won the most games  '),
            Text('or people that have shared the most music  '),
          ],
        ),
      ),
    );
  }
}
