import 'package:json_annotation/json_annotation.dart';

part 'list_item_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderListItemRes {
  String orderId;
  String tableId;
  String lastRevisionDatetime;
  double totalQty;
  double totalAmount;

  @override
  OrderListItemRes({
    required this.tableId,
    required this.orderId,
    required this.totalQty,
    required this.totalAmount,
    required this.lastRevisionDatetime,
  });

  factory OrderListItemRes.fromJson(Map json) =>
      _$OrderListItemResFromJson(json);

  Map toJson() => _$OrderListItemResToJson(this);
}
