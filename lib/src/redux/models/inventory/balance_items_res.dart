import 'package:json_annotation/json_annotation.dart';
import 'package:yollet_system/src/redux/models/inventory/balance_product_item_res.dart';

part 'balance_items_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryBalanceItemsRes {
  int count;
  List<InventoryBalanceProductItemRes> balanceProductItemResList;

  @override
  InventoryBalanceItemsRes({
    required this.count,
    required this.balanceProductItemResList,
  });

  factory InventoryBalanceItemsRes.fromJson(Map json) =>
      _$InventoryBalanceItemsResFromJson(json);

  Map toJson() => _$InventoryBalanceItemsResToJson(this);
}
