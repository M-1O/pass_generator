// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordModel _$PasswordModelFromJson(Map<String, dynamic> json) {
  return _PasswordModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordModel {
  String get password => throw _privateConstructorUsedError;
  String get salt => throw _privateConstructorUsedError;
  String get passKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordModelCopyWith<PasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordModelCopyWith<$Res> {
  factory $PasswordModelCopyWith(
          PasswordModel value, $Res Function(PasswordModel) then) =
      _$PasswordModelCopyWithImpl<$Res, PasswordModel>;
  @useResult
  $Res call({String password, String salt, String passKey});
}

/// @nodoc
class _$PasswordModelCopyWithImpl<$Res, $Val extends PasswordModel>
    implements $PasswordModelCopyWith<$Res> {
  _$PasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? salt = null,
    Object? passKey = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      passKey: null == passKey
          ? _value.passKey
          : passKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordModelCopyWith<$Res>
    implements $PasswordModelCopyWith<$Res> {
  factory _$$_PasswordModelCopyWith(
          _$_PasswordModel value, $Res Function(_$_PasswordModel) then) =
      __$$_PasswordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String salt, String passKey});
}

/// @nodoc
class __$$_PasswordModelCopyWithImpl<$Res>
    extends _$PasswordModelCopyWithImpl<$Res, _$_PasswordModel>
    implements _$$_PasswordModelCopyWith<$Res> {
  __$$_PasswordModelCopyWithImpl(
      _$_PasswordModel _value, $Res Function(_$_PasswordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? salt = null,
    Object? passKey = null,
  }) {
    return _then(_$_PasswordModel(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      passKey: null == passKey
          ? _value.passKey
          : passKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PasswordModel implements _PasswordModel {
  const _$_PasswordModel(
      {required this.password, required this.salt, required this.passKey});

  factory _$_PasswordModel.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordModelFromJson(json);

  @override
  final String password;
  @override
  final String salt;
  @override
  final String passKey;

  @override
  String toString() {
    return 'PasswordModel(password: $password, salt: $salt, passKey: $passKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordModel &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.passKey, passKey) || other.passKey == passKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password, salt, passKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordModelCopyWith<_$_PasswordModel> get copyWith =>
      __$$_PasswordModelCopyWithImpl<_$_PasswordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordModelToJson(
      this,
    );
  }
}

abstract class _PasswordModel implements PasswordModel {
  const factory _PasswordModel(
      {required final String password,
      required final String salt,
      required final String passKey}) = _$_PasswordModel;

  factory _PasswordModel.fromJson(Map<String, dynamic> json) =
      _$_PasswordModel.fromJson;

  @override
  String get password;
  @override
  String get salt;
  @override
  String get passKey;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordModelCopyWith<_$_PasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
