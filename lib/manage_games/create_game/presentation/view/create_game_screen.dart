import 'package:flutter/material.dart';

class CreateGameScreen extends StatelessWidget {
  @override
  static const String id = 'Create Game Screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CreateGameScreen.id),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('create and name a game of 5 players'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
