// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordState {
  PasswordModel get passwordModel => throw _privateConstructorUsedError;
  FormzInputStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res, PasswordState>;
  @useResult
  $Res call({PasswordModel passwordModel, FormzInputStatus status});

  $PasswordModelCopyWith<$Res> get passwordModel;
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res, $Val extends PasswordState>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordModel = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      passwordModel: null == passwordModel
          ? _value.passwordModel
          : passwordModel // ignore: cast_nullable_to_non_nullable
              as PasswordModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzInputStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordModelCopyWith<$Res> get passwordModel {
    return $PasswordModelCopyWith<$Res>(_value.passwordModel, (value) {
      return _then(_value.copyWith(passwordModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PasswordStateCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$_PasswordStateCopyWith(
          _$_PasswordState value, $Res Function(_$_PasswordState) then) =
      __$$_PasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PasswordModel passwordModel, FormzInputStatus status});

  @override
  $PasswordModelCopyWith<$Res> get passwordModel;
}

/// @nodoc
class __$$_PasswordStateCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$_PasswordState>
    implements _$$_PasswordStateCopyWith<$Res> {
  __$$_PasswordStateCopyWithImpl(
      _$_PasswordState _value, $Res Function(_$_PasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordModel = null,
    Object? status = null,
  }) {
    return _then(_$_PasswordState(
      passwordModel: null == passwordModel
          ? _value.passwordModel
          : passwordModel // ignore: cast_nullable_to_non_nullable
              as PasswordModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzInputStatus,
    ));
  }
}

/// @nodoc

class _$_PasswordState implements _PasswordState {
  const _$_PasswordState({required this.passwordModel, required this.status});

  @override
  final PasswordModel passwordModel;
  @override
  final FormzInputStatus status;

  @override
  String toString() {
    return 'PasswordState(passwordModel: $passwordModel, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordState &&
            (identical(other.passwordModel, passwordModel) ||
                other.passwordModel == passwordModel) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordModel, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordStateCopyWith<_$_PasswordState> get copyWith =>
      __$$_PasswordStateCopyWithImpl<_$_PasswordState>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  const factory _PasswordState(
      {required final PasswordModel passwordModel,
      required final FormzInputStatus status}) = _$_PasswordState;

  @override
  PasswordModel get passwordModel;
  @override
  FormzInputStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordStateCopyWith<_$_PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
