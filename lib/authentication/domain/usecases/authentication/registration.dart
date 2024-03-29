import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'package:soundclash2/ui/widgets/message.dart';

Future<void> doUserRegistration({
  required BuildContext context,
  required TextEditingController controllerUsername,
  required TextEditingController controllerEmail,
  required TextEditingController controllerPassword,
}) async {
  final username = controllerUsername.text.trim();
  final email = controllerEmail.text.trim();
  final password = controllerPassword.text.trim();

  final user = ParseUser.createUser(username, password, email)..set('wins', 0);

  final response = await user.signUp();

  if (response.success) {
    Message.showSuccess(
        context: context, message: "User was successfully created!",);
  } else {
    Message.showError(message: response.error!.message, context: context);
  }
}
