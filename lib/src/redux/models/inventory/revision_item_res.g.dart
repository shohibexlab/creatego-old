// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revision_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryRevisionItemRes _$InventoryRevisionItemResFromJson(Map json) =>
    InventoryRevisionItemRes(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      realQty: (json['realQty'] as num).toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
    );

Map<String, dynamic> _$InventoryRevisionItemResToJson(
        InventoryRevisionItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'realQty': instance.realQty,
      'purchasePrice': instance.purchasePrice,
    };
