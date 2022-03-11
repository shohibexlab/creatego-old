import 'package:json_annotation/json_annotation.dart';

part 'sales_item.g.dart';

@JsonSerializable()
class SalesItem {
  String salesItemId;
  String itemId;
  String? itemName;
  String? imageUri;
  double price;
  double qty;
  double supplyValue;
  double tax;
  double supplyAmount;
  double? discount;
  bool isRefund;

  @override
  SalesItem({
    required this.salesItemId,
    required this.itemId,
    required this.price,
    required this.qty,
    required this.supplyValue,
    required this.tax,
    required this.supplyAmount,
    this.discount,
    this.imageUri,
    this.itemName,
    required this.isRefund,
  });

  factory SalesItem.fromJson(Map<String, dynamic> json) =>
      _$SalesItemFromJson(json);

  Map<String, dynamic> toJson() => _$SalesItemToJson(this);
}
