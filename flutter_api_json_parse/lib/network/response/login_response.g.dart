// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    statusCode: json['Status'] as int,
    message: json['Message'] as String,
    userEntity: UserEntity.fromJson(json['Content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'Status': instance.statusCode,
      'Message': instance.message,
      'Content': instance.userEntity,
    };
