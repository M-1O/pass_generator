import 'package:formz/formz.dart';

enum PasswordInputError {
  empty,
  tooShort,
  tooLong,
  noUppercase,
  noLowercase,
  noNumber,
  noSpecialCharacter,
  noMatch,
}

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  static final RegExp _uppercaseRegExp = RegExp(r'[A-Z]');
  static final RegExp _lowercaseRegExp = RegExp(r'[a-z]');
  static final RegExp _numberRegExp = RegExp(r'[0-9]');
  static final RegExp _specialCharacterRegExp =
      RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  @override
  PasswordInputError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PasswordInputError.empty;
    }
    if (value.length < 8) {
      return PasswordInputError.tooShort;
    }
    if (value.length > 32) {
      return PasswordInputError.tooLong;
    }
    if (!_uppercaseRegExp.hasMatch(value)) {
      return PasswordInputError.noUppercase;
    }
    if (!_lowercaseRegExp.hasMatch(value)) {
      return PasswordInputError.noLowercase;
    }
    if (!_numberRegExp.hasMatch(value)) {
      return PasswordInputError.noNumber;
    }
    if (!_specialCharacterRegExp.hasMatch(value)) {
      return PasswordInputError.noSpecialCharacter;
    }
    return null;
  }
}
