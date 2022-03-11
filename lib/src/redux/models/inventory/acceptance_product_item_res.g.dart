// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_product_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryAcceptanceProductItemRes _$InventoryAcceptanceProductItemResFromJson(
        Map json) =>
    InventoryAcceptanceProductItemRes(
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      qty: (json['qty'] as num).toDouble(),
      itemId: json['itemId'] as String,
      itemGroupId: json['itemGroupId'] as String,
    );

Map<String, dynamic> _$InventoryAcceptanceProductItemResToJson(
        InventoryAcceptanceProductItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'qty': instance.qty,
      'purchasePrice': instance.purchasePrice,
    };
