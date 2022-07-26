import 'package:flutter/material.dart';

class CredentialsWidget extends StatelessWidget {
  final bool obscureText;
  final bool? enabled;
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  const CredentialsWidget({
    Key? key,
    required this.obscureText,
    required this.controller,
    required this.text,
    required this.textInputType,
    this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        enabled: enabled! ? true : enabled,
        controller: controller,
        keyboardType: textInputType,
        textCapitalization: TextCapitalization.none,
        autocorrect: false,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            labelText: text),
      ),
    );
  }
}
