// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_revision_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDetailRevisionItemRes _$InventoryDetailRevisionItemResFromJson(
        Map json) =>
    InventoryDetailRevisionItemRes(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      qty: (json['qty'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$InventoryDetailRevisionItemResToJson(
        InventoryDetailRevisionItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'qty': instance.qty,
      'price': instance.price,
    };
