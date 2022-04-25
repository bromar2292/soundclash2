import 'package:soundclash2/authentication/domain/abstract_auth.dart';
import 'package:soundclash2/authentication/domain/models/users.dart';

class FireBaseAuth implements AuthModule{

@override
  Future<User> login() async {
    
    User user = User();
  //fire base loging details here
  return user ;
}


@override 
  Future<User> register() async {
    User user = User();
  //firebase register here
  return user;
}


}