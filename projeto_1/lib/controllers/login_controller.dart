import 'package:flutter/cupertino.dart';
import 'package:projeto_1/services/prefs_service.dart';

class LoginController {

  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  String? _password;

  setLogin(String value) => _login = value;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds:2));
    inLoader.value = false;
    if (_login == 'admin' && _password == 'admin123'){
      PrefService.save(_login!);
      return true;
    }
    return false;
  }
}