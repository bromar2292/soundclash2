import 'package:flutter/material.dart';

class CreateGameScreen extends StatelessWidget {
  static const String id = 'Create Game Screen';

  const CreateGameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CreateGameScreen.id),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('create and name a game of 5 players'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
