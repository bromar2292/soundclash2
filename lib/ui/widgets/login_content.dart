import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:soundclash2/ui/pages/main_menu_screen.dart';
import 'package:soundclash2/ui/pages/register_screen.dart';
import 'package:soundclash2/ui/widgets/input_info.dart';
import 'package:soundclash2/ui/widgets/message.dart';

Center LoginContent(
    BuildContext context,
    bool isLoggedIn,
    TextEditingController controllerUsername,
    TextEditingController controllerPassword,) {
  Future<void> doUserLogout() async {
    final user = await ParseUser.currentUser() as ParseUser;
    final response = await user.logout();

    if (response.success) {
      Message.showSuccess(
          context: context, message: "User was successfully logout!",);
      // setState(() {
      //   isLoggedIn = false;
      // });
    } else {
      Message.showError(message: response.error!.message, context: context);
    }
  }

  Future<void> doUserLogin() async {
    final username = controllerUsername.text.trim();
    final password = controllerPassword.text.trim();

    final user = ParseUser(username, password, null);

    final response = await user.login();

    if (response.success) {
      navigateToMainMenu(context);
      Message.showSuccess(
          context: context, message: "User was successfully login!",);

      // setState(() {
      //   isLoggedIn = true;
      // });
    } else {
      Message.showError(message: response.error!.message, context: context);
    }
  }

  return Center(
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text('Login to Soundclash',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 16,
          ),
          const Center(
            child: Text('User Login/Logout', style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(
            height: 16,
          ),
          InputWidget(
            enabled: !isLoggedIn,
            controller: controllerUsername,
            text: 'Username',
          ),
          InputWidget(
            enabled: !isLoggedIn,
            obscureText: true,
            controller: controllerPassword,
            text: 'Password',
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: isLoggedIn ? null : () => doUserLogin(),
              child: const Text('Login'),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              child: const Text('Sign Up'),
              onPressed: () => Navigator.pushNamed(context, RegisterScreen.id),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: isLoggedIn ? null : () => doUserLogout(),
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    ),
  );
}

void navigateToMainMenu(BuildContext context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => MainMenu()),
    (Route<dynamic> route) => false,
  );
}
