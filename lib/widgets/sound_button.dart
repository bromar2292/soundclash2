import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ElevatedButton SoundButton(
    {BuildContext? context, Function? function, required String text}) {
  return ElevatedButton(
    onPressed: function as void Function()?,
    child: Text(text),
  );
}
