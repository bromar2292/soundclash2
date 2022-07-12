import 'package:flutter/material.dart';
import 'package:soundclash2/constants.dart';

import 'package:soundclash2/my_app.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = kParseApplicationId;
  const keyClientKey = kParseClientkey;
  const keyParseServerUrl = 'https://parseapi.back4app.com';

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