import 'package:json_annotation/json_annotation.dart';

part 'balance_product_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryBalanceProductItemRes {
  String itemId;
  String itemGroupId;
  String name;
  double salePrice;
  bool isMarking;

  double? purchasePrice;
  String? barcode;
  String? imageUrl;
  double? qty;

  @override
  InventoryBalanceProductItemRes({
    required this.salePrice,
    required this.name,
    required this.itemId,
    required this.itemGroupId,
    required this.isMarking,
    this.purchasePrice,
    this.imageUrl,
    this.barcode,
    this.qty,
  });

  factory InventoryBalanceProductItemRes.fromJson(Map json) =>
      _$InventoryBalanceProductItemResFromJson(json);

  Map toJson() => _$InventoryBalanceProductItemResToJson(this);
}
