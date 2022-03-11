// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_revision_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryListRevisionItemRes _$InventoryListRevisionItemResFromJson(Map json) =>
    InventoryListRevisionItemRes(
      revisionItemsId: json['revisionItemsId'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$InventoryListRevisionItemResToJson(
        InventoryListRevisionItemRes instance) =>
    <String, dynamic>{
      'revisionItemsId': instance.revisionItemsId,
      'name': instance.name,
      'date': instance.date,
      'price': instance.price,
    };
