import 'package:json_annotation/json_annotation.dart';
import 'package:yollet_system/src/redux/models/item/product_item_res.dart';

part 'list_items_res.g.dart';

@JsonSerializable(anyMap: true)
class ItemListItemsRes {
  List<ProductItemRes> list;

  @override
  ItemListItemsRes({required this.list});

  factory ItemListItemsRes.fromJson(Map json) =>
      _$ItemListItemsResFromJson(json);

  Map toJson() => _$ItemListItemsResToJson(this);
}
