import 'package:json_annotation/json_annotation.dart';

part 'detail_revision_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryDetailRevisionItemRes {
  String itemId;
  String name;
  double qty;
  double price;

  @override
  InventoryDetailRevisionItemRes({
    required this.itemId,
    required this.name,
    required this.qty,
    required this.price,
  });

  factory InventoryDetailRevisionItemRes.fromJson(Map json) =>
      _$InventoryDetailRevisionItemResFromJson(json);

  Map toJson() => _$InventoryDetailRevisionItemResToJson(this);
}
