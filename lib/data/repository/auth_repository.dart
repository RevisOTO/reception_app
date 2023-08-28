import 'package:hive/hive.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:reception_app/data/network/entities/auth.dart';
import 'package:reception_app/data/network/entities/user.dart';
import 'package:reception_app/globals/globals.dart';

import '../network/client/api_client.dart';
 

class AuthRepository {
  final ApiClient apiClient;
  AuthRepository({
    required this.apiClient,
  });


  Future<User?> validateSession() async {
    Hive.registerAdapter(AuthAdapter());
    Hive.registerAdapter(UserAdapter());
    var userHive = await Hive.openBox('users');
    var authHive = await Hive.openBox('auths');
    final User? daoUser = userHive.get(0);
    final Auth? daoAuth = authHive.get(0);

    currentUser = daoUser;
    currentAuth = daoAuth;

    return daoUser;
 
  }


  Future<User> login(String email,String password) async {

    try{
      Hive.registerAdapter(AuthAdapter());
      Hive.registerAdapter(UserAdapter());
    }
    // ignore: empty_catches
    catch (e){}
    
    var userHive = await Hive.openBox('users');
    var authHive = await Hive.openBox('auths');
    userHive.clear();
    authHive.clear();

    final auth = await apiClient.login(email,password);
    Map<String, dynamic> payload = Jwt.parseJwt(auth.accessToken??"");
    auth.idUser = payload["id"];
    final user = await apiClient.getUser(auth.idUser ?? "");
    userHive.add(user);
    authHive.add(auth);
 
    currentAuth = auth;
    currentUser = user; 
    return user;
  }
}