
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_regis_provider/domain/user.dart';

class UserProvider extends ChangeNotifier{

  User _user = User();

  User get user => _user;

  void setUser (User user){
    _user = user;
    notifyListeners();
  }
}