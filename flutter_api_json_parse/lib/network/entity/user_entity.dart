
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

//done this file

@JsonSerializable()
class UserEntity {

  @JsonKey(name: 'UserName')
  final String userName;

  @JsonKey(name: 'Id')
  final int id;

  @JsonKey(name: 'Email')
  final String email;

  @JsonKey(name: 'Phone')
  final String phone;

  @JsonKey(name: 'Name')
  final String name;

  @JsonKey(name: 'Photo')
  final String photo;

  UserEntity({
      this.userName, this.id, this.email, this.phone, this.name, this.photo});

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);


}