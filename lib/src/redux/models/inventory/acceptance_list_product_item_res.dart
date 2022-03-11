import 'package:json_annotation/json_annotation.dart';

part 'acceptance_list_product_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryAcceptanceListProductItemRes {
  String date;
  String name;
  double price;

  @override
  InventoryAcceptanceListProductItemRes({
    required this.price,
    required this.name,
    required this.date,
  });

  factory InventoryAcceptanceListProductItemRes.fromJson(Map json) =>
      _$InventoryAcceptanceListProductItemResFromJson(json);

  Map toJson() => _$InventoryAcceptanceListProductItemResToJson(this);
}
