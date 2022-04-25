import 'models/users.dart';

abstract class AuthModule {
  Future<User> login();
  Future<User> register();
}
