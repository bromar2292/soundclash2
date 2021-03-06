import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:soundclash2/authentication/presentation/view/register_screen.dart';
import 'package:soundclash2/leaderboard/presentation/views/leaderboard_screen.dart';

import 'package:soundclash2/manage_games/create_game/presentation/view/create_game_screen.dart';
import 'package:soundclash2/manage_games/current_games/presentation/views/current_games_screen.dart';
import 'package:soundclash2/manage_games/join_game/presentation/views/join_game_screen.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

import '../../../authentication/presentation/view/login_screen.dart';
import '../widgets/menu_button.dart';
import '../../../widgets/message.dart';

class MainMenu extends StatelessWidget {
  ParseUser? currentUser;

  MainMenu({Key? key}) : super(key: key);

  Future<ParseUser?> getUser() async {
    currentUser = await ParseUser.currentUser() as ParseUser?;
    return currentUser;
  }

  static const String id = 'MainMenu screen';

  @override
  Widget build(BuildContext context) {
    void doUserLogout() async {
      var response = await currentUser!.logout();
      if (response.success) {
        Message.showSuccess(
          context: context,
          message: 'User was successfully logout!',
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
              (Route<dynamic> route) => false,
            );
          },
        );
      } else {
        Message.showError(context: context, message: response.error!.message);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main menu'),
      ),
      body: FutureBuilder<ParseUser?>(
        future: getUser(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(),
                ),
              );
            default:
              return Center(
                child: Column(
                  children: [
                    Text('Hello, ${snapshot.data!.username}'),
                    const MenuButton(
                      menuText: ProfilePage.id,
                    ),
                    const MenuButton(
                      menuText: RegisterScreen.id,
                    ),
                    const MenuButton(
                      menuText: LoginScreen.id,
                    ),
                    MenuButton(
                      menuText: CreateGameScreen.id,
                      username: snapshot.data!.username,
                    ),
                    const MenuButton(
                      menuText: JoinGameScreen.id,
                    ),
                    const MenuButton(
                      menuText: CurrentGamesScreen.id,
                    ),
                    const MenuButton(
                      menuText: LeaderBoardScreen.id,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        child: const Text('Logout'),
                        onPressed: () => doUserLogout(),
                      ),
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
