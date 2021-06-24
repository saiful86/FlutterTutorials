// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return UserEntity(
    userName: json['UserName'] as String,
    id: json['Id'] as int,
    email: json['Email'] as String,
    phone: json['Phone'] as String,
    name: json['Name'] as String,
    photo: json['Photo'] as String,
  );
}

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'UserName': instance.userName,
      'Id': instance.id,
      'Email': instance.email,
      'Phone': instance.phone,
      'Name': instance.name,
      'Photo': instance.photo,
    };
