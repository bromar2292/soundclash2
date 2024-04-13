import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/bloc/join_game_bloc/join_game_cubit.dart';
import 'package:soundclash2/bloc/pick_youtube_song_bloc/pick_youtube_cubit.dart';
import 'package:soundclash2/modals/pick_youtube_arguments.dart';
import 'package:soundclash2/repositorys/game_repository.dart';
import 'package:soundclash2/services/game_service.dart';
import 'package:soundclash2/ui/pages/create_game_screen.dart';
import 'package:soundclash2/ui/pages/current_games_screen.dart';
import 'package:soundclash2/ui/pages/join_game_screen.dart';
import 'package:soundclash2/ui/pages/login_screen.dart';
import 'package:soundclash2/ui/pages/main_menu_screen.dart';
import 'package:soundclash2/ui/pages/pick_youtube_song_screen.dart';
import 'package:soundclash2/ui/pages/play_and_rate_song_screen.dart';
import 'package:soundclash2/ui/pages/profile_screen.dart';
import 'package:soundclash2/ui/pages/register_screen.dart';

import 'bloc/create_game_bloc/create_game_cubit.dart';
import 'bloc/current_games/current_games_cubit.dart';
import 'bloc/rate_song_bloc/rate_song_cubit.dart';

class MyApp extends StatelessWidget {
  // put in cubit
  Future<bool> hasUserLogged() async {
    final ParseUser? currentUser = await ParseUser.currentUser() as ParseUser?;
    if (currentUser == null) {
      return false;
    }
    //Checks whether the user's session token is valid
    final ParseResponse? parseResponse =
        await ParseUser.getCurrentUserFromServer(currentUser.sessionToken!);

    if (parseResponse?.success == null || !parseResponse!.success) {
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
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: FutureBuilder<bool>(
        //  add comment here
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
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            default:
              if (snapshot.hasData && snapshot.data!) {
                return MainMenu();
              } else {
                return const LoginScreen();
              }
          }
        },
      ),
      routes: {
        MainMenu.id: (context) => MainMenu(),
        ProfilePage.id: (context) => const ProfilePage(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case PickYoutubeSong.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<PickYoutubeSongCubit>(
                create: (context) => PickYoutubeSongCubit(),
                child: PickYoutubeSong(
                  arguments: setting.arguments! as PickYoutubeArguments,
                ),
              ),
              fullscreenDialog: true,
            );
          case CreateGameScreen.id:
            return MaterialPageRoute(
              builder: (context) => BlocProvider<CreateGameCubit>(
                create: (context) =>
                    CreateGameCubit(GameService()), // Corrected
                child: CreateGameScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case CurrentGamesScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<CurrentGamesCubit>(
                create: (context) => CurrentGamesCubit(GameRepository()),
                child:
                    CurrentGamesScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case JoinGameScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<JoinGameCubit>(
                create: (context) => JoinGameCubit(GameRepository()),
                child: JoinGameScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case PlayAndRateSongScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<RateSongCubit>(
                create: (context) => RateSongCubit(GameRepository()),
                child: PlayAndRateSongScreen(
                  arguments: setting.arguments! as PickYoutubeArguments,
                ),
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
