import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
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

/// omar notes for myself
/// goal is to promote music shareing as much as possible
/// build with points system first then maybe intergrade crypto
/// could just have points for everytime you share doensnt have to be a meme coin
///
///
/// blockchain intergration ideas ?
/// meme coin token can basicly be worthless in terms of rewards but its a nice way to see points
/// pros of blockchain.... can get investment more easy
/// more likely to get users as they are money incentivised early
/// will be great eperience for me and i can get a job in crypto
/// tokens when you win
/// tokens when someone rates your song a 5,
/// tokens when someone adds your playlist song to there playlist
///

/// what if you pay fixed amount every month like 1 pound and that goes into treasurey / buy tokens
///
///  can you spend tokens ? this needs to be thought about maybe when you favourite somones tunes?
///  yes you can withdraw tokens and trade on the market
/// do you pay tokens to play ?
/// do you pay to keep tokens in circulation ?
/// tokens in circulation are a problem for speculation
///
///
/// cons what if tokens get so high you cant play
///
///
/// figure out how to stop gamificatoin ie somone just making multiple accounts and playing with them selves
///
///
///
///
///
