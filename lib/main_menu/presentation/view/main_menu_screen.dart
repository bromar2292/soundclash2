import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'package:soundclash2/authentication/presentation/view/register_screen.dart';
import 'package:soundclash2/leaderboard/presentation/views/leaderboard_screen.dart';

import 'package:soundclash2/manage_games/create_game/presentation/view/create_game_screen.dart';
import 'package:soundclash2/manage_games/current_games/presentation/views/current_games_screen.dart';
import 'package:soundclash2/manage_games/join_game/presentation/views/join_game_screen.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

import '../../../authentication/presentation/view/login_screen.dart';

class MainMenu extends StatelessWidget {
  ParseUser? currentUser;

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
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (Route<dynamic> route) => false,
              );
            });
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
                  return Center(
                    child: Container(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator()),
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
                        const MenuButton(
                          menuText: CreateGameScreen.id,
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
                      ],
                    ),
                  );
              }
            }));
  }
}

class MenuButton extends StatelessWidget {
  final String menuText;

  // ignore: use_key_in_widget_constructors
  const MenuButton({required this.menuText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(menuText),
      onPressed: () {
        Navigator.pushNamed(context, menuText);
      },
    );
  }
}

class Message {
  static void showSuccess(
      {required BuildContext context,
      required String message,
      VoidCallback? onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Success!"),
          content: Text(message),
          actions: <Widget>[
            new ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                if (onPressed != null) {
                  onPressed();
                }
              },
            ),
          ],
        );
      },
    );
  }

  static void showError(
      {required BuildContext context,
      required String message,
      VoidCallback? onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error!"),
          content: Text(message),
          actions: <Widget>[
            new ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                if (onPressed != null) {
                  onPressed();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
