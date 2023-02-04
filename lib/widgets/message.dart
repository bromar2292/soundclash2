import 'package:flutter/material.dart';

class Message {
  static void showSuccess(
      {required BuildContext context,
      required String message,
      VoidCallback? onPressed,}) {
    dialog(context, message, 'success', onPressed);
  }

  static Future<dynamic> dialog(BuildContext context, String title,
      String message, VoidCallback? onPressed,) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                if (onPressed != null) {
                  onPressed();
                }
              },
            ),
          ],
        );
      },
    );
  }

  static void showError(
      {required BuildContext context,
      required String message,
      VoidCallback? onPressed,}) {
    dialog(context, message, 'Error', onPressed);
  }
}
