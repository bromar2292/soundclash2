import 'package:flutter/material.dart';
import 'package:soundclash2/authentication/domain/usecases/authentication/registration.dart';
import 'package:soundclash2/ui/widgets/input_info.dart';

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
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
              ),
              InputWidget(
                controller: controllerEmail,
                text: 'E-mail',
                textInputType: TextInputType.emailAddress,
              ),
              InputWidget(
                controller: controllerPassword,
                text: 'Password',
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
                      controllerPassword: controllerPassword,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
