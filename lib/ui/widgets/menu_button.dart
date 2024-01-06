import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String menuText;
  final String? username;

  // ignore: use_key_in_widget_constructors
  const MenuButton({required this.menuText, this.username});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(menuText),
      onPressed: () {
        Navigator.pushNamed(context, menuText, arguments: username);
      },
    );
  }
}
