// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      language: json['language'] as String,
      theme: json['theme'] as String,
      currency: json['currency'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      passKey: json['passKey'] as String,
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'theme': instance.theme,
      'currency': instance.currency,
      'password': instance.password,
      'salt': instance.salt,
      'passKey': instance.passKey,
    };
