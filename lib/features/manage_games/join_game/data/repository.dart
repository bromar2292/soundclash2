import 'package:http/http.dart';

import 'package:soundclash2/constants.dart';

class JoinGameRepository {
  static const String _baseUrl = "https://parseapi.back4app.com/classes/Game";

  static Future getGamesList() async {
    final Uri apiUrl = Uri.parse(_baseUrl);

    Response response = await get(
      apiUrl,
      headers: {
        'X-Parse-Application-Id': kParseApplicationId,
        'X-Parse-REST-API-Key': kParseRestApiKey,
      },
    );

    return response;
  }
}

// make this testable and make it pretty.
