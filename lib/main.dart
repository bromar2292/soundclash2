import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/constants.dart';
import 'package:soundclash2/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = kParseApplicationId;
  const keyClientKey = kParseClientKey;
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
  );

  final firstObject = ParseObject('FirstClass')
    ..set(
      'messages',
      'Hey ! First message from Flutter. Parse is now connected',
    )
    ..set('more', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();

  runApp(
    DevicePreview(
      // ignore: prefer_const_literals_to_create_immutables
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}
