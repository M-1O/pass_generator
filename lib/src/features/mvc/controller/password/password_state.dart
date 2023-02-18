import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/password/password_model.dart';

part 'password_state.freezed.dart';

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState({
    required PasswordModel passwordModel,
    required FormzInputStatus status,
  }) = _PasswordState;

  factory PasswordState.initial() => const PasswordState(
        passwordModel: PasswordModel(
          password: '',
          salt: '',
          passKey: '',
        ),
        status: FormzInputStatus.pure,
      );
}
