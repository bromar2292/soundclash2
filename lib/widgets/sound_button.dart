import 'package:flutter/material.dart';

ElevatedButton SoundButton(
    {BuildContext? context, Function? function, required String text}) {
  return ElevatedButton(
    onPressed: function as void Function()?,
    child: Text(text),
  );
}
