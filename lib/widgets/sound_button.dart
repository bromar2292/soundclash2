import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ElevatedButton SoundButton(
    {BuildContext? context, void Function()? function, required String text,}) {
  return ElevatedButton(
    onPressed: function,
    child: Text(text),
  );
}
