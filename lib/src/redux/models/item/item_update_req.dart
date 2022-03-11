import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

part 'item_update_req.g.dart';

@JsonSerializable(anyMap: true)
class ItemUpdateReq {
  String itemId;
  String? itemGroupId;
  String? name;
  String? barcode;
  double? salePrice;
  double? purchasePrice;
  bool? isMarking;
  bool? isFavorite;

  @override
  ItemUpdateReq({
    required this.itemId,
    this.itemGroupId,
    this.name,
    this.salePrice,
    this.purchasePrice,
    this.isMarking,
    this.barcode,
    this.isFavorite,
  });

  factory ItemUpdateReq.fromJson(Map json) => _$ItemUpdateReqFromJson(json);

  Map toJson() => _$ItemUpdateReqToJson(this);
}
