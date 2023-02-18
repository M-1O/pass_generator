// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordModel _$$_PasswordModelFromJson(Map<String, dynamic> json) =>
    _$_PasswordModel(
      password: json['password'] as String,
      salt: json['salt'] as String,
      passKey: json['passKey'] as String,
    );

Map<String, dynamic> _$$_PasswordModelToJson(_$_PasswordModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'salt': instance.salt,
      'passKey': instance.passKey,
    };
