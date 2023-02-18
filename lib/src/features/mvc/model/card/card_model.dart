// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  @JsonSerializable(explicitToJson: true)
  const factory CardModel({
    required String cardId,
    required String cardName,
    required String cardNumber,
    required String cardHolderName,
    required String cardExpiryDate,
    required String cardType,
    required String cardCvv,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}
