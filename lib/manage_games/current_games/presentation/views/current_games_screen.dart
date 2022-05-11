import 'package:flutter/material.dart';

class CurrentGamesScreen extends StatelessWidget {
  static const String id = 'Current games screen';

  const CurrentGamesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CurrentGamesScreen.id),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('List of current games'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
