// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  String get cardId => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get cardExpiryDate => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;
  String get cardCvv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {String cardId,
      String cardName,
      String cardNumber,
      String cardHolderName,
      String cardExpiryDate,
      String cardType,
      String cardCvv});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? cardName = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? cardExpiryDate = null,
    Object? cardType = null,
    Object? cardCvv = null,
  }) {
    return _then(_value.copyWith(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardExpiryDate: null == cardExpiryDate
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$$_CardModelCopyWith(
          _$_CardModel value, $Res Function(_$_CardModel) then) =
      __$$_CardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardId,
      String cardName,
      String cardNumber,
      String cardHolderName,
      String cardExpiryDate,
      String cardType,
      String cardCvv});
}

/// @nodoc
class __$$_CardModelCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$_CardModel>
    implements _$$_CardModelCopyWith<$Res> {
  __$$_CardModelCopyWithImpl(
      _$_CardModel _value, $Res Function(_$_CardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? cardName = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? cardExpiryDate = null,
    Object? cardType = null,
    Object? cardCvv = null,
  }) {
    return _then(_$_CardModel(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardExpiryDate: null == cardExpiryDate
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CardModel implements _CardModel {
  const _$_CardModel(
      {required this.cardId,
      required this.cardName,
      required this.cardNumber,
      required this.cardHolderName,
      required this.cardExpiryDate,
      required this.cardType,
      required this.cardCvv});

  factory _$_CardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardModelFromJson(json);

  @override
  final String cardId;
  @override
  final String cardName;
  @override
  final String cardNumber;
  @override
  final String cardHolderName;
  @override
  final String cardExpiryDate;
  @override
  final String cardType;
  @override
  final String cardCvv;

  @override
  String toString() {
    return 'CardModel(cardId: $cardId, cardName: $cardName, cardNumber: $cardNumber, cardHolderName: $cardHolderName, cardExpiryDate: $cardExpiryDate, cardType: $cardType, cardCvv: $cardCvv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardModel &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.cardExpiryDate, cardExpiryDate) ||
                other.cardExpiryDate == cardExpiryDate) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cardCvv, cardCvv) || other.cardCvv == cardCvv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, cardName, cardNumber,
      cardHolderName, cardExpiryDate, cardType, cardCvv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      __$$_CardModelCopyWithImpl<_$_CardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardModelToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {required final String cardId,
      required final String cardName,
      required final String cardNumber,
      required final String cardHolderName,
      required final String cardExpiryDate,
      required final String cardType,
      required final String cardCvv}) = _$_CardModel;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$_CardModel.fromJson;

  @override
  String get cardId;
  @override
  String get cardName;
  @override
  String get cardNumber;
  @override
  String get cardHolderName;
  @override
  String get cardExpiryDate;
  @override
  String get cardType;
  @override
  String get cardCvv;
  @override
  @JsonKey(ignore: true)
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
