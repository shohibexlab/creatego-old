import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

part 'item_add_req.g.dart';

@JsonSerializable(anyMap: true)
class ItemAddReq {
  String? itemGroupId;
  String name;
  String? barcode;
  double salePrice;
  double purchasePrice;
  bool? isMarking;
  bool? isFavorite;

  @override
  ItemAddReq({
    required this.name,
    required this.salePrice,
    required this.purchasePrice,
    this.isMarking,
    this.itemGroupId,
    this.barcode,
    this.isFavorite,
  });

  factory ItemAddReq.fromJson(Map json) => _$ItemAddReqFromJson(json);

  Map toJson() => _$ItemAddReqToJson(this);
}
