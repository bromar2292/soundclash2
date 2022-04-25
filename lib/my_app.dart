import 'package:flutter/material.dart';
import 'package:soundclash2/authentication/presentation/view/login_screen.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

import 'gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'leaderboard/presentation/views/leaderboard_screen.dart';
import 'main_menu/presentation/view/main_menu_screen.dart';
import 'manage_games/create_game/presentation/view/create_game_screen.dart';
import 'manage_games/current_games/presentation/views/current_games_screen.dart';
import 'manage_games/join_game/presentation/views/join_game_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MainMenu(),
        ProfilePage.id: (context) => ProfilePage(),
        LoginScreen.id: (context) => LoginScreen(),
        CreateGameScreen.id: (context) => CreateGameScreen(),
        CurrentGamesScreen.id: (context) => CurrentGamesScreen(),
        JoinGameScreen.id: (context) => JoinGameScreen(),
        LeaderBoardScreen.id: (context) => LeaderBoardScreen(),
        PickYoutubeSong.id: (context) => PickYoutubeSong(),
      },
      initialRoute: '/',
    );
  }
}
