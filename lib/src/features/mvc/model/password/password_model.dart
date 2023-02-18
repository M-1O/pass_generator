
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_model.freezed.dart';
part 'password_model.g.dart';

@freezed
class PasswordModel with _$PasswordModel {
  @JsonSerializable(explicitToJson: true)
  const factory PasswordModel({
    required String password,
    required String salt,
    required String passKey,
  }) = _PasswordModel;

  factory PasswordModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordModelFromJson(json);
}
