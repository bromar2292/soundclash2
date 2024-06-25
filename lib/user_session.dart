import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class UserSession {
  UserSession._privateConstructor();
  static final UserSession instance = UserSession._privateConstructor();

  ParseUser? _user;

  void setUser(ParseUser user) {
    _user = user;
  }

  ParseUser? get user => _user;
}
