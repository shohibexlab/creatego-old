import 'package:json_annotation/json_annotation.dart';

part 'revision_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryRevisionItemRes {
  String itemId;
  String name;
  double realQty;
  double purchasePrice;

  @override
  InventoryRevisionItemRes({
    required this.itemId,
    required this.name,
    required this.realQty,
    required this.purchasePrice,
  });

  factory InventoryRevisionItemRes.fromJson(Map json) =>
      _$InventoryRevisionItemResFromJson(json);

  Map toJson() => _$InventoryRevisionItemResToJson(this);
}
