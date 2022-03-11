// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_revision_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDetailRevisionItemsRes _$InventoryDetailRevisionItemsResFromJson(
        Map json) =>
    InventoryDetailRevisionItemsRes(
      date: json['date'] as String?,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => InventoryDetailRevisionItemRes.fromJson(e as Map))
          .toList(),
    );

Map<String, dynamic> _$InventoryDetailRevisionItemsResToJson(
        InventoryDetailRevisionItemsRes instance) =>
    <String, dynamic>{
      'date': instance.date,
      'name': instance.name,
      'items': instance.items,
    };
