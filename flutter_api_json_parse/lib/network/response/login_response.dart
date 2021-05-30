
import 'package:flutter_api_json_parse/network/entity/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

//done this file

@JsonSerializable()
class LoginResponse {

  @JsonKey(name: 'Status')
  final int statusCode;

  @JsonKey(name: 'Message')
  final String message;

  @JsonKey(name: 'Content')
  final UserEntity userEntity;

  LoginResponse({this.statusCode, this.message, this.userEntity});


  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);


}