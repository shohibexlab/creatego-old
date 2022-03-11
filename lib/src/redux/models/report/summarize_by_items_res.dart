import 'package:json_annotation/json_annotation.dart';

part 'summarize_by_items_res.g.dart';

@JsonSerializable(anyMap: true)
class SummarizeByItemsRes {
  String itemId;
  String itemName;
  double price;
  String? barcode;
  String? imageUri;
  double totalQty;
  double totalAmount;

  @override
  SummarizeByItemsRes(
      {required this.itemId,
      required this.itemName,
      required this.price,
      this.barcode,
      this.imageUri,
      required this.totalQty,
      required this.totalAmount});

  factory SummarizeByItemsRes.fromJson(Map<String, dynamic> json) =>
      _$SummarizeByItemsResFromJson(json);

  Map<String, dynamic> toJson() => _$SummarizeByItemsResToJson(this);
}
