import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/authentication/presentation/view/register_screen.dart';
import 'package:soundclash2/main_menu/presentation/view/main_menu_screen.dart';
import 'package:soundclash2/widgets/input_info.dart';

import '../../../widgets/message.dart';
import '../../domain/usecases/authentication/show_error.dart';
import '../../domain/usecases/authentication/show_success.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login Screen';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Login/Logout'),
          leading: isLoggedIn
              ? IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MainMenu.id);
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                )
              : null,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text('Login to Soundclash',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child:
                      Text('User Login/Logout', style: TextStyle(fontSize: 16)),
                ),
                const SizedBox(
                  height: 16,
                ),
                InputWidget(
                  enabled: !isLoggedIn,
                  controller: controllerUsername,
                  text: 'Username',
                  textInputType: TextInputType.text,
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
                    child: const Text('Login'),
                    onPressed: isLoggedIn ? null : () => doUserLogin(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () =>
                        Navigator.pushNamed(context, RegisterScreen.id),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Logout'),
                    onPressed: isLoggedIn ? null : () => doUserLogout(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void doUserLogin() async {
    final username = controllerUsername.text.trim();
    final password = controllerPassword.text.trim();

    final user = ParseUser(username, password, null);

    var response = await user.login();

    if (response.success) {
      navigateToMainMenu(context);
      Message.showSuccess(
          context: context, message: "User was successfully login!");

      setState(() {
        isLoggedIn = true;
      });
    } else {
      Message.showError(message: response.error!.message, context: context);
    }
  }

  void doUserLogout() async {
    final user = await ParseUser.currentUser() as ParseUser;
    var response = await user.logout();

    if (response.success) {
      Message.showSuccess(
          context: context, message: "User was successfully logout!");
      setState(() {
        isLoggedIn = false;
      });
    } else {
      Message.showError(message: response.error!.message, context: context);
    }
  }
}

void navigateToMainMenu(BuildContext context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => MainMenu()),
    (Route<dynamic> route) => false,
  );
}
