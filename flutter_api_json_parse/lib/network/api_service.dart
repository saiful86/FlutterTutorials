

import 'package:dio/dio.dart';
import 'package:flutter_api_json_parse/network/response/login_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

// done this file

@RestApi(baseUrl:'http://124.130.54.88/api') // Enter you base URL
abstract class ApiService {

  factory ApiService(Dio dio, {String baseUrl}){

    dio.options = BaseOptions(
      receiveTimeout: 30000,
      connectTimeout: 30000,
      contentType: 'application/json',
	  /* If need headers */
      headers: {
        'Authorization': 'Basic ZGlzYXBpdXNlcjpkaXMjMTIz',
        'X-ApiKey': 'ZGslzIzEyMw==',
        'Content-Type': 'application/json'
      }
    );

    return _ApiService(dio,baseUrl:baseUrl);
  }

  // Login service
  @POST('/ApiLogin') // enter your api method
  Future<LoginResponse> login (@Body() Map<String,dynamic> body);


}