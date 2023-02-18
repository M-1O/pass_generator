import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grassport/src/features/mvc/model/password/password_model.dart';

import 'password_input.dart';
import 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordState.initial());

  set password(String value) {
    emit(state.copyWith(
      passwordModel: PasswordModel(
        password: value,
        salt: state.passwordModel.salt,
        passKey: state.passwordModel.passKey,
      ),
      status: PasswordInput.dirty(value).status,
    ));
  }

  set salt(String value) {
    emit(state.copyWith(
      passwordModel: PasswordModel(
        password: state.passwordModel.password,
        salt: value,
        passKey: state.passwordModel.passKey,
      ),
      status: PasswordInput.dirty(value).status,
    ));
  }

  set passKey(String value) {
    emit(state.copyWith(
      passwordModel: PasswordModel(
        password: state.passwordModel.password,
        salt: state.passwordModel.salt,
        passKey: value,
      ),
      status: PasswordInput.dirty(value).status,
    ));
  }

  set length(int value) {}

  void submit() {
    emit(state.copyWith(
      passwordModel: PasswordModel(
        password: state.passwordModel.password,
        salt: state.passwordModel.salt,
        passKey: state.passwordModel.passKey,
      ),
      status: FormzInputStatus.valid,
    ));
  }
}
