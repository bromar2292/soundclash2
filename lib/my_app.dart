import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/authentication/presentation/view/register_screen.dart';
import 'package:soundclash2/manage_games/join_game/presentation/views/bloc/join_game_bloc.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

import 'authentication/presentation/view/login_screen.dart';
import 'gameplay/pick_youtube_song/presentation/bloc/bloc/pick_youtube_song_bloc.dart';
import 'gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'leaderboard/presentation/views/leaderboard_screen.dart';
import 'main_menu/presentation/view/main_menu_screen.dart';
import 'manage_games/create_game/presentation/bloc/create_game_bloc.dart';
import 'manage_games/create_game/presentation/view/create_game_screen.dart';
import 'manage_games/current_games/presentation/views/current_games_screen.dart';
import 'manage_games/join_game/presentation/views/join_game_screen.dart';

class MyApp extends StatelessWidget {
  Future<bool> hasUserLogged() async {
    ParseUser? currentUser = await ParseUser.currentUser() as ParseUser?;
    if (currentUser == null) {
      return false;
    }
    //Checks whether the user's session token is valid
    final ParseResponse? parseResponse =
        await ParseUser.getCurrentUserFromServer(currentUser.sessionToken!);

    if (parseResponse?.success == null || !parseResponse!.success) {
      //Invalid session. Logout
      await currentUser.logout();
      return false;
    } else {
      return true;
    }
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<bool>(
          future: hasUserLogged(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const Scaffold(
                  body: Center(
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator()),
                  ),
                );
              default:
                if (snapshot.hasData && snapshot.data!) {
                  return MainMenu();
                } else {
                  return const LoginScreen();
                }
            }
          }),
      routes: {
        //'/': (context) => const MainMenu(),
        MainMenu.id: (context) => MainMenu(),
        ProfilePage.id: (context) => const ProfilePage(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        CreateGameScreen.id: (context) => BlocProvider.value(
            value: CreateGameBloc(), child: const CreateGameScreen()),
        CurrentGamesScreen.id: (context) => const CurrentGamesScreen(),
        JoinGameScreen.id: (context) => BlocProvider.value(
            value: JoinGameBloc(), child: const JoinGameScreen()),
        LeaderBoardScreen.id: (context) => const LeaderBoardScreen(),
      },
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case PickYoutubeSong.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: PickYoutubeSongBloc(),
                child: PickYoutubeSong(setting.arguments as String),
              ),
              fullscreenDialog: true,
            );
          default:
            return MaterialPageRoute(
              builder: (_) => const Material(
                child: Center(
                  child: Text('Sorry no route found'),
                ),
              ),
            );
        }
      },
      initialRoute: '/',
    );
  }
}
