import 'dart:convert';

import 'package:http/http.dart';

import '../../../constants.dart';

class JoinGameRepository {
  static final String _baseUrl = "https://parseapi.back4app.com/classes/Game";

  // static Future<Response> addTodo(Todo todo) async {
  //   String apiUrl = _baseUrl ;
//
  //   Response response = await post(
  //     apiUrl,
  //     headers: {
  //       'X-Parse-Application-Id': kParseApplicationId,
  //       'X-Parse-REST-API-Key': kParseRestApiKey,
  //       'Content-Type': 'application/json'
  //     },
  //     body: json.encode(todo.toJson()),
  //   );
//
  //   return response;
  // }

  static Future getGamesList() async {
    Uri apiUrl = Uri.parse(_baseUrl);

    Response response = await get(apiUrl, headers: {
      'X-Parse-Application-Id': kParseApplicationId,
      'X-Parse-REST-API-Key': kParseRestApiKey,
    });

    return response;
  }

  //static Future updateTodo(Todo todo) async {
  //  String apiUrl = _baseUrl + "Todo/${todo.objectId}";

  //  Response response = await put(apiUrl,
  //      headers: {
  //        'X-Parse-Application-Id': kParseApplicationId,
  //        'X-Parse-REST-API-Key': kParseRestApiKey,
  //        'Content-Type': 'application/json',
  //      },
  //      body: json.encode(todo.toJson()));

  //  return response;
  //}

  // static Future deleteTodo(String objectId) async {
  //   String apiUrl = _baseUrl + "Todo/$objectId";
//
  //   Response response = await delete(apiUrl, headers: {
  //     'X-Parse-Application-Id': kParseApplicationId,
  //     'X-Parse-REST-API-Key': kParseRestApiKey,
  //   });
//
  //   return response;
  // }
}
