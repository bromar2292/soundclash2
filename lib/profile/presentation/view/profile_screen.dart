import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'Profile screen';

  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile page'),
      ),
      body: Center(
        child: Column(
          children: const [
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
