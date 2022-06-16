import 'package:flutter/material.dart';

import 'package:soundclash2/my_app.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'JrijWLy8NuWA4oQxc4dezbbZR7lJp8xeCObjgKVx';
  final keyClientKey = 'Gj2FBfFuGkrIqfPkiaSpU4VwAEbE6ec6ycfithMK';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  var firstObject = ParseObject('FirstClass')
    ..set(
        'messages', 'Hey ! First message from Flutter. Parse is now connected')
    ..set('more', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();

  runApp(
    MyApp(),
  );
}

// how do i save data in the app