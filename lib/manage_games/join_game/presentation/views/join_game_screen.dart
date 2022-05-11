import 'package:flutter/material.dart';

import 'package:soundclash2/gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';

class JoinGameScreen extends StatelessWidget {
  static const String id = 'Join game screen';

  const JoinGameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(JoinGameScreen.id),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('game 1'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('game 2'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('game 3'),
              onPressed: () {
                Navigator.of(context).pushNamed(PickYoutubeSong.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
