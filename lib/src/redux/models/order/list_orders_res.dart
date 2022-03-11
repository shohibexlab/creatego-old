import 'package:json_annotation/json_annotation.dart';

import 'list_item_res.dart';

part 'list_orders_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderListOrdersRes {
  List<OrderListItemRes> list;

  @override
  OrderListOrdersRes({required this.list});

  factory OrderListOrdersRes.fromJson(Map json) =>
      _$OrderListOrdersResFromJson(json);

  Map toJson() => _$OrderListOrdersResToJson(this);
}
