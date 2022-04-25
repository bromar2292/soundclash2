import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  static const String id = 'Profile screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('user name'),
            const Text('current level'),
            const Text('favorite genres'),
            const Text('favorite songs'),
            const Text('friends list'),
          ],
        ),
      ),
    );
  }
}
