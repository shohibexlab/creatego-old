import 'package:json_annotation/json_annotation.dart';

part 'product_item_res.g.dart';

@JsonSerializable(anyMap: true)
class ProductItemRes {
  String itemId;
  String groupId;
  String name;
  double price;
  String? barcode;
  String? imageUri;
  String? taxApplied;
  bool? isRecommended;

  @override
  ProductItemRes({
    required this.price,
    required this.name,
    required this.itemId,
    required this.groupId,
    this.imageUri,
    this.taxApplied,
    this.barcode,
    this.isRecommended,
  });

  factory ProductItemRes.fromJson(Map json) => _$ProductItemResFromJson(json);

  Map toJson() => _$ProductItemResToJson(this);
}
