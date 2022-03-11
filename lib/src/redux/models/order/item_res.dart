import 'package:json_annotation/json_annotation.dart';
part 'item_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderItemRes {
  String id;
  String itemId;
  String name;
  double qty;
  double? taxExempt;
  double? price;
  double? discount;
  double? orderDiscount;
  bool? isStorno;
  bool? isDiscountStorno;
  String? imageUri;
  String? taxApplied;
  String? mark;

  @override
  OrderItemRes({
    required this.id,
    required this.itemId,
    required this.name,
    required this.qty,
    required this.price,
    this.taxExempt,
    this.discount,
    this.imageUri,
    this.taxApplied,
    this.isDiscountStorno,
    this.isStorno,
    this.mark,
    this.orderDiscount,
  });

  factory OrderItemRes.fromJson(Map json) => _$OrderItemResFromJson(json);

  Map toJson() => _$OrderItemResToJson(this);
}
