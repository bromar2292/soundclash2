import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import '../../../main_menu/presentation/view/main_menu_screen.dart';
import '../../../widgets/input_info.dart';
import '../../domain/usecases/authentication/registration.dart';
import '../../domain/usecases/authentication/show_error.dart';
import '../../domain/usecases/authentication/show_success.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'Register Screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final controllerUsername = TextEditingController();
final controllerPassword = TextEditingController();
final controllerEmail = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text('Register to soundclash',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 16,
              ),
              const Center(
                child:
                    Text('User registration', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(
                height: 16,
              ),
              InputWidget(
                controller: controllerUsername,
                text: 'Username',
                textInputType: TextInputType.text,
              ),
              InputWidget(
                controller: controllerEmail,
                text: 'E-mail',
                textInputType: TextInputType.emailAddress,
              ),
              InputWidget(
                controller: controllerPassword,
                text: 'Password',
                textInputType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(
                height: 50,
                child: TextButton(
                  child: const Text('Sign Up'),
                  onPressed: () => doUserRegistration(
                      context: context,
                      controllerUsername: controllerUsername,
                      controllerEmail: controllerEmail,
                      controllerPassword: controllerPassword),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
