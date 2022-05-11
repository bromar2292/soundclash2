import 'package:flutter/material.dart';

import 'package:soundclash2/authentication/presentation/view/login_screen.dart';
import 'package:soundclash2/leaderboard/presentation/views/leaderboard_screen.dart';

import 'package:soundclash2/manage_games/create_game/presentation/view/create_game_screen.dart';
import 'package:soundclash2/manage_games/current_games/presentation/views/current_games_screen.dart';
import 'package:soundclash2/manage_games/join_game/presentation/views/join_game_screen.dart';
import 'package:soundclash2/profile/presentation/view/profile_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main menu'),
      ),
      body: Center(
        child: Column(
          children: const [
            MenuButton(
              menuText: ProfilePage.id,
            ),
            MenuButton(
              menuText: LoginScreen.id,
            ),
            MenuButton(
              menuText: CreateGameScreen.id,
            ),
            MenuButton(
              menuText: JoinGameScreen.id,
            ),
            MenuButton(
              menuText: CurrentGamesScreen.id,
            ),
            MenuButton(
              menuText: LeaderBoardScreen.id,
            ),
          ],
        ),
      ),
    );
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
