import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/authentication/presentation/view/login_screen.dart';
import 'package:soundclash2/authentication/presentation/view/register_screen.dart';
import 'package:soundclash2/features/gameplay/pick_youtube_song/domain/models/pick_youtube_arguments.dart';
import 'package:soundclash2/features/gameplay/pick_youtube_song/presentation/bloc/bloc/pick_youtube_song_bloc.dart';
import 'package:soundclash2/features/gameplay/pick_youtube_song/presentation/view/pick_youtube_song_screen.dart';
import 'package:soundclash2/features/gameplay/rate_song/presentation/bloc/bloc/rate_song_bloc.dart';
import 'package:soundclash2/features/gameplay/rate_song/presentation/view/rate_song_screen.dart';
import 'package:soundclash2/features/manage_games/create_game/presentation/bloc/create_game_bloc.dart';
import 'package:soundclash2/features/manage_games/create_game/presentation/view/create_game_screen.dart';
import 'package:soundclash2/features/manage_games/current_games/bloc/current_games_bloc.dart';
import 'package:soundclash2/features/manage_games/current_games/presentation/views/current_games_screen.dart';
import 'package:soundclash2/features/manage_games/join_game/presentation/views/bloc/join_game_bloc.dart';
import 'package:soundclash2/features/manage_games/join_game/presentation/views/join_game_screen.dart';
import 'package:soundclash2/main_menu/presentation/view/main_menu_screen.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

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
              builder: (_) => BlocProvider.value(
                value: PickYoutubeSongBloc(),
                child: PickYoutubeSong(
                  arguments: setting.arguments! as PickYoutubeArguments,
                ),
              ),
              fullscreenDialog: true,
            );
          case CreateGameScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: CreateGameBloc(),
                child: CreateGameScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case CurrentGamesScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: CurrentGamesBloc(),
                child:
                    CurrentGamesScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case JoinGameScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: JoinGameBloc(),
                child: JoinGameScreen(userName: setting.arguments! as String),
              ),
              fullscreenDialog: true,
            );
          case RateSongScreen.id:
            return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: RateSongBloc(),
                child: RateSongScreen(
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
