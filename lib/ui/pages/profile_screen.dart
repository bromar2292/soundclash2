import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'Profile screen';

  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile page'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('user name'),
            Text('current level'),
            Text('favorite genres'),
            Text('favorite songs'),
            Text('friends list'),
          ],
        ),
      ),
    );
  }
}
