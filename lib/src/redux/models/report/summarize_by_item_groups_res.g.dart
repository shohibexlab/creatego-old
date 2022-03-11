// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summarize_by_item_groups_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummarizeByItemGroupsRes _$SummarizeByItemGroupsResFromJson(Map json) =>
    SummarizeByItemGroupsRes(
      itemGroupId: json['itemGroupId'] as String,
      itemGroupName: json['itemGroupName'] as String,
      totalQty: (json['totalQty'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$SummarizeByItemGroupsResToJson(
        SummarizeByItemGroupsRes instance) =>
    <String, dynamic>{
      'itemGroupId': instance.itemGroupId,
      'itemGroupName': instance.itemGroupName,
      'totalQty': instance.totalQty,
      'totalAmount': instance.totalAmount,
    };
