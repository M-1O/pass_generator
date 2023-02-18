// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      cardId: json['cardId'] as String,
      cardName: json['cardName'] as String,
      cardNumber: json['cardNumber'] as String,
      cardHolderName: json['cardHolderName'] as String,
      cardExpiryDate: json['cardExpiryDate'] as String,
      cardType: json['cardType'] as String,
      cardCvv: json['cardCvv'] as String,
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'cardName': instance.cardName,
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'cardExpiryDate': instance.cardExpiryDate,
      'cardType': instance.cardType,
      'cardCvv': instance.cardCvv,
    };
