import 'package:json_annotation/json_annotation.dart';
import 'package:yollet_system/src/redux/models/order/item_res.dart';

part 'get_order_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderGetOrderRes {
  String orderId;
  String tableId;
  List<OrderItemRes> items;
  double discount;
  double markup;
  double totalDue;
  double totalReceived;
  double taxExemptReceived;
  double balance;

  @override
  OrderGetOrderRes({
    required this.discount,
    required this.orderId,
    required this.items,
    required this.balance,
    required this.markup,
    required this.tableId,
    required this.taxExemptReceived,
    required this.totalDue,
    required this.totalReceived,
  });

  factory OrderGetOrderRes.fromJson(Map json) =>
      _$OrderGetOrderResFromJson(json);

  Map toJson() => _$OrderGetOrderResToJson(this);
}
