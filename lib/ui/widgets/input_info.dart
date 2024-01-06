import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final bool? obscureText;
  final bool? enabled;
  final String? text;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Function(String)? function;
  final Function()? clearFunction;
  final Icon? icon;

  const InputWidget(
      {Key? key,
      this.clearFunction,
      required this.controller,
      this.function,
      this.icon,
      this.text,
      this.obscureText,
      this.enabled,
      this.textInputType = TextInputType.text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 28.0,
        vertical: 5,
      ),
      child: TextField(
        enabled: enabled ?? true,
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              clearFunction;
              controller.clear();
            },
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: icon,
          ),
          border: const UnderlineInputBorder(),
          labelText: text,
        ),
        onChanged: function,
      ),
    );
  }
}
