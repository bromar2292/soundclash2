import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/authentication/presentation/view/login_screen.dart';
import 'package:soundclash2/manage_games/join_game/presentation/views/bloc/join_game_bloc.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

import 'gameplay/pick_youtube_song/presentation/bloc/bloc/pick_youtube_song_bloc.dart';
import 'gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'leaderboard/presentation/views/leaderboard_screen.dart';
import 'main_menu/presentation/view/main_menu_screen.dart';
import 'manage_games/create_game/presentation/bloc/create_game_bloc.dart';
import 'manage_games/create_game/presentation/view/create_game_screen.dart';
import 'manage_games/current_games/presentation/views/current_games_screen.dart';
import 'manage_games/join_game/presentation/views/join_game_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MainMenu(),
        ProfilePage.id: (context) => const ProfilePage(),
        LoginScreen.id: (context) => const LoginScreen(),
        CreateGameScreen.id: (context) => BlocProvider.value(
            value: CreateGameBloc(), child: CreateGameScreen()),
        CurrentGamesScreen.id: (context) => const CurrentGamesScreen(),

        JoinGameScreen.id: (context) =>
            BlocProvider.value(value: JoinGameBloc(), child: JoinGameScreen()),
        LeaderBoardScreen.id: (context) => const LeaderBoardScreen(),
        //RateSongScreen.id: (context) => RateSongScreen(youtubelist),
        PickYoutubeSong.id: (context) => BlocProvider.value(
            value: PickYoutubeSongBloc(), child: PickYoutubeSong())
      },
      initialRoute: '/',
    );
  }
}
