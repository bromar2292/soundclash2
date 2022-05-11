import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'Login Screen';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LoginScreen.id),
      ),
      body: const Center(
        child: Text('this screen will have the option to sign up and register'),
      ),
    );
  }
}
