import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_api_json_parse/domain/user.dart';
import 'package:flutter_api_json_parse/network/api_service.dart';
import 'package:flutter_api_json_parse/utility/app_url.dart';
import 'package:flutter_api_json_parse/utility/shared_preference.dart';
import 'package:http/http.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider extends ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;

  set loggedInStatus(Status value) {
    _loggedInStatus = value;
  }

  Status get registeredInStatus => _registeredInStatus;

  set registeredInStatus(Status value) {
    _registeredInStatus = value;
  }

  Future<Map<String, dynamic>> register(String email, String password) async {
    final Map<String, dynamic> apiBodyData = {
      'email': email,
      'password': password
    };

    return await post(
        AppUrl.register,
        body: json.encode(apiBodyData),
        headers: {'Content-Type':'application/json'}
    ).then(onValue)
        .catchError(onError);
  }


  notify(){
    notifyListeners();
  }

  static Future<FutureOr> onValue (Response response) async {
    var result ;

    final Map<String, dynamic> responseData = json.decode(response.body);

    print(responseData);

    if(response.statusCode == 200){

      var userData = responseData['data'];

      // now we will create a user model
      User authUser = User.fromJson(responseData);

      // now we will create shared preferences and save data
      UserPreferences().saveUser(authUser);

      result = {
        'status':true,
        'message':'Successfully registered',
        'data':authUser
      };

    }else{
      result = {
        'status':false,
        'message':'Successfully registered',
        'data':responseData
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> login(String email, String password) async {

    var result;

    final Map<String, dynamic> loginData = {
      'UserName': email,
      'Password': password
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    // no need
  /*  Response response = await post(
      AppUrl.login,
      body: json.encode(loginData),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Basic ZGlzYXBpdXNlcjpkaXMjMTIz',
        'X-ApiKey' : 'ZGlzIzEyMw=='
      },
    );*/

    // done , now run app

    ApiService apiService = ApiService(dio.Dio());

    final response = await apiService.login(loginData);

    print('${response.toJson()}');

    if (response.statusCode == 200) {


     // final Map<String, dynamic> responseData = json.decode(response.body);

      //print(responseData);

      //var userData = responseData['Content'];



      //User authUser = User.fromJson(userData);
      User authUser = User(
        userId: response.userEntity.id,
        name: response.userEntity.name,
        email : response.userEntity.email,
        phone: response.userEntity.phone,

      );

      UserPreferences().saveUser(authUser);

      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {'status': true, 'message': 'Successful', 'user': authUser};

    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': ''
      };
    }

    return result;

  }


  static onError(error){
    print('the error is ${error.detail}');
    return {
      'status':false,
      'message':'Unsuccessful Request',
      'data':error
    };
  }


}
