import 'package:digikala_app/di/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthManager{
  static final SharedPreferences _sharedPreferences = locator.get();
  static final ValueNotifier<String?> authChangeNotifier = ValueNotifier(null);


  //Save Token
  static void saveToken(String token) async{
    _sharedPreferences.setString('access_token', token);
    authChangeNotifier.value =  token;
  }


  //Read Token
  static String readAuth(){
    return _sharedPreferences.getString('access_token') ?? '';
  }


  // Notifying value when it is null
  static void logOut(){
    _sharedPreferences.clear();
    authChangeNotifier.value = null;
  }


  static bool isLoggedIn(){
    String token = readAuth();
    return token.isNotEmpty;//false or true
  }

}
