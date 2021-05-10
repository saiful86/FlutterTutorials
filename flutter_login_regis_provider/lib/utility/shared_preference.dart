
import 'package:flutter_login_regis_provider/domain/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {

  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt('userId',user.userId);
    prefs.setString('name',user.name);
    prefs.setString('email',user.email);
    prefs.setString('phone',user.phone);
    prefs.setString('type',user.type);
    prefs.setString('token',user.token);

    return prefs.commit();

  }

  Future<User> getUser ()  async {
   final SharedPreferences prefs = await SharedPreferences.getInstance();

   int userId = prefs.getInt("userId");
   String name = prefs.getString("name");
   String email = prefs.getString("email");
   String phone = prefs.getString("phone");
   String type = prefs.getString("type");
   String token = prefs.getString("token");
   String renewalToken = prefs.getString("renewalToken");

   return User(
       userId: userId,
       name: name,
       email: email,
       phone: phone,
       type: type,
       token: token,
       renewalToken: renewalToken);

  }

  void removeUser() async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove('userId');
    prefs.remove('name');
    prefs.remove('email');
    prefs.remove('phone');
    prefs.remove('type');
    prefs.remove('token');

  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token");
    return token;
  }

}