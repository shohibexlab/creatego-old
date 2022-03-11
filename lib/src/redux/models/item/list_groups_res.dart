import 'package:json_annotation/json_annotation.dart';

part 'list_groups_res.g.dart';

@JsonSerializable(anyMap: true)
class ItemListGroupsRes {
  String id;
  String name;
  String? itemName;

  @override
  ItemListGroupsRes({required this.id, required this.name, this.itemName});

  factory ItemListGroupsRes.fromJson(Map json) =>
      _$ItemListGroupsResFromJson(json);

  Map toJson() => _$ItemListGroupsResToJson(this);
}
