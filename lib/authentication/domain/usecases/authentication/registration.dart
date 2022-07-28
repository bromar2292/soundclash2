import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/authentication/domain/usecases/authentication/show_error.dart';
import 'package:soundclash2/authentication/domain/usecases/authentication/show_success.dart';
import 'package:soundclash2/authentication/presentation/view/register_screen.dart';

void doUserRegistration({
  required BuildContext context,
  required TextEditingController controllerUsername,
  required TextEditingController controllerEmail,
  required TextEditingController controllerPassword,
}) async {
  final username = controllerUsername.text.trim();
  final email = controllerEmail.text.trim();
  final password = controllerPassword.text.trim();

  final user = ParseUser.createUser(username, password, email)..set('wins', 0);

  var response = await user.signUp();

  if (response.success) {
    showSuccess(context, "User was successfully created!");
  } else {
    showError(response.error!.message, context);
  }
}
