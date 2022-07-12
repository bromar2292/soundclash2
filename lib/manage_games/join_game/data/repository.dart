import 'dart:convert';

import 'package:http/http.dart';

import '../../../constants.dart';

class JoinGameRepository {
  static final String _baseUrl = "https://parseapi.back4app.com/classes/Game";

  static Future getGamesList() async {
    Uri apiUrl = Uri.parse(_baseUrl);

    Response response = await get(apiUrl, headers: {
      'X-Parse-Application-Id': kParseApplicationId,
      'X-Parse-REST-API-Key': kParseRestApiKey,
    });

    return response;
  }
}
