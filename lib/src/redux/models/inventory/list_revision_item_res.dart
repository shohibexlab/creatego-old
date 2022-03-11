import 'package:json_annotation/json_annotation.dart';

part 'list_revision_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryListRevisionItemRes {
  String revisionItemsId;
  String name;
  String date;
  double price;

  @override
  InventoryListRevisionItemRes({
    required this.revisionItemsId,
    required this.name,
    required this.date,
    required this.price,
  });

  factory InventoryListRevisionItemRes.fromJson(Map json) =>
      _$InventoryListRevisionItemResFromJson(json);

  Map toJson() => _$InventoryListRevisionItemResToJson(this);
}
