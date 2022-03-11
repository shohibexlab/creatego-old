import 'package:json_annotation/json_annotation.dart';
part 'summarize_by_item_groups_res.g.dart';

@JsonSerializable(anyMap: true)
class SummarizeByItemGroupsRes {
  String itemGroupId;
  String itemGroupName;
  double totalQty;
  double totalAmount;
  @override
  SummarizeByItemGroupsRes(
      {required this.itemGroupId,
      required this.itemGroupName,
      required this.totalQty,
      required this.totalAmount});
  factory SummarizeByItemGroupsRes.fromJson(Map<String, dynamic> json) =>
      _$SummarizeByItemGroupsResFromJson(json);

  Map<String, dynamic> toJson() => _$SummarizeByItemGroupsResToJson(this);
}
